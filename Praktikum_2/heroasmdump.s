
heroasm:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 c3 03 00 00       	call   13d0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 57 7f 00 00    	add    $0x7f57,%ebx
    1013:	8b 83 84 00 00 00    	mov    0x84(%ebx),%eax
    1019:	85 c0                	test   %eax,%eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   *%eax
    101f:	83 c4 08             	add    $0x8,%esp
    1022:	5b                   	pop    %ebx
    1023:	c3                   	ret

Disassembly of section .plt:

00001030 <.plt>:
    1030:	ff b3 04 00 00 00    	push   0x4(%ebx)
    1036:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    103c:	0f 1f 40 00          	nopl   0x0(%eax)
    1040:	f3 0f 1e fb          	endbr32
    1044:	68 00 00 00 00       	push   $0x0
    1049:	e9 e2 ff ff ff       	jmp    1030 <.plt>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fb          	endbr32
    1054:	68 08 00 00 00       	push   $0x8
    1059:	e9 d2 ff ff ff       	jmp    1030 <.plt>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fb          	endbr32
    1064:	68 10 00 00 00       	push   $0x10
    1069:	e9 c2 ff ff ff       	jmp    1030 <.plt>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fb          	endbr32
    1074:	68 18 00 00 00       	push   $0x18
    1079:	e9 b2 ff ff ff       	jmp    1030 <.plt>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fb          	endbr32
    1084:	68 20 00 00 00       	push   $0x20
    1089:	e9 a2 ff ff ff       	jmp    1030 <.plt>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fb          	endbr32
    1094:	68 28 00 00 00       	push   $0x28
    1099:	e9 92 ff ff ff       	jmp    1030 <.plt>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fb          	endbr32
    10a4:	68 30 00 00 00       	push   $0x30
    10a9:	e9 82 ff ff ff       	jmp    1030 <.plt>
    10ae:	66 90                	xchg   %ax,%ax
    10b0:	f3 0f 1e fb          	endbr32
    10b4:	68 38 00 00 00       	push   $0x38
    10b9:	e9 72 ff ff ff       	jmp    1030 <.plt>
    10be:	66 90                	xchg   %ax,%ax
    10c0:	f3 0f 1e fb          	endbr32
    10c4:	68 40 00 00 00       	push   $0x40
    10c9:	e9 62 ff ff ff       	jmp    1030 <.plt>
    10ce:	66 90                	xchg   %ax,%ax
    10d0:	f3 0f 1e fb          	endbr32
    10d4:	68 48 00 00 00       	push   $0x48
    10d9:	e9 52 ff ff ff       	jmp    1030 <.plt>
    10de:	66 90                	xchg   %ax,%ax
    10e0:	f3 0f 1e fb          	endbr32
    10e4:	68 50 00 00 00       	push   $0x50
    10e9:	e9 42 ff ff ff       	jmp    1030 <.plt>
    10ee:	66 90                	xchg   %ax,%ax
    10f0:	f3 0f 1e fb          	endbr32
    10f4:	68 58 00 00 00       	push   $0x58
    10f9:	e9 32 ff ff ff       	jmp    1030 <.plt>
    10fe:	66 90                	xchg   %ax,%ax
    1100:	f3 0f 1e fb          	endbr32
    1104:	68 60 00 00 00       	push   $0x60
    1109:	e9 22 ff ff ff       	jmp    1030 <.plt>
    110e:	66 90                	xchg   %ax,%ax
    1110:	f3 0f 1e fb          	endbr32
    1114:	68 68 00 00 00       	push   $0x68
    1119:	e9 12 ff ff ff       	jmp    1030 <.plt>
    111e:	66 90                	xchg   %ax,%ax
    1120:	f3 0f 1e fb          	endbr32
    1124:	68 70 00 00 00       	push   $0x70
    1129:	e9 02 ff ff ff       	jmp    1030 <.plt>
    112e:	66 90                	xchg   %ax,%ax
    1130:	f3 0f 1e fb          	endbr32
    1134:	68 78 00 00 00       	push   $0x78
    1139:	e9 f2 fe ff ff       	jmp    1030 <.plt>
    113e:	66 90                	xchg   %ax,%ax
    1140:	f3 0f 1e fb          	endbr32
    1144:	68 80 00 00 00       	push   $0x80
    1149:	e9 e2 fe ff ff       	jmp    1030 <.plt>
    114e:	66 90                	xchg   %ax,%ax
    1150:	f3 0f 1e fb          	endbr32
    1154:	68 88 00 00 00       	push   $0x88
    1159:	e9 d2 fe ff ff       	jmp    1030 <.plt>
    115e:	66 90                	xchg   %ax,%ax
    1160:	f3 0f 1e fb          	endbr32
    1164:	68 90 00 00 00       	push   $0x90
    1169:	e9 c2 fe ff ff       	jmp    1030 <.plt>
    116e:	66 90                	xchg   %ax,%ax
    1170:	f3 0f 1e fb          	endbr32
    1174:	68 98 00 00 00       	push   $0x98
    1179:	e9 b2 fe ff ff       	jmp    1030 <.plt>
    117e:	66 90                	xchg   %ax,%ax
    1180:	f3 0f 1e fb          	endbr32
    1184:	68 a0 00 00 00       	push   $0xa0
    1189:	e9 a2 fe ff ff       	jmp    1030 <.plt>
    118e:	66 90                	xchg   %ax,%ax
    1190:	f3 0f 1e fb          	endbr32
    1194:	68 a8 00 00 00       	push   $0xa8
    1199:	e9 92 fe ff ff       	jmp    1030 <.plt>
    119e:	66 90                	xchg   %ax,%ax
    11a0:	f3 0f 1e fb          	endbr32
    11a4:	68 b0 00 00 00       	push   $0xb0
    11a9:	e9 82 fe ff ff       	jmp    1030 <.plt>
    11ae:	66 90                	xchg   %ax,%ax
    11b0:	f3 0f 1e fb          	endbr32
    11b4:	68 b8 00 00 00       	push   $0xb8
    11b9:	e9 72 fe ff ff       	jmp    1030 <.plt>
    11be:	66 90                	xchg   %ax,%ax
    11c0:	f3 0f 1e fb          	endbr32
    11c4:	68 c0 00 00 00       	push   $0xc0
    11c9:	e9 62 fe ff ff       	jmp    1030 <.plt>
    11ce:	66 90                	xchg   %ax,%ax
    11d0:	f3 0f 1e fb          	endbr32
    11d4:	68 c8 00 00 00       	push   $0xc8
    11d9:	e9 52 fe ff ff       	jmp    1030 <.plt>
    11de:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fb          	endbr32
    11e4:	ff a3 80 00 00 00    	jmp    *0x80(%ebx)
    11ea:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

Disassembly of section .plt.sec:

000011f0 <__snprintf_chk@plt>:
    11f0:	f3 0f 1e fb          	endbr32
    11f4:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    11fa:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001200 <fflush@plt>:
    1200:	f3 0f 1e fb          	endbr32
    1204:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    120a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001210 <inet_pton@plt>:
    1210:	f3 0f 1e fb          	endbr32
    1214:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    121a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001220 <fgets@plt>:
    1220:	f3 0f 1e fb          	endbr32
    1224:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    122a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001230 <signal@plt>:
    1230:	f3 0f 1e fb          	endbr32
    1234:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
    123a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001240 <sleep@plt>:
    1240:	f3 0f 1e fb          	endbr32
    1244:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
    124a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001250 <alarm@plt>:
    1250:	f3 0f 1e fb          	endbr32
    1254:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
    125a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001260 <popen@plt>:
    1260:	f3 0f 1e fb          	endbr32
    1264:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
    126a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001270 <__stack_chk_fail@plt>:
    1270:	f3 0f 1e fb          	endbr32
    1274:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
    127a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001280 <strtok_r@plt>:
    1280:	f3 0f 1e fb          	endbr32
    1284:	ff a3 30 00 00 00    	jmp    *0x30(%ebx)
    128a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001290 <getenv@plt>:
    1290:	f3 0f 1e fb          	endbr32
    1294:	ff a3 34 00 00 00    	jmp    *0x34(%ebx)
    129a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

000012a0 <puts@plt>:
    12a0:	f3 0f 1e fb          	endbr32
    12a4:	ff a3 38 00 00 00    	jmp    *0x38(%ebx)
    12aa:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

000012b0 <exit@plt>:
    12b0:	f3 0f 1e fb          	endbr32
    12b4:	ff a3 3c 00 00 00    	jmp    *0x3c(%ebx)
    12ba:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

000012c0 <pclose@plt>:
    12c0:	f3 0f 1e fb          	endbr32
    12c4:	ff a3 40 00 00 00    	jmp    *0x40(%ebx)
    12ca:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

000012d0 <__libc_start_main@plt>:
    12d0:	f3 0f 1e fb          	endbr32
    12d4:	ff a3 44 00 00 00    	jmp    *0x44(%ebx)
    12da:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

000012e0 <__isoc99_sscanf@plt>:
    12e0:	f3 0f 1e fb          	endbr32
    12e4:	ff a3 48 00 00 00    	jmp    *0x48(%ebx)
    12ea:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

000012f0 <fopen@plt>:
    12f0:	f3 0f 1e fb          	endbr32
    12f4:	ff a3 4c 00 00 00    	jmp    *0x4c(%ebx)
    12fa:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001300 <putchar@plt>:
    1300:	f3 0f 1e fb          	endbr32
    1304:	ff a3 50 00 00 00    	jmp    *0x50(%ebx)
    130a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001310 <__printf_chk@plt>:
    1310:	f3 0f 1e fb          	endbr32
    1314:	ff a3 54 00 00 00    	jmp    *0x54(%ebx)
    131a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001320 <socket@plt>:
    1320:	f3 0f 1e fb          	endbr32
    1324:	ff a3 58 00 00 00    	jmp    *0x58(%ebx)
    132a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001330 <__fprintf_chk@plt>:
    1330:	f3 0f 1e fb          	endbr32
    1334:	ff a3 5c 00 00 00    	jmp    *0x5c(%ebx)
    133a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001340 <strtol@plt>:
    1340:	f3 0f 1e fb          	endbr32
    1344:	ff a3 60 00 00 00    	jmp    *0x60(%ebx)
    134a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001350 <connect@plt>:
    1350:	f3 0f 1e fb          	endbr32
    1354:	ff a3 64 00 00 00    	jmp    *0x64(%ebx)
    135a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001360 <close@plt>:
    1360:	f3 0f 1e fb          	endbr32
    1364:	ff a3 68 00 00 00    	jmp    *0x68(%ebx)
    136a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fb          	endbr32
    1374:	ff a3 6c 00 00 00    	jmp    *0x6c(%ebx)
    137a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fb          	endbr32
    1384:	ff a3 70 00 00 00    	jmp    *0x70(%ebx)
    138a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

Disassembly of section .text:

00001390 <_start>:
    1390:	f3 0f 1e fb          	endbr32
    1394:	31 ed                	xor    %ebp,%ebp
    1396:	5e                   	pop    %esi
    1397:	89 e1                	mov    %esp,%ecx
    1399:	83 e4 f0             	and    $0xfffffff0,%esp
    139c:	50                   	push   %eax
    139d:	54                   	push   %esp
    139e:	52                   	push   %edx
    139f:	e8 22 00 00 00       	call   13c6 <_start+0x36>
    13a4:	81 c3 c0 7b 00 00    	add    $0x7bc0,%ebx
    13aa:	8d 83 7c a4 ff ff    	lea    -0x5b84(%ebx),%eax
    13b0:	50                   	push   %eax
    13b1:	8d 83 0c a4 ff ff    	lea    -0x5bf4(%ebx),%eax
    13b7:	50                   	push   %eax
    13b8:	51                   	push   %ecx
    13b9:	56                   	push   %esi
    13ba:	ff b3 94 00 00 00    	push   0x94(%ebx)
    13c0:	e8 0b ff ff ff       	call   12d0 <__libc_start_main@plt>
    13c5:	f4                   	hlt
    13c6:	8b 1c 24             	mov    (%esp),%ebx
    13c9:	c3                   	ret
    13ca:	66 90                	xchg   %ax,%ax
    13cc:	66 90                	xchg   %ax,%ax
    13ce:	66 90                	xchg   %ax,%ax

000013d0 <__x86.get_pc_thunk.bx>:
    13d0:	8b 1c 24             	mov    (%esp),%ebx
    13d3:	c3                   	ret
    13d4:	66 90                	xchg   %ax,%ax
    13d6:	66 90                	xchg   %ax,%ax
    13d8:	66 90                	xchg   %ax,%ax
    13da:	66 90                	xchg   %ax,%ax
    13dc:	66 90                	xchg   %ax,%ax
    13de:	66 90                	xchg   %ax,%ax

000013e0 <deregister_tm_clones>:
    13e0:	e8 e4 00 00 00       	call   14c9 <__x86.get_pc_thunk.dx>
    13e5:	81 c2 7f 7b 00 00    	add    $0x7b7f,%edx
    13eb:	8d 8a dc 06 00 00    	lea    0x6dc(%edx),%ecx
    13f1:	8d 82 dc 06 00 00    	lea    0x6dc(%edx),%eax
    13f7:	39 c8                	cmp    %ecx,%eax
    13f9:	74 1d                	je     1418 <deregister_tm_clones+0x38>
    13fb:	8b 82 74 00 00 00    	mov    0x74(%edx),%eax
    1401:	85 c0                	test   %eax,%eax
    1403:	74 13                	je     1418 <deregister_tm_clones+0x38>
    1405:	55                   	push   %ebp
    1406:	89 e5                	mov    %esp,%ebp
    1408:	83 ec 14             	sub    $0x14,%esp
    140b:	51                   	push   %ecx
    140c:	ff d0                	call   *%eax
    140e:	83 c4 10             	add    $0x10,%esp
    1411:	c9                   	leave
    1412:	c3                   	ret
    1413:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1417:	90                   	nop
    1418:	c3                   	ret
    1419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001420 <register_tm_clones>:
    1420:	e8 a4 00 00 00       	call   14c9 <__x86.get_pc_thunk.dx>
    1425:	81 c2 3f 7b 00 00    	add    $0x7b3f,%edx
    142b:	55                   	push   %ebp
    142c:	89 e5                	mov    %esp,%ebp
    142e:	53                   	push   %ebx
    142f:	8d 8a dc 06 00 00    	lea    0x6dc(%edx),%ecx
    1435:	8d 82 dc 06 00 00    	lea    0x6dc(%edx),%eax
    143b:	83 ec 04             	sub    $0x4,%esp
    143e:	29 c8                	sub    %ecx,%eax
    1440:	89 c3                	mov    %eax,%ebx
    1442:	c1 e8 1f             	shr    $0x1f,%eax
    1445:	c1 fb 02             	sar    $0x2,%ebx
    1448:	01 d8                	add    %ebx,%eax
    144a:	d1 f8                	sar    $1,%eax
    144c:	74 14                	je     1462 <register_tm_clones+0x42>
    144e:	8b 92 98 00 00 00    	mov    0x98(%edx),%edx
    1454:	85 d2                	test   %edx,%edx
    1456:	74 0a                	je     1462 <register_tm_clones+0x42>
    1458:	83 ec 08             	sub    $0x8,%esp
    145b:	50                   	push   %eax
    145c:	51                   	push   %ecx
    145d:	ff d2                	call   *%edx
    145f:	83 c4 10             	add    $0x10,%esp
    1462:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1465:	c9                   	leave
    1466:	c3                   	ret
    1467:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    146e:	66 90                	xchg   %ax,%ax

00001470 <__do_global_dtors_aux>:
    1470:	f3 0f 1e fb          	endbr32
    1474:	55                   	push   %ebp
    1475:	89 e5                	mov    %esp,%ebp
    1477:	53                   	push   %ebx
    1478:	e8 53 ff ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    147d:	81 c3 e7 7a 00 00    	add    $0x7ae7,%ebx
    1483:	83 ec 04             	sub    $0x4,%esp
    1486:	80 bb dc 06 00 00 00 	cmpb   $0x0,0x6dc(%ebx)
    148d:	75 27                	jne    14b6 <__do_global_dtors_aux+0x46>
    148f:	8b 83 80 00 00 00    	mov    0x80(%ebx),%eax
    1495:	85 c0                	test   %eax,%eax
    1497:	74 11                	je     14aa <__do_global_dtors_aux+0x3a>
    1499:	83 ec 0c             	sub    $0xc,%esp
    149c:	ff b3 a0 00 00 00    	push   0xa0(%ebx)
    14a2:	e8 39 fd ff ff       	call   11e0 <__cxa_finalize@plt>
    14a7:	83 c4 10             	add    $0x10,%esp
    14aa:	e8 31 ff ff ff       	call   13e0 <deregister_tm_clones>
    14af:	c6 83 dc 06 00 00 01 	movb   $0x1,0x6dc(%ebx)
    14b6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    14b9:	c9                   	leave
    14ba:	c3                   	ret
    14bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14bf:	90                   	nop

000014c0 <frame_dummy>:
    14c0:	f3 0f 1e fb          	endbr32
    14c4:	e9 57 ff ff ff       	jmp    1420 <register_tm_clones>

000014c9 <__x86.get_pc_thunk.dx>:
    14c9:	8b 14 24             	mov    (%esp),%edx
    14cc:	c3                   	ret

000014cd <main>:
    14cd:	f3 0f 1e fb          	endbr32
    14d1:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    14d5:	83 e4 f0             	and    $0xfffffff0,%esp
    14d8:	ff 71 fc             	push   -0x4(%ecx)
    14db:	55                   	push   %ebp
    14dc:	89 e5                	mov    %esp,%ebp
    14de:	57                   	push   %edi
    14df:	56                   	push   %esi
    14e0:	53                   	push   %ebx
    14e1:	51                   	push   %ecx
    14e2:	83 ec 14             	sub    $0x14,%esp
    14e5:	e8 e6 fe ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    14ea:	81 c3 7a 7a 00 00    	add    $0x7a7a,%ebx
    14f0:	8b 31                	mov    (%ecx),%esi
    14f2:	8b 79 04             	mov    0x4(%ecx),%edi
    14f5:	8d 83 a4 b0 ff ff    	lea    -0x4f5c(%ebx),%eax
    14fb:	50                   	push   %eax
    14fc:	e8 9f fd ff ff       	call   12a0 <puts@plt>
    1501:	83 c4 10             	add    $0x10,%esp
    1504:	83 fe 01             	cmp    $0x1,%esi
    1507:	0f 84 35 02 00 00    	je     1742 <main+0x275>
    150d:	83 fe 02             	cmp    $0x2,%esi
    1510:	0f 85 60 02 00 00    	jne    1776 <main+0x2a9>
    1516:	83 ec 08             	sub    $0x8,%esp
    1519:	8d 83 b0 b0 ff ff    	lea    -0x4f50(%ebx),%eax
    151f:	50                   	push   %eax
    1520:	ff 77 04             	push   0x4(%edi)
    1523:	e8 c8 fd ff ff       	call   12f0 <fopen@plt>
    1528:	8d 93 e4 06 00 00    	lea    0x6e4(%ebx),%edx
    152e:	89 02                	mov    %eax,(%edx)
    1530:	83 c4 10             	add    $0x10,%esp
    1533:	85 c0                	test   %eax,%eax
    1535:	0f 84 1c 02 00 00    	je     1757 <main+0x28a>
    153b:	e8 ed 10 00 00       	call   262d <start_game>
    1540:	83 ec 08             	sub    $0x8,%esp
    1543:	8d 83 ec b0 ff ff    	lea    -0x4f14(%ebx),%eax
    1549:	50                   	push   %eax
    154a:	6a 01                	push   $0x1
    154c:	e8 bf fd ff ff       	call   1310 <__printf_chk@plt>
    1551:	e8 6c 15 00 00       	call   2ac2 <read_line>
    1556:	89 04 24             	mov    %eax,(%esp)
    1559:	e8 37 02 00 00       	call   1795 <shigatsu_wa_kimi_no_uso>
    155e:	e8 8e 16 00 00       	call   2bf1 <stage_completed>
    1563:	83 c4 08             	add    $0x8,%esp
    1566:	8d 83 cc b4 ff ff    	lea    -0x4b34(%ebx),%eax
    156c:	50                   	push   %eax
    156d:	6a 01                	push   $0x1
    156f:	e8 9c fd ff ff       	call   1310 <__printf_chk@plt>
    1574:	e8 49 15 00 00       	call   2ac2 <read_line>
    1579:	89 04 24             	mov    %eax,(%esp)
    157c:	e8 4b 02 00 00       	call   17cc <gurren_lagann>
    1581:	e8 6b 16 00 00       	call   2bf1 <stage_completed>
    1586:	83 c4 08             	add    $0x8,%esp
    1589:	8d 83 2c b6 ff ff    	lea    -0x49d4(%ebx),%eax
    158f:	50                   	push   %eax
    1590:	6a 01                	push   $0x1
    1592:	e8 79 fd ff ff       	call   1310 <__printf_chk@plt>
    1597:	e8 26 15 00 00       	call   2ac2 <read_line>
    159c:	89 04 24             	mov    %eax,(%esp)
    159f:	e8 5c 02 00 00       	call   1800 <cruel_angel_thesis>
    15a4:	e8 48 16 00 00       	call   2bf1 <stage_completed>
    15a9:	83 c4 08             	add    $0x8,%esp
    15ac:	8d 83 c8 b7 ff ff    	lea    -0x4838(%ebx),%eax
    15b2:	50                   	push   %eax
    15b3:	6a 01                	push   $0x1
    15b5:	e8 56 fd ff ff       	call   1310 <__printf_chk@plt>
    15ba:	e8 03 15 00 00       	call   2ac2 <read_line>
    15bf:	89 04 24             	mov    %eax,(%esp)
    15c2:	e8 cc 02 00 00       	call   1893 <one_piece>
    15c7:	e8 25 16 00 00       	call   2bf1 <stage_completed>
    15cc:	83 c4 08             	add    $0x8,%esp
    15cf:	8d 83 4c b9 ff ff    	lea    -0x46b4(%ebx),%eax
    15d5:	50                   	push   %eax
    15d6:	6a 01                	push   $0x1
    15d8:	e8 33 fd ff ff       	call   1310 <__printf_chk@plt>
    15dd:	e8 e0 14 00 00       	call   2ac2 <read_line>
    15e2:	89 04 24             	mov    %eax,(%esp)
    15e5:	e8 25 03 00 00       	call   190f <Geometric_Dance>
    15ea:	e8 02 16 00 00       	call   2bf1 <stage_completed>
    15ef:	83 c4 08             	add    $0x8,%esp
    15f2:	8d 83 0c bb ff ff    	lea    -0x44f4(%ebx),%eax
    15f8:	50                   	push   %eax
    15f9:	6a 01                	push   $0x1
    15fb:	e8 10 fd ff ff       	call   1310 <__printf_chk@plt>
    1600:	e8 bd 14 00 00       	call   2ac2 <read_line>
    1605:	89 04 24             	mov    %eax,(%esp)
    1608:	e8 db 03 00 00       	call   19e8 <crossing_field>
    160d:	e8 df 15 00 00       	call   2bf1 <stage_completed>
    1612:	83 c4 08             	add    $0x8,%esp
    1615:	8d 83 c8 bc ff ff    	lea    -0x4338(%ebx),%eax
    161b:	50                   	push   %eax
    161c:	6a 01                	push   $0x1
    161e:	e8 ed fc ff ff       	call   1310 <__printf_chk@plt>
    1623:	e8 9a 14 00 00       	call   2ac2 <read_line>
    1628:	89 04 24             	mov    %eax,(%esp)
    162b:	e8 90 04 00 00       	call   1ac0 <renai_circulation>
    1630:	e8 bc 15 00 00       	call   2bf1 <stage_completed>
    1635:	8d 83 38 be ff ff    	lea    -0x41c8(%ebx),%eax
    163b:	89 04 24             	mov    %eax,(%esp)
    163e:	e8 5d fc ff ff       	call   12a0 <puts@plt>
    1643:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    164a:	e8 f1 fb ff ff       	call   1240 <sleep@plt>
    164f:	8d 83 e4 be ff ff    	lea    -0x411c(%ebx),%eax
    1655:	89 04 24             	mov    %eax,(%esp)
    1658:	e8 43 fc ff ff       	call   12a0 <puts@plt>
    165d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1664:	e8 d7 fb ff ff       	call   1240 <sleep@plt>
    1669:	83 c4 08             	add    $0x8,%esp
    166c:	8d 83 e4 c3 ff ff    	lea    -0x3c1c(%ebx),%eax
    1672:	50                   	push   %eax
    1673:	6a 01                	push   $0x1
    1675:	e8 96 fc ff ff       	call   1310 <__printf_chk@plt>
    167a:	e8 43 14 00 00       	call   2ac2 <read_line>
    167f:	89 04 24             	mov    %eax,(%esp)
    1682:	e8 c5 04 00 00       	call   1b4c <kira_game>
    1687:	e8 65 15 00 00       	call   2bf1 <stage_completed>
    168c:	83 c4 08             	add    $0x8,%esp
    168f:	8d 83 f0 c4 ff ff    	lea    -0x3b10(%ebx),%eax
    1695:	50                   	push   %eax
    1696:	6a 01                	push   $0x1
    1698:	e8 73 fc ff ff       	call   1310 <__printf_chk@plt>
    169d:	e8 20 14 00 00       	call   2ac2 <read_line>
    16a2:	89 04 24             	mov    %eax,(%esp)
    16a5:	e8 2e 05 00 00       	call   1bd8 <Shougaizettaisouaisengen>
    16aa:	e8 42 15 00 00       	call   2bf1 <stage_completed>
    16af:	83 c4 08             	add    $0x8,%esp
    16b2:	8d 83 f0 c6 ff ff    	lea    -0x3910(%ebx),%eax
    16b8:	50                   	push   %eax
    16b9:	6a 01                	push   $0x1
    16bb:	e8 50 fc ff ff       	call   1310 <__printf_chk@plt>
    16c0:	e8 fd 13 00 00       	call   2ac2 <read_line>
    16c5:	89 04 24             	mov    %eax,(%esp)
    16c8:	e8 d1 06 00 00       	call   1d9e <Ruler_Count_Zero_2>
    16cd:	e8 1f 15 00 00       	call   2bf1 <stage_completed>
    16d2:	8d 83 40 c9 ff ff    	lea    -0x36c0(%ebx),%eax
    16d8:	89 04 24             	mov    %eax,(%esp)
    16db:	e8 c0 fb ff ff       	call   12a0 <puts@plt>
    16e0:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    16e7:	e8 54 fb ff ff       	call   1240 <sleep@plt>
    16ec:	8d 83 48 ca ff ff    	lea    -0x35b8(%ebx),%eax
    16f2:	89 04 24             	mov    %eax,(%esp)
    16f5:	e8 a6 fb ff ff       	call   12a0 <puts@plt>
    16fa:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    1701:	e8 3a fb ff ff       	call   1240 <sleep@plt>
    1706:	8d 83 f4 cc ff ff    	lea    -0x330c(%ebx),%eax
    170c:	89 04 24             	mov    %eax,(%esp)
    170f:	e8 8c fb ff ff       	call   12a0 <puts@plt>
    1714:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    171b:	e8 20 fb ff ff       	call   1240 <sleep@plt>
    1720:	8d 83 58 ce ff ff    	lea    -0x31a8(%ebx),%eax
    1726:	89 04 24             	mov    %eax,(%esp)
    1729:	e8 72 fb ff ff       	call   12a0 <puts@plt>
    172e:	83 c4 10             	add    $0x10,%esp
    1731:	b8 00 00 00 00       	mov    $0x0,%eax
    1736:	8d 65 f0             	lea    -0x10(%ebp),%esp
    1739:	59                   	pop    %ecx
    173a:	5b                   	pop    %ebx
    173b:	5e                   	pop    %esi
    173c:	5f                   	pop    %edi
    173d:	5d                   	pop    %ebp
    173e:	8d 61 fc             	lea    -0x4(%ecx),%esp
    1741:	c3                   	ret
    1742:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
    1748:	8b 10                	mov    (%eax),%edx
    174a:	8d 83 e4 06 00 00    	lea    0x6e4(%ebx),%eax
    1750:	89 10                	mov    %edx,(%eax)
    1752:	e9 e4 fd ff ff       	jmp    153b <main+0x6e>
    1757:	ff 77 04             	push   0x4(%edi)
    175a:	ff 37                	push   (%edi)
    175c:	8d 83 b2 b0 ff ff    	lea    -0x4f4e(%ebx),%eax
    1762:	50                   	push   %eax
    1763:	6a 01                	push   $0x1
    1765:	e8 a6 fb ff ff       	call   1310 <__printf_chk@plt>
    176a:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    1771:	e8 3a fb ff ff       	call   12b0 <exit@plt>
    1776:	83 ec 04             	sub    $0x4,%esp
    1779:	ff 37                	push   (%edi)
    177b:	8d 83 cf b0 ff ff    	lea    -0x4f31(%ebx),%eax
    1781:	50                   	push   %eax
    1782:	6a 01                	push   $0x1
    1784:	e8 87 fb ff ff       	call   1310 <__printf_chk@plt>
    1789:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    1790:	e8 1b fb ff ff       	call   12b0 <exit@plt>

00001795 <shigatsu_wa_kimi_no_uso>:
    1795:	f3 0f 1e fb          	endbr32
    1799:	57                   	push   %edi
    179a:	56                   	push   %esi
    179b:	53                   	push   %ebx
    179c:	e8 2f fc ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    17a1:	81 c3 c3 77 00 00    	add    $0x77c3,%ebx
    17a7:	b9 14 00 00 00       	mov    $0x14,%ecx
    17ac:	8b 74 24 10          	mov    0x10(%esp),%esi
    17b0:	8d bb 6b d0 ff ff    	lea    -0x2f95(%ebx),%edi
    17b6:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
    17b8:	0f 97 c0             	seta   %al
    17bb:	1c 00                	sbb    $0x0,%al
    17bd:	84 c0                	test   %al,%al
    17bf:	75 04                	jne    17c5 <shigatsu_wa_kimi_no_uso+0x30>
    17c1:	5b                   	pop    %ebx
    17c2:	5e                   	pop    %esi
    17c3:	5f                   	pop    %edi
    17c4:	c3                   	ret
    17c5:	e8 be 10 00 00       	call   2888 <trap>
    17ca:	eb f5                	jmp    17c1 <shigatsu_wa_kimi_no_uso+0x2c>

000017cc <gurren_lagann>:
    17cc:	f3 0f 1e fb          	endbr32
    17d0:	53                   	push   %ebx
    17d1:	83 ec 0c             	sub    $0xc,%esp
    17d4:	e8 f7 fb ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    17d9:	81 c3 8b 77 00 00    	add    $0x778b,%ebx
    17df:	6a 0a                	push   $0xa
    17e1:	6a 00                	push   $0x0
    17e3:	ff 74 24 1c          	push   0x1c(%esp)
    17e7:	e8 54 fb ff ff       	call   1340 <strtol@plt>
    17ec:	83 c4 10             	add    $0x10,%esp
    17ef:	83 f8 15             	cmp    $0x15,%eax
    17f2:	75 05                	jne    17f9 <gurren_lagann+0x2d>
    17f4:	83 c4 08             	add    $0x8,%esp
    17f7:	5b                   	pop    %ebx
    17f8:	c3                   	ret
    17f9:	e8 8a 10 00 00       	call   2888 <trap>
    17fe:	eb f4                	jmp    17f4 <gurren_lagann+0x28>

00001800 <cruel_angel_thesis>:
    1800:	f3 0f 1e fb          	endbr32
    1804:	55                   	push   %ebp
    1805:	57                   	push   %edi
    1806:	56                   	push   %esi
    1807:	53                   	push   %ebx
    1808:	83 ec 1c             	sub    $0x1c,%esp
    180b:	e8 c0 fb ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    1810:	81 c3 54 77 00 00    	add    $0x7754,%ebx
    1816:	8b 6c 24 30          	mov    0x30(%esp),%ebp
    181a:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1820:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1824:	31 c0                	xor    %eax,%eax
    1826:	c7 44 24 04 5a 41 4e 	movl   $0x4b4e415a,0x4(%esp)
    182d:	4b 
    182e:	c7 44 24 08 4f 4b 55 	movl   $0x554b4f,0x8(%esp)
    1835:	00 
    1836:	be 00 00 00 00       	mov    $0x0,%esi
    183b:	8d 7c 24 04          	lea    0x4(%esp),%edi
    183f:	eb 0d                	jmp    184e <cruel_angel_thesis+0x4e>
    1841:	e8 42 10 00 00       	call   2888 <trap>
    1846:	83 c6 01             	add    $0x1,%esi
    1849:	83 fe 07             	cmp    $0x7,%esi
    184c:	74 2b                	je     1879 <cruel_angel_thesis+0x79>
    184e:	0f be 4c 35 00       	movsbl 0x0(%ebp,%esi,1),%ecx
    1853:	83 e9 37             	sub    $0x37,%ecx
    1856:	b8 4f ec c4 4e       	mov    $0x4ec4ec4f,%eax
    185b:	f7 e9                	imul   %ecx
    185d:	c1 fa 03             	sar    $0x3,%edx
    1860:	89 c8                	mov    %ecx,%eax
    1862:	c1 f8 1f             	sar    $0x1f,%eax
    1865:	29 c2                	sub    %eax,%edx
    1867:	6b d2 1a             	imul   $0x1a,%edx,%edx
    186a:	29 d1                	sub    %edx,%ecx
    186c:	83 c1 41             	add    $0x41,%ecx
    186f:	0f be 04 3e          	movsbl (%esi,%edi,1),%eax
    1873:	39 c1                	cmp    %eax,%ecx
    1875:	74 cf                	je     1846 <cruel_angel_thesis+0x46>
    1877:	eb c8                	jmp    1841 <cruel_angel_thesis+0x41>
    1879:	8b 44 24 0c          	mov    0xc(%esp),%eax
    187d:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    1884:	75 08                	jne    188e <cruel_angel_thesis+0x8e>
    1886:	83 c4 1c             	add    $0x1c,%esp
    1889:	5b                   	pop    %ebx
    188a:	5e                   	pop    %esi
    188b:	5f                   	pop    %edi
    188c:	5d                   	pop    %ebp
    188d:	c3                   	ret
    188e:	e8 5d 1b 00 00       	call   33f0 <__stack_chk_fail_local>

00001893 <one_piece>:
    1893:	f3 0f 1e fb          	endbr32
    1897:	55                   	push   %ebp
    1898:	57                   	push   %edi
    1899:	56                   	push   %esi
    189a:	53                   	push   %ebx
    189b:	83 ec 1c             	sub    $0x1c,%esp
    189e:	e8 2d fb ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    18a3:	81 c3 c1 76 00 00    	add    $0x76c1,%ebx
    18a9:	8b 6c 24 30          	mov    0x30(%esp),%ebp
    18ad:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    18b3:	89 44 24 0c          	mov    %eax,0xc(%esp)
    18b7:	31 c0                	xor    %eax,%eax
    18b9:	c7 44 24 03 6f 6e 65 	movl   $0x70656e6f,0x3(%esp)
    18c0:	70 
    18c1:	c7 44 24 07 69 65 63 	movl   $0x65636569,0x7(%esp)
    18c8:	65 
    18c9:	c6 44 24 0b 00       	movb   $0x0,0xb(%esp)
    18ce:	be 00 00 00 00       	mov    $0x0,%esi
    18d3:	8d 7c 24 03          	lea    0x3(%esp),%edi
    18d7:	eb 0d                	jmp    18e6 <one_piece+0x53>
    18d9:	e8 aa 0f 00 00       	call   2888 <trap>
    18de:	83 c6 01             	add    $0x1,%esi
    18e1:	83 fe 08             	cmp    $0x8,%esi
    18e4:	74 0f                	je     18f5 <one_piece+0x62>
    18e6:	0f b6 44 35 00       	movzbl 0x0(%ebp,%esi,1),%eax
    18eb:	83 f0 47             	xor    $0x47,%eax
    18ee:	38 04 3e             	cmp    %al,(%esi,%edi,1)
    18f1:	74 eb                	je     18de <one_piece+0x4b>
    18f3:	eb e4                	jmp    18d9 <one_piece+0x46>
    18f5:	8b 44 24 0c          	mov    0xc(%esp),%eax
    18f9:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    1900:	75 08                	jne    190a <one_piece+0x77>
    1902:	83 c4 1c             	add    $0x1c,%esp
    1905:	5b                   	pop    %ebx
    1906:	5e                   	pop    %esi
    1907:	5f                   	pop    %edi
    1908:	5d                   	pop    %ebp
    1909:	c3                   	ret
    190a:	e8 e1 1a 00 00       	call   33f0 <__stack_chk_fail_local>

0000190f <Geometric_Dance>:
    190f:	f3 0f 1e fb          	endbr32
    1913:	53                   	push   %ebx
    1914:	83 ec 30             	sub    $0x30,%esp
    1917:	e8 b4 fa ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    191c:	81 c3 48 76 00 00    	add    $0x7648,%ebx
    1922:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1928:	89 44 24 24          	mov    %eax,0x24(%esp)
    192c:	31 c0                	xor    %eax,%eax
    192e:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    1932:	50                   	push   %eax
    1933:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    1937:	50                   	push   %eax
    1938:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    193c:	50                   	push   %eax
    193d:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    1941:	50                   	push   %eax
    1942:	8d 83 c7 d2 ff ff    	lea    -0x2d39(%ebx),%eax
    1948:	50                   	push   %eax
    1949:	ff 74 24 4c          	push   0x4c(%esp)
    194d:	e8 8e f9 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1952:	83 c4 20             	add    $0x20,%esp
    1955:	83 f8 04             	cmp    $0x4,%eax
    1958:	75 45                	jne    199f <Geometric_Dance+0x90>
    195a:	c7 44 24 18 2d 01 00 	movl   $0x12d,0x18(%esp)
    1961:	00 
    1962:	8b 54 24 08          	mov    0x8(%esp),%edx
    1966:	8b 44 24 18          	mov    0x18(%esp),%eax
    196a:	39 c2                	cmp    %eax,%edx
    196c:	75 38                	jne    19a6 <Geometric_Dance+0x97>
    196e:	8b 44 24 08          	mov    0x8(%esp),%eax
    1972:	83 ec 0c             	sub    $0xc,%esp
    1975:	50                   	push   %eax
    1976:	e8 14 0c 00 00       	call   258f <english_or_spanish>
    197b:	89 c2                	mov    %eax,%edx
    197d:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    1981:	83 c4 10             	add    $0x10,%esp
    1984:	39 c2                	cmp    %eax,%edx
    1986:	74 25                	je     19ad <Geometric_Dance+0x9e>
    1988:	e8 fb 0e 00 00       	call   2888 <trap>
    198d:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    1991:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    1998:	75 49                	jne    19e3 <Geometric_Dance+0xd4>
    199a:	83 c4 28             	add    $0x28,%esp
    199d:	5b                   	pop    %ebx
    199e:	c3                   	ret
    199f:	e8 e4 0e 00 00       	call   2888 <trap>
    19a4:	eb b4                	jmp    195a <Geometric_Dance+0x4b>
    19a6:	e8 dd 0e 00 00       	call   2888 <trap>
    19ab:	eb c1                	jmp    196e <Geometric_Dance+0x5f>
    19ad:	8b 44 24 0c          	mov    0xc(%esp),%eax
    19b1:	83 ec 0c             	sub    $0xc,%esp
    19b4:	50                   	push   %eax
    19b5:	e8 d5 0b 00 00       	call   258f <english_or_spanish>
    19ba:	89 c2                	mov    %eax,%edx
    19bc:	8b 44 24 20          	mov    0x20(%esp),%eax
    19c0:	83 c4 10             	add    $0x10,%esp
    19c3:	39 c2                	cmp    %eax,%edx
    19c5:	75 c1                	jne    1988 <Geometric_Dance+0x79>
    19c7:	8b 44 24 10          	mov    0x10(%esp),%eax
    19cb:	83 ec 0c             	sub    $0xc,%esp
    19ce:	50                   	push   %eax
    19cf:	e8 bb 0b 00 00       	call   258f <english_or_spanish>
    19d4:	89 c2                	mov    %eax,%edx
    19d6:	8b 44 24 24          	mov    0x24(%esp),%eax
    19da:	83 c4 10             	add    $0x10,%esp
    19dd:	39 c2                	cmp    %eax,%edx
    19df:	75 a7                	jne    1988 <Geometric_Dance+0x79>
    19e1:	eb aa                	jmp    198d <Geometric_Dance+0x7e>
    19e3:	e8 08 1a 00 00       	call   33f0 <__stack_chk_fail_local>

000019e8 <crossing_field>:
    19e8:	f3 0f 1e fb          	endbr32
    19ec:	55                   	push   %ebp
    19ed:	57                   	push   %edi
    19ee:	56                   	push   %esi
    19ef:	53                   	push   %ebx
    19f0:	83 ec 1c             	sub    $0x1c,%esp
    19f3:	e8 d8 f9 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    19f8:	81 c3 6c 75 00 00    	add    $0x756c,%ebx
    19fe:	8b 6c 24 30          	mov    0x30(%esp),%ebp
    1a02:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1a08:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1a0c:	31 c0                	xor    %eax,%eax
    1a0e:	c7 44 24 05 69 66 32 	movl   $0x31326669,0x5(%esp)
    1a15:	31 
    1a16:	66 c7 44 24 09 33 30 	movw   $0x3033,0x9(%esp)
    1a1d:	c6 44 24 0b 00       	movb   $0x0,0xb(%esp)
    1a22:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    1a27:	89 ef                	mov    %ebp,%edi
    1a29:	f2 ae                	repnz scas %es:(%edi),%al
    1a2b:	83 f9 f8             	cmp    $0xfffffff8,%ecx
    1a2e:	75 0b                	jne    1a3b <crossing_field+0x53>
    1a30:	be 01 00 00 00       	mov    $0x1,%esi
    1a35:	8d 7c 24 04          	lea    0x4(%esp),%edi
    1a39:	eb 22                	jmp    1a5d <.L47+0x1b>
    1a3b:	e8 48 0e 00 00       	call   2888 <trap>
    1a40:	eb ee                	jmp    1a30 <crossing_field+0x48>

00001a42 <.L47>:
    1a42:	83 e8 03             	sub    $0x3,%eax
    1a45:	0f b6 c0             	movzbl %al,%eax
    1a48:	0f be 14 37          	movsbl (%edi,%esi,1),%edx
    1a4c:	39 d0                	cmp    %edx,%eax
    1a4e:	74 0a                	je     1a5a <.L47+0x18>
    1a50:	e8 33 0e 00 00       	call   2888 <trap>
    1a55:	83 fe 05             	cmp    $0x5,%esi
    1a58:	7f 3f                	jg     1a99 <.L41+0xf>
    1a5a:	83 c6 01             	add    $0x1,%esi
    1a5d:	0f b6 44 35 ff       	movzbl -0x1(%ebp,%esi,1),%eax
    1a62:	8d 56 ff             	lea    -0x1(%esi),%edx
    1a65:	83 fa 05             	cmp    $0x5,%edx
    1a68:	77 44                	ja     1aae <.L41+0x24>
    1a6a:	89 d9                	mov    %ebx,%ecx
    1a6c:	03 8c 93 9c d0 ff ff 	add    -0x2f64(%ebx,%edx,4),%ecx
    1a73:	3e ff e1             	notrack jmp *%ecx

00001a76 <.L46>:
    1a76:	83 c0 04             	add    $0x4,%eax
    1a79:	eb ca                	jmp    1a45 <.L47+0x3>

00001a7b <.L45>:
    1a7b:	83 e8 02             	sub    $0x2,%eax
    1a7e:	eb c5                	jmp    1a45 <.L47+0x3>

00001a80 <.L44>:
    1a80:	83 e8 01             	sub    $0x1,%eax
    1a83:	eb c0                	jmp    1a45 <.L47+0x3>

00001a85 <.L43>:
    1a85:	83 c0 04             	add    $0x4,%eax
    1a88:	eb bb                	jmp    1a45 <.L47+0x3>

00001a8a <.L41>:
    1a8a:	83 c0 05             	add    $0x5,%eax
    1a8d:	0f b6 c0             	movzbl %al,%eax
    1a90:	0f be 54 24 0a       	movsbl 0xa(%esp),%edx
    1a95:	39 d0                	cmp    %edx,%eax
    1a97:	75 b7                	jne    1a50 <.L47+0xe>
    1a99:	8b 44 24 0c          	mov    0xc(%esp),%eax
    1a9d:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    1aa4:	75 15                	jne    1abb <.L41+0x31>
    1aa6:	83 c4 1c             	add    $0x1c,%esp
    1aa9:	5b                   	pop    %ebx
    1aaa:	5e                   	pop    %esi
    1aab:	5f                   	pop    %edi
    1aac:	5d                   	pop    %ebp
    1aad:	c3                   	ret
    1aae:	e8 d5 0d 00 00       	call   2888 <trap>
    1ab3:	80 3c 37 00          	cmpb   $0x0,(%edi,%esi,1)
    1ab7:	74 9c                	je     1a55 <.L47+0x13>
    1ab9:	eb 95                	jmp    1a50 <.L47+0xe>
    1abb:	e8 30 19 00 00       	call   33f0 <__stack_chk_fail_local>

00001ac0 <renai_circulation>:
    1ac0:	f3 0f 1e fb          	endbr32
    1ac4:	53                   	push   %ebx
    1ac5:	83 ec 18             	sub    $0x18,%esp
    1ac8:	e8 03 f9 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    1acd:	81 c3 97 74 00 00    	add    $0x7497,%ebx
    1ad3:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1ad9:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1add:	31 c0                	xor    %eax,%eax
    1adf:	8d 44 24 08          	lea    0x8(%esp),%eax
    1ae3:	50                   	push   %eax
    1ae4:	8d 44 24 08          	lea    0x8(%esp),%eax
    1ae8:	50                   	push   %eax
    1ae9:	8d 83 cd d2 ff ff    	lea    -0x2d33(%ebx),%eax
    1aef:	50                   	push   %eax
    1af0:	ff 74 24 2c          	push   0x2c(%esp)
    1af4:	e8 e7 f7 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1af9:	83 c4 04             	add    $0x4,%esp
    1afc:	ff 74 24 10          	push   0x10(%esp)
    1b00:	e8 e7 09 00 00       	call   24ec <karaage>
    1b05:	83 c4 10             	add    $0x10,%esp
    1b08:	83 f8 3e             	cmp    $0x3e,%eax
    1b0b:	75 2c                	jne    1b39 <renai_circulation+0x79>
    1b0d:	83 ec 08             	sub    $0x8,%esp
    1b10:	ff 74 24 10          	push   0x10(%esp)
    1b14:	ff 74 24 10          	push   0x10(%esp)
    1b18:	e8 fc 09 00 00       	call   2519 <ramen>
    1b1d:	83 c4 10             	add    $0x10,%esp
    1b20:	3d c0 07 00 00       	cmp    $0x7c0,%eax
    1b25:	75 19                	jne    1b40 <renai_circulation+0x80>
    1b27:	8b 44 24 0c          	mov    0xc(%esp),%eax
    1b2b:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    1b32:	75 13                	jne    1b47 <renai_circulation+0x87>
    1b34:	83 c4 18             	add    $0x18,%esp
    1b37:	5b                   	pop    %ebx
    1b38:	c3                   	ret
    1b39:	e8 4a 0d 00 00       	call   2888 <trap>
    1b3e:	eb cd                	jmp    1b0d <renai_circulation+0x4d>
    1b40:	e8 43 0d 00 00       	call   2888 <trap>
    1b45:	eb e0                	jmp    1b27 <renai_circulation+0x67>
    1b47:	e8 a4 18 00 00       	call   33f0 <__stack_chk_fail_local>

00001b4c <kira_game>:
    1b4c:	f3 0f 1e fb          	endbr32
    1b50:	55                   	push   %ebp
    1b51:	57                   	push   %edi
    1b52:	56                   	push   %esi
    1b53:	53                   	push   %ebx
    1b54:	83 ec 1c             	sub    $0x1c,%esp
    1b57:	e8 74 f8 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    1b5c:	81 c3 08 74 00 00    	add    $0x7408,%ebx
    1b62:	8b 6c 24 30          	mov    0x30(%esp),%ebp
    1b66:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1b6c:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1b70:	31 c0                	xor    %eax,%eax
    1b72:	c7 44 24 02 49 58 39 	movl   $0x7c395849,0x2(%esp)
    1b79:	7c 
    1b7a:	c7 44 24 06 63 7c 4e 	movl   $0x664e7c63,0x6(%esp)
    1b81:	66 
    1b82:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    1b87:	89 ef                	mov    %ebp,%edi
    1b89:	f2 ae                	repnz scas %es:(%edi),%al
    1b8b:	83 f9 f6             	cmp    $0xfffffff6,%ecx
    1b8e:	75 0b                	jne    1b9b <kira_game+0x4f>
    1b90:	be 00 00 00 00       	mov    $0x0,%esi
    1b95:	8d 7c 24 02          	lea    0x2(%esp),%edi
    1b99:	eb 14                	jmp    1baf <kira_game+0x63>
    1b9b:	e8 e8 0c 00 00       	call   2888 <trap>
    1ba0:	eb ee                	jmp    1b90 <kira_game+0x44>
    1ba2:	e8 e1 0c 00 00       	call   2888 <trap>
    1ba7:	83 c6 01             	add    $0x1,%esi
    1baa:	83 fe 08             	cmp    $0x8,%esi
    1bad:	74 0f                	je     1bbe <kira_game+0x72>
    1baf:	8d 44 36 05          	lea    0x5(%esi,%esi,1),%eax
    1bb3:	32 44 35 00          	xor    0x0(%ebp,%esi,1),%al
    1bb7:	3a 04 3e             	cmp    (%esi,%edi,1),%al
    1bba:	74 eb                	je     1ba7 <kira_game+0x5b>
    1bbc:	eb e4                	jmp    1ba2 <kira_game+0x56>
    1bbe:	8b 44 24 0c          	mov    0xc(%esp),%eax
    1bc2:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    1bc9:	75 08                	jne    1bd3 <kira_game+0x87>
    1bcb:	83 c4 1c             	add    $0x1c,%esp
    1bce:	5b                   	pop    %ebx
    1bcf:	5e                   	pop    %esi
    1bd0:	5f                   	pop    %edi
    1bd1:	5d                   	pop    %ebp
    1bd2:	c3                   	ret
    1bd3:	e8 18 18 00 00       	call   33f0 <__stack_chk_fail_local>

00001bd8 <Shougaizettaisouaisengen>:
    1bd8:	f3 0f 1e fb          	endbr32
    1bdc:	55                   	push   %ebp
    1bdd:	57                   	push   %edi
    1bde:	56                   	push   %esi
    1bdf:	53                   	push   %ebx
    1be0:	83 ec 38             	sub    $0x38,%esp
    1be3:	e8 c1 07 00 00       	call   23a9 <__x86.get_pc_thunk.ax>
    1be8:	05 7c 73 00 00       	add    $0x737c,%eax
    1bed:	89 c3                	mov    %eax,%ebx
    1bef:	89 44 24 24          	mov    %eax,0x24(%esp)
    1bf3:	ff 74 24 4c          	push   0x4c(%esp)
    1bf7:	e8 54 08 00 00       	call   2450 <string_length>
    1bfc:	83 c4 10             	add    $0x10,%esp
    1bff:	83 f8 09             	cmp    $0x9,%eax
    1c02:	0f 85 9b 00 00 00    	jne    1ca3 <Shougaizettaisouaisengen+0xcb>
    1c08:	be 00 00 00 00       	mov    $0x0,%esi
    1c0d:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
    1c14:	00 
    1c15:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c1a:	bd 39 8e e3 38       	mov    $0x38e38e39,%ebp
    1c1f:	8b 44 24 18          	mov    0x18(%esp),%eax
    1c23:	8d b8 bc d0 ff ff    	lea    -0x2f44(%eax),%edi
    1c29:	8b 44 24 40          	mov    0x40(%esp),%eax
    1c2d:	0f be 0c 98          	movsbl (%eax,%ebx,4),%ecx
    1c31:	83 e9 30             	sub    $0x30,%ecx
    1c34:	89 c8                	mov    %ecx,%eax
    1c36:	f7 ed                	imul   %ebp
    1c38:	d1 fa                	sar    $1,%edx
    1c3a:	89 c8                	mov    %ecx,%eax
    1c3c:	c1 f8 1f             	sar    $0x1f,%eax
    1c3f:	29 c2                	sub    %eax,%edx
    1c41:	8d 04 d2             	lea    (%edx,%edx,8),%eax
    1c44:	29 c1                	sub    %eax,%ecx
    1c46:	8b 14 8f             	mov    (%edi,%ecx,4),%edx
    1c49:	01 54 24 14          	add    %edx,0x14(%esp)
    1c4d:	8b 44 24 40          	mov    0x40(%esp),%eax
    1c51:	0f be 4c 58 02       	movsbl 0x2(%eax,%ebx,2),%ecx
    1c56:	83 e9 30             	sub    $0x30,%ecx
    1c59:	89 c8                	mov    %ecx,%eax
    1c5b:	f7 ed                	imul   %ebp
    1c5d:	d1 fa                	sar    $1,%edx
    1c5f:	89 c8                	mov    %ecx,%eax
    1c61:	c1 f8 1f             	sar    $0x1f,%eax
    1c64:	29 c2                	sub    %eax,%edx
    1c66:	8d 04 d2             	lea    (%edx,%edx,8),%eax
    1c69:	29 c1                	sub    %eax,%ecx
    1c6b:	03 34 8f             	add    (%edi,%ecx,4),%esi
    1c6e:	83 c3 01             	add    $0x1,%ebx
    1c71:	83 fb 03             	cmp    $0x3,%ebx
    1c74:	75 b3                	jne    1c29 <Shougaizettaisouaisengen+0x51>
    1c76:	39 74 24 14          	cmp    %esi,0x14(%esp)
    1c7a:	75 31                	jne    1cad <Shougaizettaisouaisengen+0xd5>
    1c7c:	8b 44 24 40          	mov    0x40(%esp),%eax
    1c80:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    1c84:	83 c0 09             	add    $0x9,%eax
    1c87:	89 44 24 10          	mov    %eax,0x10(%esp)
    1c8b:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
    1c92:	00 
    1c93:	8b 44 24 18          	mov    0x18(%esp),%eax
    1c97:	8d 80 bc d0 ff ff    	lea    -0x2f44(%eax),%eax
    1c9d:	89 44 24 08          	mov    %eax,0x8(%esp)
    1ca1:	eb 35                	jmp    1cd8 <Shougaizettaisouaisengen+0x100>
    1ca3:	e8 e0 0b 00 00       	call   2888 <trap>
    1ca8:	e9 5b ff ff ff       	jmp    1c08 <Shougaizettaisouaisengen+0x30>
    1cad:	8b 5c 24 18          	mov    0x18(%esp),%ebx
    1cb1:	e8 d2 0b 00 00       	call   2888 <trap>
    1cb6:	eb c4                	jmp    1c7c <Shougaizettaisouaisengen+0xa4>
    1cb8:	8b 5c 24 18          	mov    0x18(%esp),%ebx
    1cbc:	e8 c7 0b 00 00       	call   2888 <trap>
    1cc1:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
    1cc6:	8b 44 24 0c          	mov    0xc(%esp),%eax
    1cca:	83 44 24 10 01       	addl   $0x1,0x10(%esp)
    1ccf:	83 f8 03             	cmp    $0x3,%eax
    1cd2:	0f 84 80 00 00 00    	je     1d58 <Shougaizettaisouaisengen+0x180>
    1cd8:	8b 44 24 0c          	mov    0xc(%esp),%eax
    1cdc:	8d 34 40             	lea    (%eax,%eax,2),%esi
    1cdf:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
    1ce3:	01 de                	add    %ebx,%esi
    1ce5:	01 c3                	add    %eax,%ebx
    1ce7:	bf 00 00 00 00       	mov    $0x0,%edi
    1cec:	bd 00 00 00 00       	mov    $0x0,%ebp
    1cf1:	0f be 0e             	movsbl (%esi),%ecx
    1cf4:	83 e9 30             	sub    $0x30,%ecx
    1cf7:	b8 39 8e e3 38       	mov    $0x38e38e39,%eax
    1cfc:	f7 e9                	imul   %ecx
    1cfe:	d1 fa                	sar    $1,%edx
    1d00:	89 c8                	mov    %ecx,%eax
    1d02:	c1 f8 1f             	sar    $0x1f,%eax
    1d05:	29 c2                	sub    %eax,%edx
    1d07:	8d 04 d2             	lea    (%edx,%edx,8),%eax
    1d0a:	29 c1                	sub    %eax,%ecx
    1d0c:	8b 44 24 08          	mov    0x8(%esp),%eax
    1d10:	03 2c 88             	add    (%eax,%ecx,4),%ebp
    1d13:	0f be 0b             	movsbl (%ebx),%ecx
    1d16:	83 e9 30             	sub    $0x30,%ecx
    1d19:	b8 39 8e e3 38       	mov    $0x38e38e39,%eax
    1d1e:	f7 e9                	imul   %ecx
    1d20:	d1 fa                	sar    $1,%edx
    1d22:	89 c8                	mov    %ecx,%eax
    1d24:	c1 f8 1f             	sar    $0x1f,%eax
    1d27:	29 c2                	sub    %eax,%edx
    1d29:	8d 04 d2             	lea    (%edx,%edx,8),%eax
    1d2c:	29 c1                	sub    %eax,%ecx
    1d2e:	8b 44 24 08          	mov    0x8(%esp),%eax
    1d32:	03 3c 88             	add    (%eax,%ecx,4),%edi
    1d35:	83 c6 01             	add    $0x1,%esi
    1d38:	83 c3 03             	add    $0x3,%ebx
    1d3b:	3b 5c 24 10          	cmp    0x10(%esp),%ebx
    1d3f:	75 b0                	jne    1cf1 <Shougaizettaisouaisengen+0x119>
    1d41:	3b 6c 24 14          	cmp    0x14(%esp),%ebp
    1d45:	0f 85 6d ff ff ff    	jne    1cb8 <Shougaizettaisouaisengen+0xe0>
    1d4b:	39 fd                	cmp    %edi,%ebp
    1d4d:	0f 84 6e ff ff ff    	je     1cc1 <Shougaizettaisouaisengen+0xe9>
    1d53:	e9 60 ff ff ff       	jmp    1cb8 <Shougaizettaisouaisengen+0xe0>
    1d58:	8b 44 24 40          	mov    0x40(%esp),%eax
    1d5c:	0f b6 00             	movzbl (%eax),%eax
    1d5f:	8b 74 24 40          	mov    0x40(%esp),%esi
    1d63:	3a 46 01             	cmp    0x1(%esi),%al
    1d66:	74 08                	je     1d70 <Shougaizettaisouaisengen+0x198>
    1d68:	83 c4 2c             	add    $0x2c,%esp
    1d6b:	5b                   	pop    %ebx
    1d6c:	5e                   	pop    %esi
    1d6d:	5f                   	pop    %edi
    1d6e:	5d                   	pop    %ebp
    1d6f:	c3                   	ret
    1d70:	3a 46 02             	cmp    0x2(%esi),%al
    1d73:	75 f3                	jne    1d68 <Shougaizettaisouaisengen+0x190>
    1d75:	3a 46 03             	cmp    0x3(%esi),%al
    1d78:	75 ee                	jne    1d68 <Shougaizettaisouaisengen+0x190>
    1d7a:	3a 46 04             	cmp    0x4(%esi),%al
    1d7d:	75 e9                	jne    1d68 <Shougaizettaisouaisengen+0x190>
    1d7f:	3a 46 05             	cmp    0x5(%esi),%al
    1d82:	75 e4                	jne    1d68 <Shougaizettaisouaisengen+0x190>
    1d84:	3a 46 06             	cmp    0x6(%esi),%al
    1d87:	75 df                	jne    1d68 <Shougaizettaisouaisengen+0x190>
    1d89:	3a 46 07             	cmp    0x7(%esi),%al
    1d8c:	75 da                	jne    1d68 <Shougaizettaisouaisengen+0x190>
    1d8e:	3a 46 08             	cmp    0x8(%esi),%al
    1d91:	75 d5                	jne    1d68 <Shougaizettaisouaisengen+0x190>
    1d93:	8b 5c 24 18          	mov    0x18(%esp),%ebx
    1d97:	e8 ec 0a 00 00       	call   2888 <trap>
    1d9c:	eb ca                	jmp    1d68 <Shougaizettaisouaisengen+0x190>

00001d9e <Ruler_Count_Zero_2>:
    1d9e:	f3 0f 1e fb          	endbr32
    1da2:	57                   	push   %edi
    1da3:	56                   	push   %esi
    1da4:	53                   	push   %ebx
    1da5:	83 ec 60             	sub    $0x60,%esp
    1da8:	e8 23 f6 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    1dad:	81 c3 b7 71 00 00    	add    $0x71b7,%ebx
    1db3:	8b 74 24 70          	mov    0x70(%esp),%esi
    1db7:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1dbd:	89 44 24 5c          	mov    %eax,0x5c(%esp)
    1dc1:	31 c0                	xor    %eax,%eax
    1dc3:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    1dca:	00 
    1dcb:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
    1dd2:	00 
    1dd3:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
    1dda:	00 
    1ddb:	c7 44 24 14 07 00 00 	movl   $0x7,0x14(%esp)
    1de2:	00 
    1de3:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
    1dea:	00 
    1deb:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
    1df2:	00 
    1df3:	c7 44 24 20 0f 00 00 	movl   $0xf,0x20(%esp)
    1dfa:	00 
    1dfb:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%esp)
    1e02:	00 
    1e03:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%esp)
    1e0a:	00 
    1e0b:	c7 44 24 2c 43 00 00 	movl   $0x43,0x2c(%esp)
    1e12:	00 
    1e13:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
    1e1a:	00 
    1e1b:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
    1e22:	00 
    1e23:	c7 44 24 38 05 00 00 	movl   $0x5,0x38(%esp)
    1e2a:	00 
    1e2b:	8d 44 24 08          	lea    0x8(%esp),%eax
    1e2f:	89 44 24 3c          	mov    %eax,0x3c(%esp)
    1e33:	8d 44 24 14          	lea    0x14(%esp),%eax
    1e37:	89 44 24 40          	mov    %eax,0x40(%esp)
    1e3b:	c7 44 24 44 14 00 00 	movl   $0x14,0x44(%esp)
    1e42:	00 
    1e43:	8d 44 24 2c          	lea    0x2c(%esp),%eax
    1e47:	89 44 24 48          	mov    %eax,0x48(%esp)
    1e4b:	8d 44 24 20          	lea    0x20(%esp),%eax
    1e4f:	89 44 24 4c          	mov    %eax,0x4c(%esp)
    1e53:	c7 44 24 50 0a 00 00 	movl   $0xa,0x50(%esp)
    1e5a:	00 
    1e5b:	8d 44 24 38          	lea    0x38(%esp),%eax
    1e5f:	89 44 24 54          	mov    %eax,0x54(%esp)
    1e63:	8d 44 24 44          	lea    0x44(%esp),%eax
    1e67:	89 44 24 58          	mov    %eax,0x58(%esp)
    1e6b:	8d 7c 24 50          	lea    0x50(%esp),%edi
    1e6f:	80 3e 00             	cmpb   $0x0,(%esi)
    1e72:	0f 85 90 02 00 00    	jne    2108 <Ruler_Count_Zero_2+0x36a>
    1e78:	e8 0b 0a 00 00       	call   2888 <trap>
    1e7d:	e9 e2 03 00 00       	jmp    2264 <Ruler_Count_Zero_2+0x4c6>
    1e82:	90                   	nop
    1e83:	90                   	nop
    1e84:	90                   	nop
    1e85:	90                   	nop
    1e86:	90                   	nop
    1e87:	90                   	nop
    1e88:	90                   	nop
    1e89:	90                   	nop
    1e8a:	90                   	nop
    1e8b:	90                   	nop
    1e8c:	90                   	nop
    1e8d:	90                   	nop
    1e8e:	90                   	nop
    1e8f:	90                   	nop
    1e90:	90                   	nop
    1e91:	90                   	nop
    1e92:	90                   	nop
    1e93:	90                   	nop
    1e94:	90                   	nop
    1e95:	90                   	nop
    1e96:	90                   	nop
    1e97:	90                   	nop
    1e98:	90                   	nop
    1e99:	90                   	nop
    1e9a:	90                   	nop
    1e9b:	90                   	nop
    1e9c:	90                   	nop
    1e9d:	90                   	nop
    1e9e:	90                   	nop
    1e9f:	90                   	nop
    1ea0:	90                   	nop
    1ea1:	90                   	nop
    1ea2:	90                   	nop
    1ea3:	90                   	nop
    1ea4:	90                   	nop
    1ea5:	90                   	nop
    1ea6:	90                   	nop
    1ea7:	90                   	nop
    1ea8:	90                   	nop
    1ea9:	90                   	nop
    1eaa:	90                   	nop
    1eab:	90                   	nop
    1eac:	90                   	nop
    1ead:	90                   	nop
    1eae:	90                   	nop
    1eaf:	90                   	nop
    1eb0:	90                   	nop
    1eb1:	90                   	nop
    1eb2:	90                   	nop
    1eb3:	90                   	nop
    1eb4:	90                   	nop
    1eb5:	90                   	nop
    1eb6:	90                   	nop
    1eb7:	90                   	nop
    1eb8:	90                   	nop
    1eb9:	90                   	nop
    1eba:	90                   	nop
    1ebb:	90                   	nop
    1ebc:	90                   	nop
    1ebd:	90                   	nop
    1ebe:	90                   	nop
    1ebf:	90                   	nop
    1ec0:	90                   	nop
    1ec1:	90                   	nop
    1ec2:	90                   	nop
    1ec3:	90                   	nop
    1ec4:	90                   	nop
    1ec5:	90                   	nop
    1ec6:	90                   	nop
    1ec7:	90                   	nop
    1ec8:	90                   	nop
    1ec9:	90                   	nop
    1eca:	90                   	nop
    1ecb:	90                   	nop
    1ecc:	90                   	nop
    1ecd:	90                   	nop
    1ece:	90                   	nop
    1ecf:	90                   	nop
    1ed0:	90                   	nop
    1ed1:	90                   	nop
    1ed2:	90                   	nop
    1ed3:	90                   	nop
    1ed4:	90                   	nop
    1ed5:	90                   	nop
    1ed6:	90                   	nop
    1ed7:	90                   	nop
    1ed8:	90                   	nop
    1ed9:	90                   	nop
    1eda:	90                   	nop
    1edb:	90                   	nop
    1edc:	90                   	nop
    1edd:	90                   	nop
    1ede:	90                   	nop
    1edf:	90                   	nop
    1ee0:	90                   	nop
    1ee1:	90                   	nop
    1ee2:	90                   	nop
    1ee3:	90                   	nop
    1ee4:	90                   	nop
    1ee5:	90                   	nop
    1ee6:	90                   	nop
    1ee7:	90                   	nop
    1ee8:	90                   	nop
    1ee9:	90                   	nop
    1eea:	90                   	nop
    1eeb:	90                   	nop
    1eec:	90                   	nop
    1eed:	90                   	nop
    1eee:	90                   	nop
    1eef:	90                   	nop
    1ef0:	90                   	nop
    1ef1:	90                   	nop
    1ef2:	90                   	nop
    1ef3:	90                   	nop
    1ef4:	90                   	nop
    1ef5:	90                   	nop
    1ef6:	90                   	nop
    1ef7:	90                   	nop
    1ef8:	90                   	nop
    1ef9:	90                   	nop
    1efa:	90                   	nop
    1efb:	90                   	nop
    1efc:	90                   	nop
    1efd:	90                   	nop
    1efe:	90                   	nop
    1eff:	90                   	nop
    1f00:	90                   	nop
    1f01:	90                   	nop
    1f02:	90                   	nop
    1f03:	90                   	nop
    1f04:	90                   	nop
    1f05:	90                   	nop
    1f06:	90                   	nop
    1f07:	90                   	nop
    1f08:	90                   	nop
    1f09:	90                   	nop
    1f0a:	90                   	nop
    1f0b:	90                   	nop
    1f0c:	90                   	nop
    1f0d:	90                   	nop
    1f0e:	90                   	nop
    1f0f:	90                   	nop
    1f10:	90                   	nop
    1f11:	90                   	nop
    1f12:	90                   	nop
    1f13:	90                   	nop
    1f14:	90                   	nop
    1f15:	90                   	nop
    1f16:	90                   	nop
    1f17:	90                   	nop
    1f18:	90                   	nop
    1f19:	90                   	nop
    1f1a:	90                   	nop
    1f1b:	90                   	nop
    1f1c:	90                   	nop
    1f1d:	90                   	nop
    1f1e:	90                   	nop
    1f1f:	90                   	nop
    1f20:	90                   	nop
    1f21:	90                   	nop
    1f22:	90                   	nop
    1f23:	90                   	nop
    1f24:	90                   	nop
    1f25:	90                   	nop
    1f26:	90                   	nop
    1f27:	90                   	nop
    1f28:	90                   	nop
    1f29:	90                   	nop
    1f2a:	90                   	nop
    1f2b:	90                   	nop
    1f2c:	90                   	nop
    1f2d:	90                   	nop
    1f2e:	90                   	nop
    1f2f:	90                   	nop
    1f30:	90                   	nop
    1f31:	90                   	nop
    1f32:	90                   	nop
    1f33:	90                   	nop
    1f34:	90                   	nop
    1f35:	90                   	nop
    1f36:	90                   	nop
    1f37:	90                   	nop
    1f38:	90                   	nop
    1f39:	90                   	nop
    1f3a:	90                   	nop
    1f3b:	90                   	nop
    1f3c:	90                   	nop
    1f3d:	90                   	nop
    1f3e:	90                   	nop
    1f3f:	90                   	nop
    1f40:	90                   	nop
    1f41:	90                   	nop
    1f42:	90                   	nop
    1f43:	90                   	nop
    1f44:	90                   	nop
    1f45:	90                   	nop
    1f46:	90                   	nop
    1f47:	90                   	nop
    1f48:	90                   	nop
    1f49:	90                   	nop
    1f4a:	90                   	nop
    1f4b:	90                   	nop
    1f4c:	90                   	nop
    1f4d:	90                   	nop
    1f4e:	90                   	nop
    1f4f:	90                   	nop
    1f50:	90                   	nop
    1f51:	90                   	nop
    1f52:	90                   	nop
    1f53:	90                   	nop
    1f54:	90                   	nop
    1f55:	90                   	nop
    1f56:	90                   	nop
    1f57:	90                   	nop
    1f58:	90                   	nop
    1f59:	90                   	nop
    1f5a:	90                   	nop
    1f5b:	90                   	nop
    1f5c:	90                   	nop
    1f5d:	90                   	nop
    1f5e:	90                   	nop
    1f5f:	90                   	nop
    1f60:	90                   	nop
    1f61:	90                   	nop
    1f62:	90                   	nop
    1f63:	90                   	nop
    1f64:	90                   	nop
    1f65:	90                   	nop
    1f66:	90                   	nop
    1f67:	90                   	nop
    1f68:	90                   	nop
    1f69:	90                   	nop
    1f6a:	90                   	nop
    1f6b:	90                   	nop
    1f6c:	90                   	nop
    1f6d:	90                   	nop
    1f6e:	90                   	nop
    1f6f:	90                   	nop
    1f70:	90                   	nop
    1f71:	90                   	nop
    1f72:	90                   	nop
    1f73:	90                   	nop
    1f74:	90                   	nop
    1f75:	90                   	nop
    1f76:	90                   	nop
    1f77:	90                   	nop
    1f78:	90                   	nop
    1f79:	90                   	nop
    1f7a:	90                   	nop
    1f7b:	90                   	nop
    1f7c:	90                   	nop
    1f7d:	90                   	nop
    1f7e:	90                   	nop
    1f7f:	90                   	nop
    1f80:	90                   	nop
    1f81:	90                   	nop
    1f82:	90                   	nop
    1f83:	90                   	nop
    1f84:	90                   	nop
    1f85:	90                   	nop
    1f86:	90                   	nop
    1f87:	90                   	nop
    1f88:	90                   	nop
    1f89:	90                   	nop
    1f8a:	90                   	nop
    1f8b:	90                   	nop
    1f8c:	90                   	nop
    1f8d:	90                   	nop
    1f8e:	90                   	nop
    1f8f:	90                   	nop
    1f90:	90                   	nop
    1f91:	90                   	nop
    1f92:	90                   	nop
    1f93:	90                   	nop
    1f94:	90                   	nop
    1f95:	90                   	nop
    1f96:	90                   	nop
    1f97:	90                   	nop
    1f98:	90                   	nop
    1f99:	90                   	nop
    1f9a:	90                   	nop
    1f9b:	90                   	nop
    1f9c:	90                   	nop
    1f9d:	90                   	nop
    1f9e:	90                   	nop
    1f9f:	90                   	nop
    1fa0:	90                   	nop
    1fa1:	90                   	nop
    1fa2:	90                   	nop
    1fa3:	90                   	nop
    1fa4:	90                   	nop
    1fa5:	90                   	nop
    1fa6:	90                   	nop
    1fa7:	90                   	nop
    1fa8:	90                   	nop
    1fa9:	90                   	nop
    1faa:	90                   	nop
    1fab:	90                   	nop
    1fac:	90                   	nop
    1fad:	90                   	nop
    1fae:	83 7f 04 00          	cmpl   $0x0,0x4(%edi)
    1fb2:	74 08                	je     1fbc <Ruler_Count_Zero_2+0x21e>
    1fb4:	8b 7f 04             	mov    0x4(%edi),%edi
    1fb7:	e9 40 01 00 00       	jmp    20fc <Ruler_Count_Zero_2+0x35e>
    1fbc:	e8 c7 08 00 00       	call   2888 <trap>
    1fc1:	eb f1                	jmp    1fb4 <Ruler_Count_Zero_2+0x216>
    1fc3:	90                   	nop
    1fc4:	90                   	nop
    1fc5:	90                   	nop
    1fc6:	90                   	nop
    1fc7:	90                   	nop
    1fc8:	90                   	nop
    1fc9:	90                   	nop
    1fca:	90                   	nop
    1fcb:	90                   	nop
    1fcc:	90                   	nop
    1fcd:	90                   	nop
    1fce:	90                   	nop
    1fcf:	90                   	nop
    1fd0:	90                   	nop
    1fd1:	90                   	nop
    1fd2:	90                   	nop
    1fd3:	90                   	nop
    1fd4:	90                   	nop
    1fd5:	90                   	nop
    1fd6:	90                   	nop
    1fd7:	90                   	nop
    1fd8:	90                   	nop
    1fd9:	90                   	nop
    1fda:	90                   	nop
    1fdb:	90                   	nop
    1fdc:	90                   	nop
    1fdd:	90                   	nop
    1fde:	90                   	nop
    1fdf:	90                   	nop
    1fe0:	90                   	nop
    1fe1:	90                   	nop
    1fe2:	90                   	nop
    1fe3:	90                   	nop
    1fe4:	90                   	nop
    1fe5:	90                   	nop
    1fe6:	90                   	nop
    1fe7:	90                   	nop
    1fe8:	90                   	nop
    1fe9:	90                   	nop
    1fea:	90                   	nop
    1feb:	90                   	nop
    1fec:	90                   	nop
    1fed:	90                   	nop
    1fee:	90                   	nop
    1fef:	90                   	nop
    1ff0:	90                   	nop
    1ff1:	90                   	nop
    1ff2:	90                   	nop
    1ff3:	90                   	nop
    1ff4:	90                   	nop
    1ff5:	90                   	nop
    1ff6:	90                   	nop
    1ff7:	90                   	nop
    1ff8:	90                   	nop
    1ff9:	90                   	nop
    1ffa:	90                   	nop
    1ffb:	90                   	nop
    1ffc:	90                   	nop
    1ffd:	90                   	nop
    1ffe:	90                   	nop
    1fff:	90                   	nop
    2000:	90                   	nop
    2001:	90                   	nop
    2002:	90                   	nop
    2003:	90                   	nop
    2004:	90                   	nop
    2005:	90                   	nop
    2006:	90                   	nop
    2007:	90                   	nop
    2008:	90                   	nop
    2009:	90                   	nop
    200a:	90                   	nop
    200b:	90                   	nop
    200c:	90                   	nop
    200d:	90                   	nop
    200e:	90                   	nop
    200f:	90                   	nop
    2010:	90                   	nop
    2011:	90                   	nop
    2012:	90                   	nop
    2013:	90                   	nop
    2014:	90                   	nop
    2015:	90                   	nop
    2016:	90                   	nop
    2017:	90                   	nop
    2018:	90                   	nop
    2019:	90                   	nop
    201a:	90                   	nop
    201b:	90                   	nop
    201c:	90                   	nop
    201d:	90                   	nop
    201e:	90                   	nop
    201f:	90                   	nop
    2020:	90                   	nop
    2021:	90                   	nop
    2022:	90                   	nop
    2023:	90                   	nop
    2024:	90                   	nop
    2025:	90                   	nop
    2026:	90                   	nop
    2027:	90                   	nop
    2028:	90                   	nop
    2029:	90                   	nop
    202a:	90                   	nop
    202b:	90                   	nop
    202c:	90                   	nop
    202d:	90                   	nop
    202e:	90                   	nop
    202f:	90                   	nop
    2030:	90                   	nop
    2031:	90                   	nop
    2032:	90                   	nop
    2033:	90                   	nop
    2034:	90                   	nop
    2035:	90                   	nop
    2036:	90                   	nop
    2037:	90                   	nop
    2038:	90                   	nop
    2039:	90                   	nop
    203a:	90                   	nop
    203b:	90                   	nop
    203c:	90                   	nop
    203d:	90                   	nop
    203e:	90                   	nop
    203f:	90                   	nop
    2040:	90                   	nop
    2041:	90                   	nop
    2042:	90                   	nop
    2043:	90                   	nop
    2044:	90                   	nop
    2045:	90                   	nop
    2046:	90                   	nop
    2047:	90                   	nop
    2048:	90                   	nop
    2049:	90                   	nop
    204a:	90                   	nop
    204b:	90                   	nop
    204c:	90                   	nop
    204d:	90                   	nop
    204e:	90                   	nop
    204f:	90                   	nop
    2050:	90                   	nop
    2051:	90                   	nop
    2052:	90                   	nop
    2053:	90                   	nop
    2054:	90                   	nop
    2055:	90                   	nop
    2056:	90                   	nop
    2057:	90                   	nop
    2058:	90                   	nop
    2059:	90                   	nop
    205a:	90                   	nop
    205b:	90                   	nop
    205c:	90                   	nop
    205d:	90                   	nop
    205e:	90                   	nop
    205f:	90                   	nop
    2060:	90                   	nop
    2061:	90                   	nop
    2062:	90                   	nop
    2063:	90                   	nop
    2064:	90                   	nop
    2065:	90                   	nop
    2066:	90                   	nop
    2067:	90                   	nop
    2068:	90                   	nop
    2069:	90                   	nop
    206a:	90                   	nop
    206b:	90                   	nop
    206c:	90                   	nop
    206d:	90                   	nop
    206e:	90                   	nop
    206f:	90                   	nop
    2070:	90                   	nop
    2071:	90                   	nop
    2072:	90                   	nop
    2073:	90                   	nop
    2074:	90                   	nop
    2075:	90                   	nop
    2076:	90                   	nop
    2077:	90                   	nop
    2078:	90                   	nop
    2079:	90                   	nop
    207a:	90                   	nop
    207b:	90                   	nop
    207c:	90                   	nop
    207d:	90                   	nop
    207e:	90                   	nop
    207f:	90                   	nop
    2080:	90                   	nop
    2081:	90                   	nop
    2082:	90                   	nop
    2083:	90                   	nop
    2084:	90                   	nop
    2085:	90                   	nop
    2086:	90                   	nop
    2087:	90                   	nop
    2088:	90                   	nop
    2089:	90                   	nop
    208a:	90                   	nop
    208b:	90                   	nop
    208c:	90                   	nop
    208d:	90                   	nop
    208e:	90                   	nop
    208f:	90                   	nop
    2090:	90                   	nop
    2091:	90                   	nop
    2092:	90                   	nop
    2093:	90                   	nop
    2094:	90                   	nop
    2095:	90                   	nop
    2096:	90                   	nop
    2097:	90                   	nop
    2098:	90                   	nop
    2099:	90                   	nop
    209a:	90                   	nop
    209b:	90                   	nop
    209c:	90                   	nop
    209d:	90                   	nop
    209e:	90                   	nop
    209f:	90                   	nop
    20a0:	90                   	nop
    20a1:	90                   	nop
    20a2:	90                   	nop
    20a3:	90                   	nop
    20a4:	90                   	nop
    20a5:	90                   	nop
    20a6:	90                   	nop
    20a7:	90                   	nop
    20a8:	90                   	nop
    20a9:	90                   	nop
    20aa:	90                   	nop
    20ab:	90                   	nop
    20ac:	90                   	nop
    20ad:	90                   	nop
    20ae:	90                   	nop
    20af:	90                   	nop
    20b0:	90                   	nop
    20b1:	90                   	nop
    20b2:	90                   	nop
    20b3:	90                   	nop
    20b4:	90                   	nop
    20b5:	90                   	nop
    20b6:	90                   	nop
    20b7:	90                   	nop
    20b8:	90                   	nop
    20b9:	90                   	nop
    20ba:	90                   	nop
    20bb:	90                   	nop
    20bc:	90                   	nop
    20bd:	90                   	nop
    20be:	90                   	nop
    20bf:	90                   	nop
    20c0:	90                   	nop
    20c1:	90                   	nop
    20c2:	90                   	nop
    20c3:	90                   	nop
    20c4:	90                   	nop
    20c5:	90                   	nop
    20c6:	90                   	nop
    20c7:	90                   	nop
    20c8:	90                   	nop
    20c9:	90                   	nop
    20ca:	90                   	nop
    20cb:	90                   	nop
    20cc:	90                   	nop
    20cd:	90                   	nop
    20ce:	90                   	nop
    20cf:	90                   	nop
    20d0:	90                   	nop
    20d1:	90                   	nop
    20d2:	90                   	nop
    20d3:	90                   	nop
    20d4:	90                   	nop
    20d5:	90                   	nop
    20d6:	90                   	nop
    20d7:	90                   	nop
    20d8:	90                   	nop
    20d9:	90                   	nop
    20da:	90                   	nop
    20db:	90                   	nop
    20dc:	90                   	nop
    20dd:	90                   	nop
    20de:	90                   	nop
    20df:	90                   	nop
    20e0:	90                   	nop
    20e1:	90                   	nop
    20e2:	90                   	nop
    20e3:	90                   	nop
    20e4:	90                   	nop
    20e5:	90                   	nop
    20e6:	90                   	nop
    20e7:	90                   	nop
    20e8:	90                   	nop
    20e9:	90                   	nop
    20ea:	90                   	nop
    20eb:	90                   	nop
    20ec:	90                   	nop
    20ed:	90                   	nop
    20ee:	90                   	nop
    20ef:	83 7f 08 00          	cmpl   $0x0,0x8(%edi)
    20f3:	0f 84 58 01 00 00    	je     2251 <Ruler_Count_Zero_2+0x4b3>
    20f9:	8b 7f 08             	mov    0x8(%edi),%edi
    20fc:	83 c6 01             	add    $0x1,%esi
    20ff:	80 3e 00             	cmpb   $0x0,(%esi)
    2102:	0f 84 53 01 00 00    	je     225b <Ruler_Count_Zero_2+0x4bd>
    2108:	90                   	nop
    2109:	90                   	nop
    210a:	90                   	nop
    210b:	90                   	nop
    210c:	90                   	nop
    210d:	90                   	nop
    210e:	90                   	nop
    210f:	90                   	nop
    2110:	90                   	nop
    2111:	90                   	nop
    2112:	90                   	nop
    2113:	90                   	nop
    2114:	90                   	nop
    2115:	90                   	nop
    2116:	90                   	nop
    2117:	90                   	nop
    2118:	90                   	nop
    2119:	90                   	nop
    211a:	90                   	nop
    211b:	90                   	nop
    211c:	90                   	nop
    211d:	90                   	nop
    211e:	90                   	nop
    211f:	90                   	nop
    2120:	90                   	nop
    2121:	90                   	nop
    2122:	90                   	nop
    2123:	90                   	nop
    2124:	90                   	nop
    2125:	90                   	nop
    2126:	90                   	nop
    2127:	90                   	nop
    2128:	90                   	nop
    2129:	90                   	nop
    212a:	90                   	nop
    212b:	90                   	nop
    212c:	90                   	nop
    212d:	90                   	nop
    212e:	90                   	nop
    212f:	90                   	nop
    2130:	90                   	nop
    2131:	90                   	nop
    2132:	90                   	nop
    2133:	90                   	nop
    2134:	90                   	nop
    2135:	90                   	nop
    2136:	90                   	nop
    2137:	90                   	nop
    2138:	90                   	nop
    2139:	90                   	nop
    213a:	90                   	nop
    213b:	90                   	nop
    213c:	90                   	nop
    213d:	90                   	nop
    213e:	90                   	nop
    213f:	90                   	nop
    2140:	90                   	nop
    2141:	90                   	nop
    2142:	90                   	nop
    2143:	90                   	nop
    2144:	90                   	nop
    2145:	90                   	nop
    2146:	90                   	nop
    2147:	90                   	nop
    2148:	90                   	nop
    2149:	90                   	nop
    214a:	90                   	nop
    214b:	90                   	nop
    214c:	90                   	nop
    214d:	90                   	nop
    214e:	90                   	nop
    214f:	90                   	nop
    2150:	90                   	nop
    2151:	90                   	nop
    2152:	90                   	nop
    2153:	90                   	nop
    2154:	90                   	nop
    2155:	90                   	nop
    2156:	90                   	nop
    2157:	90                   	nop
    2158:	90                   	nop
    2159:	90                   	nop
    215a:	90                   	nop
    215b:	90                   	nop
    215c:	90                   	nop
    215d:	90                   	nop
    215e:	90                   	nop
    215f:	90                   	nop
    2160:	90                   	nop
    2161:	90                   	nop
    2162:	90                   	nop
    2163:	90                   	nop
    2164:	90                   	nop
    2165:	90                   	nop
    2166:	90                   	nop
    2167:	90                   	nop
    2168:	90                   	nop
    2169:	90                   	nop
    216a:	90                   	nop
    216b:	90                   	nop
    216c:	90                   	nop
    216d:	90                   	nop
    216e:	90                   	nop
    216f:	90                   	nop
    2170:	90                   	nop
    2171:	90                   	nop
    2172:	90                   	nop
    2173:	90                   	nop
    2174:	90                   	nop
    2175:	90                   	nop
    2176:	90                   	nop
    2177:	90                   	nop
    2178:	90                   	nop
    2179:	90                   	nop
    217a:	90                   	nop
    217b:	90                   	nop
    217c:	90                   	nop
    217d:	90                   	nop
    217e:	90                   	nop
    217f:	90                   	nop
    2180:	90                   	nop
    2181:	90                   	nop
    2182:	90                   	nop
    2183:	90                   	nop
    2184:	90                   	nop
    2185:	90                   	nop
    2186:	90                   	nop
    2187:	90                   	nop
    2188:	90                   	nop
    2189:	90                   	nop
    218a:	90                   	nop
    218b:	90                   	nop
    218c:	90                   	nop
    218d:	90                   	nop
    218e:	90                   	nop
    218f:	90                   	nop
    2190:	90                   	nop
    2191:	90                   	nop
    2192:	90                   	nop
    2193:	90                   	nop
    2194:	90                   	nop
    2195:	90                   	nop
    2196:	90                   	nop
    2197:	90                   	nop
    2198:	90                   	nop
    2199:	90                   	nop
    219a:	90                   	nop
    219b:	90                   	nop
    219c:	90                   	nop
    219d:	90                   	nop
    219e:	90                   	nop
    219f:	90                   	nop
    21a0:	90                   	nop
    21a1:	90                   	nop
    21a2:	90                   	nop
    21a3:	90                   	nop
    21a4:	90                   	nop
    21a5:	90                   	nop
    21a6:	90                   	nop
    21a7:	90                   	nop
    21a8:	90                   	nop
    21a9:	90                   	nop
    21aa:	90                   	nop
    21ab:	90                   	nop
    21ac:	90                   	nop
    21ad:	90                   	nop
    21ae:	90                   	nop
    21af:	90                   	nop
    21b0:	90                   	nop
    21b1:	90                   	nop
    21b2:	90                   	nop
    21b3:	90                   	nop
    21b4:	90                   	nop
    21b5:	90                   	nop
    21b6:	90                   	nop
    21b7:	90                   	nop
    21b8:	90                   	nop
    21b9:	90                   	nop
    21ba:	90                   	nop
    21bb:	90                   	nop
    21bc:	90                   	nop
    21bd:	90                   	nop
    21be:	90                   	nop
    21bf:	90                   	nop
    21c0:	90                   	nop
    21c1:	90                   	nop
    21c2:	90                   	nop
    21c3:	90                   	nop
    21c4:	90                   	nop
    21c5:	90                   	nop
    21c6:	90                   	nop
    21c7:	90                   	nop
    21c8:	90                   	nop
    21c9:	90                   	nop
    21ca:	90                   	nop
    21cb:	90                   	nop
    21cc:	90                   	nop
    21cd:	90                   	nop
    21ce:	90                   	nop
    21cf:	90                   	nop
    21d0:	90                   	nop
    21d1:	90                   	nop
    21d2:	90                   	nop
    21d3:	90                   	nop
    21d4:	90                   	nop
    21d5:	90                   	nop
    21d6:	90                   	nop
    21d7:	90                   	nop
    21d8:	90                   	nop
    21d9:	90                   	nop
    21da:	90                   	nop
    21db:	90                   	nop
    21dc:	90                   	nop
    21dd:	90                   	nop
    21de:	90                   	nop
    21df:	90                   	nop
    21e0:	90                   	nop
    21e1:	90                   	nop
    21e2:	90                   	nop
    21e3:	90                   	nop
    21e4:	90                   	nop
    21e5:	90                   	nop
    21e6:	90                   	nop
    21e7:	90                   	nop
    21e8:	90                   	nop
    21e9:	90                   	nop
    21ea:	90                   	nop
    21eb:	90                   	nop
    21ec:	90                   	nop
    21ed:	90                   	nop
    21ee:	90                   	nop
    21ef:	90                   	nop
    21f0:	90                   	nop
    21f1:	90                   	nop
    21f2:	90                   	nop
    21f3:	90                   	nop
    21f4:	90                   	nop
    21f5:	90                   	nop
    21f6:	90                   	nop
    21f7:	90                   	nop
    21f8:	90                   	nop
    21f9:	90                   	nop
    21fa:	90                   	nop
    21fb:	90                   	nop
    21fc:	90                   	nop
    21fd:	90                   	nop
    21fe:	90                   	nop
    21ff:	90                   	nop
    2200:	90                   	nop
    2201:	90                   	nop
    2202:	90                   	nop
    2203:	90                   	nop
    2204:	90                   	nop
    2205:	90                   	nop
    2206:	90                   	nop
    2207:	90                   	nop
    2208:	90                   	nop
    2209:	90                   	nop
    220a:	90                   	nop
    220b:	90                   	nop
    220c:	90                   	nop
    220d:	90                   	nop
    220e:	90                   	nop
    220f:	90                   	nop
    2210:	90                   	nop
    2211:	90                   	nop
    2212:	90                   	nop
    2213:	90                   	nop
    2214:	90                   	nop
    2215:	90                   	nop
    2216:	90                   	nop
    2217:	90                   	nop
    2218:	90                   	nop
    2219:	90                   	nop
    221a:	90                   	nop
    221b:	90                   	nop
    221c:	90                   	nop
    221d:	90                   	nop
    221e:	90                   	nop
    221f:	90                   	nop
    2220:	90                   	nop
    2221:	90                   	nop
    2222:	90                   	nop
    2223:	90                   	nop
    2224:	90                   	nop
    2225:	90                   	nop
    2226:	90                   	nop
    2227:	90                   	nop
    2228:	90                   	nop
    2229:	90                   	nop
    222a:	90                   	nop
    222b:	90                   	nop
    222c:	90                   	nop
    222d:	90                   	nop
    222e:	90                   	nop
    222f:	90                   	nop
    2230:	90                   	nop
    2231:	90                   	nop
    2232:	90                   	nop
    2233:	90                   	nop
    2234:	0f b6 06             	movzbl (%esi),%eax
    2237:	3c 36                	cmp    $0x36,%al
    2239:	0f 84 43 fc ff ff    	je     1e82 <Ruler_Count_Zero_2+0xe4>
    223f:	3c 39                	cmp    $0x39,%al
    2241:	0f 84 7c fd ff ff    	je     1fc3 <Ruler_Count_Zero_2+0x225>
    2247:	e8 3c 06 00 00       	call   2888 <trap>
    224c:	e9 ab fe ff ff       	jmp    20fc <Ruler_Count_Zero_2+0x35e>
    2251:	e8 32 06 00 00       	call   2888 <trap>
    2256:	e9 9e fe ff ff       	jmp    20f9 <Ruler_Count_Zero_2+0x35b>
    225b:	83 3f 43             	cmpl   $0x43,(%edi)
    225e:	0f 85 14 fc ff ff    	jne    1e78 <Ruler_Count_Zero_2+0xda>
    2264:	90                   	nop
    2265:	90                   	nop
    2266:	90                   	nop
    2267:	90                   	nop
    2268:	90                   	nop
    2269:	90                   	nop
    226a:	90                   	nop
    226b:	90                   	nop
    226c:	90                   	nop
    226d:	90                   	nop
    226e:	90                   	nop
    226f:	90                   	nop
    2270:	90                   	nop
    2271:	90                   	nop
    2272:	90                   	nop
    2273:	90                   	nop
    2274:	90                   	nop
    2275:	90                   	nop
    2276:	90                   	nop
    2277:	90                   	nop
    2278:	90                   	nop
    2279:	90                   	nop
    227a:	90                   	nop
    227b:	90                   	nop
    227c:	90                   	nop
    227d:	90                   	nop
    227e:	90                   	nop
    227f:	90                   	nop
    2280:	90                   	nop
    2281:	90                   	nop
    2282:	90                   	nop
    2283:	90                   	nop
    2284:	90                   	nop
    2285:	90                   	nop
    2286:	90                   	nop
    2287:	90                   	nop
    2288:	90                   	nop
    2289:	90                   	nop
    228a:	90                   	nop
    228b:	90                   	nop
    228c:	90                   	nop
    228d:	90                   	nop
    228e:	90                   	nop
    228f:	90                   	nop
    2290:	90                   	nop
    2291:	90                   	nop
    2292:	90                   	nop
    2293:	90                   	nop
    2294:	90                   	nop
    2295:	90                   	nop
    2296:	90                   	nop
    2297:	90                   	nop
    2298:	90                   	nop
    2299:	90                   	nop
    229a:	90                   	nop
    229b:	90                   	nop
    229c:	90                   	nop
    229d:	90                   	nop
    229e:	90                   	nop
    229f:	90                   	nop
    22a0:	90                   	nop
    22a1:	90                   	nop
    22a2:	90                   	nop
    22a3:	90                   	nop
    22a4:	90                   	nop
    22a5:	90                   	nop
    22a6:	90                   	nop
    22a7:	90                   	nop
    22a8:	90                   	nop
    22a9:	90                   	nop
    22aa:	90                   	nop
    22ab:	90                   	nop
    22ac:	90                   	nop
    22ad:	90                   	nop
    22ae:	90                   	nop
    22af:	90                   	nop
    22b0:	90                   	nop
    22b1:	90                   	nop
    22b2:	90                   	nop
    22b3:	90                   	nop
    22b4:	90                   	nop
    22b5:	90                   	nop
    22b6:	90                   	nop
    22b7:	90                   	nop
    22b8:	90                   	nop
    22b9:	90                   	nop
    22ba:	90                   	nop
    22bb:	90                   	nop
    22bc:	90                   	nop
    22bd:	90                   	nop
    22be:	90                   	nop
    22bf:	90                   	nop
    22c0:	90                   	nop
    22c1:	90                   	nop
    22c2:	90                   	nop
    22c3:	90                   	nop
    22c4:	90                   	nop
    22c5:	90                   	nop
    22c6:	90                   	nop
    22c7:	90                   	nop
    22c8:	90                   	nop
    22c9:	90                   	nop
    22ca:	90                   	nop
    22cb:	90                   	nop
    22cc:	90                   	nop
    22cd:	90                   	nop
    22ce:	90                   	nop
    22cf:	90                   	nop
    22d0:	90                   	nop
    22d1:	90                   	nop
    22d2:	90                   	nop
    22d3:	90                   	nop
    22d4:	90                   	nop
    22d5:	90                   	nop
    22d6:	90                   	nop
    22d7:	90                   	nop
    22d8:	90                   	nop
    22d9:	90                   	nop
    22da:	90                   	nop
    22db:	90                   	nop
    22dc:	90                   	nop
    22dd:	90                   	nop
    22de:	90                   	nop
    22df:	90                   	nop
    22e0:	90                   	nop
    22e1:	90                   	nop
    22e2:	90                   	nop
    22e3:	90                   	nop
    22e4:	90                   	nop
    22e5:	90                   	nop
    22e6:	90                   	nop
    22e7:	90                   	nop
    22e8:	90                   	nop
    22e9:	90                   	nop
    22ea:	90                   	nop
    22eb:	90                   	nop
    22ec:	90                   	nop
    22ed:	90                   	nop
    22ee:	90                   	nop
    22ef:	90                   	nop
    22f0:	90                   	nop
    22f1:	90                   	nop
    22f2:	90                   	nop
    22f3:	90                   	nop
    22f4:	90                   	nop
    22f5:	90                   	nop
    22f6:	90                   	nop
    22f7:	90                   	nop
    22f8:	90                   	nop
    22f9:	90                   	nop
    22fa:	90                   	nop
    22fb:	90                   	nop
    22fc:	90                   	nop
    22fd:	90                   	nop
    22fe:	90                   	nop
    22ff:	90                   	nop
    2300:	90                   	nop
    2301:	90                   	nop
    2302:	90                   	nop
    2303:	90                   	nop
    2304:	90                   	nop
    2305:	90                   	nop
    2306:	90                   	nop
    2307:	90                   	nop
    2308:	90                   	nop
    2309:	90                   	nop
    230a:	90                   	nop
    230b:	90                   	nop
    230c:	90                   	nop
    230d:	90                   	nop
    230e:	90                   	nop
    230f:	90                   	nop
    2310:	90                   	nop
    2311:	90                   	nop
    2312:	90                   	nop
    2313:	90                   	nop
    2314:	90                   	nop
    2315:	90                   	nop
    2316:	90                   	nop
    2317:	90                   	nop
    2318:	90                   	nop
    2319:	90                   	nop
    231a:	90                   	nop
    231b:	90                   	nop
    231c:	90                   	nop
    231d:	90                   	nop
    231e:	90                   	nop
    231f:	90                   	nop
    2320:	90                   	nop
    2321:	90                   	nop
    2322:	90                   	nop
    2323:	90                   	nop
    2324:	90                   	nop
    2325:	90                   	nop
    2326:	90                   	nop
    2327:	90                   	nop
    2328:	90                   	nop
    2329:	90                   	nop
    232a:	90                   	nop
    232b:	90                   	nop
    232c:	90                   	nop
    232d:	90                   	nop
    232e:	90                   	nop
    232f:	90                   	nop
    2330:	90                   	nop
    2331:	90                   	nop
    2332:	90                   	nop
    2333:	90                   	nop
    2334:	90                   	nop
    2335:	90                   	nop
    2336:	90                   	nop
    2337:	90                   	nop
    2338:	90                   	nop
    2339:	90                   	nop
    233a:	90                   	nop
    233b:	90                   	nop
    233c:	90                   	nop
    233d:	90                   	nop
    233e:	90                   	nop
    233f:	90                   	nop
    2340:	90                   	nop
    2341:	90                   	nop
    2342:	90                   	nop
    2343:	90                   	nop
    2344:	90                   	nop
    2345:	90                   	nop
    2346:	90                   	nop
    2347:	90                   	nop
    2348:	90                   	nop
    2349:	90                   	nop
    234a:	90                   	nop
    234b:	90                   	nop
    234c:	90                   	nop
    234d:	90                   	nop
    234e:	90                   	nop
    234f:	90                   	nop
    2350:	90                   	nop
    2351:	90                   	nop
    2352:	90                   	nop
    2353:	90                   	nop
    2354:	90                   	nop
    2355:	90                   	nop
    2356:	90                   	nop
    2357:	90                   	nop
    2358:	90                   	nop
    2359:	90                   	nop
    235a:	90                   	nop
    235b:	90                   	nop
    235c:	90                   	nop
    235d:	90                   	nop
    235e:	90                   	nop
    235f:	90                   	nop
    2360:	90                   	nop
    2361:	90                   	nop
    2362:	90                   	nop
    2363:	90                   	nop
    2364:	90                   	nop
    2365:	90                   	nop
    2366:	90                   	nop
    2367:	90                   	nop
    2368:	90                   	nop
    2369:	90                   	nop
    236a:	90                   	nop
    236b:	90                   	nop
    236c:	90                   	nop
    236d:	90                   	nop
    236e:	90                   	nop
    236f:	90                   	nop
    2370:	90                   	nop
    2371:	90                   	nop
    2372:	90                   	nop
    2373:	90                   	nop
    2374:	90                   	nop
    2375:	90                   	nop
    2376:	90                   	nop
    2377:	90                   	nop
    2378:	90                   	nop
    2379:	90                   	nop
    237a:	90                   	nop
    237b:	90                   	nop
    237c:	90                   	nop
    237d:	90                   	nop
    237e:	90                   	nop
    237f:	90                   	nop
    2380:	90                   	nop
    2381:	90                   	nop
    2382:	90                   	nop
    2383:	90                   	nop
    2384:	90                   	nop
    2385:	90                   	nop
    2386:	90                   	nop
    2387:	90                   	nop
    2388:	90                   	nop
    2389:	90                   	nop
    238a:	90                   	nop
    238b:	90                   	nop
    238c:	90                   	nop
    238d:	90                   	nop
    238e:	90                   	nop
    238f:	90                   	nop
    2390:	8b 44 24 5c          	mov    0x5c(%esp),%eax
    2394:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    239b:	75 07                	jne    23a4 <Ruler_Count_Zero_2+0x606>
    239d:	83 c4 60             	add    $0x60,%esp
    23a0:	5b                   	pop    %ebx
    23a1:	5e                   	pop    %esi
    23a2:	5f                   	pop    %edi
    23a3:	c3                   	ret
    23a4:	e8 47 10 00 00       	call   33f0 <__stack_chk_fail_local>

000023a9 <__x86.get_pc_thunk.ax>:
    23a9:	8b 04 24             	mov    (%esp),%eax
    23ac:	c3                   	ret

000023ad <sig_handler>:
    23ad:	f3 0f 1e fb          	endbr32
    23b1:	53                   	push   %ebx
    23b2:	83 ec 14             	sub    $0x14,%esp
    23b5:	e8 16 f0 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    23ba:	81 c3 aa 6b 00 00    	add    $0x6baa,%ebx
    23c0:	8d 83 e0 d0 ff ff    	lea    -0x2f20(%ebx),%eax
    23c6:	50                   	push   %eax
    23c7:	e8 d4 ee ff ff       	call   12a0 <puts@plt>
    23cc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23d3:	e8 68 ee ff ff       	call   1240 <sleep@plt>
    23d8:	83 c4 08             	add    $0x8,%esp
    23db:	8d 83 58 d2 ff ff    	lea    -0x2da8(%ebx),%eax
    23e1:	50                   	push   %eax
    23e2:	6a 01                	push   $0x1
    23e4:	e8 27 ef ff ff       	call   1310 <__printf_chk@plt>
    23e9:	83 c4 04             	add    $0x4,%esp
    23ec:	8b 83 8c 00 00 00    	mov    0x8c(%ebx),%eax
    23f2:	ff 30                	push   (%eax)
    23f4:	e8 07 ee ff ff       	call   1200 <fflush@plt>
    23f9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2400:	e8 3b ee ff ff       	call   1240 <sleep@plt>
    2405:	8d 83 61 d2 ff ff    	lea    -0x2d9f(%ebx),%eax
    240b:	89 04 24             	mov    %eax,(%esp)
    240e:	e8 8d ee ff ff       	call   12a0 <puts@plt>
    2413:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
    241a:	e8 91 ee ff ff       	call   12b0 <exit@plt>

0000241f <invalid_phase>:
    241f:	f3 0f 1e fb          	endbr32
    2423:	53                   	push   %ebx
    2424:	83 ec 0c             	sub    $0xc,%esp
    2427:	e8 a4 ef ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    242c:	81 c3 38 6b 00 00    	add    $0x6b38,%ebx
    2432:	ff 74 24 14          	push   0x14(%esp)
    2436:	8d 83 79 d2 ff ff    	lea    -0x2d87(%ebx),%eax
    243c:	50                   	push   %eax
    243d:	6a 01                	push   $0x1
    243f:	e8 cc ee ff ff       	call   1310 <__printf_chk@plt>
    2444:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    244b:	e8 60 ee ff ff       	call   12b0 <exit@plt>

00002450 <string_length>:
    2450:	f3 0f 1e fb          	endbr32
    2454:	8b 54 24 04          	mov    0x4(%esp),%edx
    2458:	80 3a 00             	cmpb   $0x0,(%edx)
    245b:	74 0f                	je     246c <string_length+0x1c>
    245d:	b8 00 00 00 00       	mov    $0x0,%eax
    2462:	83 c0 01             	add    $0x1,%eax
    2465:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    2469:	75 f7                	jne    2462 <string_length+0x12>
    246b:	c3                   	ret
    246c:	b8 00 00 00 00       	mov    $0x0,%eax
    2471:	c3                   	ret

00002472 <strings_not_equal>:
    2472:	f3 0f 1e fb          	endbr32
    2476:	57                   	push   %edi
    2477:	56                   	push   %esi
    2478:	53                   	push   %ebx
    2479:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    247d:	8b 74 24 14          	mov    0x14(%esp),%esi
    2481:	53                   	push   %ebx
    2482:	e8 c9 ff ff ff       	call   2450 <string_length>
    2487:	89 c7                	mov    %eax,%edi
    2489:	89 34 24             	mov    %esi,(%esp)
    248c:	e8 bf ff ff ff       	call   2450 <string_length>
    2491:	83 c4 04             	add    $0x4,%esp
    2494:	89 c2                	mov    %eax,%edx
    2496:	b8 01 00 00 00       	mov    $0x1,%eax
    249b:	39 d7                	cmp    %edx,%edi
    249d:	75 2b                	jne    24ca <strings_not_equal+0x58>
    249f:	0f b6 03             	movzbl (%ebx),%eax
    24a2:	84 c0                	test   %al,%al
    24a4:	74 18                	je     24be <strings_not_equal+0x4c>
    24a6:	38 06                	cmp    %al,(%esi)
    24a8:	75 1b                	jne    24c5 <strings_not_equal+0x53>
    24aa:	83 c3 01             	add    $0x1,%ebx
    24ad:	83 c6 01             	add    $0x1,%esi
    24b0:	0f b6 03             	movzbl (%ebx),%eax
    24b3:	84 c0                	test   %al,%al
    24b5:	75 ef                	jne    24a6 <strings_not_equal+0x34>
    24b7:	b8 00 00 00 00       	mov    $0x0,%eax
    24bc:	eb 0c                	jmp    24ca <strings_not_equal+0x58>
    24be:	b8 00 00 00 00       	mov    $0x0,%eax
    24c3:	eb 05                	jmp    24ca <strings_not_equal+0x58>
    24c5:	b8 01 00 00 00       	mov    $0x1,%eax
    24ca:	5b                   	pop    %ebx
    24cb:	5e                   	pop    %esi
    24cc:	5f                   	pop    %edi
    24cd:	c3                   	ret

000024ce <yakiniku>:
    24ce:	f3 0f 1e fb          	endbr32
    24d2:	8b 44 24 08          	mov    0x8(%esp),%eax
    24d6:	0f af 44 24 04       	imul   0x4(%esp),%eax
    24db:	c3                   	ret

000024dc <sukiyaki>:
    24dc:	f3 0f 1e fb          	endbr32
    24e0:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    24e4:	b8 01 00 00 00       	mov    $0x1,%eax
    24e9:	d3 e0                	shl    %cl,%eax
    24eb:	c3                   	ret

000024ec <karaage>:
    24ec:	f3 0f 1e fb          	endbr32
    24f0:	83 ec 0c             	sub    $0xc,%esp
    24f3:	8b 54 24 10          	mov    0x10(%esp),%edx
    24f7:	b8 00 00 00 00       	mov    $0x0,%eax
    24fc:	83 fa 63             	cmp    $0x63,%edx
    24ff:	7e 04                	jle    2505 <karaage+0x19>
    2501:	83 c4 0c             	add    $0xc,%esp
    2504:	c3                   	ret
    2505:	83 ec 0c             	sub    $0xc,%esp
    2508:	83 c2 01             	add    $0x1,%edx
    250b:	52                   	push   %edx
    250c:	e8 db ff ff ff       	call   24ec <karaage>
    2511:	83 c4 10             	add    $0x10,%esp
    2514:	83 c0 02             	add    $0x2,%eax
    2517:	eb e8                	jmp    2501 <karaage+0x15>

00002519 <ramen>:
    2519:	f3 0f 1e fb          	endbr32
    251d:	83 ec 18             	sub    $0x18,%esp
    2520:	ff 74 24 1c          	push   0x1c(%esp)
    2524:	e8 c3 ff ff ff       	call   24ec <karaage>
    2529:	8b 4c 24 24          	mov    0x24(%esp),%ecx
    252d:	d3 e0                	shl    %cl,%eax
    252f:	83 c4 1c             	add    $0x1c,%esp
    2532:	c3                   	ret

00002533 <ruler_count_zero>:
    2533:	f3 0f 1e fb          	endbr32
    2537:	56                   	push   %esi
    2538:	53                   	push   %ebx
    2539:	83 ec 04             	sub    $0x4,%esp
    253c:	8b 4c 24 10          	mov    0x10(%esp),%ecx
    2540:	8b 5c 24 14          	mov    0x14(%esp),%ebx
    2544:	39 d9                	cmp    %ebx,%ecx
    2546:	7d 11                	jge    2559 <ruler_count_zero+0x26>
    2548:	01 d9                	add    %ebx,%ecx
    254a:	83 f9 59             	cmp    $0x59,%ecx
    254d:	0f 95 c0             	setne  %al
    2550:	0f b6 c0             	movzbl %al,%eax
    2553:	83 c4 04             	add    $0x4,%esp
    2556:	5b                   	pop    %ebx
    2557:	5e                   	pop    %esi
    2558:	c3                   	ret
    2559:	8d 14 19             	lea    (%ecx,%ebx,1),%edx
    255c:	b8 01 00 00 00       	mov    $0x1,%eax
    2561:	83 fa 03             	cmp    $0x3,%edx
    2564:	74 17                	je     257d <ruler_count_zero+0x4a>
    2566:	83 ec 08             	sub    $0x8,%esp
    2569:	83 c3 02             	add    $0x2,%ebx
    256c:	53                   	push   %ebx
    256d:	29 c1                	sub    %eax,%ecx
    256f:	83 e9 01             	sub    $0x1,%ecx
    2572:	51                   	push   %ecx
    2573:	e8 bb ff ff ff       	call   2533 <ruler_count_zero>
    2578:	83 c4 10             	add    $0x10,%esp
    257b:	eb d6                	jmp    2553 <ruler_count_zero+0x20>
    257d:	8d 73 01             	lea    0x1(%ebx),%esi
    2580:	89 c8                	mov    %ecx,%eax
    2582:	99                   	cltd
    2583:	f7 fe                	idiv   %esi
    2585:	85 d2                	test   %edx,%edx
    2587:	0f 95 c0             	setne  %al
    258a:	0f b6 c0             	movzbl %al,%eax
    258d:	eb d7                	jmp    2566 <ruler_count_zero+0x33>

0000258f <english_or_spanish>:
    258f:	f3 0f 1e fb          	endbr32
    2593:	8b 44 24 04          	mov    0x4(%esp),%eax
    2597:	8d 44 40 01          	lea    0x1(%eax,%eax,2),%eax
    259b:	c3                   	ret

0000259c <red_catastrophe>:
    259c:	f3 0f 1e fb          	endbr32
    25a0:	55                   	push   %ebp
    25a1:	57                   	push   %edi
    25a2:	56                   	push   %esi
    25a3:	53                   	push   %ebx
    25a4:	8b 5c 24 14          	mov    0x14(%esp),%ebx
    25a8:	8b 74 24 18          	mov    0x18(%esp),%esi
    25ac:	0f b6 03             	movzbl (%ebx),%eax
    25af:	84 c0                	test   %al,%al
    25b1:	74 6c                	je     261f <red_catastrophe+0x83>
    25b3:	b9 00 00 00 00       	mov    $0x0,%ecx
    25b8:	bf 4f ec c4 4e       	mov    $0x4ec4ec4f,%edi
    25bd:	eb 32                	jmp    25f1 <red_catastrophe+0x55>
    25bf:	8d 50 bf             	lea    -0x41(%eax),%edx
    25c2:	80 fa 19             	cmp    $0x19,%dl
    25c5:	77 53                	ja     261a <red_catastrophe+0x7e>
    25c7:	0f be c0             	movsbl %al,%eax
    25ca:	8d 68 cc             	lea    -0x34(%eax),%ebp
    25cd:	89 e8                	mov    %ebp,%eax
    25cf:	f7 ef                	imul   %edi
    25d1:	c1 fa 03             	sar    $0x3,%edx
    25d4:	89 e8                	mov    %ebp,%eax
    25d6:	c1 f8 1f             	sar    $0x1f,%eax
    25d9:	29 c2                	sub    %eax,%edx
    25db:	6b d2 1a             	imul   $0x1a,%edx,%edx
    25de:	29 d5                	sub    %edx,%ebp
    25e0:	8d 45 41             	lea    0x41(%ebp),%eax
    25e3:	88 04 0e             	mov    %al,(%esi,%ecx,1)
    25e6:	83 c1 01             	add    $0x1,%ecx
    25e9:	0f b6 04 0b          	movzbl (%ebx,%ecx,1),%eax
    25ed:	84 c0                	test   %al,%al
    25ef:	74 33                	je     2624 <red_catastrophe+0x88>
    25f1:	8d 50 9f             	lea    -0x61(%eax),%edx
    25f4:	80 fa 19             	cmp    $0x19,%dl
    25f7:	77 c6                	ja     25bf <red_catastrophe+0x23>
    25f9:	0f be c0             	movsbl %al,%eax
    25fc:	8d 68 ac             	lea    -0x54(%eax),%ebp
    25ff:	89 e8                	mov    %ebp,%eax
    2601:	f7 ef                	imul   %edi
    2603:	c1 fa 03             	sar    $0x3,%edx
    2606:	89 e8                	mov    %ebp,%eax
    2608:	c1 f8 1f             	sar    $0x1f,%eax
    260b:	29 c2                	sub    %eax,%edx
    260d:	6b d2 1a             	imul   $0x1a,%edx,%edx
    2610:	29 d5                	sub    %edx,%ebp
    2612:	8d 45 61             	lea    0x61(%ebp),%eax
    2615:	88 04 0e             	mov    %al,(%esi,%ecx,1)
    2618:	eb cc                	jmp    25e6 <red_catastrophe+0x4a>
    261a:	88 04 0e             	mov    %al,(%esi,%ecx,1)
    261d:	eb c7                	jmp    25e6 <red_catastrophe+0x4a>
    261f:	b9 00 00 00 00       	mov    $0x0,%ecx
    2624:	c6 04 0e 00          	movb   $0x0,(%esi,%ecx,1)
    2628:	5b                   	pop    %ebx
    2629:	5e                   	pop    %esi
    262a:	5f                   	pop    %edi
    262b:	5d                   	pop    %ebp
    262c:	c3                   	ret

0000262d <start_game>:
    262d:	f3 0f 1e fb          	endbr32
    2631:	53                   	push   %ebx
    2632:	81 ec 00 10 00 00    	sub    $0x1000,%esp
    2638:	83 0c 24 00          	orl    $0x0,(%esp)
    263c:	81 ec 00 10 00 00    	sub    $0x1000,%esp
    2642:	83 0c 24 00          	orl    $0x0,(%esp)
    2646:	83 ec 20             	sub    $0x20,%esp
    2649:	e8 82 ed ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    264e:	81 c3 16 69 00 00    	add    $0x6916,%ebx
    2654:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    265a:	89 84 24 14 20 00 00 	mov    %eax,0x2014(%esp)
    2661:	31 c0                	xor    %eax,%eax
    2663:	8d 83 49 94 ff ff    	lea    -0x6bb7(%ebx),%eax
    2669:	50                   	push   %eax
    266a:	6a 02                	push   $0x2
    266c:	e8 bf eb ff ff       	call   1230 <signal@plt>
    2671:	83 c4 04             	add    $0x4,%esp
    2674:	8d 44 24 18          	lea    0x18(%esp),%eax
    2678:	50                   	push   %eax
    2679:	e8 53 0a 00 00       	call   30d1 <init_driver>
    267e:	83 c4 10             	add    $0x10,%esp
    2681:	85 c0                	test   %eax,%eax
    2683:	78 18                	js     269d <start_game+0x70>
    2685:	8b 84 24 0c 20 00 00 	mov    0x200c(%esp),%eax
    268c:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    2693:	75 2a                	jne    26bf <start_game+0x92>
    2695:	81 c4 18 20 00 00    	add    $0x2018,%esp
    269b:	5b                   	pop    %ebx
    269c:	c3                   	ret
    269d:	83 ec 04             	sub    $0x4,%esp
    26a0:	8d 44 24 10          	lea    0x10(%esp),%eax
    26a4:	50                   	push   %eax
    26a5:	8d 83 8a d2 ff ff    	lea    -0x2d76(%ebx),%eax
    26ab:	50                   	push   %eax
    26ac:	6a 01                	push   $0x1
    26ae:	e8 5d ec ff ff       	call   1310 <__printf_chk@plt>
    26b3:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    26ba:	e8 f1 eb ff ff       	call   12b0 <exit@plt>
    26bf:	e8 2c 0d 00 00       	call   33f0 <__stack_chk_fail_local>

000026c4 <start_game_solve>:
    26c4:	f3 0f 1e fb          	endbr32
    26c8:	c3                   	ret

000026c9 <blank_line>:
    26c9:	f3 0f 1e fb          	endbr32
    26cd:	57                   	push   %edi
    26ce:	56                   	push   %esi
    26cf:	53                   	push   %ebx
    26d0:	e8 fb ec ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    26d5:	81 c3 8f 68 00 00    	add    $0x688f,%ebx
    26db:	8b 7c 24 10          	mov    0x10(%esp),%edi
    26df:	0f b6 37             	movzbl (%edi),%esi
    26e2:	89 f0                	mov    %esi,%eax
    26e4:	84 c0                	test   %al,%al
    26e6:	74 1d                	je     2705 <blank_line+0x3c>
    26e8:	e8 83 ec ff ff       	call   1370 <__ctype_b_loc@plt>
    26ed:	83 c7 01             	add    $0x1,%edi
    26f0:	89 f2                	mov    %esi,%edx
    26f2:	0f be f2             	movsbl %dl,%esi
    26f5:	8b 00                	mov    (%eax),%eax
    26f7:	f6 44 70 01 20       	testb  $0x20,0x1(%eax,%esi,2)
    26fc:	75 e1                	jne    26df <blank_line+0x16>
    26fe:	b8 00 00 00 00       	mov    $0x0,%eax
    2703:	eb 05                	jmp    270a <blank_line+0x41>
    2705:	b8 01 00 00 00       	mov    $0x1,%eax
    270a:	5b                   	pop    %ebx
    270b:	5e                   	pop    %esi
    270c:	5f                   	pop    %edi
    270d:	c3                   	ret

0000270e <skip>:
    270e:	f3 0f 1e fb          	endbr32
    2712:	55                   	push   %ebp
    2713:	57                   	push   %edi
    2714:	56                   	push   %esi
    2715:	53                   	push   %ebx
    2716:	83 ec 0c             	sub    $0xc,%esp
    2719:	e8 31 05 00 00       	call   2c4f <__x86.get_pc_thunk.bp>
    271e:	81 c5 46 68 00 00    	add    $0x6846,%ebp
    2724:	8d bd e4 06 00 00    	lea    0x6e4(%ebp),%edi
    272a:	8d b5 fc 06 00 00    	lea    0x6fc(%ebp),%esi
    2730:	83 ec 04             	sub    $0x4,%esp
    2733:	ff 37                	push   (%edi)
    2735:	68 90 01 00 00       	push   $0x190
    273a:	69 85 e0 06 00 00 90 	imul   $0x190,0x6e0(%ebp),%eax
    2741:	01 00 00 
    2744:	01 f0                	add    %esi,%eax
    2746:	50                   	push   %eax
    2747:	89 eb                	mov    %ebp,%ebx
    2749:	e8 d2 ea ff ff       	call   1220 <fgets@plt>
    274e:	89 c3                	mov    %eax,%ebx
    2750:	83 c4 10             	add    $0x10,%esp
    2753:	85 c0                	test   %eax,%eax
    2755:	74 10                	je     2767 <skip+0x59>
    2757:	83 ec 0c             	sub    $0xc,%esp
    275a:	50                   	push   %eax
    275b:	e8 69 ff ff ff       	call   26c9 <blank_line>
    2760:	83 c4 10             	add    $0x10,%esp
    2763:	85 c0                	test   %eax,%eax
    2765:	75 c9                	jne    2730 <skip+0x22>
    2767:	89 d8                	mov    %ebx,%eax
    2769:	83 c4 0c             	add    $0xc,%esp
    276c:	5b                   	pop    %ebx
    276d:	5e                   	pop    %esi
    276e:	5f                   	pop    %edi
    276f:	5d                   	pop    %ebp
    2770:	c3                   	ret

00002771 <send_msg>:
    2771:	f3 0f 1e fb          	endbr32
    2775:	57                   	push   %edi
    2776:	56                   	push   %esi
    2777:	53                   	push   %ebx
    2778:	8d 84 24 00 c0 ff ff 	lea    -0x4000(%esp),%eax
    277f:	81 ec 00 10 00 00    	sub    $0x1000,%esp
    2785:	83 0c 24 00          	orl    $0x0,(%esp)
    2789:	39 c4                	cmp    %eax,%esp
    278b:	75 f2                	jne    277f <send_msg+0xe>
    278d:	83 ec 10             	sub    $0x10,%esp
    2790:	e8 3b ec ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    2795:	81 c3 cf 67 00 00    	add    $0x67cf,%ebx
    279b:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    27a1:	89 84 24 0c 40 00 00 	mov    %eax,0x400c(%esp)
    27a8:	31 c0                	xor    %eax,%eax
    27aa:	8b b3 e0 06 00 00    	mov    0x6e0(%ebx),%esi
    27b0:	8d 56 ff             	lea    -0x1(%esi),%edx
    27b3:	69 d2 90 01 00 00    	imul   $0x190,%edx,%edx
    27b9:	03 93 78 00 00 00    	add    0x78(%ebx),%edx
    27bf:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    27c4:	89 d7                	mov    %edx,%edi
    27c6:	f2 ae                	repnz scas %es:(%edi),%al
    27c8:	89 c8                	mov    %ecx,%eax
    27ca:	f7 d0                	not    %eax
    27cc:	83 c0 63             	add    $0x63,%eax
    27cf:	3d 00 20 00 00       	cmp    $0x2000,%eax
    27d4:	77 74                	ja     284a <send_msg+0xd9>
    27d6:	83 bc 24 20 40 00 00 	cmpl   $0x0,0x4020(%esp)
    27dd:	00 
    27de:	8d 83 a4 d2 ff ff    	lea    -0x2d5c(%ebx),%eax
    27e4:	8d 8b ac d2 ff ff    	lea    -0x2d54(%ebx),%ecx
    27ea:	0f 44 c1             	cmove  %ecx,%eax
    27ed:	52                   	push   %edx
    27ee:	56                   	push   %esi
    27ef:	50                   	push   %eax
    27f0:	8d 83 bc 04 00 00    	lea    0x4bc(%ebx),%eax
    27f6:	ff 30                	push   (%eax)
    27f8:	8d 83 b5 d2 ff ff    	lea    -0x2d4b(%ebx),%eax
    27fe:	50                   	push   %eax
    27ff:	68 00 20 00 00       	push   $0x2000
    2804:	6a 01                	push   $0x1
    2806:	8d 74 24 28          	lea    0x28(%esp),%esi
    280a:	56                   	push   %esi
    280b:	e8 70 eb ff ff       	call   1380 <__sprintf_chk@plt>
    2810:	83 c4 20             	add    $0x20,%esp
    2813:	8d 84 24 0c 20 00 00 	lea    0x200c(%esp),%eax
    281a:	50                   	push   %eax
    281b:	6a 00                	push   $0x0
    281d:	56                   	push   %esi
    281e:	ff b3 90 00 00 00    	push   0x90(%ebx)
    2824:	e8 a7 0a 00 00       	call   32d0 <driver_post>
    2829:	83 c4 10             	add    $0x10,%esp
    282c:	85 c0                	test   %eax,%eax
    282e:	78 37                	js     2867 <send_msg+0xf6>
    2830:	8b 84 24 0c 40 00 00 	mov    0x400c(%esp),%eax
    2837:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    283e:	75 43                	jne    2883 <send_msg+0x112>
    2840:	81 c4 10 40 00 00    	add    $0x4010,%esp
    2846:	5b                   	pop    %ebx
    2847:	5e                   	pop    %esi
    2848:	5f                   	pop    %edi
    2849:	c3                   	ret
    284a:	83 ec 08             	sub    $0x8,%esp
    284d:	8d 83 10 d1 ff ff    	lea    -0x2ef0(%ebx),%eax
    2853:	50                   	push   %eax
    2854:	6a 01                	push   $0x1
    2856:	e8 b5 ea ff ff       	call   1310 <__printf_chk@plt>
    285b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    2862:	e8 49 ea ff ff       	call   12b0 <exit@plt>
    2867:	83 ec 0c             	sub    $0xc,%esp
    286a:	8d 84 24 18 20 00 00 	lea    0x2018(%esp),%eax
    2871:	50                   	push   %eax
    2872:	e8 29 ea ff ff       	call   12a0 <puts@plt>
    2877:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    287e:	e8 2d ea ff ff       	call   12b0 <exit@plt>
    2883:	e8 68 0b 00 00       	call   33f0 <__stack_chk_fail_local>

00002888 <trap>:
    2888:	f3 0f 1e fb          	endbr32
    288c:	56                   	push   %esi
    288d:	53                   	push   %ebx
    288e:	83 ec 10             	sub    $0x10,%esp
    2891:	e8 3a eb ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    2896:	81 c3 ce 66 00 00    	add    $0x66ce,%ebx
    289c:	8d 83 34 d1 ff ff    	lea    -0x2ecc(%ebx),%eax
    28a2:	50                   	push   %eax
    28a3:	e8 f8 e9 ff ff       	call   12a0 <puts@plt>
    28a8:	8d 83 6c d1 ff ff    	lea    -0x2e94(%ebx),%eax
    28ae:	89 04 24             	mov    %eax,(%esp)
    28b1:	e8 ea e9 ff ff       	call   12a0 <puts@plt>
    28b6:	c7 04 24 2e 00 00 00 	movl   $0x2e,(%esp)
    28bd:	e8 3e ea ff ff       	call   1300 <putchar@plt>
    28c2:	83 c4 04             	add    $0x4,%esp
    28c5:	8b b3 8c 00 00 00    	mov    0x8c(%ebx),%esi
    28cb:	ff 36                	push   (%esi)
    28cd:	e8 2e e9 ff ff       	call   1200 <fflush@plt>
    28d2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28d9:	e8 62 e9 ff ff       	call   1240 <sleep@plt>
    28de:	c7 04 24 2e 00 00 00 	movl   $0x2e,(%esp)
    28e5:	e8 16 ea ff ff       	call   1300 <putchar@plt>
    28ea:	83 c4 04             	add    $0x4,%esp
    28ed:	ff 36                	push   (%esi)
    28ef:	e8 0c e9 ff ff       	call   1200 <fflush@plt>
    28f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28fb:	e8 40 e9 ff ff       	call   1240 <sleep@plt>
    2900:	8d 83 77 d2 ff ff    	lea    -0x2d89(%ebx),%eax
    2906:	89 04 24             	mov    %eax,(%esp)
    2909:	e8 92 e9 ff ff       	call   12a0 <puts@plt>
    290e:	83 c4 04             	add    $0x4,%esp
    2911:	ff 36                	push   (%esi)
    2913:	e8 e8 e8 ff ff       	call   1200 <fflush@plt>
    2918:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    291f:	e8 1c e9 ff ff       	call   1240 <sleep@plt>
    2924:	8d 83 ac d1 ff ff    	lea    -0x2e54(%ebx),%eax
    292a:	89 04 24             	mov    %eax,(%esp)
    292d:	e8 6e e9 ff ff       	call   12a0 <puts@plt>
    2932:	83 c4 04             	add    $0x4,%esp
    2935:	ff 36                	push   (%esi)
    2937:	e8 c4 e8 ff ff       	call   1200 <fflush@plt>
    293c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2943:	e8 29 fe ff ff       	call   2771 <send_msg>
    2948:	8d 83 d4 d1 ff ff    	lea    -0x2e2c(%ebx),%eax
    294e:	89 04 24             	mov    %eax,(%esp)
    2951:	e8 4a e9 ff ff       	call   12a0 <puts@plt>
    2956:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    295d:	e8 4e e9 ff ff       	call   12b0 <exit@plt>

00002962 <read_six_numbers>:
    2962:	f3 0f 1e fb          	endbr32
    2966:	53                   	push   %ebx
    2967:	83 ec 08             	sub    $0x8,%esp
    296a:	e8 61 ea ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    296f:	81 c3 f5 65 00 00    	add    $0x65f5,%ebx
    2975:	8b 44 24 14          	mov    0x14(%esp),%eax
    2979:	8d 50 14             	lea    0x14(%eax),%edx
    297c:	52                   	push   %edx
    297d:	8d 50 10             	lea    0x10(%eax),%edx
    2980:	52                   	push   %edx
    2981:	8d 50 0c             	lea    0xc(%eax),%edx
    2984:	52                   	push   %edx
    2985:	8d 50 08             	lea    0x8(%eax),%edx
    2988:	52                   	push   %edx
    2989:	8d 50 04             	lea    0x4(%eax),%edx
    298c:	52                   	push   %edx
    298d:	50                   	push   %eax
    298e:	8d 83 c1 d2 ff ff    	lea    -0x2d3f(%ebx),%eax
    2994:	50                   	push   %eax
    2995:	ff 74 24 2c          	push   0x2c(%esp)
    2999:	e8 42 e9 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    299e:	83 c4 20             	add    $0x20,%esp
    29a1:	83 f8 05             	cmp    $0x5,%eax
    29a4:	7e 05                	jle    29ab <read_six_numbers+0x49>
    29a6:	83 c4 08             	add    $0x8,%esp
    29a9:	5b                   	pop    %ebx
    29aa:	c3                   	ret
    29ab:	e8 d8 fe ff ff       	call   2888 <trap>

000029b0 <read_n_numbers>:
    29b0:	f3 0f 1e fb          	endbr32
    29b4:	55                   	push   %ebp
    29b5:	57                   	push   %edi
    29b6:	56                   	push   %esi
    29b7:	53                   	push   %ebx
    29b8:	83 ec 30             	sub    $0x30,%esp
    29bb:	e8 10 ea ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    29c0:	81 c3 a4 65 00 00    	add    $0x65a4,%ebx
    29c6:	8b 7c 24 4c          	mov    0x4c(%esp),%edi
    29ca:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    29d0:	89 44 24 20          	mov    %eax,0x20(%esp)
    29d4:	31 c0                	xor    %eax,%eax
    29d6:	66 c7 44 24 1e 20 00 	movw   $0x20,0x1e(%esp)
    29dd:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
    29e4:	00 
    29e5:	8d 44 24 18          	lea    0x18(%esp),%eax
    29e9:	50                   	push   %eax
    29ea:	8d 44 24 22          	lea    0x22(%esp),%eax
    29ee:	50                   	push   %eax
    29ef:	ff 74 24 4c          	push   0x4c(%esp)
    29f3:	e8 88 e8 ff ff       	call   1280 <strtok_r@plt>
    29f8:	83 c4 10             	add    $0x10,%esp
    29fb:	83 7c 24 44 00       	cmpl   $0x0,0x44(%esp)
    2a00:	7e 6a                	jle    2a6c <read_n_numbers+0xbc>
    2a02:	85 c0                	test   %eax,%eax
    2a04:	74 5c                	je     2a62 <read_n_numbers+0xb2>
    2a06:	8b 4c 24 44          	mov    0x44(%esp),%ecx
    2a0a:	8d 51 ff             	lea    -0x1(%ecx),%edx
    2a0d:	89 54 24 08          	mov    %edx,0x8(%esp)
    2a11:	be 00 00 00 00       	mov    $0x0,%esi
    2a16:	8d ab d0 d2 ff ff    	lea    -0x2d30(%ebx),%ebp
    2a1c:	8d 54 24 14          	lea    0x14(%esp),%edx
    2a20:	89 54 24 0c          	mov    %edx,0xc(%esp)
    2a24:	83 ec 04             	sub    $0x4,%esp
    2a27:	57                   	push   %edi
    2a28:	55                   	push   %ebp
    2a29:	50                   	push   %eax
    2a2a:	e8 b1 e8 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    2a2f:	83 c4 10             	add    $0x10,%esp
    2a32:	85 c0                	test   %eax,%eax
    2a34:	74 31                	je     2a67 <read_n_numbers+0xb7>
    2a36:	39 74 24 08          	cmp    %esi,0x8(%esp)
    2a3a:	74 30                	je     2a6c <read_n_numbers+0xbc>
    2a3c:	83 ec 04             	sub    $0x4,%esp
    2a3f:	ff 74 24 10          	push   0x10(%esp)
    2a43:	8d 44 24 22          	lea    0x22(%esp),%eax
    2a47:	50                   	push   %eax
    2a48:	6a 00                	push   $0x0
    2a4a:	e8 31 e8 ff ff       	call   1280 <strtok_r@plt>
    2a4f:	83 c6 01             	add    $0x1,%esi
    2a52:	83 c4 10             	add    $0x10,%esp
    2a55:	39 74 24 44          	cmp    %esi,0x44(%esp)
    2a59:	74 11                	je     2a6c <read_n_numbers+0xbc>
    2a5b:	83 c7 04             	add    $0x4,%edi
    2a5e:	85 c0                	test   %eax,%eax
    2a60:	75 c2                	jne    2a24 <read_n_numbers+0x74>
    2a62:	e8 21 fe ff ff       	call   2888 <trap>
    2a67:	e8 1c fe ff ff       	call   2888 <trap>
    2a6c:	8b 44 24 14          	mov    0x14(%esp),%eax
    2a70:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
    2a74:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
    2a7b:	75 08                	jne    2a85 <read_n_numbers+0xd5>
    2a7d:	83 c4 2c             	add    $0x2c,%esp
    2a80:	5b                   	pop    %ebx
    2a81:	5e                   	pop    %esi
    2a82:	5f                   	pop    %edi
    2a83:	5d                   	pop    %ebp
    2a84:	c3                   	ret
    2a85:	e8 66 09 00 00       	call   33f0 <__stack_chk_fail_local>

00002a8a <input_to_integer>:
    2a8a:	f3 0f 1e fb          	endbr32
    2a8e:	53                   	push   %ebx
    2a8f:	83 ec 0c             	sub    $0xc,%esp
    2a92:	e8 39 e9 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    2a97:	81 c3 cd 64 00 00    	add    $0x64cd,%ebx
    2a9d:	ff 74 24 18          	push   0x18(%esp)
    2aa1:	8d 83 d0 d2 ff ff    	lea    -0x2d30(%ebx),%eax
    2aa7:	50                   	push   %eax
    2aa8:	ff 74 24 1c          	push   0x1c(%esp)
    2aac:	e8 2f e8 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    2ab1:	83 c4 10             	add    $0x10,%esp
    2ab4:	85 c0                	test   %eax,%eax
    2ab6:	7e 05                	jle    2abd <input_to_integer+0x33>
    2ab8:	83 c4 08             	add    $0x8,%esp
    2abb:	5b                   	pop    %ebx
    2abc:	c3                   	ret
    2abd:	e8 c6 fd ff ff       	call   2888 <trap>

00002ac2 <read_line>:
    2ac2:	f3 0f 1e fb          	endbr32
    2ac6:	57                   	push   %edi
    2ac7:	56                   	push   %esi
    2ac8:	53                   	push   %ebx
    2ac9:	e8 02 e9 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    2ace:	81 c3 96 64 00 00    	add    $0x6496,%ebx
    2ad4:	e8 35 fc ff ff       	call   270e <skip>
    2ad9:	85 c0                	test   %eax,%eax
    2adb:	74 51                	je     2b2e <read_line+0x6c>
    2add:	8b 93 e0 06 00 00    	mov    0x6e0(%ebx),%edx
    2ae3:	69 f2 90 01 00 00    	imul   $0x190,%edx,%esi
    2ae9:	03 b3 78 00 00 00    	add    0x78(%ebx),%esi
    2aef:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    2af4:	b8 00 00 00 00       	mov    $0x0,%eax
    2af9:	89 f7                	mov    %esi,%edi
    2afb:	f2 ae                	repnz scas %es:(%edi),%al
    2afd:	f7 d1                	not    %ecx
    2aff:	83 e9 01             	sub    $0x1,%ecx
    2b02:	81 f9 8e 01 00 00    	cmp    $0x18e,%ecx
    2b08:	0f 8f a5 00 00 00    	jg     2bb3 <read_line+0xf1>
    2b0e:	69 c2 90 01 00 00    	imul   $0x190,%edx,%eax
    2b14:	03 83 78 00 00 00    	add    0x78(%ebx),%eax
    2b1a:	c6 44 01 ff 00       	movb   $0x0,-0x1(%ecx,%eax,1)
    2b1f:	83 c2 01             	add    $0x1,%edx
    2b22:	89 93 e0 06 00 00    	mov    %edx,0x6e0(%ebx)
    2b28:	89 f0                	mov    %esi,%eax
    2b2a:	5b                   	pop    %ebx
    2b2b:	5e                   	pop    %esi
    2b2c:	5f                   	pop    %edi
    2b2d:	c3                   	ret
    2b2e:	8d 93 e4 06 00 00    	lea    0x6e4(%ebx),%edx
    2b34:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
    2b3a:	8b 00                	mov    (%eax),%eax
    2b3c:	39 02                	cmp    %eax,(%edx)
    2b3e:	74 20                	je     2b60 <read_line+0x9e>
    2b40:	83 ec 0c             	sub    $0xc,%esp
    2b43:	8d 83 f1 d2 ff ff    	lea    -0x2d0f(%ebx),%eax
    2b49:	50                   	push   %eax
    2b4a:	e8 41 e7 ff ff       	call   1290 <getenv@plt>
    2b4f:	83 c4 10             	add    $0x10,%esp
    2b52:	85 c0                	test   %eax,%eax
    2b54:	74 25                	je     2b7b <read_line+0xb9>
    2b56:	83 ec 0c             	sub    $0xc,%esp
    2b59:	6a 00                	push   $0x0
    2b5b:	e8 50 e7 ff ff       	call   12b0 <exit@plt>
    2b60:	83 ec 0c             	sub    $0xc,%esp
    2b63:	8d 83 d3 d2 ff ff    	lea    -0x2d2d(%ebx),%eax
    2b69:	50                   	push   %eax
    2b6a:	e8 31 e7 ff ff       	call   12a0 <puts@plt>
    2b6f:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    2b76:	e8 35 e7 ff ff       	call   12b0 <exit@plt>
    2b7b:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
    2b81:	8b 10                	mov    (%eax),%edx
    2b83:	8d 83 e4 06 00 00    	lea    0x6e4(%ebx),%eax
    2b89:	89 10                	mov    %edx,(%eax)
    2b8b:	e8 7e fb ff ff       	call   270e <skip>
    2b90:	85 c0                	test   %eax,%eax
    2b92:	0f 85 45 ff ff ff    	jne    2add <read_line+0x1b>
    2b98:	83 ec 0c             	sub    $0xc,%esp
    2b9b:	8d 83 d3 d2 ff ff    	lea    -0x2d2d(%ebx),%eax
    2ba1:	50                   	push   %eax
    2ba2:	e8 f9 e6 ff ff       	call   12a0 <puts@plt>
    2ba7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bae:	e8 fd e6 ff ff       	call   12b0 <exit@plt>
    2bb3:	83 ec 0c             	sub    $0xc,%esp
    2bb6:	8d 83 fc d2 ff ff    	lea    -0x2d04(%ebx),%eax
    2bbc:	50                   	push   %eax
    2bbd:	e8 de e6 ff ff       	call   12a0 <puts@plt>
    2bc2:	8b 83 e0 06 00 00    	mov    0x6e0(%ebx),%eax
    2bc8:	8d 50 01             	lea    0x1(%eax),%edx
    2bcb:	89 93 e0 06 00 00    	mov    %edx,0x6e0(%ebx)
    2bd1:	69 c0 90 01 00 00    	imul   $0x190,%eax,%eax
    2bd7:	03 83 78 00 00 00    	add    0x78(%ebx),%eax
    2bdd:	8d b3 17 d3 ff ff    	lea    -0x2ce9(%ebx),%esi
    2be3:	b9 04 00 00 00       	mov    $0x4,%ecx
    2be8:	89 c7                	mov    %eax,%edi
    2bea:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2bec:	e8 97 fc ff ff       	call   2888 <trap>

00002bf1 <stage_completed>:
    2bf1:	f3 0f 1e fb          	endbr32
    2bf5:	53                   	push   %ebx
    2bf6:	83 ec 14             	sub    $0x14,%esp
    2bf9:	e8 d2 e7 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    2bfe:	81 c3 66 63 00 00    	add    $0x6366,%ebx
    2c04:	6a 01                	push   $0x1
    2c06:	e8 66 fb ff ff       	call   2771 <send_msg>
    2c0b:	83 c4 08             	add    $0x8,%esp
    2c0e:	8d 83 27 d3 ff ff    	lea    -0x2cd9(%ebx),%eax
    2c14:	50                   	push   %eax
    2c15:	6a 01                	push   $0x1
    2c17:	e8 f4 e6 ff ff       	call   1310 <__printf_chk@plt>
    2c1c:	83 c4 10             	add    $0x10,%esp
    2c1f:	83 bb e0 06 00 00 06 	cmpl   $0x6,0x6e0(%ebx)
    2c26:	74 05                	je     2c2d <stage_completed+0x3c>
    2c28:	83 c4 08             	add    $0x8,%esp
    2c2b:	5b                   	pop    %ebx
    2c2c:	c3                   	ret
    2c2d:	83 ec 0c             	sub    $0xc,%esp
    2c30:	8d 83 0c d2 ff ff    	lea    -0x2df4(%ebx),%eax
    2c36:	50                   	push   %eax
    2c37:	e8 64 e6 ff ff       	call   12a0 <puts@plt>
    2c3c:	8d 83 34 d2 ff ff    	lea    -0x2dcc(%ebx),%eax
    2c42:	89 04 24             	mov    %eax,(%esp)
    2c45:	e8 56 e6 ff ff       	call   12a0 <puts@plt>
    2c4a:	83 c4 10             	add    $0x10,%esp
    2c4d:	eb d9                	jmp    2c28 <stage_completed+0x37>

00002c4f <__x86.get_pc_thunk.bp>:
    2c4f:	8b 2c 24             	mov    (%esp),%ebp
    2c52:	c3                   	ret

00002c53 <sigalrm_handler>:
    2c53:	f3 0f 1e fb          	endbr32
    2c57:	53                   	push   %ebx
    2c58:	83 ec 08             	sub    $0x8,%esp
    2c5b:	e8 70 e7 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    2c60:	81 c3 04 63 00 00    	add    $0x6304,%ebx
    2c66:	6a 00                	push   $0x0
    2c68:	8d 83 94 d3 ff ff    	lea    -0x2c6c(%ebx),%eax
    2c6e:	50                   	push   %eax
    2c6f:	6a 01                	push   $0x1
    2c71:	8b 83 7c 00 00 00    	mov    0x7c(%ebx),%eax
    2c77:	ff 30                	push   (%eax)
    2c79:	e8 b2 e6 ff ff       	call   1330 <__fprintf_chk@plt>
    2c7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c85:	e8 26 e6 ff ff       	call   12b0 <exit@plt>

00002c8a <submitr>:
    2c8a:	f3 0f 1e fb          	endbr32
    2c8e:	55                   	push   %ebp
    2c8f:	57                   	push   %edi
    2c90:	56                   	push   %esi
    2c91:	53                   	push   %ebx
    2c92:	8d 84 24 00 c0 ff ff 	lea    -0x4000(%esp),%eax
    2c99:	81 ec 00 10 00 00    	sub    $0x1000,%esp
    2c9f:	83 0c 24 00          	orl    $0x0,(%esp)
    2ca3:	39 c4                	cmp    %eax,%esp
    2ca5:	75 f2                	jne    2c99 <submitr+0xf>
    2ca7:	81 ec 6c 03 00 00    	sub    $0x36c,%esp
    2cad:	e8 1e e7 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    2cb2:	81 c3 b2 62 00 00    	add    $0x62b2,%ebx
    2cb8:	8b 84 24 80 43 00 00 	mov    0x4380(%esp),%eax
    2cbf:	89 44 24 18          	mov    %eax,0x18(%esp)
    2cc3:	8b bc 24 90 43 00 00 	mov    0x4390(%esp),%edi
    2cca:	89 7c 24 08          	mov    %edi,0x8(%esp)
    2cce:	8b ac 24 94 43 00 00 	mov    0x4394(%esp),%ebp
    2cd5:	8b 84 24 98 43 00 00 	mov    0x4398(%esp),%eax
    2cdc:	89 44 24 14          	mov    %eax,0x14(%esp)
    2ce0:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    2ce6:	89 84 24 5c 43 00 00 	mov    %eax,0x435c(%esp)
    2ced:	31 c0                	xor    %eax,%eax
    2cef:	be ff ff ff ff       	mov    $0xffffffff,%esi
    2cf4:	89 f1                	mov    %esi,%ecx
    2cf6:	89 ef                	mov    %ebp,%edi
    2cf8:	f2 ae                	repnz scas %es:(%edi),%al
    2cfa:	f7 d1                	not    %ecx
    2cfc:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
    2d00:	8b bc 24 88 43 00 00 	mov    0x4388(%esp),%edi
    2d07:	89 f1                	mov    %esi,%ecx
    2d09:	f2 ae                	repnz scas %es:(%edi),%al
    2d0b:	89 4c 24 10          	mov    %ecx,0x10(%esp)
    2d0f:	8b bc 24 8c 43 00 00 	mov    0x438c(%esp),%edi
    2d16:	89 f1                	mov    %esi,%ecx
    2d18:	f2 ae                	repnz scas %es:(%edi),%al
    2d1a:	89 ca                	mov    %ecx,%edx
    2d1c:	f7 d2                	not    %edx
    2d1e:	89 f1                	mov    %esi,%ecx
    2d20:	8b 7c 24 08          	mov    0x8(%esp),%edi
    2d24:	f2 ae                	repnz scas %es:(%edi),%al
    2d26:	2b 54 24 10          	sub    0x10(%esp),%edx
    2d2a:	29 ca                	sub    %ecx,%edx
    2d2c:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    2d30:	8d 44 49 fd          	lea    -0x3(%ecx,%ecx,2),%eax
    2d34:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
    2d38:	3d 00 20 00 00       	cmp    $0x2000,%eax
    2d3d:	77 48                	ja     2d87 <submitr+0xfd>
    2d3f:	8d 54 24 34          	lea    0x34(%esp),%edx
    2d43:	b9 00 08 00 00       	mov    $0x800,%ecx
    2d48:	b8 00 00 00 00       	mov    $0x0,%eax
    2d4d:	89 d7                	mov    %edx,%edi
    2d4f:	f3 ab                	rep stos %eax,%es:(%edi)
    2d51:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    2d56:	89 ef                	mov    %ebp,%edi
    2d58:	f2 ae                	repnz scas %es:(%edi),%al
    2d5a:	f7 d1                	not    %ecx
    2d5c:	83 e9 01             	sub    $0x1,%ecx
    2d5f:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
    2d63:	0f 84 55 02 00 00    	je     2fbe <submitr+0x334>
    2d69:	89 ef                	mov    %ebp,%edi
    2d6b:	89 d6                	mov    %edx,%esi
    2d6d:	8d 83 06 d5 ff ff    	lea    -0x2afa(%ebx),%eax
    2d73:	89 44 24 10          	mov    %eax,0x10(%esp)
    2d77:	8d 84 24 34 20 00 00 	lea    0x2034(%esp),%eax
    2d7e:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    2d82:	e9 96 00 00 00       	jmp    2e1d <submitr+0x193>
    2d87:	8b 44 24 14          	mov    0x14(%esp),%eax
    2d8b:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    2d91:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
    2d98:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
    2d9f:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
    2da6:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
    2dad:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
    2db4:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
    2dbb:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
    2dc2:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
    2dc9:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
    2dd0:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
    2dd7:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
    2dde:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
    2de5:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
    2dec:	83 ec 0c             	sub    $0xc,%esp
    2def:	6a 00                	push   $0x0
    2df1:	e8 6a e5 ff ff       	call   1360 <close@plt>
    2df6:	83 c4 10             	add    $0x10,%esp
    2df9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dfe:	e9 64 02 00 00       	jmp    3067 <submitr+0x3dd>
    2e03:	3c 5f                	cmp    $0x5f,%al
    2e05:	75 7f                	jne    2e86 <submitr+0x1fc>
    2e07:	88 06                	mov    %al,(%esi)
    2e09:	8d 76 01             	lea    0x1(%esi),%esi
    2e0c:	83 c7 01             	add    $0x1,%edi
    2e0f:	8b 44 24 0c          	mov    0xc(%esp),%eax
    2e13:	01 e8                	add    %ebp,%eax
    2e15:	39 c7                	cmp    %eax,%edi
    2e17:	0f 84 a1 01 00 00    	je     2fbe <submitr+0x334>
    2e1d:	0f b6 07             	movzbl (%edi),%eax
    2e20:	8d 50 d6             	lea    -0x2a(%eax),%edx
    2e23:	80 fa 0f             	cmp    $0xf,%dl
    2e26:	77 db                	ja     2e03 <submitr+0x179>
    2e28:	b9 d9 ff 00 00       	mov    $0xffd9,%ecx
    2e2d:	0f a3 d1             	bt     %edx,%ecx
    2e30:	72 d5                	jb     2e07 <submitr+0x17d>
    2e32:	3c 5f                	cmp    $0x5f,%al
    2e34:	74 d1                	je     2e07 <submitr+0x17d>
    2e36:	8d 50 e0             	lea    -0x20(%eax),%edx
    2e39:	80 fa 5f             	cmp    $0x5f,%dl
    2e3c:	76 08                	jbe    2e46 <submitr+0x1bc>
    2e3e:	3c 09                	cmp    $0x9,%al
    2e40:	0f 85 32 01 00 00    	jne    2f78 <submitr+0x2ee>
    2e46:	83 ec 0c             	sub    $0xc,%esp
    2e49:	0f b6 c0             	movzbl %al,%eax
    2e4c:	50                   	push   %eax
    2e4d:	ff 74 24 20          	push   0x20(%esp)
    2e51:	6a 08                	push   $0x8
    2e53:	6a 01                	push   $0x1
    2e55:	ff 74 24 38          	push   0x38(%esp)
    2e59:	e8 22 e5 ff ff       	call   1380 <__sprintf_chk@plt>
    2e5e:	0f b6 84 24 54 20 00 	movzbl 0x2054(%esp),%eax
    2e65:	00 
    2e66:	88 06                	mov    %al,(%esi)
    2e68:	0f b6 84 24 55 20 00 	movzbl 0x2055(%esp),%eax
    2e6f:	00 
    2e70:	88 46 01             	mov    %al,0x1(%esi)
    2e73:	0f b6 84 24 56 20 00 	movzbl 0x2056(%esp),%eax
    2e7a:	00 
    2e7b:	88 46 02             	mov    %al,0x2(%esi)
    2e7e:	83 c4 20             	add    $0x20,%esp
    2e81:	8d 76 03             	lea    0x3(%esi),%esi
    2e84:	eb 86                	jmp    2e0c <submitr+0x182>
    2e86:	89 c2                	mov    %eax,%edx
    2e88:	83 e2 df             	and    $0xffffffdf,%edx
    2e8b:	83 ea 41             	sub    $0x41,%edx
    2e8e:	80 fa 19             	cmp    $0x19,%dl
    2e91:	0f 86 70 ff ff ff    	jbe    2e07 <submitr+0x17d>
    2e97:	3c 20                	cmp    $0x20,%al
    2e99:	75 9b                	jne    2e36 <submitr+0x1ac>
    2e9b:	c6 06 2b             	movb   $0x2b,(%esi)
    2e9e:	8d 76 01             	lea    0x1(%esi),%esi
    2ea1:	e9 66 ff ff ff       	jmp    2e0c <submitr+0x182>
    2ea6:	8b 44 24 14          	mov    0x14(%esp),%eax
    2eaa:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    2eb0:	c7 40 04 72 3a 20 66 	movl   $0x66203a72,0x4(%eax)
    2eb7:	c7 40 08 61 69 6c 65 	movl   $0x656c6961,0x8(%eax)
    2ebe:	c7 40 0c 64 20 74 6f 	movl   $0x6f742064,0xc(%eax)
    2ec5:	c7 40 10 20 6f 70 65 	movl   $0x65706f20,0x10(%eax)
    2ecc:	c7 40 14 6e 20 63 6d 	movl   $0x6d63206e,0x14(%eax)
    2ed3:	c7 40 18 64 20 70 72 	movl   $0x72702064,0x18(%eax)
    2eda:	c7 40 1c 6f 63 65 73 	movl   $0x7365636f,0x1c(%eax)
    2ee1:	66 c7 40 20 73 2e    	movw   $0x2e73,0x20(%eax)
    2ee7:	c6 40 22 00          	movb   $0x0,0x22(%eax)
    2eeb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ef0:	e9 72 01 00 00       	jmp    3067 <submitr+0x3dd>
    2ef5:	83 ec 0c             	sub    $0xc,%esp
    2ef8:	56                   	push   %esi
    2ef9:	e8 c2 e3 ff ff       	call   12c0 <pclose@plt>
    2efe:	8b 83 b8 d3 ff ff    	mov    -0x2c48(%ebx),%eax
    2f04:	8b 74 24 24          	mov    0x24(%esp),%esi
    2f08:	89 06                	mov    %eax,(%esi)
    2f0a:	8b 83 29 d4 ff ff    	mov    -0x2bd7(%ebx),%eax
    2f10:	89 46 71             	mov    %eax,0x71(%esi)
    2f13:	89 f0                	mov    %esi,%eax
    2f15:	8d 7e 04             	lea    0x4(%esi),%edi
    2f18:	83 e7 fc             	and    $0xfffffffc,%edi
    2f1b:	29 f8                	sub    %edi,%eax
    2f1d:	8d b3 b8 d3 ff ff    	lea    -0x2c48(%ebx),%esi
    2f23:	29 c6                	sub    %eax,%esi
    2f25:	8d 48 75             	lea    0x75(%eax),%ecx
    2f28:	c1 e9 02             	shr    $0x2,%ecx
    2f2b:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2f2d:	83 c4 10             	add    $0x10,%esp
    2f30:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f35:	e9 2d 01 00 00       	jmp    3067 <submitr+0x3dd>
    2f3a:	8b 44 24 14          	mov    0x14(%esp),%eax
    2f3e:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    2f44:	c7 40 04 72 3a 20 68 	movl   $0x68203a72,0x4(%eax)
    2f4b:	c7 40 08 74 74 70 20 	movl   $0x20707474,0x8(%eax)
    2f52:	c7 40 0c 72 65 71 75 	movl   $0x75716572,0xc(%eax)
    2f59:	c7 40 10 65 73 74 20 	movl   $0x20747365,0x10(%eax)
    2f60:	c7 40 14 66 61 69 6c 	movl   $0x6c696166,0x14(%eax)
    2f67:	c7 40 18 65 64 2e 00 	movl   $0x2e6465,0x18(%eax)
    2f6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f73:	e9 ef 00 00 00       	jmp    3067 <submitr+0x3dd>
    2f78:	8b 83 30 d4 ff ff    	mov    -0x2bd0(%ebx),%eax
    2f7e:	8b 74 24 14          	mov    0x14(%esp),%esi
    2f82:	89 06                	mov    %eax,(%esi)
    2f84:	8b 83 6f d4 ff ff    	mov    -0x2b91(%ebx),%eax
    2f8a:	89 46 3f             	mov    %eax,0x3f(%esi)
    2f8d:	89 f0                	mov    %esi,%eax
    2f8f:	8d 7e 04             	lea    0x4(%esi),%edi
    2f92:	83 e7 fc             	and    $0xfffffffc,%edi
    2f95:	29 f8                	sub    %edi,%eax
    2f97:	8d b3 30 d4 ff ff    	lea    -0x2bd0(%ebx),%esi
    2f9d:	29 c6                	sub    %eax,%esi
    2f9f:	8d 48 43             	lea    0x43(%eax),%ecx
    2fa2:	c1 e9 02             	shr    $0x2,%ecx
    2fa5:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2fa7:	83 ec 0c             	sub    $0xc,%esp
    2faa:	6a 00                	push   $0x0
    2fac:	e8 af e3 ff ff       	call   1360 <close@plt>
    2fb1:	83 c4 10             	add    $0x10,%esp
    2fb4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fb9:	e9 a9 00 00 00       	jmp    3067 <submitr+0x3dd>
    2fbe:	83 ec 0c             	sub    $0xc,%esp
    2fc1:	ff 74 24 14          	push   0x14(%esp)
    2fc5:	8d 44 24 44          	lea    0x44(%esp),%eax
    2fc9:	50                   	push   %eax
    2fca:	ff b4 24 98 43 00 00 	push   0x4398(%esp)
    2fd1:	ff 74 24 30          	push   0x30(%esp)
    2fd5:	8d 83 74 d4 ff ff    	lea    -0x2b8c(%ebx),%eax
    2fdb:	50                   	push   %eax
    2fdc:	68 28 23 00 00       	push   $0x2328
    2fe1:	6a 01                	push   $0x1
    2fe3:	68 28 23 00 00       	push   $0x2328
    2fe8:	8d b4 24 60 20 00 00 	lea    0x2060(%esp),%esi
    2fef:	56                   	push   %esi
    2ff0:	e8 fb e1 ff ff       	call   11f0 <__snprintf_chk@plt>
    2ff5:	83 c4 28             	add    $0x28,%esp
    2ff8:	8d 83 b0 b0 ff ff    	lea    -0x4f50(%ebx),%eax
    2ffe:	50                   	push   %eax
    2fff:	56                   	push   %esi
    3000:	e8 5b e2 ff ff       	call   1260 <popen@plt>
    3005:	89 c6                	mov    %eax,%esi
    3007:	83 c4 10             	add    $0x10,%esp
    300a:	85 c0                	test   %eax,%eax
    300c:	0f 84 94 fe ff ff    	je     2ea6 <submitr+0x21c>
    3012:	83 ec 04             	sub    $0x4,%esp
    3015:	56                   	push   %esi
    3016:	6a 08                	push   $0x8
    3018:	8d 44 24 38          	lea    0x38(%esp),%eax
    301c:	50                   	push   %eax
    301d:	e8 fe e1 ff ff       	call   1220 <fgets@plt>
    3022:	83 c4 10             	add    $0x10,%esp
    3025:	85 c0                	test   %eax,%eax
    3027:	0f 84 c8 fe ff ff    	je     2ef5 <submitr+0x26b>
    302d:	83 ec 0c             	sub    $0xc,%esp
    3030:	56                   	push   %esi
    3031:	e8 8a e2 ff ff       	call   12c0 <pclose@plt>
    3036:	83 c4 0c             	add    $0xc,%esp
    3039:	6a 0a                	push   $0xa
    303b:	6a 00                	push   $0x0
    303d:	8d 44 24 38          	lea    0x38(%esp),%eax
    3041:	50                   	push   %eax
    3042:	e8 f9 e2 ff ff       	call   1340 <strtol@plt>
    3047:	83 c4 10             	add    $0x10,%esp
    304a:	3d c8 00 00 00       	cmp    $0xc8,%eax
    304f:	0f 85 e5 fe ff ff    	jne    2f3a <submitr+0x2b0>
    3055:	8b 44 24 14          	mov    0x14(%esp),%eax
    3059:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
    305e:	c6 40 02 00          	movb   $0x0,0x2(%eax)
    3062:	b8 00 00 00 00       	mov    $0x0,%eax
    3067:	8b 9c 24 5c 43 00 00 	mov    0x435c(%esp),%ebx
    306e:	65 33 1d 14 00 00 00 	xor    %gs:0x14,%ebx
    3075:	75 0b                	jne    3082 <submitr+0x3f8>
    3077:	81 c4 6c 43 00 00    	add    $0x436c,%esp
    307d:	5b                   	pop    %ebx
    307e:	5e                   	pop    %esi
    307f:	5f                   	pop    %edi
    3080:	5d                   	pop    %ebp
    3081:	c3                   	ret
    3082:	e8 69 03 00 00       	call   33f0 <__stack_chk_fail_local>

00003087 <init_timeout>:
    3087:	f3 0f 1e fb          	endbr32
    308b:	56                   	push   %esi
    308c:	53                   	push   %ebx
    308d:	83 ec 04             	sub    $0x4,%esp
    3090:	e8 3b e3 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    3095:	81 c3 cf 5e 00 00    	add    $0x5ecf,%ebx
    309b:	8b 74 24 10          	mov    0x10(%esp),%esi
    309f:	85 f6                	test   %esi,%esi
    30a1:	75 06                	jne    30a9 <init_timeout+0x22>
    30a3:	83 c4 04             	add    $0x4,%esp
    30a6:	5b                   	pop    %ebx
    30a7:	5e                   	pop    %esi
    30a8:	c3                   	ret
    30a9:	83 ec 08             	sub    $0x8,%esp
    30ac:	8d 83 ef 9c ff ff    	lea    -0x6311(%ebx),%eax
    30b2:	50                   	push   %eax
    30b3:	6a 0e                	push   $0xe
    30b5:	e8 76 e1 ff ff       	call   1230 <signal@plt>
    30ba:	85 f6                	test   %esi,%esi
    30bc:	b8 00 00 00 00       	mov    $0x0,%eax
    30c1:	0f 48 f0             	cmovs  %eax,%esi
    30c4:	89 34 24             	mov    %esi,(%esp)
    30c7:	e8 84 e1 ff ff       	call   1250 <alarm@plt>
    30cc:	83 c4 10             	add    $0x10,%esp
    30cf:	eb d2                	jmp    30a3 <init_timeout+0x1c>

000030d1 <init_driver>:
    30d1:	f3 0f 1e fb          	endbr32
    30d5:	57                   	push   %edi
    30d6:	56                   	push   %esi
    30d7:	53                   	push   %ebx
    30d8:	83 ec 24             	sub    $0x24,%esp
    30db:	e8 f0 e2 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    30e0:	81 c3 84 5e 00 00    	add    $0x5e84,%ebx
    30e6:	8b 7c 24 34          	mov    0x34(%esp),%edi
    30ea:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    30f0:	89 44 24 20          	mov    %eax,0x20(%esp)
    30f4:	31 c0                	xor    %eax,%eax
    30f6:	8d 83 0d d5 ff ff    	lea    -0x2af3(%ebx),%eax
    30fc:	50                   	push   %eax
    30fd:	8d 83 19 d5 ff ff    	lea    -0x2ae7(%ebx),%eax
    3103:	50                   	push   %eax
    3104:	6a 01                	push   $0x1
    3106:	e8 05 e2 ff ff       	call   1310 <__printf_chk@plt>
    310b:	83 c4 08             	add    $0x8,%esp
    310e:	6a 01                	push   $0x1
    3110:	6a 0d                	push   $0xd
    3112:	e8 19 e1 ff ff       	call   1230 <signal@plt>
    3117:	83 c4 08             	add    $0x8,%esp
    311a:	6a 01                	push   $0x1
    311c:	6a 1d                	push   $0x1d
    311e:	e8 0d e1 ff ff       	call   1230 <signal@plt>
    3123:	83 c4 08             	add    $0x8,%esp
    3126:	6a 01                	push   $0x1
    3128:	6a 1d                	push   $0x1d
    312a:	e8 01 e1 ff ff       	call   1230 <signal@plt>
    312f:	8d 83 2e d5 ff ff    	lea    -0x2ad2(%ebx),%eax
    3135:	89 04 24             	mov    %eax,(%esp)
    3138:	e8 63 e1 ff ff       	call   12a0 <puts@plt>
    313d:	83 c4 0c             	add    $0xc,%esp
    3140:	6a 00                	push   $0x0
    3142:	6a 01                	push   $0x1
    3144:	6a 02                	push   $0x2
    3146:	e8 d5 e1 ff ff       	call   1320 <socket@plt>
    314b:	83 c4 10             	add    $0x10,%esp
    314e:	85 c0                	test   %eax,%eax
    3150:	0f 88 b3 00 00 00    	js     3209 <init_driver+0x138>
    3156:	89 c6                	mov    %eax,%esi
    3158:	8d 44 24 10          	lea    0x10(%esp),%eax
    315c:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
    3163:	00 
    3164:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
    316b:	00 
    316c:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
    3173:	00 
    3174:	66 c7 44 24 0c 02 00 	movw   $0x2,0xc(%esp)
    317b:	66 c7 44 24 0e 27 24 	movw   $0x2427,0xe(%esp)
    3182:	83 ec 04             	sub    $0x4,%esp
    3185:	50                   	push   %eax
    3186:	8d 83 0d d5 ff ff    	lea    -0x2af3(%ebx),%eax
    318c:	50                   	push   %eax
    318d:	6a 02                	push   $0x2
    318f:	e8 7c e0 ff ff       	call   1210 <inet_pton@plt>
    3194:	83 c4 10             	add    $0x10,%esp
    3197:	85 c0                	test   %eax,%eax
    3199:	0f 8e b5 00 00 00    	jle    3254 <init_driver+0x183>
    319f:	83 ec 0c             	sub    $0xc,%esp
    31a2:	8d 83 41 d5 ff ff    	lea    -0x2abf(%ebx),%eax
    31a8:	50                   	push   %eax
    31a9:	e8 f2 e0 ff ff       	call   12a0 <puts@plt>
    31ae:	83 c4 0c             	add    $0xc,%esp
    31b1:	6a 10                	push   $0x10
    31b3:	8d 44 24 14          	lea    0x14(%esp),%eax
    31b7:	50                   	push   %eax
    31b8:	56                   	push   %esi
    31b9:	e8 92 e1 ff ff       	call   1350 <connect@plt>
    31be:	83 c4 10             	add    $0x10,%esp
    31c1:	85 c0                	test   %eax,%eax
    31c3:	0f 88 d1 00 00 00    	js     329a <init_driver+0x1c9>
    31c9:	83 ec 0c             	sub    $0xc,%esp
    31cc:	8d 83 59 d5 ff ff    	lea    -0x2aa7(%ebx),%eax
    31d2:	50                   	push   %eax
    31d3:	e8 c8 e0 ff ff       	call   12a0 <puts@plt>
    31d8:	89 34 24             	mov    %esi,(%esp)
    31db:	e8 80 e1 ff ff       	call   1360 <close@plt>
    31e0:	66 c7 07 4f 4b       	movw   $0x4b4f,(%edi)
    31e5:	c6 47 02 00          	movb   $0x0,0x2(%edi)
    31e9:	83 c4 10             	add    $0x10,%esp
    31ec:	b8 00 00 00 00       	mov    $0x0,%eax
    31f1:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    31f5:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
    31fc:	0f 85 c9 00 00 00    	jne    32cb <init_driver+0x1fa>
    3202:	83 c4 20             	add    $0x20,%esp
    3205:	5b                   	pop    %ebx
    3206:	5e                   	pop    %esi
    3207:	5f                   	pop    %edi
    3208:	c3                   	ret
    3209:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
    320f:	c7 47 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edi)
    3216:	c7 47 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edi)
    321d:	c7 47 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edi)
    3224:	c7 47 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edi)
    322b:	c7 47 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edi)
    3232:	c7 47 18 63 72 65 61 	movl   $0x61657263,0x18(%edi)
    3239:	c7 47 1c 74 65 20 73 	movl   $0x73206574,0x1c(%edi)
    3240:	c7 47 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%edi)
    3247:	66 c7 47 24 74 00    	movw   $0x74,0x24(%edi)
    324d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3252:	eb 9d                	jmp    31f1 <init_driver+0x120>
    3254:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
    325a:	c7 47 04 72 3a 20 69 	movl   $0x69203a72,0x4(%edi)
    3261:	c7 47 08 6e 76 61 6c 	movl   $0x6c61766e,0x8(%edi)
    3268:	c7 47 0c 69 64 20 49 	movl   $0x49206469,0xc(%edi)
    326f:	c7 47 10 50 76 34 20 	movl   $0x20347650,0x10(%edi)
    3276:	c7 47 14 61 64 64 72 	movl   $0x72646461,0x14(%edi)
    327d:	c7 47 18 65 73 73 00 	movl   $0x737365,0x18(%edi)
    3284:	83 ec 0c             	sub    $0xc,%esp
    3287:	56                   	push   %esi
    3288:	e8 d3 e0 ff ff       	call   1360 <close@plt>
    328d:	83 c4 10             	add    $0x10,%esp
    3290:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3295:	e9 57 ff ff ff       	jmp    31f1 <init_driver+0x120>
    329a:	83 ec 0c             	sub    $0xc,%esp
    329d:	8d 83 0d d5 ff ff    	lea    -0x2af3(%ebx),%eax
    32a3:	50                   	push   %eax
    32a4:	8d 83 e0 d4 ff ff    	lea    -0x2b20(%ebx),%eax
    32aa:	50                   	push   %eax
    32ab:	6a ff                	push   $0xffffffff
    32ad:	6a 01                	push   $0x1
    32af:	57                   	push   %edi
    32b0:	e8 cb e0 ff ff       	call   1380 <__sprintf_chk@plt>
    32b5:	83 c4 14             	add    $0x14,%esp
    32b8:	56                   	push   %esi
    32b9:	e8 a2 e0 ff ff       	call   1360 <close@plt>
    32be:	83 c4 10             	add    $0x10,%esp
    32c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    32c6:	e9 26 ff ff ff       	jmp    31f1 <init_driver+0x120>
    32cb:	e8 20 01 00 00       	call   33f0 <__stack_chk_fail_local>

000032d0 <driver_post>:
    32d0:	f3 0f 1e fb          	endbr32
    32d4:	56                   	push   %esi
    32d5:	53                   	push   %ebx
    32d6:	83 ec 04             	sub    $0x4,%esp
    32d9:	e8 f2 e0 ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    32de:	81 c3 86 5c 00 00    	add    $0x5c86,%ebx
    32e4:	8b 54 24 10          	mov    0x10(%esp),%edx
    32e8:	8b 44 24 18          	mov    0x18(%esp),%eax
    32ec:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    32f0:	85 c0                	test   %eax,%eax
    32f2:	75 18                	jne    330c <driver_post+0x3c>
    32f4:	85 d2                	test   %edx,%edx
    32f6:	74 05                	je     32fd <driver_post+0x2d>
    32f8:	80 3a 00             	cmpb   $0x0,(%edx)
    32fb:	75 37                	jne    3334 <driver_post+0x64>
    32fd:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
    3302:	c6 46 02 00          	movb   $0x0,0x2(%esi)
    3306:	83 c4 04             	add    $0x4,%esp
    3309:	5b                   	pop    %ebx
    330a:	5e                   	pop    %esi
    330b:	c3                   	ret
    330c:	83 ec 04             	sub    $0x4,%esp
    330f:	ff 74 24 18          	push   0x18(%esp)
    3313:	8d 83 70 d5 ff ff    	lea    -0x2a90(%ebx),%eax
    3319:	50                   	push   %eax
    331a:	6a 01                	push   $0x1
    331c:	e8 ef df ff ff       	call   1310 <__printf_chk@plt>
    3321:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
    3326:	c6 46 02 00          	movb   $0x0,0x2(%esi)
    332a:	83 c4 10             	add    $0x10,%esp
    332d:	b8 00 00 00 00       	mov    $0x0,%eax
    3332:	eb d2                	jmp    3306 <driver_post+0x36>
    3334:	83 ec 04             	sub    $0x4,%esp
    3337:	56                   	push   %esi
    3338:	ff 74 24 1c          	push   0x1c(%esp)
    333c:	8d 83 87 d5 ff ff    	lea    -0x2a79(%ebx),%eax
    3342:	50                   	push   %eax
    3343:	52                   	push   %edx
    3344:	8d 83 a4 d5 ff ff    	lea    -0x2a5c(%ebx),%eax
    334a:	50                   	push   %eax
    334b:	68 24 27 00 00       	push   $0x2724
    3350:	8d 83 0d d5 ff ff    	lea    -0x2af3(%ebx),%eax
    3356:	50                   	push   %eax
    3357:	e8 2e f9 ff ff       	call   2c8a <submitr>
    335c:	83 c4 20             	add    $0x20,%esp
    335f:	eb a5                	jmp    3306 <driver_post+0x36>
    3361:	66 90                	xchg   %ax,%ax
    3363:	66 90                	xchg   %ax,%ax
    3365:	66 90                	xchg   %ax,%ax
    3367:	66 90                	xchg   %ax,%ax
    3369:	66 90                	xchg   %ax,%ax
    336b:	66 90                	xchg   %ax,%ax
    336d:	66 90                	xchg   %ax,%ax
    336f:	90                   	nop

00003370 <__libc_csu_init>:
    3370:	f3 0f 1e fb          	endbr32
    3374:	55                   	push   %ebp
    3375:	e8 d5 f8 ff ff       	call   2c4f <__x86.get_pc_thunk.bp>
    337a:	81 c5 ea 5b 00 00    	add    $0x5bea,%ebp
    3380:	57                   	push   %edi
    3381:	56                   	push   %esi
    3382:	53                   	push   %ebx
    3383:	83 ec 0c             	sub    $0xc,%esp
    3386:	89 eb                	mov    %ebp,%ebx
    3388:	8b 7c 24 28          	mov    0x28(%esp),%edi
    338c:	e8 6f dc ff ff       	call   1000 <_init>
    3391:	8d 9d 04 ff ff ff    	lea    -0xfc(%ebp),%ebx
    3397:	8d 85 00 ff ff ff    	lea    -0x100(%ebp),%eax
    339d:	29 c3                	sub    %eax,%ebx
    339f:	c1 fb 02             	sar    $0x2,%ebx
    33a2:	74 29                	je     33cd <__libc_csu_init+0x5d>
    33a4:	31 f6                	xor    %esi,%esi
    33a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33ad:	8d 76 00             	lea    0x0(%esi),%esi
    33b0:	83 ec 04             	sub    $0x4,%esp
    33b3:	57                   	push   %edi
    33b4:	ff 74 24 2c          	push   0x2c(%esp)
    33b8:	ff 74 24 2c          	push   0x2c(%esp)
    33bc:	ff 94 b5 00 ff ff ff 	call   *-0x100(%ebp,%esi,4)
    33c3:	83 c6 01             	add    $0x1,%esi
    33c6:	83 c4 10             	add    $0x10,%esp
    33c9:	39 f3                	cmp    %esi,%ebx
    33cb:	75 e3                	jne    33b0 <__libc_csu_init+0x40>
    33cd:	83 c4 0c             	add    $0xc,%esp
    33d0:	5b                   	pop    %ebx
    33d1:	5e                   	pop    %esi
    33d2:	5f                   	pop    %edi
    33d3:	5d                   	pop    %ebp
    33d4:	c3                   	ret
    33d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    33dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000033e0 <__libc_csu_fini>:
    33e0:	f3 0f 1e fb          	endbr32
    33e4:	c3                   	ret
    33e5:	66 90                	xchg   %ax,%ax
    33e7:	66 90                	xchg   %ax,%ax
    33e9:	66 90                	xchg   %ax,%ax
    33eb:	66 90                	xchg   %ax,%ax
    33ed:	66 90                	xchg   %ax,%ax
    33ef:	90                   	nop

000033f0 <__stack_chk_fail_local>:
    33f0:	f3 0f 1e fb          	endbr32
    33f4:	53                   	push   %ebx
    33f5:	e8 d6 df ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    33fa:	81 c3 6a 5b 00 00    	add    $0x5b6a,%ebx
    3400:	83 ec 08             	sub    $0x8,%esp
    3403:	e8 68 de ff ff       	call   1270 <__stack_chk_fail@plt>

Disassembly of section .fini:

00003408 <_fini>:
    3408:	f3 0f 1e fb          	endbr32
    340c:	53                   	push   %ebx
    340d:	83 ec 08             	sub    $0x8,%esp
    3410:	e8 bb df ff ff       	call   13d0 <__x86.get_pc_thunk.bx>
    3415:	81 c3 4f 5b 00 00    	add    $0x5b4f,%ebx
    341b:	83 c4 08             	add    $0x8,%esp
    341e:	5b                   	pop    %ebx
    341f:	c3                   	ret
