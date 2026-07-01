# Writeup Praktikum 2 Organisasi dan Arsitektur Komputer

## Indonesian

[English Ver.](#english)

### Fungsi Main

Program ini dimulai dari main() seperti program lainnya, di sini dapat dilihat bahwa fungsi main terdiri dari setup, fungsi start_game(), dan kumpulan fungsi read_line() dan fungsi keduanya yang termasuk tantangan  
Untuk memulai setiap tantangan, kita harus memasuki tantangan dengan sebelumnya menyelesaikan tantangan sebelumnya dengan benar (tanpa modifikasi register, jump ke fungsi selanjutnya, dan lainnya)

### Tantangan 1

Untuk tantangan pertama, shigatsu_wa_kimi_no_uso(), ketika pertama melihat fungsi ini, fungsi ini terlihat seperti sedang melakukan `memcmp` yang dapat dilihat dari operasi `repz cmpsb`.

> Sebuah comparison dapat terlihat dengan jelas pada assembly dengan operasi `cmp`

Sebelumnya juga terlihat bahwa register `%ecx` menyimpan nilai `0x14`, yang menandakan bahwa `memcmp` menerima sebesar 20 byte untuk dibandingkan.

```asm
mov    $0x14,%ecx ; besar memori yang dibandingkan
mov    0x10(%esp),%esi
lea    -0x2f95(%ebx),%edi
repz cmpsb %es:(%edi),%ds:(%esi) ; perbandingan utama
seta   %al
sbb    $0x0,%al
test   %al,%al
jne    17c5 <shigatsu_wa_kimi_no_uso+0x30> ; jmp ke fungsi fail()
```

Maka langkah selanjutnya adalah bagaimana kita mendapatkan value yang disimpan tersebut? Dapat dilihat bahwa juga terdapat operasi `lea` yang memasuki sebuah address ke dalam register `%edi`. Maka, dengan bantuan gdb, kita bisa dengan mudah melihat isi register pada saat dimasukkan nilainya.

```
(gdb) b *shigatsu_wa_kimi_no_uso+33
(gdb) run
...
(gdb) x/s $edi
0x...:  "cappucino_assassino"
(gdb) x/s $esi
0x...:  "string_yang_diinput"
```

Terlihat bahwa register `%edi` menyimpan nilai berupa `cappucino_assassino`. Dengan itu, kita bisa mengulangi program dan menggunakan input tersebut untuk melanjutkan ke tantangan selanjutnya.

> Jawaban: `cappucino_assassino`
> Karena string tersebut disimpan secara utuh dalam memori, Anda bisa saja melakukan `strings heroasm` dan mencari string tersebut dalam kumpulan-kumpulan readable strings yang terdapat dalam program

### Tantangan 2

Untuk tantangan kedua, gurren_lagann(), ketika pertama melihat fungsi ini, fungsi terlihat seperti kembali melakukan perbandingan antara nilai, namun sekarang dengan menggunakan operasi dasar `cmp` dengan angka yang utuh, `0x15` yang jika diubah ke dalam decimal adalah 21.

```asm
call   1340 <strtol@plt>
add    $0x10,%esp
cmp    $0x15,%eax
```

Maka, karena sebelumnya dilakukan pemanggilan fungsi `strtol()`, yang mengubah input string ke dalam long atau secara mudahnya mengubah string ke dalam angka, maka 21 berupa jawaban untuk tantangan ini.

> Jawaban: `21`

### Tantangan 3

Untuk tantangan ketiga, cruel_angel_thesis(), dapat dilihat bahwa operasi-operasi pertamanya merupakan setup untuk menyimpan sebuah string yang constant pada stack,

```asm
movl   $0x4b4e415a,0x4(%esp) ; dalam Little Endian: 5A 41 4E 4B = "ZANK"
movl   $0x554b4f,0x8(%esp) ; dalam Little Endian: 4F 4B 55 00 = "OKU\0"
```

> Perlu diperhatikan bahwa program menggunakan 32 bit Little Endian, maka lowest byte (LSB) terdapat pada address terendah. Secara singkat, nilai tersebut dibaca terbalik.

Setelah itu, compiler melakukan sebuah trik yang menggunakan angka besar, dalam kasus ini `0x4ec4ec4f`. Trik ini dilakukan untuk melakukan operasi `%` atau modulo (Dapat diketahui dengan mencari secara langsung angka besar tersebut). Terdapat beberapa cara untuk memahami trik ini, namun yang paling efektif adalah melewati beberapa line operasi tersebut dan melihat operasi perkalian di akhir trik,

```asm
movsbl (%esi),%ecx ; ecx = input[esi], esi = iterasi ke 1..ujung_input
sub    $0x37,%ecx ; ecx - 55
mov    $0x4ec4ec4f,%eax
imul   %ecx
sar    $0x3,%edx
mov    %ecx,%eax
sar    $0x1f,%eax
sub    %eax,%edx
imul   $0x1a,%edx,%edx ; 0x1a = 26
sub    %edx,%ecx ; ecx - 26 -> ecx %= 26
add    $0x41,%ecx ; ecx + 65
movsbl (%esi,%edi,1),%eax ; eax = "ZANKOKU"[esi], pengambilan huruf dari string constant sesuai esi
cmp    %eax,%ecx
je     1846 <cruel_angel_thesis+0x46>
```

Terlihat pada akhir operasi-operasi tersebut, terdapat sebuah rumus,

```
((input[i] - 55) % 26) + 65 == "ZANKOKU"[i]
```

Di mana i adalah `%esi`, maka cara paling mudah selanjutnya adalah untuk membuat sebuah program yang akan membantu mendapatkan input yang tepat untuk melewati tantangan ini.

Contoh program tersebut dalam python:

```py
target = "ZANKOKU"
for t in target:
    for c in range(65, 127):
        if ((c - 55) % 26) + 65 == ord(t):
            print(chr(c)); break
```

> Jawaban: `PQDAEAK`

### Tantangan 4

Untuk tantangan keempat, one_piece(), dapat dilihat bahwa tantangan ini juga menyimpan string constant dalam memori yang dapat dilihat pada penyimpanan hexadecimal readable ASCII,

```asm
movl   $0x70656e6f,0x3(%esp) ; dalam Little Endian: 6F 6E 65 70, "onep"
movl   $0x65636569,0x7(%esp) ; dalam Little Endian: 69 65 63 65, "iece"
movb   $0x0,0xb(%esp) ; "\0"
```

Setelah melakukan penyimpanan tersebut, dapat dilihat juga bahwa string input dilakukan operasi `xor`, kemudian dilakukan validasi apakah hasil xor tersebut sesuai dengan setiap karakter pada string `onepiece`,

```asm
movzbl 0x0(%ebp,%esi,1),%eax
xor    $0x47,%eax
cmp    %al,(%esi,%edi,1)
je     18de <one_piece+0x4b>
jmp    18d9 <one_piece+0x46>
mov    0xc(%esp),%eax
xor    %gs:0x14,%eax
jne    190a <one_piece+0x77>
```

Maka, untuk menyelesaikan tantangan ini, kita perlu melakukan inverse operasi xor, yaitu xor sendiri, contoh program tersebut adalah sebagai berikut:

```py
"".join(chr(ord(c) ^ 0x47) for c in "onepiece")  # -> ()"7."$"
```

> Jawaban: `()"7."$"`

### Tantangan 5

Untuk tantangan kelima, Geometric_Dance(), dapat terlihat ini akan memanggil fungsi `scanf()`, dengan sebelumnya melakukan push pada stack (ingat kembali pada i86 32 bit akan menggunakan stack sedangkan untuk i86-64 akan menggunakan registers) sebanyak 4 + 1 kali, 4 kali tidak ada perbedaan antar satu sama lain karena itu merupakan berapa masukan yang diterima.

```asm
lea    0x1c(%esp),%eax
push   %eax
lea    0x1c(%esp),%eax
push   %eax
lea    0x1c(%esp),%eax
push   %eax
lea    0x1c(%esp),%eax
push   %eax
lea    -0x2d39(%ebx),%eax
push   %eax
push   0x4c(%esp)
call   12e0 <__isoc99_sscanf@plt>
```

Maka, kita perlu untuk memasukkan 4 buah input sekaligus, kita dapat melihat bahwa input pertama adalah angka `0x12d` yang dapat dilihat dari operasi berikutnya setelah pemanggilan fungsi scanf tersebut yang melakukan `cmp` terhadap `%eax` yang sebelumnya diisi dengan `0x12d` (301)

```asm
movl   $0x12d,0x18(%esp) ; push 0x12d ke stack
mov    0x8(%esp),%edx ; input pertama (address paling rendah {0x8 dari esp} adalah input pertama)
mov    0x18(%esp),%eax ; ambil 0x12d dari stack ke eax
cmp    %eax,%edx
jne    19a6 <Geometric_Dance+0x97> ; trap
```

Setelah itu, kita perlu memerhatikan pemanggilan fungsi di dalam fungsi ini, `english_or_spanish()`,

```asm
0000258f <english_or_spanish>:
    endbr32
    mov    0x4(%esp),%eax
    lea    0x1(%eax,%eax,2),%eax
    ret
```

Dapat dilihat bahwa fungsi tersebut hanya mengambil input kita (line 2) kemudian mengalikan nilai tersebut dengan 3 dan menambah dengan 1 (line 3). Dapat dilihat juga kembali di fungsi utamanya bahwa fungsi english_or_spanish dilakukan sebanyak 3 kali, 1 untuk setiap input. Terakhir, didapatkan bahwa setiap pemanggilan fungsi english_or_spanish program melakukan perbandingan dengan nilai sebelumnya, didapatkan dari setelah pemanggilan terdapat operasi `mov eax, edx` dan dilakukan `cmp eax, edx`.

Maka, untuk menyelesaikan tantangan ini, diperlukan 4 angka yang dimulai dari 301, lalu dimasukkan ke dalam fungsi `f(x) = 3x + 1` dan dipakai di input selanjutnya.

> Jawaban: `301 904 2713 8140`

### Tantangan 6

Untuk tantangan keenam, crossing_field(), kembali terdapat string constant di dalam memori, dilanjutkan dengan validasi panjang input, lalu diakhiri dengan jump table

```asm
movl   $0x31326669,0x5(%esp) ; dalam Little Endian = 69 66 32 31 : "if21"
movw   $0x3033,0x9(%esp) ; dalam Little Endian = 33 30 : "30"
; if2130 (Sistem Operasi)
```

Setelah penyimpanan tersebut, compiler melakukan fungsi `strlen()`, ini dapat dilihat dari operasi `repnz scas` yang berarti "REPeat until Non-Zero SCAn String". Secara singkat, panjangnya string yang perlu diinput dapat dilihat dari rumus `ecx start - ecx end`

```asm
mov    $0xffffffff,%ecx ; ecx start
mov    %ebp,%edi
repnz scas %es:(%edi),%al
cmp    $0xfffffff8,%ecx ; ecx end
```

Karena `ecx start` adalah -1 dan `ecx end` adalah -8, maka `-1 - (-8) = 7`, dengan 6 karakter awal dan 1 karakter NUL ("\0") di akhir input.

Setelah melakukan validasi, program melanjutkan dengan sebuah jump table. Cara yang mudah untuk mengetahui input dari sini adalah dengan menggunakan kembali GDB dengan break pada line operasi `cmp` yang dilakukan pada `.L47 + 0xa`. Setelah itu, melanjutkan program dengan command `continue` dan mengecek satu per satu hingga 6 kali pengecekan pada register `%eax` (target) dan `%edx` (input).

Secara umum, jump table tersebut dapat dilihat seperti persamaan berikut,

```
target = "if2130"
target[i] == input[i] + table[i]
input[i] == target[i] - table[i]
dengan table = [-3, +4, -2, -1, +4, +5]
```

> Table dapat diperoleh dari operasi `sub` atau `add` line pertama diurutkan dari `.L47` hingga `.L41`

| i   | target   | table | input    |
| --- | -------- | ----- | -------- |
| 0   | `i`(105) | −3    | `l`(108) |
| 1   | `f`(102) | +4    | `b`(98)  |
| 2   | `2`(50)  | −2    | `4`(52)  |
| 3   | `1`(49)  | −1    | `2`(50)  |
| 4   | `3`(51)  | +4    | `/`(47)  |
| 5   | `0`(48)  | +5    | `+`(43)  |

> Jawaban: `lb42/+`

### Tantangan 7

Untuk tantangan ketujuh, renai_circulation(), fungsi ini akan menggunakan fungsi rekursif dengan memanfaatkan dua fungsi lain, karaage() dan ramen(). Fungsi ini juga menerima 2 input, dapat dilihat dari banyaknya operasi `push` yang dilakukan sebelum pemanggilan fungsi `scanf()` (diingat kembali di fungsi/tantangan sebelumnya yang menggunakan scanf juga)

Untuk input yang pertama akan dilakukan fungsi karaage() sedangkan input kedua akan dilakukan fungsi ramen(), dapat dilihat dari kode berikut,

```asm
add    $0x4,%esp
push   0x10(%esp)
call   24ec <karaage>
add    $0x10,%esp
cmp    $0x3e,%eax ; apakah input pertama sudah 0x3e = 62 setelah karaage ?
jne    1b39 <renai_circulation+0x79>
sub    $0x8,%esp
push   0x10(%esp)
push   0x10(%esp)
call   2519 <ramen>
add    $0x10,%esp
cmp    $0x7c0,%eax ; apakah input kedua sudah 0x7c0 = 1984 setelah ramen ?
jne    1b40 <renai_circulation+0x80>
```

Dan dapat dilihat bahwa karaage() hanya melakukan pemanggilan dirinya hingga nilainya > 99 dan setiap kali dipanggil karaage akan menambahkan nilai 2 ke inputnya.

```asm
mov    $0x0,%eax
cmp    $0x63,%edx ; apakah hasil masih lebih kecil dari 0x63 = 99 ?
jle    2505 <karaage+0x19> ; jika belum, lanjut
...
call   24ec <karaage> ; pemanggilan rekursif
...
add    $0x2,%eax ; menambahkan 2 ke input
jmp    2501 <karaage+0x15> ; pengecekan hasil
```

Kemudian dapat dilihat juga bahwa ramen yang menerima 2 argumen (input 1 dan 2) dan akan melakukan karaage dengan argumen input pertama lalu hasil tersebut di-_shift_ kiri sebanyak input kedua.

```asm
sub    $0x18,%esp
push   0x1c(%esp) ; pindahkan input pertama ke stack untuk pemanggilan karaage
call   24ec <karaage>
mov    0x24(%esp),%ecx ; pindahkan input kedua
shl    %cl,%eax ; shift left (* 2^ecx) karaage(input pertama) sebanyak input kedua
```

Kedua fungsi ini dapat dibuat dalam fungsi matematis seperti berikut,

```
karaage(n) = 2*(100 - n)
ramen(m, n) = karaage(m) << n
```

Maka, untuk mendapatkan hasil yang tepat, dapat dilakukan sebagai berikut,

```
karaage(x) = 62 = 2(100 - x) => x = 69
ramen(x, y) = ramen(69, y) = 1984 = karaage(69) << y = 62 << y => y = 5
```

> Jawaban = `69 5`

## Tantangan Bonus

> Tantangan-tantangan selanjutnya termasuk tantangan yang bonus (tidak perlu dikerjakan).

### Tantangan 8

Untuk tantangan kedelapan, kira_game(), fungsi ini dimulai dengan melakukan penyimpanan string constant pada memori dan validasi string input dengan strlen kembali.

```asm
movl   $0x7c395849,0x2(%esp) ; dalam Little Endian: 49 58 39 7c = "IX9|"
movl   $0x664e7c63,0x6(%esp) ; dalam Little Endian: 63 7c 4e 66 = "c|Nf"
; string constant = "IX9|c|Nf"
mov    $0xffffffff,%ecx ; ecx start
mov    %ebp,%edi
repnz scas %es:(%edi),%al
cmp    $0xfffffff6,%ecx ; ecx end
```

Maka, menggunakan trik sebelumnya, dapat dipastikan kita harus memberikan input yang panjangnya -1 - (-10) = 9 = 8 karakter awal + 1 karakter NUL ('\0').

```asm
add    $0x1,%esi ; menambahkan 1 ke esi (i)
cmp    $0x8,%esi ; apakah sudah semua dicek ?
je     1bbe <kira_game+0x72>
lea    0x5(%esi,%esi,1),%eax ; eax = 2 * esi + 5
xor    0x0(%ebp,%esi,1),%al ; input ^ eax
cmp    (%esi,%edi,1),%al
je     1ba7 <kira_game+0x5b> ; trap
```

Secara matematis dapat dituliskan sebagai berikut:

```
string = "IX9|c|Nf"
string[i] = input[i] ^ (2 * i + 5)
input[i] = string[i] ^ (2 * i + 5)
```

Dapat dicari dengan menggunakan program seperti berikut,

```py
target = "IX9|c|Nf"
"".join(chr(ord(c) ^ ((i*2)+5)) for i, c in enumerate(target))  # -> L_0wns_u
```

> Jawaban: `L_0wns_u`

### Tantangan 9

Untuk tantangan kesembilan, Shougaizettaisouaisengen(), terlihat kita akan memerlukan input yang panjangnya 9 karakter, lalu kembali menggunakan trik compiler operasi mod, dilihat dari angka besar, `0x38e38e39`, dan dilihat di bawahnya terdapat operasi `lea` yang memberikan kunci bahwa ini adalah operasi mod 9. Setelah itu, dilihat juga bahwa terdapat sebuah array yang _hardcoded_, terlihat pada operasi `lea -0x2f44(%eax),%edi`, yang dapat diakses dengan menambahkan offset pada eax relatif dengan -0x2f44 hingga semua 9 angka terlihat (dapat menggunakan gdb untuk proses ini).

```asm
; Loop 1 — menghitung kedua diagonal
lea    -0x2f44(%eax),%edi ; array = [7 4 3 8 5 1 9 6 2]
mov    0x40(%esp),%eax
movsbl (%eax,%ebx,4),%ecx ; ambil input[0], input[4], input[8] (diagonal utama)
sub    $0x30,%ecx          ; c - '0'
mov    %ecx,%eax
imul   %ebp               ; trik * 0x38e38e39
sar    $1,%edx
mov    %ecx,%eax
sar    $0x1f,%eax
sub    %eax,%edx
lea    (%edx,%edx,8),%eax  ; edx * 9
sub    %eax,%ecx           ; ecx %= 9
mov    (%edi,%ecx,4),%edx  ; table[(c-'0') % 9]
add    %edx,0x14(%esp)     ; akumulasi jumlah diagonal utama
mov    0x40(%esp),%eax
movsbl 0x2(%eax,%ebx,2),%ecx ; ambil input[2], input[4], input[6] (diagonal anti)
...
add    (%edi,%ecx,4),%esi  ; akumulasi jumlah diagonal anti
add    $0x1,%ebx
cmp    $0x3,%ebx
jne    1c29 <Shougaizettaisouaisengen+0x51>
```

Setiap karakter input diubah menjadi sebuah angka menggunakan trik % 9 tersebut, sehingga secara umum nilai tiap sel adalah:

```
value(c) = table[ (c - '0') % 9 ]
```

Loop pertama ini menghitung jumlah dari kedua diagonal: input[0],input[4],input[8] (diagonal utama) dan input[2],input[4],input[6] (diagonal anti), lalu menyimpannya di 0x14(%esp) dan %esi.

```asm
; Setup row/col loop
mov    0x40(%esp),%eax
mov    %eax,0x1c(%esp)
add    $0x9,%eax
mov    %eax,0x10(%esp)
movl   $0x0,0xc(%esp)
mov    0x18(%esp),%eax
lea    -0x2f44(%eax),%eax
mov    %eax,0x8(%esp)
jmp    1cd8 <Shougaizettaisouaisengen+0x100>
```

```asm
; Loop luar — untuk tiap baris (esi) dan kolom (ebx)
mov    0xc(%esp),%eax
lea    (%eax,%eax,2),%esi ; esi = 3*r
mov    0x1c(%esp),%ebx
add    %ebx,%esi
add    %eax,%ebx ; ebx = awal kolom ke-r (input[r])
mov    $0x0,%edi
mov    $0x0,%ebp
```

```asm
; Loop dalam — akumulasi satu baris (ebp) dan satu kolom (edi)
movsbl (%esi),%ecx         ; karakter baris berjalan
...
add    (%eax,%ecx,4),%ebp  ; jumlah baris += value()
movsbl (%ebx),%ecx         ; karakter kolom berjalan
...
add    (%eax,%ecx,4),%edi  ; jumlah kolom += value()
add    $0x1,%esi           ; baris: +1 (kolom bersebelahan)
add    $0x3,%ebx           ; kolom: +3 (baris di bawahnya)
cmp    0x10(%esp),%ebx
jne    1cf1 <Shougaizettaisouaisengen+0x119>
```

Loop luar dan loop dalam ini menghitung jumlah setiap baris (input[3r+0..2], langkah +1) dan setiap kolom (input[0..2 + c], langkah +3). Jika input disusun secara row-major:

```
 input[0] input[1] input[2]
 input[3] input[4] input[5]
 input[6] input[7] input[8]
```

```asm
; Cek per pass/iterasi, semua harus sama sum-nya
cmp    0x14(%esp),%ebp     ; jumlah baris == jumlah diagonal ?
jne    1cb8 <Shougaizettaisouaisengen+0xe0>
cmp    %edi,%ebp           ; jumlah kolom == jumlah baris ?
je     1cc1 <Shougaizettaisouaisengen+0xe9>
jmp    1cb8 <Shougaizettaisouaisengen+0xe0>
```

Bagian ini mengharuskan semua jumlah — kedua diagonal, semua baris, dan semua kolom — bernilai sama. Dengan kata lain, nilai value() dari ke-9 sel harus membentuk sebuah magic square 3×3. Karena table merupakan permutasi dari angka 1..9, jumlah tersebut pasti bernilai 15 — ini adalah Lo Shu square klasik.

```asm
; Cek jika setiap input sama — trap HANYA jika ke-9 karakter identik
mov    0x40(%esp),%eax
movzbl (%eax),%eax         ; al = input[0]
mov    0x40(%esp),%esi
cmp    0x1(%esi),%al       ; input[0] == input[1] ?
je     1d70 <Shougaizettaisouaisengen+0x198>
... ; jika ada satu saja yang berbeda, langsung ret (lolos)
cmp    0x8(%esi),%al       ; input[0] == input[8] ?
jne    1d68 <Shougaizettaisouaisengen+0x190>
mov    0x18(%esp),%ebx
call   2888 <trap>         ; trap jika SEMUA 9 karakter sama
```

Cara termudah adalah menggunakan digit 0..8. Untuk sebuah digit d, value('d') = table[d]:

┌───────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┐
│ digit │ 0 │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │
├───────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ value │ 7 │ 4 │ 3 │ 8 │ 5 │ 1 │ 9 │ 6 │ 2 │
└───────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘

Kita ingin agar nilai (value) membentuk Lo Shu square:

```
2 7 6        value->digit:  2->8  7->0  6->7
9 5 1   =>                  9->6  5->4  1->5
4 3 8                       4->1  3->2  8->3
```

Dibaca secara row-major, grid digit-nya menjadi:

```
8 0 7
6 4 5
1 2 3      ->  "807645123"
```

Pengecekan cepat: diagonal utama 8,4,3 → value 2,5,8 = 15 ✓; diagonal anti 7,4,1 → 6,5,4 = 15 ✓; semua baris/kolom = 15 ✓; tidak semua karakter identik ✓.

> Jawaban: `807645123`

### Tantangan 10

Untuk tantangan kesepuluh, Ruler*Count_Zero_2(), program terlihat menggunakan banyak \_padding* berupa operasi `nop`, ini dapat kita hilangkan saja karena tidak terlalu berpengaruh pada program, setelah dihilangkan, hasil akhir dapat dilihat sebagai berikut,

Pertama, program menyimpan banyak nilai ke memori, namun pada penyimpanan ke 5, terlihat seperti ada penggunaan pointer, ini dapat dilihat sebagai sebuah struct yang berisi value dan 2 pointer, satu kiri dan satu kanan, seperti pohon.

```c
struct node {
  int val;
  node *left
  node *right
} node;
```

```asm
movl   $0x3,0x8(%esp) ; node 3, no l, no r
movl   $0x0,0xc(%esp)
movl   $0x0,0x10(%esp)
movl   $0x7,0x14(%esp) ; node 7, no l, no r
movl   $0x0,0x18(%esp)
movl   $0x0,0x1c(%esp)
movl   $0xf,0x20(%esp) ; node 15, no l, no r
movl   $0x0,0x24(%esp)
movl   $0x0,0x28(%esp)
movl   $0x43,0x2c(%esp) ; node 67, no l, no r
movl   $0x0,0x30(%esp)
movl   $0x0,0x34(%esp)
movl   $0x5,0x38(%esp) ; node 5, * 3, * 7
lea    0x8(%esp),%eax
mov    %eax,0x3c(%esp)
lea    0x14(%esp),%eax
mov    %eax,0x40(%esp)
movl   $0x14,0x44(%esp) ; node 20, * 67, * 15
lea    0x2c(%esp),%eax
mov    %eax,0x48(%esp)
lea    0x20(%esp),%eax
mov    %eax,0x4c(%esp)
movl   $0xa,0x50(%esp) ; node 10, * 5, * 20
lea    0x38(%esp),%eax
mov    %eax,0x54(%esp)
lea    0x44(%esp),%eax
mov    %eax,0x58(%esp)
lea    0x50(%esp),%edi ; head (node 10)
```

Setelah dikonstruksi pohon tersebut terlihat seperti berikut, dengan akar 10.

```
            10            (root)
           /  \
          5    20
         / \   / \
        3   7 67  15
```

Kedua, program melakukan loop pengecekan input, jika karakter input adalah '6' atau '9' maka program lanjut untuk mengecek pointer pada node saat ini. Pada akhirnya, jika pointer selanjutnya 0 atau tidak ada pointer atau yang disebut dengan daun, maka program melakukan pengecekan terakhir apakah nilai yang disimpan pada titik pohon sekarang bernilai 67,

```asm
cmpb   $0x0,(%esi) ; if not EOF input, go to left/right
jne    0x2108 <Ruler_Count_Zero_2+874>
call   0x2888 <trap>
jmp    0x2264 <Ruler_Count_Zero_2+1222>
cmpl   $0x0,0x4(%edi) ; "left"
je     0x1fbc <Ruler_Count_Zero_2+542>
mov    0x4(%edi),%edi
jmp    0x20fc <Ruler_Count_Zero_2+862>
call   0x2888 <trap>
jmp    0x1fb4 <Ruler_Count_Zero_2+534>
cmpl   $0x0,0x8(%edi) ; "right"
je     0x2251 <Ruler_Count_Zero_2+1203>
mov    0x8(%edi),%edi
add    $0x1,%esi ; advance next character input
cmpb   $0x0,(%esi) ; if null terminator ('\0'), final check
je     0x225b <Ruler_Count_Zero_2+1213>
movzbl (%esi),%eax ; take one input
cmp    $0x36,%al ; "6"
je     0x1e82 <Ruler_Count_Zero_2+228>
cmp    $0x39,%al ; "9"
je     0x1fc3 <Ruler_Count_Zero_2+549>
call   0x2888 <trap>
jmp    0x20fc <Ruler_Count_Zero_2+862>
call   0x2888 <trap>
jmp    0x20f9 <Ruler_Count_Zero_2+859>
cmpl   $0x43,(%edi) ; compare 67
jne    0x1e78 <Ruler_Count_Zero_2+218>
```

Secara umum, dapat ditulis dalam bahasa C sebagai berikut,

```c
struct node {
  int val;
  node *left;
  node *right;
} node;

void Ruler_Count_Zero_2() {
  char *input;
  int i = 0;
  node tree; // asumsi tree sudah diisi dengan tree yang dibuat di atas
  // asumsi ada fungsi input_line di sini
  while (input[i] != '\0') {
    if (input[i] == '6') {
      tree = tree.left
    } else if (input[i] == '9') {
      tree = tree.right
    } else trap()
  }
  if (tree.val == 67) {
    win()
  } else trap()
}
```

Maka, karena target kita adalah untuk ke angka 67 itu, kita perlu ke kanan sekali dan ke kiri sekali dalam urutan itu, memberikan jawaban kita adalah `96`

> Jawaban: `96`

## English

[Indonesian Ver.](#indonesian)

### Main Function

Main Function

The program starts from main() like any other program. Here we can see that main consists of the setup, the start_game() function, and a collection of read_line() calls together with their paired functions that make up the challenges.
To start each challenge, we must enter it by first solving the previous challenge correctly (without modifying registers, jumping ahead to the next function, and so on).

### 1st Challenge

For the first challenge, shigatsu_wa_kimi_no_uso(), when we first look at this function, it appears to be doing a memcmp, which can be seen from the repz cmpsb operation.

▎ A comparison can be seen clearly in assembly through the cmp operation.

Earlier we can also see that the register %ecx holds the value 0x14, which indicates that memcmp takes 20 bytes to compare.

```asm
mov $0x14,%ecx ; size of memory being compared
mov 0x10(%esp),%esi
lea -0x2f95(%ebx),%edi
repz cmpsb %es:(%edi),%ds:(%esi) ; the main comparison
seta %al
sbb $0x0,%al
test %al,%al
jne 17c5 <shigatsu_wa_kimi_no_uso+0x30> ; jmp to fail()
```

So the next step is: how do we obtain the stored value? We can see there is also a lea operation that loads an address into the register %edi. Thus, with the help of gdb, we can easily inspect the register's contents at the moment the value is loaded.

```
(gdb) b *shigatsu_wa_kimi_no_uso+33
(gdb) run
...
(gdb) x/s $edi
0x...: "cappucino_assassino"
(gdb) x/s $esi
0x...: "input_string"
```

We can see that the register %edi holds the value cappucino_assassino. With that, we can restart the program and use this input to continue to the next challenge.

▎ Answer: cappucino_assassino
▎ Since this string is stored whole in memory, you could also just run strings heroasm and look for it among the readable strings contained in the program.

### 2nd Challenge

For the second challenge, gurren_lagann(), when we first look at this function, it again appears to be comparing a value, but now using the basic cmp operation against a whole number, 0x15, which converted to decimal is 21.

```asm
call 1340 <strtol@plt>
add $0x10,%esp
cmp $0x15,%eax
```

So, because the strtol() function was called beforehand — which converts an input string into a long, or simply put converts a string into a number — 21 is the answer to this challenge.

▎ Answer: 21

### 3rd Challenge

For the third challenge, cruel_angel_thesis(), we can see that its first operations are the setup for storing a constant string on the stack,

```asm
movl $0x4b4e415a,0x4(%esp) ; in Little Endian: 5A 41 4E 4B = "ZANK"
movl $0x554b4f,0x8(%esp) ; in Little Endian: 4F 4B 55 00 = "OKU\0"
```

▎ Note that the program uses 32-bit Little Endian, so the lowest byte (LSB) is at the lowest address. In short, the value is read backwards.

After that, the compiler performs a trick using a large number, in this case 0x4ec4ec4f. This trick is used to perform the % or modulo operation (which can be identified by looking up that large number directly). There are several ways to understand this trick, but the most effective is to skip past those operation lines and look at the multiplication at the end of the trick,

```asm
movsbl (%esi),%ecx ; ecx = input[esi], esi = iteration 1..end_of_input
sub $0x37,%ecx ; ecx - 55
mov $0x4ec4ec4f,%eax
imul %ecx
sar $0x3,%edx
mov %ecx,%eax
sar $0x1f,%eax
sub %eax,%edx
imul $0x1a,%edx,%edx ; 0x1a = 26
sub %edx,%ecx ; ecx - 26 -> ecx %= 26
add $0x41,%ecx ; ecx + 65
movsbl (%esi,%edi,1),%eax ; eax = "ZANKOKU"[esi], taking a character from the constant string per esi
cmp %eax,%ecx
je 1846 <cruel_angel_thesis+0x46>
```

At the end of those operations, we can see a formula,

```
((input[i] - 55) % 26) + 65 == "ZANKOKU"[i]
```

where i is %esi. The easiest next step is to write a program that will help us find the correct input to pass this challenge.

An example of such a program in python:

```py
target = "ZANKOKU"
for t in target:
for c in range(65, 127):
if ((c - 55) % 26) + 65 == ord(t):
print(chr(c)); break
```

▎ Answer: PQDAEAK

### 4th Challenge

For the fourth challenge, one_piece(), we can see that this challenge also stores a constant string in memory, which can be seen in the readable ASCII hexadecimal storage,

```asm
movl $0x70656e6f,0x3(%esp) ; in Little Endian: 6F 6E 65 70, "onep"
movl $0x65636569,0x7(%esp) ; in Little Endian: 69 65 63 65, "iece"
movb $0x0,0xb(%esp) ; "\0"
```

After storing that, we can also see that the input string undergoes an xor operation, then a validation of whether the xor result matches each character in the string onepiece,

```asm
movzbl 0x0(%ebp,%esi,1),%eax
xor $0x47,%eax
cmp %al,(%esi,%edi,1)
je 18de <one_piece+0x4b>
jmp 18d9 <one_piece+0x46>
mov 0xc(%esp),%eax
xor %gs:0x14,%eax
jne 190a <one_piece+0x77>
```

So, to solve this challenge, we need to apply the inverse of the xor operation, which is xor itself. An example of such a program is as follows:

```py
"".join(chr(ord(c) ^ 0x47) for c in "onepiece") # -> ()"7."$"
```

▎ Answer: ()"7."$"

### 5th Challenge

For the fifth challenge, Geometric_Dance(), we can see that it will call the scanf() function, having first pushed onto the stack (recall that on i86 32-bit the stack is used, whereas on i86-64 registers are used) 4 + 1 times. The 4 pushes are no different from one another because they represent how many inputs are received.

```asm
lea 0x1c(%esp),%eax
push %eax
lea 0x1c(%esp),%eax
push %eax
lea 0x1c(%esp),%eax
push %eax
lea 0x1c(%esp),%eax
push %eax
lea -0x2d39(%ebx),%eax
push %eax
push 0x4c(%esp)
call 12e0 <__isoc99_sscanf@plt>
```

So, we need to provide 4 inputs at once. We can see that the first input is the number 0x12d, which can be seen from the operation right after that scanf call that does a cmp against %eax, which was previously loaded with 0x12d (301).

```asm
movl $0x12d,0x18(%esp) ; push 0x12d to the stack
mov 0x8(%esp),%edx ; first input (the lowest address {0x8 from esp} is the first input)
mov 0x18(%esp),%eax ; take 0x12d from the stack into eax
cmp %eax,%edx
jne 19a6 <Geometric_Dance+0x97> ; trap
```

After that, we need to pay attention to the function call inside this function, english_or_spanish(),

```asm
0000258f <english_or_spanish>:
endbr32
mov 0x4(%esp),%eax
lea 0x1(%eax,%eax,2),%eax
ret
```

We can see that this function simply takes our input (line 2), then multiplies that value by 3 and adds 1 (line 3). We can also see back in its parent function that english_or_spanish is called 3 times, once for each input. Finally, we find that on each call to english_or_spanish the program compares against the previous value, which we can tell from the mov eax, edx and cmp eax, edx operations after the call.

So, to solve this challenge, we need 4 numbers starting from 301, each fed into the function f(x) = 3x + 1 and used as the next input.

▎ Answer: 301 904 2713 8140

### 6th Challenge

For the sixth challenge, crossing_field(), there is again a constant string in memory, followed by an input length validation, and finally ending with a jump table.

```asm
movl $0x31326669,0x5(%esp) ; in Little Endian = 69 66 32 31 : "if21"
movw $0x3033,0x9(%esp) ; in Little Endian = 33 30 : "30"
; if2130 (Operating Systems)
```

After that store, the compiler performs the strlen() function. This can be seen from the repnz scas operation, which stands for "REPeat until Non-Zero SCAn String". In short, the required input length can be derived from the formula ecx start - ecx end.

```asm
mov $0xffffffff,%ecx ; ecx start
mov %ebp,%edi
repnz scas %es:(%edi),%al
cmp $0xfffffff8,%ecx ; ecx end
```

Since ecx start is -1 and ecx end is -8, then -1 - (-8) = 7, with 6 leading characters and 1 NUL character ("\0") at the end of the input.

After the validation, the program continues with a jump table. An easy way to figure out the input from here is to again use GDB with a breakpoint on the cmp operation performed at .L47 + 0xa. After that, continue the program with the continue command and check one by one up to 6 checks against the registers %eax (target) and %edx (input).

In general, this jump table can be seen as the following equation,

```
target = "if2130"
target[i] == input[i] + table[i]
input[i] == target[i] - table[i]
with table = [-3, +4, -2, -1, +4, +5]
```

▎ The table can be obtained from the first sub or add operation of each case, ordered from .L47 to .L41.

┌─────┬────────┬───────┬────────┐
│ i │ target │ table │ input │
├─────┼────────┼───────┼────────┤
│ 0 │ i(105) │ −3 │ l(108) │
├─────┼────────┼───────┼────────┤
│ 1 │ f(102) │ +4 │ b(98) │
├─────┼────────┼───────┼────────┤
│ 2 │ 2(50) │ −2 │ 4(52) │
├─────┼────────┼───────┼────────┤
│ 3 │ 1(49) │ −1 │ 2(50) │
├─────┼────────┼───────┼────────┤
│ 4 │ 3(51) │ +4 │ /(47) │
├─────┼────────┼───────┼────────┤
│ 5 │ 0(48) │ +5 │ +(43) │
└─────┴────────┴───────┴────────┘

▎ Answer: lb42/+

### 7th Challenge

For the seventh challenge, renai_circulation(), this function uses recursion by making use of two other functions, karaage() and ramen(). This function also takes 2 inputs, which can be seen from the number of push operations performed before calling scanf() (recall the earlier challenges/functions that also used scanf).

The first input is processed by karaage() while the second input is processed by ramen(), which can be seen from the following code,

```asm
add $0x4,%esp
push 0x10(%esp)
call 24ec <karaage>
add $0x10,%esp
cmp $0x3e,%eax ; is the first input already 0x3e = 62 after karaage ?
jne 1b39 <renai_circulation+0x79>
sub $0x8,%esp
push 0x10(%esp)
push 0x10(%esp)
call 2519 <ramen>
add $0x10,%esp
cmp $0x7c0,%eax ; is the second input already 0x7c0 = 1984 after ramen ?
jne 1b40 <renai_circulation+0x80>
```

And we can see that karaage() simply calls itself until its value is > 99, and each time it is called karaage adds 2 to its input.

```asm
mov $0x0,%eax
cmp $0x63,%edx ; is the result still smaller than 0x63 = 99 ?
jle 2505 <karaage+0x19> ; if not yet, continue
...
call 24ec <karaage> ; recursive call
...
add $0x2,%eax ; add 2 to the input
jmp 2501 <karaage+0x15> ; check the result
```

Then we can also see that ramen, which takes 2 arguments (input 1 and 2), calls karaage with the first argument and then shifts that result left by the second input.

```asm
sub $0x18,%esp
push 0x1c(%esp) ; move the first input to the stack for the karaage call
call 24ec <karaage>
mov 0x24(%esp),%ecx ; move the second input
shl %cl,%eax ; shift left (* 2^ecx) karaage(first input) by the second input
```

These two functions can be written as mathematical functions as follows,

```
karaage(n) = 2*(100 - n)
ramen(m, n) = karaage(m) << n
```

So, to get the correct result, we can proceed as follows,

```
karaage(x) = 62 = 2(100 - x) => x = 69
ramen(x, y) = ramen(69, y) = 1984 = karaage(69) << y = 62 << y => y = 5
```

▎ Answer = 69 5

## Bonus Challenges

Bonus Challenges

▎ The following challenges are bonus challenges (not required to be completed).

### 8th Challenge

For the eighth challenge, kira_game(), this function begins by storing a constant string in memory and validating the input string with strlen again.

```asm
movl $0x7c395849,0x2(%esp) ; in Little Endian: 49 58 39 7c = "IX9|"
movl $0x664e7c63,0x6(%esp) ; in Little Endian: 63 7c 4e 66 = "c|Nf"
; constant string = "IX9|c|Nf"
mov $0xffffffff,%ecx ; ecx start
mov %ebp,%edi
repnz scas %es:(%edi),%al
cmp $0xfffffff6,%ecx ; ecx end
```

So, using the earlier trick, we can be sure we must provide an input whose length is -1 - (-10) = 9 = 8 leading characters + 1 NUL character ('\0').

```asm
add $0x1,%esi ; add 1 to esi (i)
cmp $0x8,%esi ; have all been checked ?
je 1bbe <kira_game+0x72>
lea 0x5(%esi,%esi,1),%eax ; eax = 2 * esi + 5
xor 0x0(%ebp,%esi,1),%al ; input ^ eax
cmp (%esi,%edi,1),%al
je 1ba7 <kira_game+0x5b> ; trap
```

Mathematically it can be written as follows:

```
string = "IX9|c|Nf"
string[i] = input[i] ^ (2 _ i + 5)
input[i] = string[i] ^ (2 _ i + 5)
```

It can be found using a program like the following,

```py
target = "IX9|c|Nf"
"".join(chr(ord(c) ^ ((i*2)+5)) for i, c in enumerate(target)) # -> L_0wns_u
```

▎ Answer: L_0wns_u

### 9th Challenge

For the ninth challenge, Shougaizettaisouaisengen(), we can see we will need an input that is 9 characters long, then it again uses the compiler's modulo trick, seen from the large number 0x38e38e39, and below it there is a lea (%edx,%edx,8),%eax operation (i.e. edx \* 9) that gives away that this is a % 9 operation (the same trick as in the 3rd Challenge).

```asm
; Loop 1 — computing both diagonals
lea -0x2f44(%eax),%edi ; array = [7 4 3 8 5 1 9 6 2]
mov 0x40(%esp),%eax
movsbl (%eax,%ebx,4),%ecx ; take input[0], input[4], input[8] (main diagonal)
sub $0x30,%ecx ; c - '0'
mov %ecx,%eax
imul %ebp ; _ 0x38e38e39 trick
sar $1,%edx
mov %ecx,%eax
sar $0x1f,%eax
sub %eax,%edx
lea (%edx,%edx,8),%eax ; edx _ 9
sub %eax,%ecx ; ecx %= 9
mov (%edi,%ecx,4),%edx ; table[(c-'0') % 9]
add %edx,0x14(%esp) ; accumulate main-diagonal sum
mov 0x40(%esp),%eax
movsbl 0x2(%eax,%ebx,2),%ecx ; take input[2], input[4], input[6] (anti-diagonal)
...
add (%edi,%ecx,4),%esi ; accumulate anti-diagonal sum
add $0x1,%ebx
cmp $0x3,%ebx
jne 1c29 <Shougaizettaisouaisengen+0x51>
```

value(c) = table[ (c - '0') % 9 ]

This first loop computes the sums of both diagonals: input[0],input[4],input[8] (main diagonal) and input[2],input[4],input[6] (anti-diagonal), storing them in 0x14(%esp) and %esi.

```asm
; Row/col loop setup
mov 0x40(%esp),%eax
mov %eax,0x1c(%esp)
add $0x9,%eax
mov %eax,0x10(%esp)
movl $0x0,0xc(%esp)
mov 0x18(%esp),%eax
lea -0x2f44(%eax),%eax ; pointer to the table again
mov %eax,0x8(%esp)
jmp 1cd8 <Shougaizettaisouaisengen+0x100>
```

```asm
; Outer loop — for each row (esi) and column (ebx)
mov 0xc(%esp),%eax
lea (%eax,%eax,2),%esi ; esi = 3 \* r -> start of row r (input[3r])
mov 0x1c(%esp),%ebx
add %ebx,%esi
add %eax,%ebx ; ebx = start of column r (input[r])
mov $0x0,%edi
mov $0x0,%ebp
```

```asm
; Inner loop — accumulate one row (ebp) and one column (edi)
movsbl (%esi),%ecx ; running row character
...
add (%eax,%ecx,4),%ebp ; row sum += value()
movsbl (%ebx),%ecx ; running column character
...
add (%eax,%ecx,4),%edi ; column sum += value()
add $0x1,%esi ; row: +1 (adjacent column)
add $0x3,%ebx ; column: +3 (row below)
cmp 0x10(%esp),%ebx
jne 1cf1 <Shougaizettaisouaisengen+0x119>
```

The outer and inner loops compute the sum of each row (input[3r+0..2], step +1) and each column (input[0..2 + c], step +3). If the input is laid out in row-major order:

```
input[0] input[1] input[2]
input[3] input[4] input[5]
input[6] input[7] input[8]
```

```asm
; Per-pass check — all sums must be equal
cmp 0x14(%esp),%ebp ; row sum == diagonal sum ?
jne 1cb8 <Shougaizettaisouaisengen+0xe0>
cmp %edi,%ebp ; column sum == row sum ?
je 1cc1 <Shougaizettaisouaisengen+0xe9>
jmp 1cb8 <Shougaizettaisouaisengen+0xe0>
```

This section requires all of the sums — both diagonals, every row, and every column — to be equal. In other words, the value() of the 9 cells must form a 3×3 magic square. Since table is a permutation of the numbers 1..9, that sum must be 15 — this is the classic Lo Shu square.

```asm
; Check if every input character is the same — traps ONLY if all 9 are identical
mov 0x40(%esp),%eax
movzbl (%eax),%eax ; al = input[0]
mov 0x40(%esp),%esi
cmp 0x1(%esi),%al ; input[0] == input[1] ?
je 1d70 <Shougaizettaisouaisengen+0x198>
... ; if even one differs, immediately ret (pass)
cmp 0x8(%esi),%al ; input[0] == input[8] ?
jne 1d68 <Shougaizettaisouaisengen+0x190>
mov 0x18(%esp),%ebx
call 2888 <trap> ; trap if ALL 9 characters are the same
```

The easiest route is to use the digits 0..8. For a digit d, value('d') = table[d]:

┌───────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┐
│ digit │ 0 │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │
├───────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ value │ 7 │ 4 │ 3 │ 8 │ 5 │ 1 │ 9 │ 6 │ 2 │
└───────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘

We want the values to form the Lo Shu square:

```
2 7 6 value->digit: 2->8 7->0 6->7
9 5 1      =>       9->6 5->4 1->5
4 3 8               4->1 3->2 8->3
```

Reading the digit grid in row-major order:

```
8 0 7
6 4 5
1 2 3 -> "807645123"
```

Quick check: main diagonal 8,4,3 → values 2,5,8 = 15 ✓; anti-diagonal 7,4,1 → 6,5,4 = 15 ✓; all rows/columns = 15 ✓; not all characters identical ✓.

▎ Answer: 807645123

### 10th Challenge

For the tenth challenge, Ruler_Count_Zero_2(), the program appears to use a lot of padding in the form of nop operations. We can simply remove these because they do not significantly affect the program. After removing them, the final result can be seen as follows.

First, the program stores many values into memory, but at the 5th store it looks like a pointer is being used. This can be seen as a struct containing a value and 2 pointers, one left and one right, like a tree.

```c
struct node {
  int val;
  node *left
  node *right
} node;
```

```asm
movl $0x3,0x8(%esp) ; node 3, no l, no r
movl $0x0,0xc(%esp)
movl $0x0,0x10(%esp)
movl $0x7,0x14(%esp) ; node 7, no l, no r
movl $0x0,0x18(%esp)
movl $0x0,0x1c(%esp)
movl $0xf,0x20(%esp) ; node 15, no l, no r
movl $0x0,0x24(%esp)
movl $0x0,0x28(%esp)
movl $0x43,0x2c(%esp) ; node 67, no l, no r
movl $0x0,0x30(%esp)
movl $0x0,0x34(%esp)
movl $0x5,0x38(%esp) ; node 5, _ 3, _ 7
lea 0x8(%esp),%eax
mov %eax,0x3c(%esp)
lea 0x14(%esp),%eax
mov %eax,0x40(%esp)
movl $0x14,0x44(%esp) ; node 20, _ 67, _ 15
lea 0x2c(%esp),%eax
mov %eax,0x48(%esp)
lea 0x20(%esp),%eax
mov %eax,0x4c(%esp)
movl $0xa,0x50(%esp) ; node 10, _ 5, _ 20
lea 0x38(%esp),%eax
mov %eax,0x54(%esp)
lea 0x44(%esp),%eax
mov %eax,0x58(%esp)
lea 0x50(%esp),%edi ; head (node 10)
```

After construction, the tree looks like the following, with root 10.

```
            10            (root)
           /  \
          5    20
         / \   / \
        3   7 67  15
```

Second, the program runs a loop checking the input. If the input character is '6' or '9', the program continues to inspect the pointer on the current node. Finally, if the next pointer is 0 — that is, there is no pointer, otherwise known as a leaf — the program performs the final check of whether the value stored at the current tree node equals 67.

```asm
cmpb $0x0,(%esi) ; if not EOF input, go to left/right
jne 0x2108 <Ruler_Count_Zero_2+874>
call 0x2888 <trap>
jmp 0x2264 <Ruler_Count_Zero_2+1222>
cmpl $0x0,0x4(%edi) ; "left"
je 0x1fbc <Ruler_Count_Zero_2+542>
mov 0x4(%edi),%edi
jmp 0x20fc <Ruler_Count_Zero_2+862>
call 0x2888 <trap>
jmp 0x1fb4 <Ruler_Count_Zero_2+534>
cmpl $0x0,0x8(%edi) ; "right"
je 0x2251 <Ruler_Count_Zero_2+1203>
mov 0x8(%edi),%edi
add $0x1,%esi ; advance to next input character
cmpb $0x0,(%esi) ; if null terminator ('\0'), final check
je 0x225b <Ruler_Count_Zero_2+1213>
movzbl (%esi),%eax ; take one input
cmp $0x36,%al ; "6"
je 0x1e82 <Ruler_Count_Zero_2+228>
cmp $0x39,%al ; "9"
je 0x1fc3 <Ruler_Count_Zero_2+549>
call 0x2888 <trap>
jmp 0x20fc <Ruler_Count_Zero_2+862>
call 0x2888 <trap>
jmp 0x20f9 <Ruler_Count_Zero_2+859>
cmpl $0x43,(%edi) ; compare 67
jne 0x1e78 <Ruler_Count_Zero_2+218>
```

In general, this can be written in C as follows,

```c
struct node {
  int val;
  node *left;
  node *right;
} node;

void Ruler_Count_Zero_2() {
  char \*input;
  int i = 0;
  node tree; // assume tree has been filled with the tree built above
  // assume there is an input_line function here
  while (input[i] != '\0') {
    if (input[i] == '6') {
      tree = tree.left
    } else if (input[i] == '9') {
      tree = tree.right
    } else trap()
  }
  if (tree.val == 67) {
    win()
  } else trap()
}
```

So, since our target is to reach the number 67, we need to go right once and left once, in that order, giving us the answer 96.

▎ Answer: 96
