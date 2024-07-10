
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800cf 	lu12i.w	$r15,114694(0x1c006)
1c00000c:	03b851ef 	ori	$r15,$r15,0xe14
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038291ef 	ori	$r15,$r15,0xa4
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038711ad 	ori	$r13,$r13,0x1c4
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54232000 	bl	8992(0x2320) # 1c0023c0 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	5432c000 	bl	12992(0x32c0) # 1c004350 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5432f800 	bl	13048(0x32f8) # 1c004390 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54335000 	bl	13136(0x3350) # 1c0043f0 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54336800 	bl	13160(0x3368) # 1c004410 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54321000 	bl	12816(0x3210) # 1c0042c0 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54375800 	bl	14168(0x3758) # 1c004810 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	5433d800 	bl	13272(0x33d8) # 1c0044a0 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b6e084 	ld.w	$r4,$r4,-584(0xdb8)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0
1c00132c:	00000000 	0x00000000

1c001330 <BYJ_init>:
BYJ_init():
1c001330:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001334:	5800548c 	beq	$r4,$r12,84(0x54) # 1c001388 <BYJ_init+0x58>
1c001338:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00133c:	5800088c 	beq	$r4,$r12,8(0x8) # 1c001344 <BYJ_init+0x14>
1c001340:	4c000020 	jirl	$r0,$r1,0
1c001344:	1cc80012 	pcaddu12i	$r18,409600(0x64000)
1c001348:	28b43252 	ld.w	$r18,$r18,-756(0xd0c)
1c00134c:	02808413 	addi.w	$r19,$r0,33(0x21)
1c001350:	1cc80010 	pcaddu12i	$r16,409600(0x64000)
1c001354:	28b2f210 	ld.w	$r16,$r16,-836(0xcbc)
1c001358:	02808011 	addi.w	$r17,$r0,32(0x20)
1c00135c:	1cc8000e 	pcaddu12i	$r14,409600(0x64000)
1c001360:	28b321ce 	ld.w	$r14,$r14,-824(0xcc8)
1c001364:	02807c0f 	addi.w	$r15,$r0,31(0x1f)
1c001368:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c00136c:	28b3218c 	ld.w	$r12,$r12,-824(0xcc8)
1c001370:	0280780d 	addi.w	$r13,$r0,30(0x1e)
1c001374:	29800253 	st.w	$r19,$r18,0
1c001378:	29800211 	st.w	$r17,$r16,0
1c00137c:	298001cf 	st.w	$r15,$r14,0
1c001380:	2980018d 	st.w	$r13,$r12,0
1c001384:	4c000020 	jirl	$r0,$r1,0
1c001388:	1cc80012 	pcaddu12i	$r18,409600(0x64000)
1c00138c:	28b32252 	ld.w	$r18,$r18,-824(0xcc8)
1c001390:	02806813 	addi.w	$r19,$r0,26(0x1a)
1c001394:	1cc80010 	pcaddu12i	$r16,409600(0x64000)
1c001398:	28b1e210 	ld.w	$r16,$r16,-904(0xc78)
1c00139c:	02806411 	addi.w	$r17,$r0,25(0x19)
1c0013a0:	1cc8000e 	pcaddu12i	$r14,409600(0x64000)
1c0013a4:	28b211ce 	ld.w	$r14,$r14,-892(0xc84)
1c0013a8:	0280600f 	addi.w	$r15,$r0,24(0x18)
1c0013ac:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c0013b0:	28b2118c 	ld.w	$r12,$r12,-892(0xc84)
1c0013b4:	02805c0d 	addi.w	$r13,$r0,23(0x17)
1c0013b8:	29800253 	st.w	$r19,$r18,0
1c0013bc:	29800211 	st.w	$r17,$r16,0
1c0013c0:	298001cf 	st.w	$r15,$r14,0
1c0013c4:	2980018d 	st.w	$r13,$r12,0
1c0013c8:	4c000020 	jirl	$r0,$r1,0
1c0013cc:	03400000 	andi	$r0,$r0,0x0

1c0013d0 <BYJ_gpio_write>:
BYJ_gpio_write():
1c0013d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0013d4:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c0013d8:	28b1f18c 	ld.w	$r12,$r12,-900(0xc7c)
1c0013dc:	29802077 	st.w	$r23,$r3,8(0x8)
1c0013e0:	00150097 	move	$r23,$r4
1c0013e4:	2a000184 	ld.bu	$r4,$r12,0
1c0013e8:	034006e5 	andi	$r5,$r23,0x1
1c0013ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0013f0:	54113000 	bl	4400(0x1130) # 1c002520 <gpio_write_pin>
1c0013f4:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c0013f8:	28b0618c 	ld.w	$r12,$r12,-1000(0xc18)
1c0013fc:	2a000184 	ld.bu	$r4,$r12,0
1c001400:	006186e5 	bstrpick.w	$r5,$r23,0x1,0x1
1c001404:	54111c00 	bl	4380(0x111c) # 1c002520 <gpio_write_pin>
1c001408:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c00140c:	28b0718c 	ld.w	$r12,$r12,-996(0xc1c)
1c001410:	2a000184 	ld.bu	$r4,$r12,0
1c001414:	00628ae5 	bstrpick.w	$r5,$r23,0x2,0x2
1c001418:	54110800 	bl	4360(0x1108) # 1c002520 <gpio_write_pin>
1c00141c:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c001420:	28b0518c 	ld.w	$r12,$r12,-1004(0xc14)
1c001424:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001428:	2a000184 	ld.bu	$r4,$r12,0
1c00142c:	00638ee5 	bstrpick.w	$r5,$r23,0x3,0x3
1c001430:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001434:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001438:	5010e800 	b	4328(0x10e8) # 1c002520 <gpio_write_pin>
1c00143c:	03400000 	andi	$r0,$r0,0x0

1c001440 <BYJ_gpio_stop>:
BYJ_gpio_stop():
1c001440:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c001444:	28b0418c 	ld.w	$r12,$r12,-1008(0xc10)
1c001448:	2a000184 	ld.bu	$r4,$r12,0
1c00144c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001450:	00150005 	move	$r5,$r0
1c001454:	29803061 	st.w	$r1,$r3,12(0xc)
1c001458:	5410c800 	bl	4296(0x10c8) # 1c002520 <gpio_write_pin>
1c00145c:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c001460:	28aec18c 	ld.w	$r12,$r12,-1104(0xbb0)
1c001464:	2a000184 	ld.bu	$r4,$r12,0
1c001468:	00150005 	move	$r5,$r0
1c00146c:	5410b400 	bl	4276(0x10b4) # 1c002520 <gpio_write_pin>
1c001470:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c001474:	28aed18c 	ld.w	$r12,$r12,-1100(0xbb4)
1c001478:	2a000184 	ld.bu	$r4,$r12,0
1c00147c:	00150005 	move	$r5,$r0
1c001480:	5410a000 	bl	4256(0x10a0) # 1c002520 <gpio_write_pin>
1c001484:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c001488:	28aeb18c 	ld.w	$r12,$r12,-1108(0xbac)
1c00148c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001490:	2a000184 	ld.bu	$r4,$r12,0
1c001494:	00150005 	move	$r5,$r0
1c001498:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00149c:	50108400 	b	4228(0x1084) # 1c002520 <gpio_write_pin>

1c0014a0 <BYJ_run_angle>:
BYJ_run_angle():
1c0014a0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0014a4:	02ad918c 	addi.w	$r12,$r12,-1180(0xb64)
1c0014a8:	2880018e 	ld.w	$r14,$r12,0
1c0014ac:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0014b0:	680009ae 	bltu	$r13,$r14,8(0x8) # 1c0014b8 <BYJ_run_angle+0x18>
1c0014b4:	29800185 	st.w	$r5,$r12,0
1c0014b8:	02bfec0d 	addi.w	$r13,$r0,-5(0xffb)
1c0014bc:	02bff0cc 	addi.w	$r12,$r6,-4(0xffc)
1c0014c0:	0014b58c 	and	$r12,$r12,$r13
1c0014c4:	40006580 	beqz	$r12,100(0x64) # 1c001528 <BYJ_run_angle+0x88>
1c0014c8:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c0014cc:	02ae618c 	addi.w	$r12,$r12,-1128(0xb98)
1c0014d0:	28800186 	ld.w	$r6,$r12,0
1c0014d4:	1cc8000d 	pcaddu12i	$r13,409600(0x64000)
1c0014d8:	02ae51ad 	addi.w	$r13,$r13,-1132(0xb94)
1c0014dc:	288001af 	ld.w	$r15,$r13,0
1c0014e0:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c0014e4:	02ae118c 	addi.w	$r12,$r12,-1148(0xb84)
1c0014e8:	2880018c 	ld.w	$r12,$r12,0
1c0014ec:	001c3c84 	mul.w	$r4,$r4,$r15
1c0014f0:	0285a00e 	addi.w	$r14,$r0,360(0x168)
1c0014f4:	1cc80010 	pcaddu12i	$r16,409600(0x64000)
1c0014f8:	02ada210 	addi.w	$r16,$r16,-1176(0xb68)
1c0014fc:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c001500:	02ac11ad 	addi.w	$r13,$r13,-1276(0xb04)
1c001504:	29800207 	st.w	$r7,$r16,0
1c001508:	001c3084 	mul.w	$r4,$r4,$r12
1c00150c:	001c1884 	mul.w	$r4,$r4,$r6
1c001510:	0021388c 	div.wu	$r12,$r4,$r14
1c001514:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c00151c <BYJ_run_angle+0x7c>
1c001518:	002a0007 	break	0x7
1c00151c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001520:	298001ac 	st.w	$r12,$r13,0
1c001524:	4c000020 	jirl	$r0,$r1,0
1c001528:	1cc8000c 	pcaddu12i	$r12,409600(0x64000)
1c00152c:	02ace18c 	addi.w	$r12,$r12,-1224(0xb38)
1c001530:	29800186 	st.w	$r6,$r12,0
1c001534:	53ffa3ff 	b	-96(0xfffffa0) # 1c0014d4 <BYJ_run_angle+0x34>
1c001538:	03400000 	andi	$r0,$r0,0x0
1c00153c:	03400000 	andi	$r0,$r0,0x0

1c001540 <OLED_GPIO_Init>:
OLED_GPIO_Init():
1c001540:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001544:	29806077 	st.w	$r23,$r3,24(0x18)
1c001548:	02809c0c 	addi.w	$r12,$r0,39(0x27)
1c00154c:	02800417 	addi.w	$r23,$r0,1(0x1)
1c001550:	02801064 	addi.w	$r4,$r3,4(0x4)
1c001554:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001558:	2900106c 	st.b	$r12,$r3,4(0x4)
1c00155c:	29802077 	st.w	$r23,$r3,8(0x8)
1c001560:	29803060 	st.w	$r0,$r3,12(0xc)
1c001564:	54114c00 	bl	4428(0x114c) # 1c0026b0 <GPIO_Init>
1c001568:	0280a00c 	addi.w	$r12,$r0,40(0x28)
1c00156c:	02801064 	addi.w	$r4,$r3,4(0x4)
1c001570:	29802077 	st.w	$r23,$r3,8(0x8)
1c001574:	29803060 	st.w	$r0,$r3,12(0xc)
1c001578:	2900106c 	st.b	$r12,$r3,4(0x4)
1c00157c:	54113400 	bl	4404(0x1134) # 1c0026b0 <GPIO_Init>
1c001580:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001584:	28806077 	ld.w	$r23,$r3,24(0x18)
1c001588:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00158c:	4c000020 	jirl	$r0,$r1,0

1c001590 <OLED_Reset>:
OLED_Reset():
1c001590:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001594:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001598:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00159c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0015a0:	540f8000 	bl	3968(0xf80) # 1c002520 <gpio_write_pin>
1c0015a4:	00150005 	move	$r5,$r0
1c0015a8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0015ac:	540f7400 	bl	3956(0xf74) # 1c002520 <gpio_write_pin>
1c0015b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0015b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0015b8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0015bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0015c0:	500f6000 	b	3936(0xf60) # 1c002520 <gpio_write_pin>
1c0015c4:	03400000 	andi	$r0,$r0,0x0
1c0015c8:	03400000 	andi	$r0,$r0,0x0
1c0015cc:	03400000 	andi	$r0,$r0,0x0

1c0015d0 <OLED_Init>:
OLED_Init():
1c0015d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015d4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0015d8:	57ff6bff 	bl	-152(0xfffff68) # 1c001540 <OLED_GPIO_Init>
1c0015dc:	57ffb7ff 	bl	-76(0xfffffb4) # 1c001590 <OLED_Reset>
1c0015e0:	02beb80c 	addi.w	$r12,$r0,-82(0xfae)
1c0015e4:	00150005 	move	$r5,$r0
1c0015e8:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0015ec:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0015f0:	540f3000 	bl	3888(0xf30) # 1c002520 <gpio_write_pin>
1c0015f4:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0015f8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0015fc:	5411c400 	bl	4548(0x11c4) # 1c0027c0 <Spi_Send>
1c001600:	00150005 	move	$r5,$r0
1c001604:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001608:	29003c60 	st.b	$r0,$r3,15(0xf)
1c00160c:	540f1400 	bl	3860(0xf14) # 1c002520 <gpio_write_pin>
1c001610:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001614:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001618:	5411a800 	bl	4520(0x11a8) # 1c0027c0 <Spi_Send>
1c00161c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c001620:	00150005 	move	$r5,$r0
1c001624:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001628:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c00162c:	540ef400 	bl	3828(0xef4) # 1c002520 <gpio_write_pin>
1c001630:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001634:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001638:	54118800 	bl	4488(0x1188) # 1c0027c0 <Spi_Send>
1c00163c:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001640:	00150005 	move	$r5,$r0
1c001644:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001648:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c00164c:	540ed400 	bl	3796(0xed4) # 1c002520 <gpio_write_pin>
1c001650:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001654:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001658:	54116800 	bl	4456(0x1168) # 1c0027c0 <Spi_Send>
1c00165c:	02bec00c 	addi.w	$r12,$r0,-80(0xfb0)
1c001660:	00150005 	move	$r5,$r0
1c001664:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001668:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c00166c:	540eb400 	bl	3764(0xeb4) # 1c002520 <gpio_write_pin>
1c001670:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001674:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001678:	54114800 	bl	4424(0x1148) # 1c0027c0 <Spi_Send>
1c00167c:	02be040c 	addi.w	$r12,$r0,-127(0xf81)
1c001680:	00150005 	move	$r5,$r0
1c001684:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001688:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c00168c:	540e9400 	bl	3732(0xe94) # 1c002520 <gpio_write_pin>
1c001690:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001694:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001698:	54112800 	bl	4392(0x1128) # 1c0027c0 <Spi_Send>
1c00169c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0016a0:	00150005 	move	$r5,$r0
1c0016a4:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0016a8:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0016ac:	540e7400 	bl	3700(0xe74) # 1c002520 <gpio_write_pin>
1c0016b0:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0016b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0016b8:	54110800 	bl	4360(0x1108) # 1c0027c0 <Spi_Send>
1c0016bc:	02be840c 	addi.w	$r12,$r0,-95(0xfa1)
1c0016c0:	00150005 	move	$r5,$r0
1c0016c4:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0016c8:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0016cc:	540e5400 	bl	3668(0xe54) # 1c002520 <gpio_write_pin>
1c0016d0:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0016d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0016d8:	5410e800 	bl	4328(0x10e8) # 1c0027c0 <Spi_Send>
1c0016dc:	02be980c 	addi.w	$r12,$r0,-90(0xfa6)
1c0016e0:	00150005 	move	$r5,$r0
1c0016e4:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0016e8:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0016ec:	540e3400 	bl	3636(0xe34) # 1c002520 <gpio_write_pin>
1c0016f0:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0016f4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0016f8:	5410c800 	bl	4296(0x10c8) # 1c0027c0 <Spi_Send>
1c0016fc:	02bea00c 	addi.w	$r12,$r0,-88(0xfa8)
1c001700:	00150005 	move	$r5,$r0
1c001704:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001708:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c00170c:	540e1400 	bl	3604(0xe14) # 1c002520 <gpio_write_pin>
1c001710:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001714:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001718:	5410a800 	bl	4264(0x10a8) # 1c0027c0 <Spi_Send>
1c00171c:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c001720:	00150005 	move	$r5,$r0
1c001724:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001728:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c00172c:	540df400 	bl	3572(0xdf4) # 1c002520 <gpio_write_pin>
1c001730:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001734:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001738:	54108800 	bl	4232(0x1088) # 1c0027c0 <Spi_Send>
1c00173c:	02bf200c 	addi.w	$r12,$r0,-56(0xfc8)
1c001740:	00150005 	move	$r5,$r0
1c001744:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001748:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c00174c:	540dd400 	bl	3540(0xdd4) # 1c002520 <gpio_write_pin>
1c001750:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001754:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001758:	54106800 	bl	4200(0x1068) # 1c0027c0 <Spi_Send>
1c00175c:	02bf4c0c 	addi.w	$r12,$r0,-45(0xfd3)
1c001760:	00150005 	move	$r5,$r0
1c001764:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001768:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c00176c:	540db400 	bl	3508(0xdb4) # 1c002520 <gpio_write_pin>
1c001770:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001774:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001778:	54104800 	bl	4168(0x1048) # 1c0027c0 <Spi_Send>
1c00177c:	00150005 	move	$r5,$r0
1c001780:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001784:	29003c60 	st.b	$r0,$r3,15(0xf)
1c001788:	540d9800 	bl	3480(0xd98) # 1c002520 <gpio_write_pin>
1c00178c:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001790:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001794:	54102c00 	bl	4140(0x102c) # 1c0027c0 <Spi_Send>
1c001798:	02bf540c 	addi.w	$r12,$r0,-43(0xfd5)
1c00179c:	00150005 	move	$r5,$r0
1c0017a0:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0017a4:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0017a8:	540d7800 	bl	3448(0xd78) # 1c002520 <gpio_write_pin>
1c0017ac:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0017b0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0017b4:	54100c00 	bl	4108(0x100c) # 1c0027c0 <Spi_Send>
1c0017b8:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0017bc:	00150005 	move	$r5,$r0
1c0017c0:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0017c4:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0017c8:	540d5800 	bl	3416(0xd58) # 1c002520 <gpio_write_pin>
1c0017cc:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0017d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0017d4:	540fec00 	bl	4076(0xfec) # 1c0027c0 <Spi_Send>
1c0017d8:	02bf640c 	addi.w	$r12,$r0,-39(0xfd9)
1c0017dc:	00150005 	move	$r5,$r0
1c0017e0:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0017e4:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0017e8:	540d3800 	bl	3384(0xd38) # 1c002520 <gpio_write_pin>
1c0017ec:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0017f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0017f4:	540fcc00 	bl	4044(0xfcc) # 1c0027c0 <Spi_Send>
1c0017f8:	02bfc40c 	addi.w	$r12,$r0,-15(0xff1)
1c0017fc:	00150005 	move	$r5,$r0
1c001800:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001804:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c001808:	540d1800 	bl	3352(0xd18) # 1c002520 <gpio_write_pin>
1c00180c:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001810:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001814:	540fac00 	bl	4012(0xfac) # 1c0027c0 <Spi_Send>
1c001818:	02bf680c 	addi.w	$r12,$r0,-38(0xfda)
1c00181c:	00150005 	move	$r5,$r0
1c001820:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001824:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c001828:	540cf800 	bl	3320(0xcf8) # 1c002520 <gpio_write_pin>
1c00182c:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001830:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001834:	540f8c00 	bl	3980(0xf8c) # 1c0027c0 <Spi_Send>
1c001838:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c00183c:	00150005 	move	$r5,$r0
1c001840:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001844:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c001848:	540cd800 	bl	3288(0xcd8) # 1c002520 <gpio_write_pin>
1c00184c:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001850:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001854:	540f6c00 	bl	3948(0xf6c) # 1c0027c0 <Spi_Send>
1c001858:	02bf6c0c 	addi.w	$r12,$r0,-37(0xfdb)
1c00185c:	00150005 	move	$r5,$r0
1c001860:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001864:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c001868:	540cb800 	bl	3256(0xcb8) # 1c002520 <gpio_write_pin>
1c00186c:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001870:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001874:	540f4c00 	bl	3916(0xf4c) # 1c0027c0 <Spi_Send>
1c001878:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c00187c:	00150005 	move	$r5,$r0
1c001880:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001884:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c001888:	540c9800 	bl	3224(0xc98) # 1c002520 <gpio_write_pin>
1c00188c:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001890:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001894:	540f2c00 	bl	3884(0xf2c) # 1c0027c0 <Spi_Send>
1c001898:	02be340c 	addi.w	$r12,$r0,-115(0xf8d)
1c00189c:	00150005 	move	$r5,$r0
1c0018a0:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0018a4:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0018a8:	540c7800 	bl	3192(0xc78) # 1c002520 <gpio_write_pin>
1c0018ac:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0018b0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0018b4:	540f0c00 	bl	3852(0xf0c) # 1c0027c0 <Spi_Send>
1c0018b8:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c0018bc:	00150005 	move	$r5,$r0
1c0018c0:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0018c4:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0018c8:	540c5800 	bl	3160(0xc58) # 1c002520 <gpio_write_pin>
1c0018cc:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0018d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0018d4:	540eec00 	bl	3820(0xeec) # 1c0027c0 <Spi_Send>
1c0018d8:	02bebc0c 	addi.w	$r12,$r0,-81(0xfaf)
1c0018dc:	00150005 	move	$r5,$r0
1c0018e0:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0018e4:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c0018e8:	540c3800 	bl	3128(0xc38) # 1c002520 <gpio_write_pin>
1c0018ec:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0018f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0018f4:	540ecc00 	bl	3788(0xecc) # 1c0027c0 <Spi_Send>
1c0018f8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0018fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001900:	4c000020 	jirl	$r0,$r1,0
1c001904:	03400000 	andi	$r0,$r0,0x0
1c001908:	03400000 	andi	$r0,$r0,0x0
1c00190c:	03400000 	andi	$r0,$r0,0x0

1c001910 <OLED_Clear>:
OLED_Clear():
1c001910:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001914:	29809078 	st.w	$r24,$r3,36(0x24)
1c001918:	29808079 	st.w	$r25,$r3,32(0x20)
1c00191c:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c001920:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001924:	2980a077 	st.w	$r23,$r3,40(0x28)
1c001928:	0282c018 	addi.w	$r24,$r0,176(0xb0)
1c00192c:	0280401a 	addi.w	$r26,$r0,16(0x10)
1c001930:	0282e019 	addi.w	$r25,$r0,184(0xb8)
1c001934:	00150005 	move	$r5,$r0
1c001938:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c00193c:	29003c78 	st.b	$r24,$r3,15(0xf)
1c001940:	540be000 	bl	3040(0xbe0) # 1c002520 <gpio_write_pin>
1c001944:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001948:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c00194c:	540e7400 	bl	3700(0xe74) # 1c0027c0 <Spi_Send>
1c001950:	00150005 	move	$r5,$r0
1c001954:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001958:	29003c60 	st.b	$r0,$r3,15(0xf)
1c00195c:	540bc400 	bl	3012(0xbc4) # 1c002520 <gpio_write_pin>
1c001960:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001964:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001968:	540e5800 	bl	3672(0xe58) # 1c0027c0 <Spi_Send>
1c00196c:	00150005 	move	$r5,$r0
1c001970:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001974:	29003c7a 	st.b	$r26,$r3,15(0xf)
1c001978:	540ba800 	bl	2984(0xba8) # 1c002520 <gpio_write_pin>
1c00197c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001980:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001984:	02820017 	addi.w	$r23,$r0,128(0x80)
1c001988:	540e3800 	bl	3640(0xe38) # 1c0027c0 <Spi_Send>
1c00198c:	03400000 	andi	$r0,$r0,0x0
1c001990:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001994:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001998:	29003c60 	st.b	$r0,$r3,15(0xf)
1c00199c:	540b8400 	bl	2948(0xb84) # 1c002520 <gpio_write_pin>
1c0019a0:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c0019a4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0019a8:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c0019ac:	540e1400 	bl	3604(0xe14) # 1c0027c0 <Spi_Send>
1c0019b0:	47ffe2ff 	bnez	$r23,-32(0x7fffe0) # 1c001990 <OLED_Clear+0x80>
1c0019b4:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0019b8:	00678318 	bstrpick.w	$r24,$r24,0x7,0x0
1c0019bc:	5fff7b19 	bne	$r24,$r25,-136(0x3ff78) # 1c001934 <OLED_Clear+0x24>
1c0019c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0019c4:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0019c8:	28809078 	ld.w	$r24,$r3,36(0x24)
1c0019cc:	28808079 	ld.w	$r25,$r3,32(0x20)
1c0019d0:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c0019d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0019d8:	4c000020 	jirl	$r0,$r1,0
1c0019dc:	03400000 	andi	$r0,$r0,0x0

1c0019e0 <OLED_Set_Pos>:
OLED_Set_Pos():
1c0019e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019e4:	00448cac 	srli.w	$r12,$r5,0x3
1c0019e8:	29806077 	st.w	$r23,$r3,24(0x18)
1c0019ec:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0019f0:	00150097 	move	$r23,$r4
1c0019f4:	00150005 	move	$r5,$r0
1c0019f8:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0019fc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001a00:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c001a04:	540b1c00 	bl	2844(0xb1c) # 1c002520 <gpio_write_pin>
1c001a08:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001a0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001a10:	540db000 	bl	3504(0xdb0) # 1c0027c0 <Spi_Send>
1c001a14:	02800af7 	addi.w	$r23,$r23,2(0x2)
1c001a18:	006792ec 	bstrpick.w	$r12,$r23,0x7,0x4
1c001a1c:	0380418c 	ori	$r12,$r12,0x10
1c001a20:	00150005 	move	$r5,$r0
1c001a24:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001a28:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c001a2c:	540af400 	bl	2804(0xaf4) # 1c002520 <gpio_write_pin>
1c001a30:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001a34:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001a38:	540d8800 	bl	3464(0xd88) # 1c0027c0 <Spi_Send>
1c001a3c:	03403ef7 	andi	$r23,$r23,0xf
1c001a40:	00150005 	move	$r5,$r0
1c001a44:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001a48:	29003c77 	st.b	$r23,$r3,15(0xf)
1c001a4c:	540ad400 	bl	2772(0xad4) # 1c002520 <gpio_write_pin>
1c001a50:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001a54:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001a58:	540d6800 	bl	3432(0xd68) # 1c0027c0 <Spi_Send>
1c001a5c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001a60:	28806077 	ld.w	$r23,$r3,24(0x18)
1c001a64:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001a68:	4c000020 	jirl	$r0,$r1,0
1c001a6c:	03400000 	andi	$r0,$r0,0x0

1c001a70 <OLED_ShowChar>:
OLED_ShowChar():
1c001a70:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c001a74:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c001a78:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c001a7c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001a80:	2980e077 	st.w	$r23,$r3,56(0x38)
1c001a84:	2980d078 	st.w	$r24,$r3,52(0x34)
1c001a88:	2980c079 	st.w	$r25,$r3,48(0x30)
1c001a8c:	00005c8c 	ext.w.b	$r12,$r4
1c001a90:	001500ba 	move	$r26,$r5
1c001a94:	0015009b 	move	$r27,$r4
1c001a98:	64001180 	bge	$r12,$r0,16(0x10) # 1c001aa8 <OLED_ShowChar+0x38>
1c001a9c:	028008ba 	addi.w	$r26,$r5,2(0x2)
1c001aa0:	0015001b 	move	$r27,$r0
1c001aa4:	0067835a 	bstrpick.w	$r26,$r26,0x7,0x0
1c001aa8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c001aac:	580024ec 	beq	$r7,$r12,36(0x24) # 1c001ad0 <OLED_ShowChar+0x60>
1c001ab0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001ab4:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c001ab8:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c001abc:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001ac0:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c001ac4:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c001ac8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c001acc:	4c000020 	jirl	$r0,$r1,0
1c001ad0:	00150345 	move	$r5,$r26
1c001ad4:	00150364 	move	$r4,$r27
1c001ad8:	29803066 	st.w	$r6,$r3,12(0xc)
1c001adc:	57ff07ff 	bl	-252(0xfffff04) # 1c0019e0 <OLED_Set_Pos>
1c001ae0:	28803066 	ld.w	$r6,$r3,12(0xc)
1c001ae4:	1c000097 	pcaddu12i	$r23,4(0x4)
1c001ae8:	028de2f7 	addi.w	$r23,$r23,888(0x378)
1c001aec:	028022f9 	addi.w	$r25,$r23,8(0x8)
1c001af0:	02bf7cc6 	addi.w	$r6,$r6,-33(0xfdf)
1c001af4:	006780c6 	bstrpick.w	$r6,$r6,0x7,0x0
1c001af8:	004090c6 	slli.w	$r6,$r6,0x4
1c001afc:	00101af7 	add.w	$r23,$r23,$r6
1c001b00:	00101b39 	add.w	$r25,$r25,$r6
1c001b04:	001502f8 	move	$r24,$r23
1c001b08:	2a00030c 	ld.bu	$r12,$r24,0
1c001b0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b10:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001b14:	29007c6c 	st.b	$r12,$r3,31(0x1f)
1c001b18:	540a0800 	bl	2568(0xa08) # 1c002520 <gpio_write_pin>
1c001b1c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001b20:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b24:	02807c64 	addi.w	$r4,$r3,31(0x1f)
1c001b28:	540c9800 	bl	3224(0xc98) # 1c0027c0 <Spi_Send>
1c001b2c:	5fffdf19 	bne	$r24,$r25,-36(0x3ffdc) # 1c001b08 <OLED_ShowChar+0x98>
1c001b30:	02802345 	addi.w	$r5,$r26,8(0x8)
1c001b34:	00150364 	move	$r4,$r27
1c001b38:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
1c001b3c:	57fea7ff 	bl	-348(0xffffea4) # 1c0019e0 <OLED_Set_Pos>
1c001b40:	2a0022ec 	ld.bu	$r12,$r23,8(0x8)
1c001b44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b48:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001b4c:	29007c6c 	st.b	$r12,$r3,31(0x1f)
1c001b50:	5409d000 	bl	2512(0x9d0) # 1c002520 <gpio_write_pin>
1c001b54:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c001b58:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b5c:	02807c64 	addi.w	$r4,$r3,31(0x1f)
1c001b60:	540c6000 	bl	3168(0xc60) # 1c0027c0 <Spi_Send>
1c001b64:	5fffdef9 	bne	$r23,$r25,-36(0x3ffdc) # 1c001b40 <OLED_ShowChar+0xd0>
1c001b68:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001b6c:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c001b70:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c001b74:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001b78:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c001b7c:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c001b80:	02810063 	addi.w	$r3,$r3,64(0x40)
1c001b84:	4c000020 	jirl	$r0,$r1,0
1c001b88:	03400000 	andi	$r0,$r0,0x0
1c001b8c:	03400000 	andi	$r0,$r0,0x0

1c001b90 <OLED_ShowCHinese>:
OLED_ShowCHinese():
1c001b90:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b94:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c001b98:	2980507c 	st.w	$r28,$r3,20(0x14)
1c001b9c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001ba0:	2980a077 	st.w	$r23,$r3,40(0x28)
1c001ba4:	29809078 	st.w	$r24,$r3,36(0x24)
1c001ba8:	29808079 	st.w	$r25,$r3,32(0x20)
1c001bac:	2980607b 	st.w	$r27,$r3,24(0x18)
1c001bb0:	2980407d 	st.w	$r29,$r3,16(0x10)
1c001bb4:	0281c00c 	addi.w	$r12,$r0,112(0x70)
1c001bb8:	001500da 	move	$r26,$r6
1c001bbc:	0015009c 	move	$r28,$r4
1c001bc0:	6c001184 	bgeu	$r12,$r4,16(0x10) # 1c001bd0 <OLED_ShowCHinese+0x40>
1c001bc4:	028008a5 	addi.w	$r5,$r5,2(0x2)
1c001bc8:	0015001c 	move	$r28,$r0
1c001bcc:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
1c001bd0:	028020bd 	addi.w	$r29,$r5,8(0x8)
1c001bd4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001bd8:	006783bd 	bstrpick.w	$r29,$r29,0x7,0x0
1c001bdc:	6c000d85 	bgeu	$r12,$r5,12(0xc) # 1c001be8 <OLED_ShowCHinese+0x58>
1c001be0:	0280201d 	addi.w	$r29,$r0,8(0x8)
1c001be4:	00150005 	move	$r5,$r0
1c001be8:	1c000097 	pcaddu12i	$r23,4(0x4)
1c001bec:	02b3d2f7 	addi.w	$r23,$r23,-780(0xcf4)
1c001bf0:	00150384 	move	$r4,$r28
1c001bf4:	00408759 	slli.w	$r25,$r26,0x1
1c001bf8:	028042fb 	addi.w	$r27,$r23,16(0x10)
1c001bfc:	0040975a 	slli.w	$r26,$r26,0x5
1c001c00:	00106af8 	add.w	$r24,$r23,$r26
1c001c04:	57fddfff 	bl	-548(0xffffddc) # 1c0019e0 <OLED_Set_Pos>
1c001c08:	00106f5a 	add.w	$r26,$r26,$r27
1c001c0c:	03400000 	andi	$r0,$r0,0x0
1c001c10:	2a00030c 	ld.bu	$r12,$r24,0
1c001c14:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001c18:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001c1c:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c001c20:	54090000 	bl	2304(0x900) # 1c002520 <gpio_write_pin>
1c001c24:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001c28:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001c2c:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001c30:	540b9000 	bl	2960(0xb90) # 1c0027c0 <Spi_Send>
1c001c34:	5fffdf1a 	bne	$r24,$r26,-36(0x3ffdc) # 1c001c10 <OLED_ShowCHinese+0x80>
1c001c38:	02800738 	addi.w	$r24,$r25,1(0x1)
1c001c3c:	00409318 	slli.w	$r24,$r24,0x4
1c001c40:	001503a5 	move	$r5,$r29
1c001c44:	00150384 	move	$r4,$r28
1c001c48:	001062f7 	add.w	$r23,$r23,$r24
1c001c4c:	57fd97ff 	bl	-620(0xffffd94) # 1c0019e0 <OLED_Set_Pos>
1c001c50:	00106f18 	add.w	$r24,$r24,$r27
1c001c54:	2a0002ec 	ld.bu	$r12,$r23,0
1c001c58:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001c5c:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001c60:	29003c6c 	st.b	$r12,$r3,15(0xf)
1c001c64:	5408bc00 	bl	2236(0x8bc) # 1c002520 <gpio_write_pin>
1c001c68:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c001c6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001c70:	02803c64 	addi.w	$r4,$r3,15(0xf)
1c001c74:	540b4c00 	bl	2892(0xb4c) # 1c0027c0 <Spi_Send>
1c001c78:	5fffdef8 	bne	$r23,$r24,-36(0x3ffdc) # 1c001c54 <OLED_ShowCHinese+0xc4>
1c001c7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001c80:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c001c84:	28809078 	ld.w	$r24,$r3,36(0x24)
1c001c88:	28808079 	ld.w	$r25,$r3,32(0x20)
1c001c8c:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c001c90:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c001c94:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c001c98:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c001c9c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001ca0:	4c000020 	jirl	$r0,$r1,0
1c001ca4:	03400000 	andi	$r0,$r0,0x0
1c001ca8:	03400000 	andi	$r0,$r0,0x0
1c001cac:	03400000 	andi	$r0,$r0,0x0

1c001cb0 <OLED_ShowNum>:
OLED_ShowNum():
1c001cb0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c001cb4:	02bffcec 	addi.w	$r12,$r7,-1(0xfff)
1c001cb8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001cbc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001cc0:	2980d077 	st.w	$r23,$r3,52(0x34)
1c001cc4:	2980c078 	st.w	$r24,$r3,48(0x30)
1c001cc8:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c001ccc:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c001cd0:	2980907b 	st.w	$r27,$r3,36(0x24)
1c001cd4:	2980807c 	st.w	$r28,$r3,32(0x20)
1c001cd8:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c001cdc:	2980607e 	st.w	$r30,$r3,24(0x18)
1c001ce0:	2980507f 	st.w	$r31,$r3,20(0x14)
1c001ce4:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001ce8:	4000bce0 	beqz	$r7,188(0xbc) # 1c001da4 <OLED_ShowNum+0xf4>
1c001cec:	0015011a 	move	$r26,$r8
1c001cf0:	0015009f 	move	$r31,$r4
1c001cf4:	001500be 	move	$r30,$r5
1c001cf8:	001500dc 	move	$r28,$r6
1c001cfc:	0044851b 	srli.w	$r27,$r8,0x1
1c001d00:	0015001d 	move	$r29,$r0
1c001d04:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001d08:	00150019 	move	$r25,$r0
1c001d0c:	02802818 	addi.w	$r24,$r0,10(0xa)
1c001d10:	0283fc17 	addi.w	$r23,$r0,255(0xff)
1c001d14:	02bffdb6 	addi.w	$r22,$r13,-1(0xfff)
1c001d18:	0015038e 	move	$r14,$r28
1c001d1c:	006782cc 	bstrpick.w	$r12,$r22,0x7,0x0
1c001d20:	400025a0 	beqz	$r13,36(0x24) # 1c001d44 <OLED_ShowNum+0x94>
1c001d24:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001d28:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001d2c:	001c61ad 	mul.w	$r13,$r13,$r24
1c001d30:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d34:	5ffff597 	bne	$r12,$r23,-12(0x3fff4) # 1c001d28 <OLED_ShowNum+0x78>
1c001d38:	0021378e 	div.wu	$r14,$r28,$r13
1c001d3c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001d44 <OLED_ShowNum+0x94>
1c001d40:	002a0007 	break	0x7
1c001d44:	0021e1cc 	mod.wu	$r12,$r14,$r24
1c001d48:	5c000b00 	bne	$r24,$r0,8(0x8) # 1c001d50 <OLED_ShowNum+0xa0>
1c001d4c:	002a0007 	break	0x7
1c001d50:	00678186 	bstrpick.w	$r6,$r12,0x7,0x0
1c001d54:	44001720 	bnez	$r25,20(0x14) # 1c001d68 <OLED_ShowNum+0xb8>
1c001d58:	2880306d 	ld.w	$r13,$r3,12(0xc)
1c001d5c:	64000fad 	bge	$r29,$r13,12(0xc) # 1c001d68 <OLED_ShowNum+0xb8>
1c001d60:	40008d80 	beqz	$r12,140(0x8c) # 1c001dec <OLED_ShowNum+0x13c>
1c001d64:	02800419 	addi.w	$r25,$r0,1(0x1)
1c001d68:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c001d6c:	68006d9f 	bltu	$r12,$r31,108(0x6c) # 1c001dd8 <OLED_ShowNum+0x128>
1c001d70:	00107f6c 	add.w	$r12,$r27,$r31
1c001d74:	001503e4 	move	$r4,$r31
1c001d78:	0067819f 	bstrpick.w	$r31,$r12,0x7,0x0
1c001d7c:	0240c7cc 	sltui	$r12,$r30,49(0x31)
1c001d80:	0011300c 	sub.w	$r12,$r0,$r12
1c001d84:	0014b3de 	and	$r30,$r30,$r12
1c001d88:	00150347 	move	$r7,$r26
1c001d8c:	0280c0c6 	addi.w	$r6,$r6,48(0x30)
1c001d90:	001503c5 	move	$r5,$r30
1c001d94:	57fcdfff 	bl	-804(0xffffcdc) # 1c001a70 <OLED_ShowChar>
1c001d98:	006782cd 	bstrpick.w	$r13,$r22,0x7,0x0
1c001d9c:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c001da0:	5fff75b7 	bne	$r13,$r23,-140(0x3ff74) # 1c001d14 <OLED_ShowNum+0x64>
1c001da4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001da8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001dac:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c001db0:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c001db4:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c001db8:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c001dbc:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c001dc0:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c001dc4:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c001dc8:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c001dcc:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c001dd0:	02810063 	addi.w	$r3,$r3,64(0x40)
1c001dd4:	4c000020 	jirl	$r0,$r1,0
1c001dd8:	028043de 	addi.w	$r30,$r30,16(0x10)
1c001ddc:	0015037f 	move	$r31,$r27
1c001de0:	00150004 	move	$r4,$r0
1c001de4:	006783de 	bstrpick.w	$r30,$r30,0x7,0x0
1c001de8:	53ff97ff 	b	-108(0xfffff94) # 1c001d7c <OLED_ShowNum+0xcc>
1c001dec:	00107f7f 	add.w	$r31,$r27,$r31
1c001df0:	006783ff 	bstrpick.w	$r31,$r31,0x7,0x0
1c001df4:	53ffa7ff 	b	-92(0xfffffa4) # 1c001d98 <OLED_ShowNum+0xe8>
1c001df8:	03400000 	andi	$r0,$r0,0x0
1c001dfc:	03400000 	andi	$r0,$r0,0x0

1c001e00 <key_write>:
key_write():
1c001e00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e04:	29802077 	st.w	$r23,$r3,8(0x8)
1c001e08:	00150097 	move	$r23,$r4
1c001e0c:	034006e5 	andi	$r5,$r23,0x1
1c001e10:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001e14:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e18:	54070800 	bl	1800(0x708) # 1c002520 <gpio_write_pin>
1c001e1c:	006186e5 	bstrpick.w	$r5,$r23,0x1,0x1
1c001e20:	02803804 	addi.w	$r4,$r0,14(0xe)
1c001e24:	5406fc00 	bl	1788(0x6fc) # 1c002520 <gpio_write_pin>
1c001e28:	00628ae5 	bstrpick.w	$r5,$r23,0x2,0x2
1c001e2c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c001e30:	5406f000 	bl	1776(0x6f0) # 1c002520 <gpio_write_pin>
1c001e34:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e38:	00638ee5 	bstrpick.w	$r5,$r23,0x3,0x3
1c001e3c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001e40:	02804404 	addi.w	$r4,$r0,17(0x11)
1c001e44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e48:	5006d800 	b	1752(0x6d8) # 1c002520 <gpio_write_pin>
1c001e4c:	03400000 	andi	$r0,$r0,0x0

1c001e50 <key_read>:
key_read():
1c001e50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e54:	02808804 	addi.w	$r4,$r0,34(0x22)
1c001e58:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e5c:	29802077 	st.w	$r23,$r3,8(0x8)
1c001e60:	29801078 	st.w	$r24,$r3,4(0x4)
1c001e64:	29800079 	st.w	$r25,$r3,0
1c001e68:	54069800 	bl	1688(0x698) # 1c002500 <gpio_get_pin>
1c001e6c:	00150099 	move	$r25,$r4
1c001e70:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c001e74:	54068c00 	bl	1676(0x68c) # 1c002500 <gpio_get_pin>
1c001e78:	00150097 	move	$r23,$r4
1c001e7c:	02809004 	addi.w	$r4,$r0,36(0x24)
1c001e80:	54068000 	bl	1664(0x680) # 1c002500 <gpio_get_pin>
1c001e84:	00408898 	slli.w	$r24,$r4,0x2
1c001e88:	004086f7 	slli.w	$r23,$r23,0x1
1c001e8c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001e90:	54067000 	bl	1648(0x670) # 1c002500 <gpio_get_pin>
1c001e94:	001562f7 	or	$r23,$r23,$r24
1c001e98:	001566f7 	or	$r23,$r23,$r25
1c001e9c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ea0:	00005ef7 	ext.w.b	$r23,$r23
1c001ea4:	00408c84 	slli.w	$r4,$r4,0x3
1c001ea8:	001512e4 	or	$r4,$r23,$r4
1c001eac:	28801078 	ld.w	$r24,$r3,4(0x4)
1c001eb0:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001eb4:	28800079 	ld.w	$r25,$r3,0
1c001eb8:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c001ebc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ec0:	4c000020 	jirl	$r0,$r1,0
1c001ec4:	03400000 	andi	$r0,$r0,0x0
1c001ec8:	03400000 	andi	$r0,$r0,0x0
1c001ecc:	03400000 	andi	$r0,$r0,0x0

1c001ed0 <key_scan>:
key_scan():
1c001ed0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ed4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001ed8:	29803061 	st.w	$r1,$r3,12(0xc)
1c001edc:	29802077 	st.w	$r23,$r3,8(0x8)
1c001ee0:	57ff23ff 	bl	-224(0xfffff20) # 1c001e00 <key_write>
1c001ee4:	57ff6fff 	bl	-148(0xfffff6c) # 1c001e50 <key_read>
1c001ee8:	44009c80 	bnez	$r4,156(0x9c) # 1c001f84 <key_scan+0xb4>
1c001eec:	02802004 	addi.w	$r4,$r0,8(0x8)
1c001ef0:	54156000 	bl	5472(0x1560) # 1c003450 <delay_ms>
1c001ef4:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001ef8:	57ff0bff 	bl	-248(0xfffff08) # 1c001e00 <key_write>
1c001efc:	57ff57ff 	bl	-172(0xfffff54) # 1c001e50 <key_read>
1c001f00:	00150097 	move	$r23,$r4
1c001f04:	44005c80 	bnez	$r4,92(0x5c) # 1c001f60 <key_scan+0x90>
1c001f08:	02802004 	addi.w	$r4,$r0,8(0x8)
1c001f0c:	54154400 	bl	5444(0x1544) # 1c003450 <delay_ms>
1c001f10:	02801004 	addi.w	$r4,$r0,4(0x4)
1c001f14:	57feefff 	bl	-276(0xffffeec) # 1c001e00 <key_write>
1c001f18:	57ff3bff 	bl	-200(0xfffff38) # 1c001e50 <key_read>
1c001f1c:	00150097 	move	$r23,$r4
1c001f20:	4400a480 	bnez	$r4,164(0xa4) # 1c001fc4 <key_scan+0xf4>
1c001f24:	02802004 	addi.w	$r4,$r0,8(0x8)
1c001f28:	54152800 	bl	5416(0x1528) # 1c003450 <delay_ms>
1c001f2c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c001f30:	57fed3ff 	bl	-304(0xffffed0) # 1c001e00 <key_write>
1c001f34:	57ff1fff 	bl	-228(0xfffff1c) # 1c001e50 <key_read>
1c001f38:	00150097 	move	$r23,$r4
1c001f3c:	44007480 	bnez	$r4,116(0x74) # 1c001fb0 <key_scan+0xe0>
1c001f40:	02802004 	addi.w	$r4,$r0,8(0x8)
1c001f44:	54150c00 	bl	5388(0x150c) # 1c003450 <delay_ms>
1c001f48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f4c:	001502e4 	move	$r4,$r23
1c001f50:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001f54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f58:	4c000020 	jirl	$r0,$r1,0
1c001f5c:	03400000 	andi	$r0,$r0,0x0
1c001f60:	00150004 	move	$r4,$r0
1c001f64:	038082f7 	ori	$r23,$r23,0x20
1c001f68:	57fe9bff 	bl	-360(0xffffe98) # 1c001e00 <key_write>
1c001f6c:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
1c001f70:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f74:	001502e4 	move	$r4,$r23
1c001f78:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001f7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f80:	4c000020 	jirl	$r0,$r1,0
1c001f84:	00150097 	move	$r23,$r4
1c001f88:	00150004 	move	$r4,$r0
1c001f8c:	57fe77ff 	bl	-396(0xffffe74) # 1c001e00 <key_write>
1c001f90:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f94:	038042f7 	ori	$r23,$r23,0x10
1c001f98:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
1c001f9c:	001502e4 	move	$r4,$r23
1c001fa0:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001fa4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fa8:	4c000020 	jirl	$r0,$r1,0
1c001fac:	03400000 	andi	$r0,$r0,0x0
1c001fb0:	00150004 	move	$r4,$r0
1c001fb4:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
1c001fb8:	57fe4bff 	bl	-440(0xffffe48) # 1c001e00 <key_write>
1c001fbc:	038202f7 	ori	$r23,$r23,0x80
1c001fc0:	53ffb3ff 	b	-80(0xfffffb0) # 1c001f70 <key_scan+0xa0>
1c001fc4:	00150004 	move	$r4,$r0
1c001fc8:	57fe3bff 	bl	-456(0xffffe38) # 1c001e00 <key_write>
1c001fcc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fd0:	038102f7 	ori	$r23,$r23,0x40
1c001fd4:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
1c001fd8:	001502e4 	move	$r4,$r23
1c001fdc:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001fe0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fe4:	4c000020 	jirl	$r0,$r1,0
1c001fe8:	03400000 	andi	$r0,$r0,0x0
1c001fec:	03400000 	andi	$r0,$r0,0x0

1c001ff0 <GPIOInit>:
GPIOInit():
1c001ff0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ff4:	29802077 	st.w	$r23,$r3,8(0x8)
1c001ff8:	29801078 	st.w	$r24,$r3,4(0x4)
1c001ffc:	157fd617 	lu12i.w	$r23,-262480(0xbfeb0)
1c002000:	140001f8 	lu12i.w	$r24,15(0xf)
1c002004:	03bfff05 	ori	$r5,$r24,0xfff
1c002008:	038042e4 	ori	$r4,$r23,0x10
1c00200c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002010:	29803061 	st.w	$r1,$r3,12(0xc)
1c002014:	5404ac00 	bl	1196(0x4ac) # 1c0024c0 <AFIO_RemapConfig>
1c002018:	03bfff05 	ori	$r5,$r24,0xfff
1c00201c:	038052e4 	ori	$r4,$r23,0x14
1c002020:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002024:	54049c00 	bl	1180(0x49c) # 1c0024c0 <AFIO_RemapConfig>
1c002028:	03bcff05 	ori	$r5,$r24,0xf3f
1c00202c:	038062e4 	ori	$r4,$r23,0x18
1c002030:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002034:	54048c00 	bl	1164(0x48c) # 1c0024c0 <AFIO_RemapConfig>
1c002038:	038062e4 	ori	$r4,$r23,0x18
1c00203c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c002040:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c002044:	54047c00 	bl	1148(0x47c) # 1c0024c0 <AFIO_RemapConfig>
1c002048:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00204c:	03bfff05 	ori	$r5,$r24,0xfff
1c002050:	038072e4 	ori	$r4,$r23,0x1c
1c002054:	28801078 	ld.w	$r24,$r3,4(0x4)
1c002058:	28802077 	ld.w	$r23,$r3,8(0x8)
1c00205c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002060:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002064:	50045c00 	b	1116(0x45c) # 1c0024c0 <AFIO_RemapConfig>
1c002068:	03400000 	andi	$r0,$r0,0x0
1c00206c:	03400000 	andi	$r0,$r0,0x0

1c002070 <DHT11_Start>:
DHT11_Start():
1c002070:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002074:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002078:	0280740d 	addi.w	$r13,$r0,29(0x1d)
1c00207c:	02801064 	addi.w	$r4,$r3,4(0x4)
1c002080:	2980206c 	st.w	$r12,$r3,8(0x8)
1c002084:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002088:	2900106d 	st.b	$r13,$r3,4(0x4)
1c00208c:	29803060 	st.w	$r0,$r3,12(0xc)
1c002090:	54062000 	bl	1568(0x620) # 1c0026b0 <GPIO_Init>
1c002094:	00150005 	move	$r5,$r0
1c002098:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c00209c:	54048400 	bl	1156(0x484) # 1c002520 <gpio_write_pin>
1c0020a0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0020a4:	5413ac00 	bl	5036(0x13ac) # 1c003450 <delay_ms>
1c0020a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0020ac:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0020b0:	54047000 	bl	1136(0x470) # 1c002520 <gpio_write_pin>
1c0020b4:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c0020b8:	03400000 	andi	$r0,$r0,0x0
1c0020bc:	03400000 	andi	$r0,$r0,0x0
1c0020c0:	03400000 	andi	$r0,$r0,0x0
1c0020c4:	03400000 	andi	$r0,$r0,0x0
1c0020c8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020cc:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c0020b8 <DHT11_Start+0x48>
1c0020d0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0020d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0020d8:	4c000020 	jirl	$r0,$r1,0
1c0020dc:	03400000 	andi	$r0,$r0,0x0

1c0020e0 <DHT11_Check>:
DHT11_Check():
1c0020e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0020e4:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c0020e8:	02801064 	addi.w	$r4,$r3,4(0x4)
1c0020ec:	29805078 	st.w	$r24,$r3,20(0x14)
1c0020f0:	29804079 	st.w	$r25,$r3,16(0x10)
1c0020f4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0020f8:	29806077 	st.w	$r23,$r3,24(0x18)
1c0020fc:	29802060 	st.w	$r0,$r3,8(0x8)
1c002100:	29803060 	st.w	$r0,$r3,12(0xc)
1c002104:	2900106c 	st.b	$r12,$r3,4(0x4)
1c002108:	00150018 	move	$r24,$r0
1c00210c:	5405a400 	bl	1444(0x5a4) # 1c0026b0 <GPIO_Init>
1c002110:	02819019 	addi.w	$r25,$r0,100(0x64)
1c002114:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c002118:	5403e800 	bl	1000(0x3e8) # 1c002500 <gpio_get_pin>
1c00211c:	00150097 	move	$r23,$r4
1c002120:	40002480 	beqz	$r4,36(0x24) # 1c002144 <DHT11_Check+0x64>
1c002124:	5c005f19 	bne	$r24,$r25,92(0x5c) # 1c002180 <DHT11_Check+0xa0>
1c002128:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00212c:	28806077 	ld.w	$r23,$r3,24(0x18)
1c002130:	28805078 	ld.w	$r24,$r3,20(0x14)
1c002134:	28804079 	ld.w	$r25,$r3,16(0x10)
1c002138:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00213c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002140:	4c000020 	jirl	$r0,$r1,0
1c002144:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c002148:	5bffe30c 	beq	$r24,$r12,-32(0x3ffe0) # 1c002128 <DHT11_Check+0x48>
1c00214c:	02819018 	addi.w	$r24,$r0,100(0x64)
1c002150:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c002154:	5403ac00 	bl	940(0x3ac) # 1c002500 <gpio_get_pin>
1c002158:	44004880 	bnez	$r4,72(0x48) # 1c0021a0 <DHT11_Check+0xc0>
1c00215c:	5bffcef8 	beq	$r23,$r24,-52(0x3ffcc) # 1c002128 <DHT11_Check+0x48>
1c002160:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c002164:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
1c002168:	03400000 	andi	$r0,$r0,0x0
1c00216c:	03400000 	andi	$r0,$r0,0x0
1c002170:	03400000 	andi	$r0,$r0,0x0
1c002174:	03400000 	andi	$r0,$r0,0x0
1c002178:	53ffdbff 	b	-40(0xfffffd8) # 1c002150 <DHT11_Check+0x70>
1c00217c:	03400000 	andi	$r0,$r0,0x0
1c002180:	02800718 	addi.w	$r24,$r24,1(0x1)
1c002184:	00678318 	bstrpick.w	$r24,$r24,0x7,0x0
1c002188:	03400000 	andi	$r0,$r0,0x0
1c00218c:	03400000 	andi	$r0,$r0,0x0
1c002190:	03400000 	andi	$r0,$r0,0x0
1c002194:	03400000 	andi	$r0,$r0,0x0
1c002198:	53ff7fff 	b	-132(0xfffff7c) # 1c002114 <DHT11_Check+0x34>
1c00219c:	03400000 	andi	$r0,$r0,0x0
1c0021a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0021a4:	03c192e4 	xori	$r4,$r23,0x64
1c0021a8:	28805078 	ld.w	$r24,$r3,20(0x14)
1c0021ac:	28806077 	ld.w	$r23,$r3,24(0x18)
1c0021b0:	28804079 	ld.w	$r25,$r3,16(0x10)
1c0021b4:	02400484 	sltui	$r4,$r4,1(0x1)
1c0021b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0021bc:	4c000020 	jirl	$r0,$r1,0

1c0021c0 <DHT11_ReadBit>:
DHT11_ReadBit():
1c0021c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0021c4:	29802077 	st.w	$r23,$r3,8(0x8)
1c0021c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0021cc:	02819417 	addi.w	$r23,$r0,101(0x65)
1c0021d0:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0021d4:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c0021d8:	54032800 	bl	808(0x328) # 1c002500 <gpio_get_pin>
1c0021dc:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
1c0021e0:	40000880 	beqz	$r4,8(0x8) # 1c0021e8 <DHT11_ReadBit+0x28>
1c0021e4:	440072e0 	bnez	$r23,112(0x70) # 1c002254 <DHT11_ReadBit+0x94>
1c0021e8:	02819417 	addi.w	$r23,$r0,101(0x65)
1c0021ec:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0021f0:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c0021f4:	54030c00 	bl	780(0x30c) # 1c002500 <gpio_get_pin>
1c0021f8:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
1c0021fc:	44000880 	bnez	$r4,8(0x8) # 1c002204 <DHT11_ReadBit+0x44>
1c002200:	440042e0 	bnez	$r23,64(0x40) # 1c002240 <DHT11_ReadBit+0x80>
1c002204:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002208:	03400000 	andi	$r0,$r0,0x0
1c00220c:	03400000 	andi	$r0,$r0,0x0
1c002210:	03400000 	andi	$r0,$r0,0x0
1c002214:	03400000 	andi	$r0,$r0,0x0
1c002218:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00221c:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c002208 <DHT11_ReadBit+0x48>
1c002220:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c002224:	5402dc00 	bl	732(0x2dc) # 1c002500 <gpio_get_pin>
1c002228:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00222c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c002230:	00129004 	sltu	$r4,$r0,$r4
1c002234:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002238:	4c000020 	jirl	$r0,$r1,0
1c00223c:	03400000 	andi	$r0,$r0,0x0
1c002240:	03400000 	andi	$r0,$r0,0x0
1c002244:	03400000 	andi	$r0,$r0,0x0
1c002248:	03400000 	andi	$r0,$r0,0x0
1c00224c:	03400000 	andi	$r0,$r0,0x0
1c002250:	53ff9fff 	b	-100(0xfffff9c) # 1c0021ec <DHT11_ReadBit+0x2c>
1c002254:	03400000 	andi	$r0,$r0,0x0
1c002258:	03400000 	andi	$r0,$r0,0x0
1c00225c:	03400000 	andi	$r0,$r0,0x0
1c002260:	03400000 	andi	$r0,$r0,0x0
1c002264:	53ff6fff 	b	-148(0xfffff6c) # 1c0021d0 <DHT11_ReadBit+0x10>
1c002268:	03400000 	andi	$r0,$r0,0x0
1c00226c:	03400000 	andi	$r0,$r0,0x0

1c002270 <DHT11_ReadData>:
DHT11_ReadData():
1c002270:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c002274:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c002278:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c00227c:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c002280:	2980907c 	st.w	$r28,$r3,36(0x24)
1c002284:	2980807d 	st.w	$r29,$r3,32(0x20)
1c002288:	2980707e 	st.w	$r30,$r3,28(0x1c)
1c00228c:	0015009d 	move	$r29,$r4
1c002290:	001500bc 	move	$r28,$r5
1c002294:	001500db 	move	$r27,$r6
1c002298:	001500fa 	move	$r26,$r7
1c00229c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c0022a0:	2980d078 	st.w	$r24,$r3,52(0x34)
1c0022a4:	2980c079 	st.w	$r25,$r3,48(0x30)
1c0022a8:	57fdcbff 	bl	-568(0xffffdc8) # 1c002070 <DHT11_Start>
1c0022ac:	57fe37ff 	bl	-460(0xffffe34) # 1c0020e0 <DHT11_Check>
1c0022b0:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c0022b4:	44006480 	bnez	$r4,100(0x64) # 1c002318 <DHT11_ReadData+0xa8>
1c0022b8:	02802078 	addi.w	$r24,$r3,8(0x8)
1c0022bc:	02803479 	addi.w	$r25,$r3,13(0xd)
1c0022c0:	00150004 	move	$r4,$r0
1c0022c4:	0280201e 	addi.w	$r30,$r0,8(0x8)
1c0022c8:	00408484 	slli.w	$r4,$r4,0x1
1c0022cc:	00678097 	bstrpick.w	$r23,$r4,0x7,0x0
1c0022d0:	02bfffde 	addi.w	$r30,$r30,-1(0xfff)
1c0022d4:	57feefff 	bl	-276(0xffffeec) # 1c0021c0 <DHT11_ReadBit>
1c0022d8:	001512e4 	or	$r4,$r23,$r4
1c0022dc:	006783de 	bstrpick.w	$r30,$r30,0x7,0x0
1c0022e0:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c0022e4:	47ffe7df 	bnez	$r30,-28(0x7fffe4) # 1c0022c8 <DHT11_ReadData+0x58>
1c0022e8:	29000304 	st.b	$r4,$r24,0
1c0022ec:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0022f0:	5fffd338 	bne	$r25,$r24,-48(0x3ffd0) # 1c0022c0 <DHT11_ReadData+0x50>
1c0022f4:	2a002070 	ld.bu	$r16,$r3,8(0x8)
1c0022f8:	2a00246f 	ld.bu	$r15,$r3,9(0x9)
1c0022fc:	2a00286e 	ld.bu	$r14,$r3,10(0xa)
1c002300:	2a002c6d 	ld.bu	$r13,$r3,11(0xb)
1c002304:	00103e0c 	add.w	$r12,$r16,$r15
1c002308:	2a003071 	ld.bu	$r17,$r3,12(0xc)
1c00230c:	0010398c 	add.w	$r12,$r12,$r14
1c002310:	0010358c 	add.w	$r12,$r12,$r13
1c002314:	58003591 	beq	$r12,$r17,52(0x34) # 1c002348 <DHT11_ReadData+0xd8>
1c002318:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00231c:	001503c4 	move	$r4,$r30
1c002320:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c002324:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c002328:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c00232c:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c002330:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c002334:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c002338:	2880807d 	ld.w	$r29,$r3,32(0x20)
1c00233c:	2880707e 	ld.w	$r30,$r3,28(0x1c)
1c002340:	02810063 	addi.w	$r3,$r3,64(0x40)
1c002344:	4c000020 	jirl	$r0,$r1,0
1c002348:	290003b0 	st.b	$r16,$r29,0
1c00234c:	2900038f 	st.b	$r15,$r28,0
1c002350:	2900036e 	st.b	$r14,$r27,0
1c002354:	2900034d 	st.b	$r13,$r26,0
1c002358:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00235c:	001503c4 	move	$r4,$r30
1c002360:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c002364:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c002368:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c00236c:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c002370:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c002374:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c002378:	2880807d 	ld.w	$r29,$r3,32(0x20)
1c00237c:	2880707e 	ld.w	$r30,$r3,28(0x1c)
1c002380:	02810063 	addi.w	$r3,$r3,64(0x40)
1c002384:	4c000020 	jirl	$r0,$r1,0
1c002388:	03400000 	andi	$r0,$r0,0x0
1c00238c:	03400000 	andi	$r0,$r0,0x0

1c002390 <DHT11_Init>:
DHT11_Init():
1c002390:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002394:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002398:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c00239c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0023a0:	54018000 	bl	384(0x180) # 1c002520 <gpio_write_pin>
1c0023a4:	57fccfff 	bl	-820(0xffffccc) # 1c002070 <DHT11_Start>
1c0023a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0023b0:	53fd33ff 	b	-720(0xffffd30) # 1c0020e0 <DHT11_Check>
1c0023b4:	03400000 	andi	$r0,$r0,0x0
1c0023b8:	03400000 	andi	$r0,$r0,0x0
1c0023bc:	03400000 	andi	$r0,$r0,0x0

1c0023c0 <bsp_init>:
bsp_init():
1c0023c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0023c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0023c8:	540f0800 	bl	3848(0xf08) # 1c0032d0 <DisableInt>
1c0023cc:	540e9400 	bl	3732(0xe94) # 1c003260 <SystemClockInit>
1c0023d0:	57fc23ff 	bl	-992(0xffffc20) # 1c001ff0 <GPIOInit>
1c0023d4:	5411cc00 	bl	4556(0x11cc) # 1c0035a0 <WdgInit>
1c0023d8:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0023dc:	54113400 	bl	4404(0x1134) # 1c003510 <WDG_SetWatchDog>
1c0023e0:	14000044 	lu12i.w	$r4,2(0x2)
1c0023e4:	03960084 	ori	$r4,$r4,0x580
1c0023e8:	540a1800 	bl	2584(0xa18) # 1c002e00 <Uart0_init>
1c0023ec:	540fc400 	bl	4036(0xfc4) # 1c0033b0 <ls1x_logo>
1c0023f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0023f4:	0380118c 	ori	$r12,$r12,0x4
1c0023f8:	2880018d 	ld.w	$r13,$r12,0
1c0023fc:	1404000e 	lu12i.w	$r14,8192(0x2000)
1c002400:	001539ad 	or	$r13,$r13,$r14
1c002404:	2980018d 	st.w	$r13,$r12,0
1c002408:	540ed800 	bl	3800(0xed8) # 1c0032e0 <EnableInt>
1c00240c:	54103400 	bl	4148(0x1034) # 1c003440 <open_count>
1c002410:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002414:	540efc00 	bl	3836(0xefc) # 1c003310 <Wake_Set>
1c002418:	54116800 	bl	4456(0x1168) # 1c003580 <WDG_DogFeed>
1c00241c:	540f4400 	bl	3908(0xf44) # 1c003360 <PMU_GetRstRrc>
1c002420:	40002480 	beqz	$r4,36(0x24) # 1c002444 <bsp_init+0x84>
1c002424:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002428:	5800688c 	beq	$r4,$r12,104(0x68) # 1c002490 <bsp_init+0xd0>
1c00242c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002430:	5800408c 	beq	$r4,$r12,64(0x40) # 1c002470 <bsp_init+0xb0>
1c002434:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002438:	00150004 	move	$r4,$r0
1c00243c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002440:	4c000020 	jirl	$r0,$r1,0
1c002444:	1c000084 	pcaddu12i	$r4,4(0x4)
1c002448:	02bfe084 	addi.w	$r4,$r4,-8(0xff8)
1c00244c:	54055400 	bl	1364(0x554) # 1c0029a0 <myprintf>
1c002450:	540f4000 	bl	3904(0xf40) # 1c003390 <PMU_GetBootSpiStatus>
1c002454:	44005c80 	bnez	$r4,92(0x5c) # 1c0024b0 <bsp_init+0xf0>
1c002458:	542d1800 	bl	11544(0x2d18) # 1c005170 <main>
1c00245c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002460:	00150004 	move	$r4,$r0
1c002464:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002468:	4c000020 	jirl	$r0,$r1,0
1c00246c:	03400000 	andi	$r0,$r0,0x0
1c002470:	1c000084 	pcaddu12i	$r4,4(0x4)
1c002474:	02bfe084 	addi.w	$r4,$r4,-8(0xff8)
1c002478:	54052800 	bl	1320(0x528) # 1c0029a0 <myprintf>
1c00247c:	57ed6bff 	bl	-4760(0xfffed68) # 1c0011e4 <cpu_sleep>
1c002480:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002484:	00150004 	move	$r4,$r0
1c002488:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00248c:	4c000020 	jirl	$r0,$r1,0
1c002490:	1c000084 	pcaddu12i	$r4,4(0x4)
1c002494:	02bf2084 	addi.w	$r4,$r4,-56(0xfc8)
1c002498:	54050800 	bl	1288(0x508) # 1c0029a0 <myprintf>
1c00249c:	542cd400 	bl	11476(0x2cd4) # 1c005170 <main>
1c0024a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0024a4:	00150004 	move	$r4,$r0
1c0024a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0024ac:	4c000020 	jirl	$r0,$r1,0
1c0024b0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0024b4:	02be7084 	addi.w	$r4,$r4,-100(0xf9c)
1c0024b8:	5404e800 	bl	1256(0x4e8) # 1c0029a0 <myprintf>
1c0024bc:	53ff9fff 	b	-100(0xfffff9c) # 1c002458 <bsp_init+0x98>

1c0024c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0024c0:	28800090 	ld.w	$r16,$r4,0
1c0024c4:	0015000d 	move	$r13,$r0
1c0024c8:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c0024cc:	02804011 	addi.w	$r17,$r0,16(0x10)
1c0024d0:	004085ae 	slli.w	$r14,$r13,0x1
1c0024d4:	001834ac 	sra.w	$r12,$r5,$r13
1c0024d8:	00173a4f 	sll.w	$r15,$r18,$r14
1c0024dc:	0340058c 	andi	$r12,$r12,0x1
1c0024e0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0024e4:	001738ce 	sll.w	$r14,$r6,$r14
1c0024e8:	0016be0f 	andn	$r15,$r16,$r15
1c0024ec:	40000980 	beqz	$r12,8(0x8) # 1c0024f4 <AFIO_RemapConfig+0x34>
1c0024f0:	00153dd0 	or	$r16,$r14,$r15
1c0024f4:	5fffddb1 	bne	$r13,$r17,-36(0x3ffdc) # 1c0024d0 <AFIO_RemapConfig+0x10>
1c0024f8:	29800090 	st.w	$r16,$r4,0
1c0024fc:	4c000020 	jirl	$r0,$r1,0

1c002500 <gpio_get_pin>:
gpio_get_pin():
1c002500:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002504:	0382018c 	ori	$r12,$r12,0x80
1c002508:	00103084 	add.w	$r4,$r4,$r12
1c00250c:	29000080 	st.b	$r0,$r4,0
1c002510:	2a000084 	ld.bu	$r4,$r4,0
1c002514:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c002518:	4c000020 	jirl	$r0,$r1,0
1c00251c:	03400000 	andi	$r0,$r0,0x0

1c002520 <gpio_write_pin>:
gpio_write_pin():
1c002520:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002524:	0382018c 	ori	$r12,$r12,0x80
1c002528:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00252c:	00103084 	add.w	$r4,$r4,$r12
1c002530:	580010ad 	beq	$r5,$r13,16(0x10) # 1c002540 <gpio_write_pin+0x20>
1c002534:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002538:	2900008c 	st.b	$r12,$r4,0
1c00253c:	4c000020 	jirl	$r0,$r1,0
1c002540:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002544:	2900008c 	st.b	$r12,$r4,0
1c002548:	4c000020 	jirl	$r0,$r1,0
1c00254c:	03400000 	andi	$r0,$r0,0x0

1c002550 <gpio_pin_remap>:
gpio_pin_remap():
1c002550:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c002554:	68007d84 	bltu	$r12,$r4,124(0x7c) # 1c0025d0 <gpio_pin_remap+0x80>
1c002558:	03403c8c 	andi	$r12,$r4,0xf
1c00255c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002560:	00449084 	srli.w	$r4,$r4,0x4
1c002564:	0040858c 	slli.w	$r12,$r12,0x1
1c002568:	5800988d 	beq	$r4,$r13,152(0x98) # 1c002600 <gpio_pin_remap+0xb0>
1c00256c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002570:	5800388d 	beq	$r4,$r13,56(0x38) # 1c0025a8 <gpio_pin_remap+0x58>
1c002574:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002578:	58005c8e 	beq	$r4,$r14,92(0x5c) # 1c0025d4 <gpio_pin_remap+0x84>
1c00257c:	157fd60e 	lu12i.w	$r14,-262480(0xbfeb0)
1c002580:	001731ad 	sll.w	$r13,$r13,$r12
1c002584:	001730a5 	sll.w	$r5,$r5,$r12
1c002588:	038041cc 	ori	$r12,$r14,0x10
1c00258c:	2880018e 	ld.w	$r14,$r12,0
1c002590:	0016b5cd 	andn	$r13,$r14,$r13
1c002594:	2980018d 	st.w	$r13,$r12,0
1c002598:	2880018d 	ld.w	$r13,$r12,0
1c00259c:	001534a5 	or	$r5,$r5,$r13
1c0025a0:	29800185 	st.w	$r5,$r12,0
1c0025a4:	4c000020 	jirl	$r0,$r1,0
1c0025a8:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0025ac:	00173084 	sll.w	$r4,$r4,$r12
1c0025b0:	001730a5 	sll.w	$r5,$r5,$r12
1c0025b4:	038071ac 	ori	$r12,$r13,0x1c
1c0025b8:	2880018d 	ld.w	$r13,$r12,0
1c0025bc:	001691a4 	andn	$r4,$r13,$r4
1c0025c0:	29800184 	st.w	$r4,$r12,0
1c0025c4:	2880018d 	ld.w	$r13,$r12,0
1c0025c8:	001534a5 	or	$r5,$r5,$r13
1c0025cc:	29800185 	st.w	$r5,$r12,0
1c0025d0:	4c000020 	jirl	$r0,$r1,0
1c0025d4:	157fd60e 	lu12i.w	$r14,-262480(0xbfeb0)
1c0025d8:	001731ad 	sll.w	$r13,$r13,$r12
1c0025dc:	001730a5 	sll.w	$r5,$r5,$r12
1c0025e0:	038051cc 	ori	$r12,$r14,0x14
1c0025e4:	2880018e 	ld.w	$r14,$r12,0
1c0025e8:	0016b5cd 	andn	$r13,$r14,$r13
1c0025ec:	2980018d 	st.w	$r13,$r12,0
1c0025f0:	2880018d 	ld.w	$r13,$r12,0
1c0025f4:	001534a5 	or	$r5,$r5,$r13
1c0025f8:	29800185 	st.w	$r5,$r12,0
1c0025fc:	4c000020 	jirl	$r0,$r1,0
1c002600:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c002604:	038061ad 	ori	$r13,$r13,0x18
1c002608:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00260c:	001730a5 	sll.w	$r5,$r5,$r12
1c002610:	001731cc 	sll.w	$r12,$r14,$r12
1c002614:	288001ae 	ld.w	$r14,$r13,0
1c002618:	0016b1cc 	andn	$r12,$r14,$r12
1c00261c:	298001ac 	st.w	$r12,$r13,0
1c002620:	288001ac 	ld.w	$r12,$r13,0
1c002624:	001530a5 	or	$r5,$r5,$r12
1c002628:	298001a5 	st.w	$r5,$r13,0
1c00262c:	4c000020 	jirl	$r0,$r1,0

1c002630 <gpio_set_direction>:
gpio_set_direction():
1c002630:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002634:	68003584 	bltu	$r12,$r4,52(0x34) # 1c002668 <gpio_set_direction+0x38>
1c002638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00263c:	0381018c 	ori	$r12,$r12,0x40
1c002640:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002644:	001710a5 	sll.w	$r5,$r5,$r4
1c002648:	001711a4 	sll.w	$r4,$r13,$r4
1c00264c:	2880018d 	ld.w	$r13,$r12,0
1c002650:	001691a4 	andn	$r4,$r13,$r4
1c002654:	29800184 	st.w	$r4,$r12,0
1c002658:	2880018d 	ld.w	$r13,$r12,0
1c00265c:	001534a5 	or	$r5,$r5,$r13
1c002660:	29800185 	st.w	$r5,$r12,0
1c002664:	4c000020 	jirl	$r0,$r1,0
1c002668:	02bf8084 	addi.w	$r4,$r4,-32(0xfe0)
1c00266c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002670:	0067808d 	bstrpick.w	$r13,$r4,0x7,0x0
1c002674:	6bfff18d 	bltu	$r12,$r13,-16(0x3fff0) # 1c002664 <gpio_set_direction+0x34>
1c002678:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00267c:	0381418c 	ori	$r12,$r12,0x50
1c002680:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002684:	001710a5 	sll.w	$r5,$r5,$r4
1c002688:	001711a4 	sll.w	$r4,$r13,$r4
1c00268c:	2880018d 	ld.w	$r13,$r12,0
1c002690:	001691a4 	andn	$r4,$r13,$r4
1c002694:	29800184 	st.w	$r4,$r12,0
1c002698:	2880018d 	ld.w	$r13,$r12,0
1c00269c:	001534a5 	or	$r5,$r5,$r13
1c0026a0:	29800185 	st.w	$r5,$r12,0
1c0026a4:	53ffc3ff 	b	-64(0xfffffc0) # 1c002664 <gpio_set_direction+0x34>
1c0026a8:	03400000 	andi	$r0,$r0,0x0
1c0026ac:	03400000 	andi	$r0,$r0,0x0

1c0026b0 <GPIO_Init>:
GPIO_Init():
1c0026b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0026b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0026b8:	0015008f 	move	$r15,$r4
1c0026bc:	2a002085 	ld.bu	$r5,$r4,8(0x8)
1c0026c0:	2a000084 	ld.bu	$r4,$r4,0
1c0026c4:	57fe8fff 	bl	-372(0xffffe8c) # 1c002550 <gpio_pin_remap>
1c0026c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0026cc:	2a0011e5 	ld.bu	$r5,$r15,4(0x4)
1c0026d0:	2a0001e4 	ld.bu	$r4,$r15,0
1c0026d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0026d8:	53ff5bff 	b	-168(0xfffff58) # 1c002630 <gpio_set_direction>
1c0026dc:	03400000 	andi	$r0,$r0,0x0

1c0026e0 <Spi_Init>:
Spi_Init():
1c0026e0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0026e4:	0281400e 	addi.w	$r14,$r0,80(0x50)
1c0026e8:	2900018e 	st.b	$r14,$r12,0
1c0026ec:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c0026f0:	29000d80 	st.b	$r0,$r12,3(0x3)
1c0026f4:	2a0005ac 	ld.bu	$r12,$r13,1(0x1)
1c0026f8:	0340118c 	andi	$r12,$r12,0x4
1c0026fc:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c0026f4 <Spi_Init+0x14>
1c002700:	2a0005ac 	ld.bu	$r12,$r13,1(0x1)
1c002704:	0340058c 	andi	$r12,$r12,0x1
1c002708:	44001980 	bnez	$r12,24(0x18) # 1c002720 <Spi_Init+0x40>
1c00270c:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c002710:	2a0009ac 	ld.bu	$r12,$r13,2(0x2)
1c002714:	2a0005ac 	ld.bu	$r12,$r13,1(0x1)
1c002718:	0340058c 	andi	$r12,$r12,0x1
1c00271c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c002710 <Spi_Init+0x30>
1c002720:	4c000020 	jirl	$r0,$r1,0
1c002724:	03400000 	andi	$r0,$r0,0x0
1c002728:	03400000 	andi	$r0,$r0,0x0
1c00272c:	03400000 	andi	$r0,$r0,0x0

1c002730 <Spi_Write_Read_1to4>:
Spi_Write_Read_1to4():
1c002730:	02bffc10 	addi.w	$r16,$r0,-1(0xfff)
1c002734:	400024a0 	beqz	$r5,36(0x24) # 1c002758 <Spi_Write_Read_1to4+0x28>
1c002738:	0015008c 	move	$r12,$r4
1c00273c:	0010148f 	add.w	$r15,$r4,$r5
1c002740:	157fce0e 	lu12i.w	$r14,-262544(0xbfe70)
1c002744:	2a00018d 	ld.bu	$r13,$r12,0
1c002748:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00274c:	290009cd 	st.b	$r13,$r14,2(0x2)
1c002750:	5ffff58f 	bne	$r12,$r15,-12(0x3fff4) # 1c002744 <Spi_Write_Read_1to4+0x14>
1c002754:	02bffcb0 	addi.w	$r16,$r5,-1(0xfff)
1c002758:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c00275c:	03400000 	andi	$r0,$r0,0x0
1c002760:	2a0005ac 	ld.bu	$r12,$r13,1(0x1)
1c002764:	0340118c 	andi	$r12,$r12,0x4
1c002768:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c002760 <Spi_Write_Read_1to4+0x30>
1c00276c:	02bffc8e 	addi.w	$r14,$r4,-1(0xfff)
1c002770:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002774:	0015008c 	move	$r12,$r4
1c002778:	157fce0f 	lu12i.w	$r15,-262544(0xbfe70)
1c00277c:	001015ce 	add.w	$r14,$r14,$r5
1c002780:	580014ad 	beq	$r5,$r13,20(0x14) # 1c002794 <Spi_Write_Read_1to4+0x64>
1c002784:	2a0009ed 	ld.bu	$r13,$r15,2(0x2)
1c002788:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00278c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c002790:	5ffff5cc 	bne	$r14,$r12,-12(0x3fff4) # 1c002784 <Spi_Write_Read_1to4+0x54>
1c002794:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c002798:	2a0005ac 	ld.bu	$r12,$r13,1(0x1)
1c00279c:	0340058c 	andi	$r12,$r12,0x1
1c0027a0:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c002798 <Spi_Write_Read_1to4+0x68>
1c0027a4:	2a0009ac 	ld.bu	$r12,$r13,2(0x2)
1c0027a8:	00104084 	add.w	$r4,$r4,$r16
1c0027ac:	2900008c 	st.b	$r12,$r4,0
1c0027b0:	4c000020 	jirl	$r0,$r1,0
1c0027b4:	03400000 	andi	$r0,$r0,0x0
1c0027b8:	03400000 	andi	$r0,$r0,0x0
1c0027bc:	03400000 	andi	$r0,$r0,0x0

1c0027c0 <Spi_Send>:
Spi_Send():
1c0027c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0027c4:	157fce11 	lu12i.w	$r17,-262544(0xbfe70)
1c0027c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0027cc:	2a00162c 	ld.bu	$r12,$r17,5(0x5)
1c0027d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0027d4:	0380098c 	ori	$r12,$r12,0x2
1c0027d8:	2900162c 	st.b	$r12,$r17,5(0x5)
1c0027dc:	2a00162c 	ld.bu	$r12,$r17,5(0x5)
1c0027e0:	03437d8c 	andi	$r12,$r12,0xdf
1c0027e4:	2900162c 	st.b	$r12,$r17,5(0x5)
1c0027e8:	57ff4bff 	bl	-184(0xfffff48) # 1c002730 <Spi_Write_Read_1to4>
1c0027ec:	2a00162c 	ld.bu	$r12,$r17,5(0x5)
1c0027f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0027f4:	0380098c 	ori	$r12,$r12,0x2
1c0027f8:	2900162c 	st.b	$r12,$r17,5(0x5)
1c0027fc:	2a00162c 	ld.bu	$r12,$r17,5(0x5)
1c002800:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002804:	0380818c 	ori	$r12,$r12,0x20
1c002808:	2900162c 	st.b	$r12,$r17,5(0x5)
1c00280c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002810:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002814:	4c000020 	jirl	$r0,$r1,0
1c002818:	03400000 	andi	$r0,$r0,0x0
1c00281c:	03400000 	andi	$r0,$r0,0x0

1c002820 <printbase>:
printbase():
1c002820:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c002824:	29816077 	st.w	$r23,$r3,88(0x58)
1c002828:	29815078 	st.w	$r24,$r3,84(0x54)
1c00282c:	29817061 	st.w	$r1,$r3,92(0x5c)
1c002830:	29814079 	st.w	$r25,$r3,80(0x50)
1c002834:	00150098 	move	$r24,$r4
1c002838:	001500b7 	move	$r23,$r5
1c00283c:	400008e0 	beqz	$r7,8(0x8) # 1c002844 <printbase+0x24>
1c002840:	6000b880 	blt	$r4,$r0,184(0xb8) # 1c0028f8 <printbase+0xd8>
1c002844:	4000d300 	beqz	$r24,208(0xd0) # 1c002914 <printbase+0xf4>
1c002848:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c00284c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002850:	001131ce 	sub.w	$r14,$r14,$r12
1c002854:	50000800 	b	8(0x8) # 1c00285c <printbase+0x3c>
1c002858:	001501b8 	move	$r24,$r13
1c00285c:	00219b0d 	mod.wu	$r13,$r24,$r6
1c002860:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c002868 <printbase+0x48>
1c002864:	002a0007 	break	0x7
1c002868:	2900018d 	st.b	$r13,$r12,0
1c00286c:	001031d9 	add.w	$r25,$r14,$r12
1c002870:	00211b0d 	div.wu	$r13,$r24,$r6
1c002874:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c00287c <printbase+0x5c>
1c002878:	002a0007 	break	0x7
1c00287c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002880:	6fffdb06 	bgeu	$r24,$r6,-40(0x3ffd8) # 1c002858 <printbase+0x38>
1c002884:	001266ec 	slt	$r12,$r23,$r25
1c002888:	0013b2f7 	masknez	$r23,$r23,$r12
1c00288c:	0013332c 	maskeqz	$r12,$r25,$r12
1c002890:	001532f7 	or	$r23,$r23,$r12
1c002894:	02802418 	addi.w	$r24,$r0,9(0x9)
1c002898:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c00289c:	00105d8c 	add.w	$r12,$r12,$r23
1c0028a0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0028a4:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0028a8:	60002b37 	blt	$r25,$r23,40(0x28) # 1c0028d0 <printbase+0xb0>
1c0028ac:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
1c0028b0:	0280c18d 	addi.w	$r13,$r12,48(0x30)
1c0028b4:	02815d85 	addi.w	$r5,$r12,87(0x57)
1c0028b8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0028bc:	0012330c 	slt	$r12,$r24,$r12
1c0028c0:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
1c0028c4:	001330a5 	maskeqz	$r5,$r5,$r12
1c0028c8:	0013b1ac 	masknez	$r12,$r13,$r12
1c0028cc:	001530a5 	or	$r5,$r5,$r12
1c0028d0:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c0028d4:	5404ec00 	bl	1260(0x4ec) # 1c002dc0 <UART_SendData>
1c0028d8:	47ffc2ff 	bnez	$r23,-64(0x7fffc0) # 1c002898 <printbase+0x78>
1c0028dc:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c0028e0:	28816077 	ld.w	$r23,$r3,88(0x58)
1c0028e4:	28815078 	ld.w	$r24,$r3,84(0x54)
1c0028e8:	28814079 	ld.w	$r25,$r3,80(0x50)
1c0028ec:	00150004 	move	$r4,$r0
1c0028f0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0028f4:	4c000020 	jirl	$r0,$r1,0
1c0028f8:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c0028fc:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002900:	29803066 	st.w	$r6,$r3,12(0xc)
1c002904:	5404bc00 	bl	1212(0x4bc) # 1c002dc0 <UART_SendData>
1c002908:	00116018 	sub.w	$r24,$r0,$r24
1c00290c:	28803066 	ld.w	$r6,$r3,12(0xc)
1c002910:	53ff3bff 	b	-200(0xfffff38) # 1c002848 <printbase+0x28>
1c002914:	67ffc817 	bge	$r0,$r23,-56(0x3ffc8) # 1c0028dc <printbase+0xbc>
1c002918:	00150019 	move	$r25,$r0
1c00291c:	53ff7bff 	b	-136(0xfffff78) # 1c002894 <printbase+0x74>

1c002920 <puts>:
puts():
1c002920:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002924:	29803061 	st.w	$r1,$r3,12(0xc)
1c002928:	29802077 	st.w	$r23,$r3,8(0x8)
1c00292c:	29801078 	st.w	$r24,$r3,4(0x4)
1c002930:	29800079 	st.w	$r25,$r3,0
1c002934:	28000097 	ld.b	$r23,$r4,0
1c002938:	40004ee0 	beqz	$r23,76(0x4c) # 1c002984 <puts+0x64>
1c00293c:	00150098 	move	$r24,$r4
1c002940:	02802819 	addi.w	$r25,$r0,10(0xa)
1c002944:	50001800 	b	24(0x18) # 1c00295c <puts+0x3c>
1c002948:	006782e5 	bstrpick.w	$r5,$r23,0x7,0x0
1c00294c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002950:	54047000 	bl	1136(0x470) # 1c002dc0 <UART_SendData>
1c002954:	28000317 	ld.b	$r23,$r24,0
1c002958:	40002ee0 	beqz	$r23,44(0x2c) # 1c002984 <puts+0x64>
1c00295c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c002960:	5fffeaf9 	bne	$r23,$r25,-24(0x3ffe8) # 1c002948 <puts+0x28>
1c002964:	02803405 	addi.w	$r5,$r0,13(0xd)
1c002968:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00296c:	54045400 	bl	1108(0x454) # 1c002dc0 <UART_SendData>
1c002970:	006782e5 	bstrpick.w	$r5,$r23,0x7,0x0
1c002974:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002978:	54044800 	bl	1096(0x448) # 1c002dc0 <UART_SendData>
1c00297c:	28000317 	ld.b	$r23,$r24,0
1c002980:	47ffdeff 	bnez	$r23,-36(0x7fffdc) # 1c00295c <puts+0x3c>
1c002984:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002988:	28802077 	ld.w	$r23,$r3,8(0x8)
1c00298c:	28801078 	ld.w	$r24,$r3,4(0x4)
1c002990:	28800079 	ld.w	$r25,$r3,0
1c002994:	00150004 	move	$r4,$r0
1c002998:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00299c:	4c000020 	jirl	$r0,$r1,0

1c0029a0 <myprintf>:
myprintf():
1c0029a0:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c0029a4:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0029a8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029ac:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0029b0:	29809078 	st.w	$r24,$r3,36(0x24)
1c0029b4:	29808079 	st.w	$r25,$r3,32(0x20)
1c0029b8:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0029bc:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0029c0:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0029c4:	2980d065 	st.w	$r5,$r3,52(0x34)
1c0029c8:	2980e066 	st.w	$r6,$r3,56(0x38)
1c0029cc:	28000097 	ld.b	$r23,$r4,0
1c0029d0:	0280d07c 	addi.w	$r28,$r3,52(0x34)
1c0029d4:	2980f067 	st.w	$r7,$r3,60(0x3c)
1c0029d8:	29810068 	st.w	$r8,$r3,64(0x40)
1c0029dc:	29811069 	st.w	$r9,$r3,68(0x44)
1c0029e0:	2981206a 	st.w	$r10,$r3,72(0x48)
1c0029e4:	2981306b 	st.w	$r11,$r3,76(0x4c)
1c0029e8:	2980307c 	st.w	$r28,$r3,12(0xc)
1c0029ec:	400086e0 	beqz	$r23,132(0x84) # 1c002a70 <myprintf+0xd0>
1c0029f0:	0015009a 	move	$r26,$r4
1c0029f4:	00150019 	move	$r25,$r0
1c0029f8:	0280281b 	addi.w	$r27,$r0,10(0xa)
1c0029fc:	1c00009d 	pcaddu12i	$r29,4(0x4)
1c002a00:	02a9e3bd 	addi.w	$r29,$r29,-1416(0xa78)
1c002a04:	50002000 	b	32(0x20) # 1c002a24 <myprintf+0x84>
1c002a08:	006782e5 	bstrpick.w	$r5,$r23,0x7,0x0
1c002a0c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002a10:	00106357 	add.w	$r23,$r26,$r24
1c002a14:	00150319 	move	$r25,$r24
1c002a18:	5403a800 	bl	936(0x3a8) # 1c002dc0 <UART_SendData>
1c002a1c:	280002f7 	ld.b	$r23,$r23,0
1c002a20:	400052e0 	beqz	$r23,80(0x50) # 1c002a70 <myprintf+0xd0>
1c002a24:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002a28:	02800738 	addi.w	$r24,$r25,1(0x1)
1c002a2c:	58001aec 	beq	$r23,$r12,24(0x18) # 1c002a44 <myprintf+0xa4>
1c002a30:	5fffdafb 	bne	$r23,$r27,-40(0x3ffd8) # 1c002a08 <myprintf+0x68>
1c002a34:	02803405 	addi.w	$r5,$r0,13(0xd)
1c002a38:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002a3c:	54038400 	bl	900(0x384) # 1c002dc0 <UART_SendData>
1c002a40:	53ffcbff 	b	-56(0xfffffc8) # 1c002a08 <myprintf+0x68>
1c002a44:	0010674c 	add.w	$r12,$r26,$r25
1c002a48:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c002a4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a50:	02814c0f 	addi.w	$r15,$r0,83(0x53)
1c002a54:	0280200e 	addi.w	$r14,$r0,8(0x8)
1c002a58:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c002a5c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a60:	6801a1ec 	bltu	$r15,$r12,416(0x1a0) # 1c002c00 <myprintf+0x260>
1c002a64:	0004f58c 	alsl.w	$r12,$r12,$r29,0x2
1c002a68:	2880018c 	ld.w	$r12,$r12,0
1c002a6c:	4c000180 	jirl	$r0,$r12,0
1c002a70:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a74:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c002a78:	28809078 	ld.w	$r24,$r3,36(0x24)
1c002a7c:	28808079 	ld.w	$r25,$r3,32(0x20)
1c002a80:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c002a84:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c002a88:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c002a8c:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c002a90:	00150004 	move	$r4,$r0
1c002a94:	02814063 	addi.w	$r3,$r3,80(0x50)
1c002a98:	4c000020 	jirl	$r0,$r1,0
1c002a9c:	03400000 	andi	$r0,$r0,0x0
1c002aa0:	00150005 	move	$r5,$r0
1c002aa4:	50000800 	b	8(0x8) # 1c002aac <myprintf+0x10c>
1c002aa8:	02800718 	addi.w	$r24,$r24,1(0x1)
1c002aac:	001c6ca5 	mul.w	$r5,$r5,$r27
1c002ab0:	0010634c 	add.w	$r12,$r26,$r24
1c002ab4:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
1c002ab8:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c002abc:	00150319 	move	$r25,$r24
1c002ac0:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c002ac4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ac8:	00101605 	add.w	$r5,$r16,$r5
1c002acc:	6fffddcc 	bgeu	$r14,$r12,-36(0x3ffdc) # 1c002aa8 <myprintf+0x108>
1c002ad0:	02800738 	addi.w	$r24,$r25,1(0x1)
1c002ad4:	53ff87ff 	b	-124(0xfffff84) # 1c002a58 <myprintf+0xb8>
1c002ad8:	28800384 	ld.w	$r4,$r28,0
1c002adc:	02800b39 	addi.w	$r25,$r25,2(0x2)
1c002ae0:	00150007 	move	$r7,$r0
1c002ae4:	02800806 	addi.w	$r6,$r0,2(0x2)
1c002ae8:	0280139c 	addi.w	$r28,$r28,4(0x4)
1c002aec:	00106757 	add.w	$r23,$r26,$r25
1c002af0:	57fd33ff 	bl	-720(0xffffd30) # 1c002820 <printbase>
1c002af4:	53ff2bff 	b	-216(0xfffff28) # 1c002a1c <myprintf+0x7c>
1c002af8:	2a000385 	ld.bu	$r5,$r28,0
1c002afc:	02800b39 	addi.w	$r25,$r25,2(0x2)
1c002b00:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b04:	0280139c 	addi.w	$r28,$r28,4(0x4)
1c002b08:	00106757 	add.w	$r23,$r26,$r25
1c002b0c:	5402b400 	bl	692(0x2b4) # 1c002dc0 <UART_SendData>
1c002b10:	53ff0fff 	b	-244(0xfffff0c) # 1c002a1c <myprintf+0x7c>
1c002b14:	28800384 	ld.w	$r4,$r28,0
1c002b18:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002b1c:	02800b39 	addi.w	$r25,$r25,2(0x2)
1c002b20:	02802806 	addi.w	$r6,$r0,10(0xa)
1c002b24:	0280139c 	addi.w	$r28,$r28,4(0x4)
1c002b28:	00106757 	add.w	$r23,$r26,$r25
1c002b2c:	57fcf7ff 	bl	-780(0xffffcf4) # 1c002820 <printbase>
1c002b30:	53feefff 	b	-276(0xffffeec) # 1c002a1c <myprintf+0x7c>
1c002b34:	28800384 	ld.w	$r4,$r28,0
1c002b38:	02800b39 	addi.w	$r25,$r25,2(0x2)
1c002b3c:	00150007 	move	$r7,$r0
1c002b40:	02802006 	addi.w	$r6,$r0,8(0x8)
1c002b44:	0280139c 	addi.w	$r28,$r28,4(0x4)
1c002b48:	00106757 	add.w	$r23,$r26,$r25
1c002b4c:	57fcd7ff 	bl	-812(0xffffcd4) # 1c002820 <printbase>
1c002b50:	53fecfff 	b	-308(0xffffecc) # 1c002a1c <myprintf+0x7c>
1c002b54:	28800384 	ld.w	$r4,$r28,0
1c002b58:	02800b39 	addi.w	$r25,$r25,2(0x2)
1c002b5c:	00150007 	move	$r7,$r0
1c002b60:	02804006 	addi.w	$r6,$r0,16(0x10)
1c002b64:	0280139c 	addi.w	$r28,$r28,4(0x4)
1c002b68:	00106757 	add.w	$r23,$r26,$r25
1c002b6c:	57fcb7ff 	bl	-844(0xffffcb4) # 1c002820 <printbase>
1c002b70:	53feafff 	b	-340(0xffffeac) # 1c002a1c <myprintf+0x7c>
1c002b74:	28800384 	ld.w	$r4,$r28,0
1c002b78:	02800b39 	addi.w	$r25,$r25,2(0x2)
1c002b7c:	0280139c 	addi.w	$r28,$r28,4(0x4)
1c002b80:	00106757 	add.w	$r23,$r26,$r25
1c002b84:	57fd9fff 	bl	-612(0xffffd9c) # 1c002920 <puts>
1c002b88:	53fe97ff 	b	-364(0xffffe94) # 1c002a1c <myprintf+0x7c>
1c002b8c:	03400000 	andi	$r0,$r0,0x0
1c002b90:	28800384 	ld.w	$r4,$r28,0
1c002b94:	00150007 	move	$r7,$r0
1c002b98:	53ff87ff 	b	-124(0xfffff84) # 1c002b1c <myprintf+0x17c>
1c002b9c:	03400000 	andi	$r0,$r0,0x0
1c002ba0:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002ba4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002ba8:	02800b39 	addi.w	$r25,$r25,2(0x2)
1c002bac:	54021400 	bl	532(0x214) # 1c002dc0 <UART_SendData>
1c002bb0:	00106757 	add.w	$r23,$r26,$r25
1c002bb4:	53fe6bff 	b	-408(0xffffe68) # 1c002a1c <myprintf+0x7c>
1c002bb8:	00106759 	add.w	$r25,$r26,$r25
1c002bbc:	28000b2d 	ld.b	$r13,$r25,2(0x2)
1c002bc0:	00150005 	move	$r5,$r0
1c002bc4:	00150319 	move	$r25,$r24
1c002bc8:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c002bcc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002bd0:	6bff01cc 	bltu	$r14,$r12,-256(0x3ff00) # 1c002ad0 <myprintf+0x130>
1c002bd4:	001c6ca5 	mul.w	$r5,$r5,$r27
1c002bd8:	02800739 	addi.w	$r25,$r25,1(0x1)
1c002bdc:	0010674c 	add.w	$r12,$r26,$r25
1c002be0:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
1c002be4:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c002be8:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c002bec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002bf0:	00101605 	add.w	$r5,$r16,$r5
1c002bf4:	6fffe1cc 	bgeu	$r14,$r12,-32(0x3ffe0) # 1c002bd4 <myprintf+0x234>
1c002bf8:	02800738 	addi.w	$r24,$r25,1(0x1)
1c002bfc:	53fe5fff 	b	-420(0xffffe5c) # 1c002a58 <myprintf+0xb8>
1c002c00:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002c04:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002c08:	00106357 	add.w	$r23,$r26,$r24
1c002c0c:	00150319 	move	$r25,$r24
1c002c10:	5401b000 	bl	432(0x1b0) # 1c002dc0 <UART_SendData>
1c002c14:	53fe0bff 	b	-504(0xffffe08) # 1c002a1c <myprintf+0x7c>
1c002c18:	03400000 	andi	$r0,$r0,0x0
1c002c1c:	03400000 	andi	$r0,$r0,0x0

1c002c20 <UART_Init>:
UART_Init():
1c002c20:	2a00108d 	ld.bu	$r13,$r4,4(0x4)
1c002c24:	2a00108c 	ld.bu	$r12,$r4,4(0x4)
1c002c28:	03403dad 	andi	$r13,$r13,0xf
1c002c2c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002c30:	400135a0 	beqz	$r13,308(0x134) # 1c002d64 <UART_Init+0x144>
1c002c34:	0044918c 	srli.w	$r12,$r12,0x4
1c002c38:	40012d80 	beqz	$r12,300(0x12c) # 1c002d64 <UART_Init+0x144>
1c002c3c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002c40:	5801388c 	beq	$r4,$r12,312(0x138) # 1c002d78 <UART_Init+0x158>
1c002c44:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c002c48:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002c4c:	29000c8e 	st.b	$r14,$r4,3(0x3)
1c002c50:	001501b0 	move	$r16,$r13
1c002c54:	58000c8c 	beq	$r4,$r12,12(0xc) # 1c002c60 <UART_Init+0x40>
1c002c58:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002c5c:	5c01308c 	bne	$r4,$r12,304(0x130) # 1c002d8c <UART_Init+0x16c>
1c002c60:	288000af 	ld.w	$r15,$r5,0
1c002c64:	288010ac 	ld.w	$r12,$r5,4(0x4)
1c002c68:	001c35f1 	mul.w	$r17,$r15,$r13
1c002c6c:	00213d92 	div.wu	$r18,$r12,$r15
1c002c70:	5c0009e0 	bne	$r15,$r0,8(0x8) # 1c002c78 <UART_Init+0x58>
1c002c74:	002a0007 	break	0x7
1c002c78:	0021364e 	div.wu	$r14,$r18,$r13
1c002c7c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002c84 <UART_Init+0x64>
1c002c80:	002a0007 	break	0x7
1c002c84:	001c3a2d 	mul.w	$r13,$r17,$r14
1c002c88:	0011358c 	sub.w	$r12,$r12,$r13
1c002c8c:	0283fc12 	addi.w	$r18,$r0,255(0xff)
1c002c90:	001c498c 	mul.w	$r12,$r12,$r18
1c002c94:	2a000c8d 	ld.bu	$r13,$r4,3(0x3)
1c002c98:	006781d1 	bstrpick.w	$r17,$r14,0x7,0x0
1c002c9c:	006fa1ce 	bstrpick.w	$r14,$r14,0xf,0x8
1c002ca0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002ca4:	038201ad 	ori	$r13,$r13,0x80
1c002ca8:	29000c8d 	st.b	$r13,$r4,3(0x3)
1c002cac:	29000091 	st.b	$r17,$r4,0
1c002cb0:	2900048e 	st.b	$r14,$r4,1(0x1)
1c002cb4:	00213d8d 	div.wu	$r13,$r12,$r15
1c002cb8:	5c0009e0 	bne	$r15,$r0,8(0x8) # 1c002cc0 <UART_Init+0xa0>
1c002cbc:	002a0007 	break	0x7
1c002cc0:	002141ac 	div.wu	$r12,$r13,$r16
1c002cc4:	5c000a00 	bne	$r16,$r0,8(0x8) # 1c002ccc <UART_Init+0xac>
1c002cc8:	002a0007 	break	0x7
1c002ccc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002cd0:	2900088c 	st.b	$r12,$r4,2(0x2)
1c002cd4:	2a000c8c 	ld.bu	$r12,$r4,3(0x3)
1c002cd8:	0341fd8c 	andi	$r12,$r12,0x7f
1c002cdc:	29000c8c 	st.b	$r12,$r4,3(0x3)
1c002ce0:	29000480 	st.b	$r0,$r4,1(0x1)
1c002ce4:	2a000c8d 	ld.bu	$r13,$r4,3(0x3)
1c002ce8:	2a0028ac 	ld.bu	$r12,$r5,10(0xa)
1c002cec:	0015358c 	or	$r12,$r12,$r13
1c002cf0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002cf4:	29000c8c 	st.b	$r12,$r4,3(0x3)
1c002cf8:	2a000c8d 	ld.bu	$r13,$r4,3(0x3)
1c002cfc:	2a0034ac 	ld.bu	$r12,$r5,13(0xd)
1c002d00:	0015358c 	or	$r12,$r12,$r13
1c002d04:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d08:	29000c8c 	st.b	$r12,$r4,3(0x3)
1c002d0c:	2a000c8d 	ld.bu	$r13,$r4,3(0x3)
1c002d10:	2a0038ac 	ld.bu	$r12,$r5,14(0xe)
1c002d14:	0015358c 	or	$r12,$r12,$r13
1c002d18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d1c:	29000c8c 	st.b	$r12,$r4,3(0x3)
1c002d20:	2a000c8d 	ld.bu	$r13,$r4,3(0x3)
1c002d24:	2a002cac 	ld.bu	$r12,$r5,11(0xb)
1c002d28:	0015358c 	or	$r12,$r12,$r13
1c002d2c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d30:	29000c8c 	st.b	$r12,$r4,3(0x3)
1c002d34:	2a000c8d 	ld.bu	$r13,$r4,3(0x3)
1c002d38:	2a003cac 	ld.bu	$r12,$r5,15(0xf)
1c002d3c:	0015358c 	or	$r12,$r12,$r13
1c002d40:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d44:	29000c8c 	st.b	$r12,$r4,3(0x3)
1c002d48:	2a000c8d 	ld.bu	$r13,$r4,3(0x3)
1c002d4c:	2a0030ac 	ld.bu	$r12,$r5,12(0xc)
1c002d50:	0015358c 	or	$r12,$r12,$r13
1c002d54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d58:	29000c8c 	st.b	$r12,$r4,3(0x3)
1c002d5c:	2a00008c 	ld.bu	$r12,$r4,0
1c002d60:	4c000020 	jirl	$r0,$r1,0
1c002d64:	0280e00c 	addi.w	$r12,$r0,56(0x38)
1c002d68:	2900108c 	st.b	$r12,$r4,4(0x4)
1c002d6c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002d70:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c002d74:	5ffed08c 	bne	$r4,$r12,-304(0x3fed0) # 1c002c44 <UART_Init+0x24>
1c002d78:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c002d7c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002d80:	2900108d 	st.b	$r13,$r4,4(0x4)
1c002d84:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c002d88:	29000c8c 	st.b	$r12,$r4,3(0x3)
1c002d8c:	288000af 	ld.w	$r15,$r5,0
1c002d90:	1400010c 	lu12i.w	$r12,8(0x8)
1c002d94:	001c41ed 	mul.w	$r13,$r15,$r16
1c002d98:	00213d91 	div.wu	$r17,$r12,$r15
1c002d9c:	5c0009e0 	bne	$r15,$r0,8(0x8) # 1c002da4 <UART_Init+0x184>
1c002da0:	002a0007 	break	0x7
1c002da4:	0021422e 	div.wu	$r14,$r17,$r16
1c002da8:	5c000a00 	bne	$r16,$r0,8(0x8) # 1c002db0 <UART_Init+0x190>
1c002dac:	002a0007 	break	0x7
1c002db0:	001c39ad 	mul.w	$r13,$r13,$r14
1c002db4:	0011358c 	sub.w	$r12,$r12,$r13
1c002db8:	53fed7ff 	b	-300(0xffffed4) # 1c002c8c <UART_Init+0x6c>
1c002dbc:	03400000 	andi	$r0,$r0,0x0

1c002dc0 <UART_SendData>:
UART_SendData():
1c002dc0:	2a00148c 	ld.bu	$r12,$r4,5(0x5)
1c002dc4:	0340818c 	andi	$r12,$r12,0x20
1c002dc8:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c002dc0 <UART_SendData>
1c002dcc:	29000085 	st.b	$r5,$r4,0
1c002dd0:	4c000020 	jirl	$r0,$r1,0
1c002dd4:	03400000 	andi	$r0,$r0,0x0
1c002dd8:	03400000 	andi	$r0,$r0,0x0
1c002ddc:	03400000 	andi	$r0,$r0,0x0

1c002de0 <UART_ReceiveData>:
UART_ReceiveData():
1c002de0:	2a00148c 	ld.bu	$r12,$r4,5(0x5)
1c002de4:	0340058c 	andi	$r12,$r12,0x1
1c002de8:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c002de0 <UART_ReceiveData>
1c002dec:	2a000084 	ld.bu	$r4,$r4,0
1c002df0:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c002df4:	4c000020 	jirl	$r0,$r1,0
1c002df8:	03400000 	andi	$r0,$r0,0x0
1c002dfc:	03400000 	andi	$r0,$r0,0x0

1c002e00 <Uart0_init>:
Uart0_init():
1c002e00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e04:	29806077 	st.w	$r23,$r3,24(0x18)
1c002e08:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002e0c:	00150097 	move	$r23,$r4
1c002e10:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002e14:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002e18:	57f73bff 	bl	-2248(0xffff738) # 1c002550 <gpio_pin_remap>
1c002e1c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002e20:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002e24:	57f72fff 	bl	-2260(0xffff72c) # 1c002550 <gpio_pin_remap>
1c002e28:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002e2c:	2887c18c 	ld.w	$r12,$r12,496(0x1f0)
1c002e30:	2880018c 	ld.w	$r12,$r12,0
1c002e34:	1400060d 	lu12i.w	$r13,48(0x30)
1c002e38:	00150065 	move	$r5,$r3
1c002e3c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002e40:	29800077 	st.w	$r23,$r3,0
1c002e44:	2980106c 	st.w	$r12,$r3,4(0x4)
1c002e48:	2980206d 	st.w	$r13,$r3,8(0x8)
1c002e4c:	29803060 	st.w	$r0,$r3,12(0xc)
1c002e50:	57fdd3ff 	bl	-560(0xffffdd0) # 1c002c20 <UART_Init>
1c002e54:	157fd40d 	lu12i.w	$r13,-262496(0xbfea0)
1c002e58:	038009af 	ori	$r15,$r13,0x2
1c002e5c:	2a0001ec 	ld.bu	$r12,$r15,0
1c002e60:	157fd00e 	lu12i.w	$r14,-262528(0xbfe80)
1c002e64:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002e68:	0380218c 	ori	$r12,$r12,0x8
1c002e6c:	290001ec 	st.b	$r12,$r15,0
1c002e70:	2a0001ac 	ld.bu	$r12,$r13,0
1c002e74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002e78:	0380218c 	ori	$r12,$r12,0x8
1c002e7c:	290001ac 	st.b	$r12,$r13,0
1c002e80:	2a0005cc 	ld.bu	$r12,$r14,1(0x1)
1c002e84:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002e88:	0380058c 	ori	$r12,$r12,0x1
1c002e8c:	290005cc 	st.b	$r12,$r14,1(0x1)
1c002e90:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002e94:	28806077 	ld.w	$r23,$r3,24(0x18)
1c002e98:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e9c:	4c000020 	jirl	$r0,$r1,0

1c002ea0 <Uart1_init>:
Uart1_init():
1c002ea0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ea4:	29806077 	st.w	$r23,$r3,24(0x18)
1c002ea8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002eac:	00150097 	move	$r23,$r4
1c002eb0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002eb4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002eb8:	57f69bff 	bl	-2408(0xffff698) # 1c002550 <gpio_pin_remap>
1c002ebc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ec0:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002ec4:	57f68fff 	bl	-2420(0xffff68c) # 1c002550 <gpio_pin_remap>
1c002ec8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ecc:	2885418c 	ld.w	$r12,$r12,336(0x150)
1c002ed0:	2880018c 	ld.w	$r12,$r12,0
1c002ed4:	1400060d 	lu12i.w	$r13,48(0x30)
1c002ed8:	00150065 	move	$r5,$r3
1c002edc:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002ee0:	29800077 	st.w	$r23,$r3,0
1c002ee4:	2980106c 	st.w	$r12,$r3,4(0x4)
1c002ee8:	2980206d 	st.w	$r13,$r3,8(0x8)
1c002eec:	29803060 	st.w	$r0,$r3,12(0xc)
1c002ef0:	57fd33ff 	bl	-720(0xffffd30) # 1c002c20 <UART_Init>
1c002ef4:	157fd40d 	lu12i.w	$r13,-262496(0xbfea0)
1c002ef8:	038009af 	ori	$r15,$r13,0x2
1c002efc:	2a0001ec 	ld.bu	$r12,$r15,0
1c002f00:	157fd10e 	lu12i.w	$r14,-262520(0xbfe88)
1c002f04:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002f08:	0380118c 	ori	$r12,$r12,0x4
1c002f0c:	290001ec 	st.b	$r12,$r15,0
1c002f10:	2a0001ac 	ld.bu	$r12,$r13,0
1c002f14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002f18:	0380118c 	ori	$r12,$r12,0x4
1c002f1c:	290001ac 	st.b	$r12,$r13,0
1c002f20:	2a0005cc 	ld.bu	$r12,$r14,1(0x1)
1c002f24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002f28:	0380058c 	ori	$r12,$r12,0x1
1c002f2c:	290005cc 	st.b	$r12,$r14,1(0x1)
1c002f30:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002f34:	28806077 	ld.w	$r23,$r3,24(0x18)
1c002f38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f3c:	4c000020 	jirl	$r0,$r1,0

1c002f40 <Uart0_send>:
Uart0_send():
1c002f40:	157fd00d 	lu12i.w	$r13,-262528(0xbfe80)
1c002f44:	2a0015ac 	ld.bu	$r12,$r13,5(0x5)
1c002f48:	0340818c 	andi	$r12,$r12,0x20
1c002f4c:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c002f44 <Uart0_send+0x4>
1c002f50:	290001a4 	st.b	$r4,$r13,0
1c002f54:	4c000020 	jirl	$r0,$r1,0
1c002f58:	03400000 	andi	$r0,$r0,0x0
1c002f5c:	03400000 	andi	$r0,$r0,0x0

1c002f60 <Uart1_send>:
Uart1_send():
1c002f60:	157fd10d 	lu12i.w	$r13,-262520(0xbfe88)
1c002f64:	2a0015ac 	ld.bu	$r12,$r13,5(0x5)
1c002f68:	0340818c 	andi	$r12,$r12,0x20
1c002f6c:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c002f64 <Uart1_send+0x4>
1c002f70:	290001a4 	st.b	$r4,$r13,0
1c002f74:	4c000020 	jirl	$r0,$r1,0
1c002f78:	03400000 	andi	$r0,$r0,0x0
1c002f7c:	03400000 	andi	$r0,$r0,0x0

1c002f80 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002f80:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c002f84:	14200010 	lu12i.w	$r16,65536(0x10000)
1c002f88:	14400012 	lu12i.w	$r18,131072(0x20000)
1c002f8c:	02bf7c11 	addi.w	$r17,$r0,-33(0xfdf)
1c002f90:	038011af 	ori	$r15,$r13,0x4
1c002f94:	288001ec 	ld.w	$r12,$r15,0
1c002f98:	0014c18c 	and	$r12,$r12,$r16
1c002f9c:	40001180 	beqz	$r12,16(0x10) # 1c002fac <CLOCK_WaitForLSEStartUp+0x2c>
1c002fa0:	288001ec 	ld.w	$r12,$r15,0
1c002fa4:	0014c98c 	and	$r12,$r12,$r18
1c002fa8:	40005d80 	beqz	$r12,92(0x5c) # 1c003004 <CLOCK_WaitForLSEStartUp+0x84>
1c002fac:	288001ae 	ld.w	$r14,$r13,0
1c002fb0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002fb4:	0014c5ce 	and	$r14,$r14,$r17
1c002fb8:	298001ae 	st.w	$r14,$r13,0
1c002fbc:	03400000 	andi	$r0,$r0,0x0
1c002fc0:	03400000 	andi	$r0,$r0,0x0
1c002fc4:	03400000 	andi	$r0,$r0,0x0
1c002fc8:	03400000 	andi	$r0,$r0,0x0
1c002fcc:	03400000 	andi	$r0,$r0,0x0
1c002fd0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002fd4:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c002fc0 <CLOCK_WaitForLSEStartUp+0x40>
1c002fd8:	288001ae 	ld.w	$r14,$r13,0
1c002fdc:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002fe0:	038081ce 	ori	$r14,$r14,0x20
1c002fe4:	298001ae 	st.w	$r14,$r13,0
1c002fe8:	03400000 	andi	$r0,$r0,0x0
1c002fec:	03400000 	andi	$r0,$r0,0x0
1c002ff0:	03400000 	andi	$r0,$r0,0x0
1c002ff4:	03400000 	andi	$r0,$r0,0x0
1c002ff8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002ffc:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c002fe8 <CLOCK_WaitForLSEStartUp+0x68>
1c003000:	53ff97ff 	b	-108(0xfffff94) # 1c002f94 <CLOCK_WaitForLSEStartUp+0x14>
1c003004:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003008:	4c000020 	jirl	$r0,$r1,0
1c00300c:	03400000 	andi	$r0,$r0,0x0

1c003010 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c003010:	157fd60e 	lu12i.w	$r14,-262480(0xbfeb0)
1c003014:	288001cd 	ld.w	$r13,$r14,0
1c003018:	1400002c 	lu12i.w	$r12,1(0x1)
1c00301c:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c003020:	001691ad 	andn	$r13,$r13,$r4
1c003024:	298001cd 	st.w	$r13,$r14,0
1c003028:	03400000 	andi	$r0,$r0,0x0
1c00302c:	03400000 	andi	$r0,$r0,0x0
1c003030:	03400000 	andi	$r0,$r0,0x0
1c003034:	03400000 	andi	$r0,$r0,0x0
1c003038:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00303c:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003028 <CLOCK_HSEConfig+0x18>
1c003040:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003044:	5800208c 	beq	$r4,$r12,32(0x20) # 1c003064 <CLOCK_HSEConfig+0x54>
1c003048:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00304c:	288001ac 	ld.w	$r12,$r13,0
1c003050:	02bdfc0e 	addi.w	$r14,$r0,-129(0xf7f)
1c003054:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003058:	0014b98c 	and	$r12,$r12,$r14
1c00305c:	298001ac 	st.w	$r12,$r13,0
1c003060:	4c000020 	jirl	$r0,$r1,0
1c003064:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003068:	2880018d 	ld.w	$r13,$r12,0
1c00306c:	038101ad 	ori	$r13,$r13,0x40
1c003070:	2980018d 	st.w	$r13,$r12,0
1c003074:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003078:	64002180 	bge	$r12,$r0,32(0x20) # 1c003098 <CLOCK_HSEConfig+0x88>
1c00307c:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003080:	02bdfc0e 	addi.w	$r14,$r0,-129(0xf7f)
1c003084:	288001ac 	ld.w	$r12,$r13,0
1c003088:	0014b98c 	and	$r12,$r12,$r14
1c00308c:	298001ac 	st.w	$r12,$r13,0
1c003090:	288011ac 	ld.w	$r12,$r13,4(0x4)
1c003094:	63fff180 	blt	$r12,$r0,-16(0x3fff0) # 1c003084 <CLOCK_HSEConfig+0x74>
1c003098:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00309c:	288001ac 	ld.w	$r12,$r13,0
1c0030a0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0030a4:	0382018c 	ori	$r12,$r12,0x80
1c0030a8:	298001ac 	st.w	$r12,$r13,0
1c0030ac:	4c000020 	jirl	$r0,$r1,0

1c0030b0 <CLOCK_Init>:
CLOCK_Init():
1c0030b0:	157fd60f 	lu12i.w	$r15,-262480(0xbfeb0)
1c0030b4:	288001ee 	ld.w	$r14,$r15,0
1c0030b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030bc:	02b3fc11 	addi.w	$r17,$r0,-769(0xcff)
1c0030c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0030c4:	0014c5ce 	and	$r14,$r14,$r17
1c0030c8:	298001ee 	st.w	$r14,$r15,0
1c0030cc:	15ffffec 	lu12i.w	$r12,-1(0xfffff)
1c0030d0:	288001ee 	ld.w	$r14,$r15,0
1c0030d4:	039ffd8d 	ori	$r13,$r12,0x7ff
1c0030d8:	2880408c 	ld.w	$r12,$r4,16(0x10)
1c0030dc:	02bfbc10 	addi.w	$r16,$r0,-17(0xfef)
1c0030e0:	00150093 	move	$r19,$r4
1c0030e4:	001531ce 	or	$r14,$r14,$r12
1c0030e8:	298001ee 	st.w	$r14,$r15,0
1c0030ec:	288001ec 	ld.w	$r12,$r15,0
1c0030f0:	0014c18c 	and	$r12,$r12,$r16
1c0030f4:	298001ec 	st.w	$r12,$r15,0
1c0030f8:	288001ec 	ld.w	$r12,$r15,0
1c0030fc:	2880308e 	ld.w	$r14,$r4,12(0xc)
1c003100:	0015398c 	or	$r12,$r12,$r14
1c003104:	298001ec 	st.w	$r12,$r15,0
1c003108:	288001ec 	ld.w	$r12,$r15,0
1c00310c:	0014b58c 	and	$r12,$r12,$r13
1c003110:	298001ec 	st.w	$r12,$r15,0
1c003114:	2880508d 	ld.w	$r13,$r4,20(0x14)
1c003118:	288001ec 	ld.w	$r12,$r15,0
1c00311c:	0015358c 	or	$r12,$r12,$r13
1c003120:	298001ec 	st.w	$r12,$r15,0
1c003124:	28801084 	ld.w	$r4,$r4,4(0x4)
1c003128:	57feebff 	bl	-280(0xffffee8) # 1c003010 <CLOCK_HSEConfig>
1c00312c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003130:	5c00a88c 	bne	$r4,$r12,168(0xa8) # 1c0031d8 <CLOCK_Init+0x128>
1c003134:	2880226d 	ld.w	$r13,$r19,8(0x8)
1c003138:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00313c:	00150094 	move	$r20,$r4
1c003140:	580091ac 	beq	$r13,$r12,144(0x90) # 1c0031d0 <CLOCK_Init+0x120>
1c003144:	288001ec 	ld.w	$r12,$r15,0
1c003148:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c00314c:	0014b58c 	and	$r12,$r12,$r13
1c003150:	298001ec 	st.w	$r12,$r15,0
1c003154:	2880126d 	ld.w	$r13,$r19,4(0x4)
1c003158:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c00315c:	580095ac 	beq	$r13,$r12,148(0x94) # 1c0031f0 <CLOCK_Init+0x140>
1c003160:	2880526c 	ld.w	$r12,$r19,20(0x14)
1c003164:	4000b180 	beqz	$r12,176(0xb0) # 1c003214 <CLOCK_Init+0x164>
1c003168:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00316c:	2880018e 	ld.w	$r14,$r12,0
1c003170:	15efffef 	lu12i.w	$r15,-32769(0xf7fff)
1c003174:	03bffdef 	ori	$r15,$r15,0xfff
1c003178:	0014bdce 	and	$r14,$r14,$r15
1c00317c:	2980018e 	st.w	$r14,$r12,0
1c003180:	2880018e 	ld.w	$r14,$r12,0
1c003184:	2880626f 	ld.w	$r15,$r19,24(0x18)
1c003188:	157e040d 	lu12i.w	$r13,-266208(0xbf020)
1c00318c:	0386c1ad 	ori	$r13,$r13,0x1b0
1c003190:	00153dce 	or	$r14,$r14,$r15
1c003194:	2980018e 	st.w	$r14,$r12,0
1c003198:	288001ac 	ld.w	$r12,$r13,0
1c00319c:	4000a580 	beqz	$r12,164(0xa4) # 1c003240 <CLOCK_Init+0x190>
1c0031a0:	288001ad 	ld.w	$r13,$r13,0
1c0031a4:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c0031a8:	028fa00f 	addi.w	$r15,$r0,1000(0x3e8)
1c0031ac:	004089ad 	slli.w	$r13,$r13,0x2
1c0031b0:	002041ac 	div.w	$r12,$r13,$r16
1c0031b4:	5c000a00 	bne	$r16,$r0,8(0x8) # 1c0031bc <CLOCK_Init+0x10c>
1c0031b8:	002a0007 	break	0x7
1c0031bc:	001c3d8c 	mul.w	$r12,$r12,$r15
1c0031c0:	1cc7ffce 	pcaddu12i	$r14,409598(0x63ffe)
1c0031c4:	02bab1ce 	addi.w	$r14,$r14,-340(0xeac)
1c0031c8:	298001cc 	st.w	$r12,$r14,0
1c0031cc:	50001000 	b	16(0x10) # 1c0031dc <CLOCK_Init+0x12c>
1c0031d0:	57fdb3ff 	bl	-592(0xffffdb0) # 1c002f80 <CLOCK_WaitForLSEStartUp>
1c0031d4:	5bff8094 	beq	$r4,$r20,-128(0x3ff80) # 1c003154 <CLOCK_Init+0xa4>
1c0031d8:	00150014 	move	$r20,$r0
1c0031dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0031e0:	00150284 	move	$r4,$r20
1c0031e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031e8:	4c000020 	jirl	$r0,$r1,0
1c0031ec:	03400000 	andi	$r0,$r0,0x0
1c0031f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0031f4:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c0031f8:	1cc7ffcd 	pcaddu12i	$r13,409598(0x63ffe)
1c0031fc:	02b9d1ad 	addi.w	$r13,$r13,-396(0xe74)
1c003200:	0388018c 	ori	$r12,$r12,0x200
1c003204:	298001ac 	st.w	$r12,$r13,0
1c003208:	00150284 	move	$r4,$r20
1c00320c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003210:	4c000020 	jirl	$r0,$r1,0
1c003214:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003218:	0386c18c 	ori	$r12,$r12,0x1b0
1c00321c:	2880018d 	ld.w	$r13,$r12,0
1c003220:	43ffd1bf 	beqz	$r13,-48(0x7fffd0) # 1c0031f0 <CLOCK_Init+0x140>
1c003224:	2880018c 	ld.w	$r12,$r12,0
1c003228:	028fa00e 	addi.w	$r14,$r0,1000(0x3e8)
1c00322c:	1cc7ffcd 	pcaddu12i	$r13,409598(0x63ffe)
1c003230:	02b901ad 	addi.w	$r13,$r13,-448(0xe40)
1c003234:	001c398c 	mul.w	$r12,$r12,$r14
1c003238:	298001ac 	st.w	$r12,$r13,0
1c00323c:	53ffa3ff 	b	-96(0xfffffa0) # 1c0031dc <CLOCK_Init+0x12c>
1c003240:	1401458c 	lu12i.w	$r12,2604(0xa2c)
1c003244:	1cc7ffcd 	pcaddu12i	$r13,409598(0x63ffe)
1c003248:	02b8a1ad 	addi.w	$r13,$r13,-472(0xe28)
1c00324c:	038fe18c 	ori	$r12,$r12,0x3f8
1c003250:	298001ac 	st.w	$r12,$r13,0
1c003254:	53ff8bff 	b	-120(0xfffff88) # 1c0031dc <CLOCK_Init+0x12c>
1c003258:	03400000 	andi	$r0,$r0,0x0
1c00325c:	03400000 	andi	$r0,$r0,0x0

1c003260 <SystemClockInit>:
SystemClockInit():
1c003260:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003264:	02803c0f 	addi.w	$r15,$r0,15(0xf)
1c003268:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c00326c:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c003270:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c003274:	02801064 	addi.w	$r4,$r3,4(0x4)
1c003278:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00327c:	29804060 	st.w	$r0,$r3,16(0x10)
1c003280:	29806060 	st.w	$r0,$r3,24(0x18)
1c003284:	29807060 	st.w	$r0,$r3,28(0x1c)
1c003288:	2980106f 	st.w	$r15,$r3,4(0x4)
1c00328c:	2980206e 	st.w	$r14,$r3,8(0x8)
1c003290:	2980306d 	st.w	$r13,$r3,12(0xc)
1c003294:	2980506c 	st.w	$r12,$r3,20(0x14)
1c003298:	57fe1bff 	bl	-488(0xffffe18) # 1c0030b0 <CLOCK_Init>
1c00329c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0032a0:	03c00484 	xori	$r4,$r4,0x1
1c0032a4:	00129004 	sltu	$r4,$r0,$r4
1c0032a8:	00111004 	sub.w	$r4,$r0,$r4
1c0032ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032b0:	4c000020 	jirl	$r0,$r1,0
1c0032b4:	03400000 	andi	$r0,$r0,0x0
1c0032b8:	03400000 	andi	$r0,$r0,0x0
1c0032bc:	03400000 	andi	$r0,$r0,0x0

1c0032c0 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c0032c0:	04000004 	csrrd	$r4,0x0
1c0032c4:	03401084 	andi	$r4,$r4,0x4
1c0032c8:	4c000020 	jirl	$r0,$r1,0
1c0032cc:	03400000 	andi	$r0,$r0,0x0

1c0032d0 <DisableInt>:
DisableInt():
1c0032d0:	0380100c 	ori	$r12,$r0,0x4
1c0032d4:	04000180 	csrxchg	$r0,$r12,0x0
1c0032d8:	4c000020 	jirl	$r0,$r1,0
1c0032dc:	03400000 	andi	$r0,$r0,0x0

1c0032e0 <EnableInt>:
EnableInt():
1c0032e0:	0380100c 	ori	$r12,$r0,0x4
1c0032e4:	0400018c 	csrxchg	$r12,$r12,0x0
1c0032e8:	4c000020 	jirl	$r0,$r1,0
1c0032ec:	03400000 	andi	$r0,$r0,0x0

1c0032f0 <Set_Timer_stop>:
Set_Timer_stop():
1c0032f0:	04010420 	csrwr	$r0,0x41
1c0032f4:	4c000020 	jirl	$r0,$r1,0
1c0032f8:	03400000 	andi	$r0,$r0,0x0
1c0032fc:	03400000 	andi	$r0,$r0,0x0

1c003300 <Set_Timer_clear>:
Set_Timer_clear():
1c003300:	0380040c 	ori	$r12,$r0,0x1
1c003304:	0401102c 	csrwr	$r12,0x44
1c003308:	4c000020 	jirl	$r0,$r1,0
1c00330c:	03400000 	andi	$r0,$r0,0x0

1c003310 <Wake_Set>:
Wake_Set():
1c003310:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003314:	40003480 	beqz	$r4,52(0x34) # 1c003348 <Wake_Set+0x38>
1c003318:	0380218d 	ori	$r13,$r12,0x8
1c00331c:	288001ad 	ld.w	$r13,$r13,0
1c003320:	0040a084 	slli.w	$r4,$r4,0x8
1c003324:	0380318e 	ori	$r14,$r12,0xc
1c003328:	007381ad 	bstrpick.w	$r13,$r13,0x13,0x0
1c00332c:	001011a4 	add.w	$r4,$r13,$r4
1c003330:	0380118c 	ori	$r12,$r12,0x4
1c003334:	298001c4 	st.w	$r4,$r14,0
1c003338:	2880018d 	ld.w	$r13,$r12,0
1c00333c:	038601ad 	ori	$r13,$r13,0x180
1c003340:	2980018d 	st.w	$r13,$r12,0
1c003344:	4c000020 	jirl	$r0,$r1,0
1c003348:	0380118c 	ori	$r12,$r12,0x4
1c00334c:	2880018d 	ld.w	$r13,$r12,0
1c003350:	02b9fc0e 	addi.w	$r14,$r0,-385(0xe7f)
1c003354:	0014b9ad 	and	$r13,$r13,$r14
1c003358:	2980018d 	st.w	$r13,$r12,0
1c00335c:	4c000020 	jirl	$r0,$r1,0

1c003360 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003360:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003364:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c003368:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00336c:	0014b084 	and	$r4,$r4,$r12
1c003370:	40001480 	beqz	$r4,20(0x14) # 1c003384 <PMU_GetRstRrc+0x24>
1c003374:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c003378:	00169184 	andn	$r4,$r12,$r4
1c00337c:	02400484 	sltui	$r4,$r4,1(0x1)
1c003380:	02800484 	addi.w	$r4,$r4,1(0x1)
1c003384:	4c000020 	jirl	$r0,$r1,0
1c003388:	03400000 	andi	$r0,$r0,0x0
1c00338c:	03400000 	andi	$r0,$r0,0x0

1c003390 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003390:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003394:	0380198c 	ori	$r12,$r12,0x6
1c003398:	2a000184 	ld.bu	$r4,$r12,0
1c00339c:	03400484 	andi	$r4,$r4,0x1
1c0033a0:	4c000020 	jirl	$r0,$r1,0
1c0033a4:	03400000 	andi	$r0,$r0,0x0
1c0033a8:	03400000 	andi	$r0,$r0,0x0
1c0033ac:	03400000 	andi	$r0,$r0,0x0

1c0033b0 <ls1x_logo>:
ls1x_logo():
1c0033b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033b8:	0282c084 	addi.w	$r4,$r4,176(0xb0)
1c0033bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033c0:	57f5e3ff 	bl	-2592(0xffff5e0) # 1c0029a0 <myprintf>
1c0033c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033c8:	02880084 	addi.w	$r4,$r4,512(0x200)
1c0033cc:	57f5d7ff 	bl	-2604(0xffff5d4) # 1c0029a0 <myprintf>
1c0033d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033d4:	02896084 	addi.w	$r4,$r4,600(0x258)
1c0033d8:	57f5cbff 	bl	-2616(0xffff5c8) # 1c0029a0 <myprintf>
1c0033dc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033e0:	028ac084 	addi.w	$r4,$r4,688(0x2b0)
1c0033e4:	57f5bfff 	bl	-2628(0xffff5bc) # 1c0029a0 <myprintf>
1c0033e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033ec:	028c2084 	addi.w	$r4,$r4,776(0x308)
1c0033f0:	57f5b3ff 	bl	-2640(0xffff5b0) # 1c0029a0 <myprintf>
1c0033f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033f8:	028d8084 	addi.w	$r4,$r4,864(0x360)
1c0033fc:	57f5a7ff 	bl	-2652(0xffff5a4) # 1c0029a0 <myprintf>
1c003400:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003404:	028ee084 	addi.w	$r4,$r4,952(0x3b8)
1c003408:	57f59bff 	bl	-2664(0xffff598) # 1c0029a0 <myprintf>
1c00340c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003410:	02904084 	addi.w	$r4,$r4,1040(0x410)
1c003414:	57f58fff 	bl	-2676(0xffff58c) # 1c0029a0 <myprintf>
1c003418:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00341c:	0291a084 	addi.w	$r4,$r4,1128(0x468)
1c003420:	57f583ff 	bl	-2688(0xffff580) # 1c0029a0 <myprintf>
1c003424:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003428:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00342c:	0292f084 	addi.w	$r4,$r4,1212(0x4bc)
1c003430:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003434:	53f56fff 	b	-2708(0xffff56c) # 1c0029a0 <myprintf>
1c003438:	03400000 	andi	$r0,$r0,0x0
1c00343c:	03400000 	andi	$r0,$r0,0x0

1c003440 <open_count>:
open_count():
1c003440:	0380400c 	ori	$r12,$r0,0x10
1c003444:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003448:	4c000020 	jirl	$r0,$r1,0
1c00344c:	03400000 	andi	$r0,$r0,0x0

1c003450 <delay_ms>:
delay_ms():
1c003450:	1400002c 	lu12i.w	$r12,1(0x1)
1c003454:	03bd018c 	ori	$r12,$r12,0xf40
1c003458:	001c3084 	mul.w	$r4,$r4,$r12
1c00345c:	0000600e 	rdtimel.w	$r14,$r0
1c003460:	40002880 	beqz	$r4,40(0x28) # 1c003488 <delay_ms+0x38>
1c003464:	00143810 	nor	$r16,$r0,$r14
1c003468:	0000600c 	rdtimel.w	$r12,$r0
1c00346c:	0012b98d 	sltu	$r13,$r12,$r14
1c003470:	0011398f 	sub.w	$r15,$r12,$r14
1c003474:	0010320c 	add.w	$r12,$r16,$r12
1c003478:	0013358c 	maskeqz	$r12,$r12,$r13
1c00347c:	0013b5ed 	masknez	$r13,$r15,$r13
1c003480:	0015358c 	or	$r12,$r12,$r13
1c003484:	6bffe584 	bltu	$r12,$r4,-28(0x3ffe4) # 1c003468 <delay_ms+0x18>
1c003488:	4c000020 	jirl	$r0,$r1,0
1c00348c:	03400000 	andi	$r0,$r0,0x0

1c003490 <strncmp>:
strncmp():
1c003490:	400060c0 	beqz	$r6,96(0x60) # 1c0034f0 <strncmp+0x60>
1c003494:	2800008d 	ld.b	$r13,$r4,0
1c003498:	280000ac 	ld.b	$r12,$r5,0
1c00349c:	5c00458d 	bne	$r12,$r13,68(0x44) # 1c0034e0 <strncmp+0x50>
1c0034a0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0034a4:	58003ccd 	beq	$r6,$r13,60(0x3c) # 1c0034e0 <strncmp+0x50>
1c0034a8:	40003980 	beqz	$r12,56(0x38) # 1c0034e0 <strncmp+0x50>
1c0034ac:	00101886 	add.w	$r6,$r4,$r6
1c0034b0:	0280048c 	addi.w	$r12,$r4,1(0x1)
1c0034b4:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c0034b8:	50001400 	b	20(0x14) # 1c0034cc <strncmp+0x3c>
1c0034bc:	03400000 	andi	$r0,$r0,0x0
1c0034c0:	58002186 	beq	$r12,$r6,32(0x20) # 1c0034e0 <strncmp+0x50>
1c0034c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034c8:	400019a0 	beqz	$r13,24(0x18) # 1c0034e0 <strncmp+0x50>
1c0034cc:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0034d0:	2800018e 	ld.b	$r14,$r12,0
1c0034d4:	280000ad 	ld.b	$r13,$r5,0
1c0034d8:	00150184 	move	$r4,$r12
1c0034dc:	5bffe5ae 	beq	$r13,$r14,-28(0x3ffe4) # 1c0034c0 <strncmp+0x30>
1c0034e0:	2a000084 	ld.bu	$r4,$r4,0
1c0034e4:	2a0000ac 	ld.bu	$r12,$r5,0
1c0034e8:	00113084 	sub.w	$r4,$r4,$r12
1c0034ec:	4c000020 	jirl	$r0,$r1,0
1c0034f0:	00150004 	move	$r4,$r0
1c0034f4:	4c000020 	jirl	$r0,$r1,0
1c0034f8:	03400000 	andi	$r0,$r0,0x0
1c0034fc:	03400000 	andi	$r0,$r0,0x0

1c003500 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003500:	2880308c 	ld.w	$r12,$r4,12(0xc)
1c003504:	00151585 	or	$r5,$r12,$r5
1c003508:	29803085 	st.w	$r5,$r4,12(0xc)
1c00350c:	4c000020 	jirl	$r0,$r1,0

1c003510 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003510:	006e8084 	bstrpick.w	$r4,$r4,0xe,0x0
1c003514:	0015000e 	move	$r14,$r0
1c003518:	0015000d 	move	$r13,$r0
1c00351c:	02800410 	addi.w	$r16,$r0,1(0x1)
1c003520:	02803c0f 	addi.w	$r15,$r0,15(0xf)
1c003524:	0017360c 	sll.w	$r12,$r16,$r13
1c003528:	0014918c 	and	$r12,$r12,$r4
1c00352c:	0012b00c 	sltu	$r12,$r0,$r12
1c003530:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c003534:	001031ce 	add.w	$r14,$r14,$r12
1c003538:	5fffedaf 	bne	$r13,$r15,-20(0x3ffec) # 1c003524 <WDG_SetWatchDog+0x14>
1c00353c:	1400010d 	lu12i.w	$r13,8(0x8)
1c003540:	034005ce 	andi	$r14,$r14,0x1
1c003544:	0015348d 	or	$r13,$r4,$r13
1c003548:	00133884 	maskeqz	$r4,$r4,$r14
1c00354c:	0013b9ae 	masknez	$r14,$r13,$r14
1c003550:	001511c4 	or	$r4,$r14,$r4
1c003554:	154ab4ac 	lu12i.w	$r12,-371291(0xa55a5)
1c003558:	0014100e 	nor	$r14,$r0,$r4
1c00355c:	157fd60f 	lu12i.w	$r15,-262480(0xbfeb0)
1c003560:	0396a98c 	ori	$r12,$r12,0x5aa
1c003564:	0040c1ce 	slli.w	$r14,$r14,0x10
1c003568:	2980d1ec 	st.w	$r12,$r15,52(0x34)
1c00356c:	001511ce 	or	$r14,$r14,$r4
1c003570:	2980c1ee 	st.w	$r14,$r15,48(0x30)
1c003574:	4c000020 	jirl	$r0,$r1,0
1c003578:	03400000 	andi	$r0,$r0,0x0
1c00357c:	03400000 	andi	$r0,$r0,0x0

1c003580 <WDG_DogFeed>:
WDG_DogFeed():
1c003580:	154ab4ac 	lu12i.w	$r12,-371291(0xa55a5)
1c003584:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003588:	0396a98c 	ori	$r12,$r12,0x5aa
1c00358c:	2980d1ac 	st.w	$r12,$r13,52(0x34)
1c003590:	4c000020 	jirl	$r0,$r1,0
1c003594:	03400000 	andi	$r0,$r0,0x0
1c003598:	03400000 	andi	$r0,$r0,0x0
1c00359c:	03400000 	andi	$r0,$r0,0x0

1c0035a0 <WdgInit>:
WdgInit():
1c0035a0:	150000e4 	lu12i.w	$r4,-524281(0x80007)
1c0035a4:	03bffc84 	ori	$r4,$r4,0xfff
1c0035a8:	53ff6bff 	b	-152(0xfffff68) # 1c003510 <WDG_SetWatchDog>
1c0035ac:	03400000 	andi	$r0,$r0,0x0

1c0035b0 <Adc_powerOn>:
Adc_powerOn():
1c0035b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0035b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0035b8:	29802077 	st.w	$r23,$r3,8(0x8)
1c0035bc:	57fd07ff 	bl	-764(0xffffd04) # 1c0032c0 <IsGlobalIntOpen>
1c0035c0:	00150097 	move	$r23,$r4
1c0035c4:	57fd0fff 	bl	-756(0xffffd0c) # 1c0032d0 <DisableInt>
1c0035c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0035cc:	2880018d 	ld.w	$r13,$r12,0
1c0035d0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0035d4:	007041cd 	bstrins.w	$r13,$r14,0x10,0x10
1c0035d8:	2980018d 	st.w	$r13,$r12,0
1c0035dc:	440016e0 	bnez	$r23,20(0x14) # 1c0035f0 <Adc_powerOn+0x40>
1c0035e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0035e4:	28802077 	ld.w	$r23,$r3,8(0x8)
1c0035e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0035ec:	4c000020 	jirl	$r0,$r1,0
1c0035f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0035f4:	28802077 	ld.w	$r23,$r3,8(0x8)
1c0035f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0035fc:	53fce7ff 	b	-796(0xffffce4) # 1c0032e0 <EnableInt>

1c003600 <Adc_open>:
Adc_open():
1c003600:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003604:	29802077 	st.w	$r23,$r3,8(0x8)
1c003608:	02800417 	addi.w	$r23,$r0,1(0x1)
1c00360c:	001712f7 	sll.w	$r23,$r23,$r4
1c003610:	29803061 	st.w	$r1,$r3,12(0xc)
1c003614:	29801078 	st.w	$r24,$r3,4(0x4)
1c003618:	034006ec 	andi	$r12,$r23,0x1
1c00361c:	40003980 	beqz	$r12,56(0x38) # 1c003654 <Adc_open+0x54>
1c003620:	57fca3ff 	bl	-864(0xffffca0) # 1c0032c0 <IsGlobalIntOpen>
1c003624:	00150097 	move	$r23,$r4
1c003628:	57fcabff 	bl	-856(0xffffca8) # 1c0032d0 <DisableInt>
1c00362c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003630:	2880018d 	ld.w	$r13,$r12,0
1c003634:	0071440d 	bstrins.w	$r13,$r0,0x11,0x11
1c003638:	2980018d 	st.w	$r13,$r12,0
1c00363c:	44003ee0 	bnez	$r23,60(0x3c) # 1c003678 <Adc_open+0x78>
1c003640:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003644:	28802077 	ld.w	$r23,$r3,8(0x8)
1c003648:	28801078 	ld.w	$r24,$r3,4(0x4)
1c00364c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003650:	4c000020 	jirl	$r0,$r1,0
1c003654:	57fc6fff 	bl	-916(0xffffc6c) # 1c0032c0 <IsGlobalIntOpen>
1c003658:	00150098 	move	$r24,$r4
1c00365c:	57fc77ff 	bl	-908(0xffffc74) # 1c0032d0 <DisableInt>
1c003660:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003664:	2880018d 	ld.w	$r13,$r12,0
1c003668:	006792f7 	bstrpick.w	$r23,$r23,0x7,0x4
1c00366c:	007752ed 	bstrins.w	$r13,$r23,0x17,0x14
1c003670:	2980018d 	st.w	$r13,$r12,0
1c003674:	43ffcf1f 	beqz	$r24,-52(0x7fffcc) # 1c003640 <Adc_open+0x40>
1c003678:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00367c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c003680:	28801078 	ld.w	$r24,$r3,4(0x4)
1c003684:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003688:	53fc5bff 	b	-936(0xffffc58) # 1c0032e0 <EnableInt>
1c00368c:	03400000 	andi	$r0,$r0,0x0

1c003690 <Adc_Measure>:
Adc_Measure():
1c003690:	157fd612 	lu12i.w	$r18,-262480(0xbfeb0)
1c003694:	0381b24d 	ori	$r13,$r18,0x6c
1c003698:	03840084 	ori	$r4,$r4,0x100
1c00369c:	00150010 	move	$r16,$r0
1c0036a0:	0015000f 	move	$r15,$r0
1c0036a4:	0015000e 	move	$r14,$r0
1c0036a8:	0381c252 	ori	$r18,$r18,0x70
1c0036ac:	02800814 	addi.w	$r20,$r0,2(0x2)
1c0036b0:	02801c13 	addi.w	$r19,$r0,7(0x7)
1c0036b4:	298001a4 	st.w	$r4,$r13,0
1c0036b8:	288001ac 	ld.w	$r12,$r13,0
1c0036bc:	0344018c 	andi	$r12,$r12,0x100
1c0036c0:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c0036b8 <Adc_Measure+0x28>
1c0036c4:	2880024c 	ld.w	$r12,$r18,0
1c0036c8:	6c00228e 	bgeu	$r20,$r14,32(0x20) # 1c0036e8 <Adc_Measure+0x58>
1c0036cc:	037ffd8c 	andi	$r12,$r12,0xfff
1c0036d0:	0012bd91 	sltu	$r17,$r12,$r15
1c0036d4:	00104190 	add.w	$r16,$r12,$r16
1c0036d8:	001345ef 	maskeqz	$r15,$r15,$r17
1c0036dc:	0013c58c 	masknez	$r12,$r12,$r17
1c0036e0:	006f8210 	bstrpick.w	$r16,$r16,0xf,0x0
1c0036e4:	00153d8f 	or	$r15,$r12,$r15
1c0036e8:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0036ec:	006f81ce 	bstrpick.w	$r14,$r14,0xf,0x0
1c0036f0:	5fffc5d3 	bne	$r14,$r19,-60(0x3ffc4) # 1c0036b4 <Adc_Measure+0x24>
1c0036f4:	00113e0f 	sub.w	$r15,$r16,$r15
1c0036f8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0036fc:	002031e4 	div.w	$r4,$r15,$r12
1c003700:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003708 <Adc_Measure+0x78>
1c003704:	002a0007 	break	0x7
1c003708:	006f8084 	bstrpick.w	$r4,$r4,0xf,0x0
1c00370c:	4c000020 	jirl	$r0,$r1,0

1c003710 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003710:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003714:	29806077 	st.w	$r23,$r3,24(0x18)
1c003718:	29805078 	st.w	$r24,$r3,20(0x14)
1c00371c:	29804079 	st.w	$r25,$r3,16(0x10)
1c003720:	2980307a 	st.w	$r26,$r3,12(0xc)
1c003724:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003728:	00150099 	move	$r25,$r4
1c00372c:	00150017 	move	$r23,$r0
1c003730:	1c00007a 	pcaddu12i	$r26,3(0x3)
1c003734:	0288635a 	addi.w	$r26,$r26,536(0x218)
1c003738:	02803018 	addi.w	$r24,$r0,12(0xc)
1c00373c:	50000c00 	b	12(0xc) # 1c003748 <Printf_KeyChannel+0x38>
1c003740:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c003744:	580026f8 	beq	$r23,$r24,36(0x24) # 1c003768 <Printf_KeyChannel+0x58>
1c003748:	00185f2c 	sra.w	$r12,$r25,$r23
1c00374c:	0340058c 	andi	$r12,$r12,0x1
1c003750:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c003740 <Printf_KeyChannel+0x30>
1c003754:	001502e5 	move	$r5,$r23
1c003758:	00150344 	move	$r4,$r26
1c00375c:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c003760:	57f243ff 	bl	-3520(0xffff240) # 1c0029a0 <myprintf>
1c003764:	5fffe6f8 	bne	$r23,$r24,-28(0x3ffe4) # 1c003748 <Printf_KeyChannel+0x38>
1c003768:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00376c:	28806077 	ld.w	$r23,$r3,24(0x18)
1c003770:	28805078 	ld.w	$r24,$r3,20(0x14)
1c003774:	28804079 	ld.w	$r25,$r3,16(0x10)
1c003778:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c00377c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003780:	02b3a084 	addi.w	$r4,$r4,-792(0xce8)
1c003784:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003788:	53f21bff 	b	-3560(0xffff218) # 1c0029a0 <myprintf>
1c00378c:	03400000 	andi	$r0,$r0,0x0

1c003790 <Printf_KeyType>:
Printf_KeyType():
1c003790:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003794:	29802077 	st.w	$r23,$r3,8(0x8)
1c003798:	29803061 	st.w	$r1,$r3,12(0xc)
1c00379c:	0340048c 	andi	$r12,$r4,0x1
1c0037a0:	00150097 	move	$r23,$r4
1c0037a4:	44002d80 	bnez	$r12,44(0x2c) # 1c0037d0 <Printf_KeyType+0x40>
1c0037a8:	03400aec 	andi	$r12,$r23,0x2
1c0037ac:	44003980 	bnez	$r12,56(0x38) # 1c0037e4 <Printf_KeyType+0x54>
1c0037b0:	034012ec 	andi	$r12,$r23,0x4
1c0037b4:	44004580 	bnez	$r12,68(0x44) # 1c0037f8 <Printf_KeyType+0x68>
1c0037b8:	034022f7 	andi	$r23,$r23,0x8
1c0037bc:	440052e0 	bnez	$r23,80(0x50) # 1c00380c <Printf_KeyType+0x7c>
1c0037c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037c4:	28802077 	ld.w	$r23,$r3,8(0x8)
1c0037c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037cc:	4c000020 	jirl	$r0,$r1,0
1c0037d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0037d4:	0285f084 	addi.w	$r4,$r4,380(0x17c)
1c0037d8:	57f1cbff 	bl	-3640(0xffff1c8) # 1c0029a0 <myprintf>
1c0037dc:	03400aec 	andi	$r12,$r23,0x2
1c0037e0:	43ffd19f 	beqz	$r12,-48(0x7fffd0) # 1c0037b0 <Printf_KeyType+0x20>
1c0037e4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0037e8:	0285c084 	addi.w	$r4,$r4,368(0x170)
1c0037ec:	57f1b7ff 	bl	-3660(0xffff1b4) # 1c0029a0 <myprintf>
1c0037f0:	034012ec 	andi	$r12,$r23,0x4
1c0037f4:	43ffc59f 	beqz	$r12,-60(0x7fffc4) # 1c0037b8 <Printf_KeyType+0x28>
1c0037f8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0037fc:	02859084 	addi.w	$r4,$r4,356(0x164)
1c003800:	034022f7 	andi	$r23,$r23,0x8
1c003804:	57f19fff 	bl	-3684(0xffff19c) # 1c0029a0 <myprintf>
1c003808:	43ffbaff 	beqz	$r23,-72(0x7fffb8) # 1c0037c0 <Printf_KeyType+0x30>
1c00380c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003810:	28802077 	ld.w	$r23,$r3,8(0x8)
1c003814:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003818:	02855084 	addi.w	$r4,$r4,340(0x154)
1c00381c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003820:	53f183ff 	b	-3712(0xffff180) # 1c0029a0 <myprintf>
1c003824:	03400000 	andi	$r0,$r0,0x0
1c003828:	03400000 	andi	$r0,$r0,0x0
1c00382c:	03400000 	andi	$r0,$r0,0x0

1c003830 <Printf_KeyVal>:
Printf_KeyVal():
1c003830:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003834:	157fd693 	lu12i.w	$r19,-262476(0xbfeb4)
1c003838:	14802974 	lu12i.w	$r20,262475(0x4014b)
1c00383c:	2982a077 	st.w	$r23,$r3,168(0xa8)
1c003840:	29829078 	st.w	$r24,$r3,164(0xa4)
1c003844:	0382026d 	ori	$r13,$r19,0x80
1c003848:	2982b061 	st.w	$r1,$r3,172(0xac)
1c00384c:	29828079 	st.w	$r25,$r3,160(0xa0)
1c003850:	2982707a 	st.w	$r26,$r3,156(0x9c)
1c003854:	2982607b 	st.w	$r27,$r3,152(0x98)
1c003858:	02818077 	addi.w	$r23,$r3,96(0x60)
1c00385c:	0280c078 	addi.w	$r24,$r3,48(0x30)
1c003860:	03be0294 	ori	$r20,$r20,0xf80
1c003864:	0382c273 	ori	$r19,$r19,0xb0
1c003868:	288001af 	ld.w	$r15,$r13,0
1c00386c:	28bf01ac 	ld.w	$r12,$r13,-64(0xfc0)
1c003870:	001051ae 	add.w	$r14,$r13,$r20
1c003874:	037ffdef 	andi	$r15,$r15,0xfff
1c003878:	037ffd8c 	andi	$r12,$r12,0xfff
1c00387c:	00103b11 	add.w	$r17,$r24,$r14
1c003880:	00113d90 	sub.w	$r16,$r12,$r15
1c003884:	00103af2 	add.w	$r18,$r23,$r14
1c003888:	2980022c 	st.w	$r12,$r17,0
1c00388c:	0010386e 	add.w	$r14,$r3,$r14
1c003890:	0013320c 	maskeqz	$r12,$r16,$r12
1c003894:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003898:	2980024f 	st.w	$r15,$r18,0
1c00389c:	298001cc 	st.w	$r12,$r14,0
1c0038a0:	5fffc9b3 	bne	$r13,$r19,-56(0x3ffc8) # 1c003868 <Printf_KeyVal+0x38>
1c0038a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0038a8:	02834084 	addi.w	$r4,$r4,208(0xd0)
1c0038ac:	57f0f7ff 	bl	-3852(0xffff0f4) # 1c0029a0 <myprintf>
1c0038b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0038b4:	0283b084 	addi.w	$r4,$r4,236(0xec)
1c0038b8:	001502f9 	move	$r25,$r23
1c0038bc:	0282407b 	addi.w	$r27,$r3,144(0x90)
1c0038c0:	1c00007a 	pcaddu12i	$r26,3(0x3)
1c0038c4:	0283935a 	addi.w	$r26,$r26,228(0xe4)
1c0038c8:	57f0dbff 	bl	-3880(0xffff0d8) # 1c0029a0 <myprintf>
1c0038cc:	03400000 	andi	$r0,$r0,0x0
1c0038d0:	28800325 	ld.w	$r5,$r25,0
1c0038d4:	00150344 	move	$r4,$r26
1c0038d8:	02801339 	addi.w	$r25,$r25,4(0x4)
1c0038dc:	57f0c7ff 	bl	-3900(0xffff0c4) # 1c0029a0 <myprintf>
1c0038e0:	5ffff33b 	bne	$r25,$r27,-16(0x3fff0) # 1c0038d0 <Printf_KeyVal+0xa0>
1c0038e4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0038e8:	02832084 	addi.w	$r4,$r4,200(0xc8)
1c0038ec:	00150319 	move	$r25,$r24
1c0038f0:	1c00007a 	pcaddu12i	$r26,3(0x3)
1c0038f4:	0282d35a 	addi.w	$r26,$r26,180(0xb4)
1c0038f8:	57f0abff 	bl	-3928(0xffff0a8) # 1c0029a0 <myprintf>
1c0038fc:	03400000 	andi	$r0,$r0,0x0
1c003900:	28800325 	ld.w	$r5,$r25,0
1c003904:	00150344 	move	$r4,$r26
1c003908:	02801339 	addi.w	$r25,$r25,4(0x4)
1c00390c:	57f097ff 	bl	-3948(0xffff094) # 1c0029a0 <myprintf>
1c003910:	5ffff2f9 	bne	$r23,$r25,-16(0x3fff0) # 1c003900 <Printf_KeyVal+0xd0>
1c003914:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003918:	02829084 	addi.w	$r4,$r4,164(0xa4)
1c00391c:	00150077 	move	$r23,$r3
1c003920:	1c000079 	pcaddu12i	$r25,3(0x3)
1c003924:	0282b339 	addi.w	$r25,$r25,172(0xac)
1c003928:	1c00007a 	pcaddu12i	$r26,3(0x3)
1c00392c:	0282735a 	addi.w	$r26,$r26,156(0x9c)
1c003930:	57f073ff 	bl	-3984(0xffff070) # 1c0029a0 <myprintf>
1c003934:	50001000 	b	16(0x10) # 1c003944 <Printf_KeyVal+0x114>
1c003938:	028012f7 	addi.w	$r23,$r23,4(0x4)
1c00393c:	57f067ff 	bl	-3996(0xffff064) # 1c0029a0 <myprintf>
1c003940:	58002717 	beq	$r24,$r23,36(0x24) # 1c003964 <Printf_KeyVal+0x134>
1c003944:	288002ec 	ld.w	$r12,$r23,0
1c003948:	00150324 	move	$r4,$r25
1c00394c:	00150185 	move	$r5,$r12
1c003950:	67ffe980 	bge	$r12,$r0,-24(0x3ffe8) # 1c003938 <Printf_KeyVal+0x108>
1c003954:	00150344 	move	$r4,$r26
1c003958:	028012f7 	addi.w	$r23,$r23,4(0x4)
1c00395c:	57f047ff 	bl	-4028(0xffff044) # 1c0029a0 <myprintf>
1c003960:	5fffe717 	bne	$r24,$r23,-28(0x3ffe4) # 1c003944 <Printf_KeyVal+0x114>
1c003964:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003968:	2882a077 	ld.w	$r23,$r3,168(0xa8)
1c00396c:	28829078 	ld.w	$r24,$r3,164(0xa4)
1c003970:	28828079 	ld.w	$r25,$r3,160(0xa0)
1c003974:	2882707a 	ld.w	$r26,$r3,156(0x9c)
1c003978:	2882607b 	ld.w	$r27,$r3,152(0x98)
1c00397c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003980:	02aba084 	addi.w	$r4,$r4,-1304(0xae8)
1c003984:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003988:	53f01bff 	b	-4072(0xffff018) # 1c0029a0 <myprintf>
1c00398c:	03400000 	andi	$r0,$r0,0x0

1c003990 <TIM_Init>:
TIM_Init():
1c003990:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003994:	29800180 	st.w	$r0,$r12,0
1c003998:	0380118f 	ori	$r15,$r12,0x4
1c00399c:	298001e0 	st.w	$r0,$r15,0
1c0039a0:	2880108f 	ld.w	$r15,$r4,4(0x4)
1c0039a4:	0380218e 	ori	$r14,$r12,0x8
1c0039a8:	0380318d 	ori	$r13,$r12,0xc
1c0039ac:	298001cf 	st.w	$r15,$r14,0
1c0039b0:	2880208e 	ld.w	$r14,$r4,8(0x8)
1c0039b4:	298001ae 	st.w	$r14,$r13,0
1c0039b8:	2880018d 	ld.w	$r13,$r12,0
1c0039bc:	2880508e 	ld.w	$r14,$r4,20(0x14)
1c0039c0:	001539ad 	or	$r13,$r13,$r14
1c0039c4:	2980018d 	st.w	$r13,$r12,0
1c0039c8:	2880508c 	ld.w	$r12,$r4,20(0x14)
1c0039cc:	40001980 	beqz	$r12,24(0x18) # 1c0039e4 <TIM_Init+0x54>
1c0039d0:	157fd40d 	lu12i.w	$r13,-262496(0xbfea0)
1c0039d4:	2a0001ac 	ld.bu	$r12,$r13,0
1c0039d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0039dc:	0380058c 	ori	$r12,$r12,0x1
1c0039e0:	290001ac 	st.b	$r12,$r13,0
1c0039e4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0039e8:	2880408e 	ld.w	$r14,$r4,16(0x10)
1c0039ec:	2880018d 	ld.w	$r13,$r12,0
1c0039f0:	001539ad 	or	$r13,$r13,$r14
1c0039f4:	2980018d 	st.w	$r13,$r12,0
1c0039f8:	2880018d 	ld.w	$r13,$r12,0
1c0039fc:	2880608e 	ld.w	$r14,$r4,24(0x18)
1c003a00:	001539ad 	or	$r13,$r13,$r14
1c003a04:	2980018d 	st.w	$r13,$r12,0
1c003a08:	4c000020 	jirl	$r0,$r1,0
1c003a0c:	03400000 	andi	$r0,$r0,0x0

1c003a10 <timer_init>:
timer_init():
1c003a10:	1400002c 	lu12i.w	$r12,1(0x1)
1c003a14:	03bd018d 	ori	$r13,$r12,0xf40
1c003a18:	001c348d 	mul.w	$r13,$r4,$r13
1c003a1c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a20:	1400f42e 	lu12i.w	$r14,1953(0x7a1)
1c003a24:	02800411 	addi.w	$r17,$r0,1(0x1)
1c003a28:	02800810 	addi.w	$r16,$r0,2(0x2)
1c003a2c:	038801ce 	ori	$r14,$r14,0x200
1c003a30:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c003a34:	03bcfd8c 	ori	$r12,$r12,0xf3f
1c003a38:	02801064 	addi.w	$r4,$r3,4(0x4)
1c003a3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003a40:	2980106e 	st.w	$r14,$r3,4(0x4)
1c003a44:	29807071 	st.w	$r17,$r3,28(0x1c)
1c003a48:	29806070 	st.w	$r16,$r3,24(0x18)
1c003a4c:	2980506f 	st.w	$r15,$r3,20(0x14)
1c003a50:	2980206c 	st.w	$r12,$r3,8(0x8)
1c003a54:	29804060 	st.w	$r0,$r3,16(0x10)
1c003a58:	2980306d 	st.w	$r13,$r3,12(0xc)
1c003a5c:	57ff37ff 	bl	-204(0xfffff34) # 1c003990 <TIM_Init>
1c003a60:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003a64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a68:	4c000020 	jirl	$r0,$r1,0
1c003a6c:	03400000 	andi	$r0,$r0,0x0

1c003a70 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003a70:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003a74:	2880018c 	ld.w	$r12,$r12,0
1c003a78:	00149184 	and	$r4,$r12,$r4
1c003a7c:	00129004 	sltu	$r4,$r0,$r4
1c003a80:	4c000020 	jirl	$r0,$r1,0
1c003a84:	03400000 	andi	$r0,$r0,0x0
1c003a88:	03400000 	andi	$r0,$r0,0x0
1c003a8c:	03400000 	andi	$r0,$r0,0x0

1c003a90 <TIM_ClearIT>:
TIM_ClearIT():
1c003a90:	157fda0e 	lu12i.w	$r14,-262448(0xbfed0)
1c003a94:	288001cc 	ld.w	$r12,$r14,0
1c003a98:	157fd40d 	lu12i.w	$r13,-262496(0xbfea0)
1c003a9c:	03800dad 	ori	$r13,$r13,0x3
1c003aa0:	00151184 	or	$r4,$r12,$r4
1c003aa4:	298001c4 	st.w	$r4,$r14,0
1c003aa8:	2a0001ac 	ld.bu	$r12,$r13,0
1c003aac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003ab0:	0380058c 	ori	$r12,$r12,0x1
1c003ab4:	290001ac 	st.b	$r12,$r13,0
1c003ab8:	4c000020 	jirl	$r0,$r1,0
1c003abc:	03400000 	andi	$r0,$r0,0x0

1c003ac0 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003ac0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ac4:	02805005 	addi.w	$r5,$r0,20(0x14)
1c003ac8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003acc:	0289f0c6 	addi.w	$r6,$r6,636(0x27c)
1c003ad0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ad4:	02bc1084 	addi.w	$r4,$r4,-252(0xf04)
1c003ad8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003adc:	57eec7ff 	bl	-4412(0xfffeec4) # 1c0029a0 <myprintf>
1c003ae0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ae4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003ae8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003aec:	03808084 	ori	$r4,$r4,0x20
1c003af0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003af4:	53fa0fff 	b	-1524(0xffffa0c) # 1c003500 <EXTI_ClearITPendingBit>
1c003af8:	03400000 	andi	$r0,$r0,0x0
1c003afc:	03400000 	andi	$r0,$r0,0x0

1c003b00 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003b00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b04:	02806405 	addi.w	$r5,$r0,25(0x19)
1c003b08:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003b0c:	028890c6 	addi.w	$r6,$r6,548(0x224)
1c003b10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b14:	02bb1084 	addi.w	$r4,$r4,-316(0xec4)
1c003b18:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b1c:	57ee87ff 	bl	-4476(0xfffee84) # 1c0029a0 <myprintf>
1c003b20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b24:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003b28:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003b2c:	03808084 	ori	$r4,$r4,0x20
1c003b30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b34:	53f9cfff 	b	-1588(0xffff9cc) # 1c003500 <EXTI_ClearITPendingBit>
1c003b38:	03400000 	andi	$r0,$r0,0x0
1c003b3c:	03400000 	andi	$r0,$r0,0x0

1c003b40 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003b40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b44:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c003b48:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003b4c:	028730c6 	addi.w	$r6,$r6,460(0x1cc)
1c003b50:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b54:	02ba1084 	addi.w	$r4,$r4,-380(0xe84)
1c003b58:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b5c:	57ee47ff 	bl	-4540(0xfffee44) # 1c0029a0 <myprintf>
1c003b60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b64:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003b68:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003b6c:	03808084 	ori	$r4,$r4,0x20
1c003b70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b74:	53f98fff 	b	-1652(0xffff98c) # 1c003500 <EXTI_ClearITPendingBit>
1c003b78:	03400000 	andi	$r0,$r0,0x0
1c003b7c:	03400000 	andi	$r0,$r0,0x0

1c003b80 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003b80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b84:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c003b88:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003b8c:	0285d0c6 	addi.w	$r6,$r6,372(0x174)
1c003b90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b94:	02b91084 	addi.w	$r4,$r4,-444(0xe44)
1c003b98:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b9c:	57ee07ff 	bl	-4604(0xfffee04) # 1c0029a0 <myprintf>
1c003ba0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ba4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003ba8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003bac:	03808084 	ori	$r4,$r4,0x20
1c003bb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003bb4:	53f94fff 	b	-1716(0xffff94c) # 1c003500 <EXTI_ClearITPendingBit>
1c003bb8:	03400000 	andi	$r0,$r0,0x0
1c003bbc:	03400000 	andi	$r0,$r0,0x0

1c003bc0 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c003bc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003bc4:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c003bc8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003bcc:	028470c6 	addi.w	$r6,$r6,284(0x11c)
1c003bd0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bd4:	02b81084 	addi.w	$r4,$r4,-508(0xe04)
1c003bd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003bdc:	57edc7ff 	bl	-4668(0xfffedc4) # 1c0029a0 <myprintf>
1c003be0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003be4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003be8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c003bec:	03808084 	ori	$r4,$r4,0x20
1c003bf0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003bf4:	53f90fff 	b	-1780(0xffff90c) # 1c003500 <EXTI_ClearITPendingBit>
1c003bf8:	03400000 	andi	$r0,$r0,0x0
1c003bfc:	03400000 	andi	$r0,$r0,0x0

1c003c00 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c003c00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c04:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c003c08:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003c0c:	028310c6 	addi.w	$r6,$r6,196(0xc4)
1c003c10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c14:	02b71084 	addi.w	$r4,$r4,-572(0xdc4)
1c003c18:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c1c:	57ed87ff 	bl	-4732(0xfffed84) # 1c0029a0 <myprintf>
1c003c20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c24:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003c28:	02808005 	addi.w	$r5,$r0,32(0x20)
1c003c2c:	03808084 	ori	$r4,$r4,0x20
1c003c30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c34:	53f8cfff 	b	-1844(0xffff8cc) # 1c003500 <EXTI_ClearITPendingBit>
1c003c38:	03400000 	andi	$r0,$r0,0x0
1c003c3c:	03400000 	andi	$r0,$r0,0x0

1c003c40 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c003c40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c44:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c003c48:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003c4c:	0281b0c6 	addi.w	$r6,$r6,108(0x6c)
1c003c50:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c54:	02b61084 	addi.w	$r4,$r4,-636(0xd84)
1c003c58:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c5c:	57ed47ff 	bl	-4796(0xfffed44) # 1c0029a0 <myprintf>
1c003c60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c64:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003c68:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003c6c:	03808084 	ori	$r4,$r4,0x20
1c003c70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c74:	53f88fff 	b	-1908(0xffff88c) # 1c003500 <EXTI_ClearITPendingBit>
1c003c78:	03400000 	andi	$r0,$r0,0x0
1c003c7c:	03400000 	andi	$r0,$r0,0x0

1c003c80 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c003c80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c84:	0280dc05 	addi.w	$r5,$r0,55(0x37)
1c003c88:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003c8c:	028050c6 	addi.w	$r6,$r6,20(0x14)
1c003c90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c94:	02b51084 	addi.w	$r4,$r4,-700(0xd44)
1c003c98:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c9c:	57ed07ff 	bl	-4860(0xfffed04) # 1c0029a0 <myprintf>
1c003ca0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ca4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003ca8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c003cac:	03808084 	ori	$r4,$r4,0x20
1c003cb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cb4:	53f84fff 	b	-1972(0xffff84c) # 1c003500 <EXTI_ClearITPendingBit>
1c003cb8:	03400000 	andi	$r0,$r0,0x0
1c003cbc:	03400000 	andi	$r0,$r0,0x0

1c003cc0 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c003cc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003cc4:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c003cc8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ccc:	02bef0c6 	addi.w	$r6,$r6,-68(0xfbc)
1c003cd0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cd4:	02b41084 	addi.w	$r4,$r4,-764(0xd04)
1c003cd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003cdc:	57ecc7ff 	bl	-4924(0xfffecc4) # 1c0029a0 <myprintf>
1c003ce0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ce4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003ce8:	02840005 	addi.w	$r5,$r0,256(0x100)
1c003cec:	03808084 	ori	$r4,$r4,0x20
1c003cf0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cf4:	53f80fff 	b	-2036(0xffff80c) # 1c003500 <EXTI_ClearITPendingBit>
1c003cf8:	03400000 	andi	$r0,$r0,0x0
1c003cfc:	03400000 	andi	$r0,$r0,0x0

1c003d00 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c003d00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d04:	02810405 	addi.w	$r5,$r0,65(0x41)
1c003d08:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003d0c:	02bd90c6 	addi.w	$r6,$r6,-156(0xf64)
1c003d10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d14:	02b31084 	addi.w	$r4,$r4,-828(0xcc4)
1c003d18:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d1c:	57ec87ff 	bl	-4988(0xfffec84) # 1c0029a0 <myprintf>
1c003d20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d24:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003d28:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003d2c:	03808084 	ori	$r4,$r4,0x20
1c003d30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d34:	53f7cfff 	b	-2100(0xffff7cc) # 1c003500 <EXTI_ClearITPendingBit>
1c003d38:	03400000 	andi	$r0,$r0,0x0
1c003d3c:	03400000 	andi	$r0,$r0,0x0

1c003d40 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003d40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d44:	02811805 	addi.w	$r5,$r0,70(0x46)
1c003d48:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003d4c:	02bc30c6 	addi.w	$r6,$r6,-244(0xf0c)
1c003d50:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d54:	02b21084 	addi.w	$r4,$r4,-892(0xc84)
1c003d58:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d5c:	57ec47ff 	bl	-5052(0xfffec44) # 1c0029a0 <myprintf>
1c003d60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d64:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003d68:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c003d6c:	03808084 	ori	$r4,$r4,0x20
1c003d70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d74:	53f78fff 	b	-2164(0xffff78c) # 1c003500 <EXTI_ClearITPendingBit>
1c003d78:	03400000 	andi	$r0,$r0,0x0
1c003d7c:	03400000 	andi	$r0,$r0,0x0

1c003d80 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c003d80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d84:	02812c05 	addi.w	$r5,$r0,75(0x4b)
1c003d88:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003d8c:	02bad0c6 	addi.w	$r6,$r6,-332(0xeb4)
1c003d90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d94:	02b11084 	addi.w	$r4,$r4,-956(0xc44)
1c003d98:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d9c:	57ec07ff 	bl	-5116(0xfffec04) # 1c0029a0 <myprintf>
1c003da0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003da4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003da8:	03a00005 	ori	$r5,$r0,0x800
1c003dac:	03808084 	ori	$r4,$r4,0x20
1c003db0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003db4:	53f74fff 	b	-2228(0xffff74c) # 1c003500 <EXTI_ClearITPendingBit>
1c003db8:	03400000 	andi	$r0,$r0,0x0
1c003dbc:	03400000 	andi	$r0,$r0,0x0

1c003dc0 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c003dc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003dc4:	02814005 	addi.w	$r5,$r0,80(0x50)
1c003dc8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003dcc:	02b970c6 	addi.w	$r6,$r6,-420(0xe5c)
1c003dd0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dd4:	02b01084 	addi.w	$r4,$r4,-1020(0xc04)
1c003dd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ddc:	57ebc7ff 	bl	-5180(0xfffebc4) # 1c0029a0 <myprintf>
1c003de0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003de4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003de8:	14000025 	lu12i.w	$r5,1(0x1)
1c003dec:	03808084 	ori	$r4,$r4,0x20
1c003df0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003df4:	53f70fff 	b	-2292(0xffff70c) # 1c003500 <EXTI_ClearITPendingBit>
1c003df8:	03400000 	andi	$r0,$r0,0x0
1c003dfc:	03400000 	andi	$r0,$r0,0x0

1c003e00 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c003e00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e04:	02815405 	addi.w	$r5,$r0,85(0x55)
1c003e08:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003e0c:	02b810c6 	addi.w	$r6,$r6,-508(0xe04)
1c003e10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e14:	02af1084 	addi.w	$r4,$r4,-1084(0xbc4)
1c003e18:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e1c:	57eb87ff 	bl	-5244(0xfffeb84) # 1c0029a0 <myprintf>
1c003e20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e24:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003e28:	14000045 	lu12i.w	$r5,2(0x2)
1c003e2c:	03808084 	ori	$r4,$r4,0x20
1c003e30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e34:	53f6cfff 	b	-2356(0xffff6cc) # 1c003500 <EXTI_ClearITPendingBit>
1c003e38:	03400000 	andi	$r0,$r0,0x0
1c003e3c:	03400000 	andi	$r0,$r0,0x0

1c003e40 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c003e40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e44:	02816805 	addi.w	$r5,$r0,90(0x5a)
1c003e48:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003e4c:	02b6b0c6 	addi.w	$r6,$r6,-596(0xdac)
1c003e50:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e54:	02ae1084 	addi.w	$r4,$r4,-1148(0xb84)
1c003e58:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e5c:	57eb47ff 	bl	-5308(0xfffeb44) # 1c0029a0 <myprintf>
1c003e60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e64:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003e68:	14000085 	lu12i.w	$r5,4(0x4)
1c003e6c:	03808084 	ori	$r4,$r4,0x20
1c003e70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e74:	53f68fff 	b	-2420(0xffff68c) # 1c003500 <EXTI_ClearITPendingBit>
1c003e78:	03400000 	andi	$r0,$r0,0x0
1c003e7c:	03400000 	andi	$r0,$r0,0x0

1c003e80 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c003e80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e84:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c003e88:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003e8c:	02b550c6 	addi.w	$r6,$r6,-684(0xd54)
1c003e90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e94:	02ad1084 	addi.w	$r4,$r4,-1212(0xb44)
1c003e98:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e9c:	57eb07ff 	bl	-5372(0xfffeb04) # 1c0029a0 <myprintf>
1c003ea0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ea4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003ea8:	14000105 	lu12i.w	$r5,8(0x8)
1c003eac:	03808084 	ori	$r4,$r4,0x20
1c003eb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003eb4:	53f64fff 	b	-2484(0xffff64c) # 1c003500 <EXTI_ClearITPendingBit>
1c003eb8:	03400000 	andi	$r0,$r0,0x0
1c003ebc:	03400000 	andi	$r0,$r0,0x0

1c003ec0 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c003ec0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ec4:	02819405 	addi.w	$r5,$r0,101(0x65)
1c003ec8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ecc:	02b3f0c6 	addi.w	$r6,$r6,-772(0xcfc)
1c003ed0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ed4:	02ac1084 	addi.w	$r4,$r4,-1276(0xb04)
1c003ed8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003edc:	57eac7ff 	bl	-5436(0xfffeac4) # 1c0029a0 <myprintf>
1c003ee0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ee4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003ee8:	14000205 	lu12i.w	$r5,16(0x10)
1c003eec:	03808084 	ori	$r4,$r4,0x20
1c003ef0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ef4:	53f60fff 	b	-2548(0xffff60c) # 1c003500 <EXTI_ClearITPendingBit>
1c003ef8:	03400000 	andi	$r0,$r0,0x0
1c003efc:	03400000 	andi	$r0,$r0,0x0

1c003f00 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c003f00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f04:	0281a805 	addi.w	$r5,$r0,106(0x6a)
1c003f08:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f0c:	02b290c6 	addi.w	$r6,$r6,-860(0xca4)
1c003f10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f14:	02ab1084 	addi.w	$r4,$r4,-1340(0xac4)
1c003f18:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f1c:	57ea87ff 	bl	-5500(0xfffea84) # 1c0029a0 <myprintf>
1c003f20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f24:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003f28:	14000405 	lu12i.w	$r5,32(0x20)
1c003f2c:	03808084 	ori	$r4,$r4,0x20
1c003f30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f34:	53f5cfff 	b	-2612(0xffff5cc) # 1c003500 <EXTI_ClearITPendingBit>
1c003f38:	03400000 	andi	$r0,$r0,0x0
1c003f3c:	03400000 	andi	$r0,$r0,0x0

1c003f40 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c003f40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f44:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c003f48:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f4c:	02b130c6 	addi.w	$r6,$r6,-948(0xc4c)
1c003f50:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f54:	02aa1084 	addi.w	$r4,$r4,-1404(0xa84)
1c003f58:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f5c:	57ea47ff 	bl	-5564(0xfffea44) # 1c0029a0 <myprintf>
1c003f60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f64:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003f68:	14000805 	lu12i.w	$r5,64(0x40)
1c003f6c:	03808084 	ori	$r4,$r4,0x20
1c003f70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f74:	53f58fff 	b	-2676(0xffff58c) # 1c003500 <EXTI_ClearITPendingBit>
1c003f78:	03400000 	andi	$r0,$r0,0x0
1c003f7c:	03400000 	andi	$r0,$r0,0x0

1c003f80 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c003f80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f84:	0281d005 	addi.w	$r5,$r0,116(0x74)
1c003f88:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f8c:	02afd0c6 	addi.w	$r6,$r6,-1036(0xbf4)
1c003f90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f94:	02a91084 	addi.w	$r4,$r4,-1468(0xa44)
1c003f98:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f9c:	57ea07ff 	bl	-5628(0xfffea04) # 1c0029a0 <myprintf>
1c003fa0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fa4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003fa8:	14001005 	lu12i.w	$r5,128(0x80)
1c003fac:	03808084 	ori	$r4,$r4,0x20
1c003fb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fb4:	53f54fff 	b	-2740(0xffff54c) # 1c003500 <EXTI_ClearITPendingBit>
1c003fb8:	03400000 	andi	$r0,$r0,0x0
1c003fbc:	03400000 	andi	$r0,$r0,0x0

1c003fc0 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c003fc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fc4:	0281e405 	addi.w	$r5,$r0,121(0x79)
1c003fc8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003fcc:	02ae70c6 	addi.w	$r6,$r6,-1124(0xb9c)
1c003fd0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fd4:	02a81084 	addi.w	$r4,$r4,-1532(0xa04)
1c003fd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fdc:	57e9c7ff 	bl	-5692(0xfffe9c4) # 1c0029a0 <myprintf>
1c003fe0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fe4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c003fe8:	14002005 	lu12i.w	$r5,256(0x100)
1c003fec:	03808084 	ori	$r4,$r4,0x20
1c003ff0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ff4:	53f50fff 	b	-2804(0xffff50c) # 1c003500 <EXTI_ClearITPendingBit>
1c003ff8:	03400000 	andi	$r0,$r0,0x0
1c003ffc:	03400000 	andi	$r0,$r0,0x0

1c004000 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004000:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004004:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c004008:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00400c:	02ad10c6 	addi.w	$r6,$r6,-1212(0xb44)
1c004010:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004014:	02a71084 	addi.w	$r4,$r4,-1596(0x9c4)
1c004018:	29803061 	st.w	$r1,$r3,12(0xc)
1c00401c:	57e987ff 	bl	-5756(0xfffe984) # 1c0029a0 <myprintf>
1c004020:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004024:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c004028:	14004005 	lu12i.w	$r5,512(0x200)
1c00402c:	03808084 	ori	$r4,$r4,0x20
1c004030:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004034:	53f4cfff 	b	-2868(0xffff4cc) # 1c003500 <EXTI_ClearITPendingBit>
1c004038:	03400000 	andi	$r0,$r0,0x0
1c00403c:	03400000 	andi	$r0,$r0,0x0

1c004040 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004040:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004044:	02820c05 	addi.w	$r5,$r0,131(0x83)
1c004048:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00404c:	02abb0c6 	addi.w	$r6,$r6,-1300(0xaec)
1c004050:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004054:	02a61084 	addi.w	$r4,$r4,-1660(0x984)
1c004058:	29803061 	st.w	$r1,$r3,12(0xc)
1c00405c:	57e947ff 	bl	-5820(0xfffe944) # 1c0029a0 <myprintf>
1c004060:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004064:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c004068:	14008005 	lu12i.w	$r5,1024(0x400)
1c00406c:	03808084 	ori	$r4,$r4,0x20
1c004070:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004074:	53f48fff 	b	-2932(0xffff48c) # 1c003500 <EXTI_ClearITPendingBit>
1c004078:	03400000 	andi	$r0,$r0,0x0
1c00407c:	03400000 	andi	$r0,$r0,0x0

1c004080 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004084:	02822005 	addi.w	$r5,$r0,136(0x88)
1c004088:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00408c:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c004090:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004094:	02a51084 	addi.w	$r4,$r4,-1724(0x944)
1c004098:	29803061 	st.w	$r1,$r3,12(0xc)
1c00409c:	57e907ff 	bl	-5884(0xfffe904) # 1c0029a0 <myprintf>
1c0040a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040a4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0040a8:	14010005 	lu12i.w	$r5,2048(0x800)
1c0040ac:	03808084 	ori	$r4,$r4,0x20
1c0040b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040b4:	53f44fff 	b	-2996(0xffff44c) # 1c003500 <EXTI_ClearITPendingBit>
1c0040b8:	03400000 	andi	$r0,$r0,0x0
1c0040bc:	03400000 	andi	$r0,$r0,0x0

1c0040c0 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0040c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040c4:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c0040c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040cc:	02a8f0c6 	addi.w	$r6,$r6,-1476(0xa3c)
1c0040d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040d4:	02a41084 	addi.w	$r4,$r4,-1788(0x904)
1c0040d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040dc:	57e8c7ff 	bl	-5948(0xfffe8c4) # 1c0029a0 <myprintf>
1c0040e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040e4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0040e8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0040ec:	03808084 	ori	$r4,$r4,0x20
1c0040f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040f4:	53f40fff 	b	-3060(0xffff40c) # 1c003500 <EXTI_ClearITPendingBit>
1c0040f8:	03400000 	andi	$r0,$r0,0x0
1c0040fc:	03400000 	andi	$r0,$r0,0x0

1c004100 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004100:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004104:	02824805 	addi.w	$r5,$r0,146(0x92)
1c004108:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00410c:	02a790c6 	addi.w	$r6,$r6,-1564(0x9e4)
1c004110:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004114:	02a31084 	addi.w	$r4,$r4,-1852(0x8c4)
1c004118:	29803061 	st.w	$r1,$r3,12(0xc)
1c00411c:	57e887ff 	bl	-6012(0xfffe884) # 1c0029a0 <myprintf>
1c004120:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004124:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c004128:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00412c:	03808084 	ori	$r4,$r4,0x20
1c004130:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004134:	53f3cfff 	b	-3124(0xffff3cc) # 1c003500 <EXTI_ClearITPendingBit>
1c004138:	03400000 	andi	$r0,$r0,0x0
1c00413c:	03400000 	andi	$r0,$r0,0x0

1c004140 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004140:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004144:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c004148:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00414c:	02a630c6 	addi.w	$r6,$r6,-1652(0x98c)
1c004150:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004154:	02a21084 	addi.w	$r4,$r4,-1916(0x884)
1c004158:	29803061 	st.w	$r1,$r3,12(0xc)
1c00415c:	57e847ff 	bl	-6076(0xfffe844) # 1c0029a0 <myprintf>
1c004160:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004164:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c004168:	14080005 	lu12i.w	$r5,16384(0x4000)
1c00416c:	03808084 	ori	$r4,$r4,0x20
1c004170:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004174:	53f38fff 	b	-3188(0xffff38c) # 1c003500 <EXTI_ClearITPendingBit>
1c004178:	03400000 	andi	$r0,$r0,0x0
1c00417c:	03400000 	andi	$r0,$r0,0x0

1c004180 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004180:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004184:	02827005 	addi.w	$r5,$r0,156(0x9c)
1c004188:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00418c:	02a4d0c6 	addi.w	$r6,$r6,-1740(0x934)
1c004190:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004194:	02a11084 	addi.w	$r4,$r4,-1980(0x844)
1c004198:	29803061 	st.w	$r1,$r3,12(0xc)
1c00419c:	57e807ff 	bl	-6140(0xfffe804) # 1c0029a0 <myprintf>
1c0041a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041a4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0041a8:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0041ac:	03808084 	ori	$r4,$r4,0x20
1c0041b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041b4:	53f34fff 	b	-3252(0xffff34c) # 1c003500 <EXTI_ClearITPendingBit>
1c0041b8:	03400000 	andi	$r0,$r0,0x0
1c0041bc:	03400000 	andi	$r0,$r0,0x0

1c0041c0 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0041c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041c4:	02828405 	addi.w	$r5,$r0,161(0xa1)
1c0041c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041cc:	02a370c6 	addi.w	$r6,$r6,-1828(0x8dc)
1c0041d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041d4:	02a01084 	addi.w	$r4,$r4,-2044(0x804)
1c0041d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041dc:	57e7c7ff 	bl	-6204(0xfffe7c4) # 1c0029a0 <myprintf>
1c0041e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041e4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0041e8:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0041ec:	03808084 	ori	$r4,$r4,0x20
1c0041f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041f4:	53f30fff 	b	-3316(0xffff30c) # 1c003500 <EXTI_ClearITPendingBit>
1c0041f8:	03400000 	andi	$r0,$r0,0x0
1c0041fc:	03400000 	andi	$r0,$r0,0x0

1c004200 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004200:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004204:	02829c05 	addi.w	$r5,$r0,167(0xa7)
1c004208:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00420c:	02a210c6 	addi.w	$r6,$r6,-1916(0x884)
1c004210:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004214:	029f1084 	addi.w	$r4,$r4,1988(0x7c4)
1c004218:	29803061 	st.w	$r1,$r3,12(0xc)
1c00421c:	57e787ff 	bl	-6268(0xfffe784) # 1c0029a0 <myprintf>
1c004220:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004224:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c004228:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00422c:	03808084 	ori	$r4,$r4,0x20
1c004230:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004234:	53f2cfff 	b	-3380(0xffff2cc) # 1c003500 <EXTI_ClearITPendingBit>
1c004238:	03400000 	andi	$r0,$r0,0x0
1c00423c:	03400000 	andi	$r0,$r0,0x0

1c004240 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004240:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004244:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c004248:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00424c:	02a0b0c6 	addi.w	$r6,$r6,-2004(0x82c)
1c004250:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004254:	029e1084 	addi.w	$r4,$r4,1924(0x784)
1c004258:	29803061 	st.w	$r1,$r3,12(0xc)
1c00425c:	57e747ff 	bl	-6332(0xfffe744) # 1c0029a0 <myprintf>
1c004260:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004264:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c004268:	14800005 	lu12i.w	$r5,262144(0x40000)
1c00426c:	03808084 	ori	$r4,$r4,0x20
1c004270:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004274:	53f28fff 	b	-3444(0xffff28c) # 1c003500 <EXTI_ClearITPendingBit>
1c004278:	03400000 	andi	$r0,$r0,0x0
1c00427c:	03400000 	andi	$r0,$r0,0x0

1c004280 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004280:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004284:	0282c405 	addi.w	$r5,$r0,177(0xb1)
1c004288:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00428c:	029f50c6 	addi.w	$r6,$r6,2004(0x7d4)
1c004290:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004294:	029d1084 	addi.w	$r4,$r4,1860(0x744)
1c004298:	29803061 	st.w	$r1,$r3,12(0xc)
1c00429c:	57e707ff 	bl	-6396(0xfffe704) # 1c0029a0 <myprintf>
1c0042a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042a4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0042a8:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0042ac:	03808084 	ori	$r4,$r4,0x20
1c0042b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042b4:	53f24fff 	b	-3508(0xffff24c) # 1c003500 <EXTI_ClearITPendingBit>
1c0042b8:	03400000 	andi	$r0,$r0,0x0
1c0042bc:	03400000 	andi	$r0,$r0,0x0

1c0042c0 <ext_handler>:
ext_handler():
1c0042c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0042c8:	0380818d 	ori	$r13,$r12,0x20
1c0042cc:	29805078 	st.w	$r24,$r3,20(0x14)
1c0042d0:	288031b8 	ld.w	$r24,$r13,12(0xc)
1c0042d4:	288001ad 	ld.w	$r13,$r13,0
1c0042d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0042dc:	29806077 	st.w	$r23,$r3,24(0x18)
1c0042e0:	29804079 	st.w	$r25,$r3,16(0x10)
1c0042e4:	2980307a 	st.w	$r26,$r3,12(0xc)
1c0042e8:	1402000e 	lu12i.w	$r14,4096(0x1000)
1c0042ec:	0380f18c 	ori	$r12,$r12,0x3c
1c0042f0:	2980018e 	st.w	$r14,$r12,0
1c0042f4:	0014b718 	and	$r24,$r24,$r13
1c0042f8:	03400000 	andi	$r0,$r0,0x0
1c0042fc:	00150017 	move	$r23,$r0
1c004300:	1c00007a 	pcaddu12i	$r26,3(0x3)
1c004304:	02a9735a 	addi.w	$r26,$r26,-1444(0xa5c)
1c004308:	02808019 	addi.w	$r25,$r0,32(0x20)
1c00430c:	03400000 	andi	$r0,$r0,0x0
1c004310:	0017df0c 	srl.w	$r12,$r24,$r23
1c004314:	0340058c 	andi	$r12,$r12,0x1
1c004318:	0004eaed 	alsl.w	$r13,$r23,$r26,0x2
1c00431c:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c004320:	40000d80 	beqz	$r12,12(0xc) # 1c00432c <ext_handler+0x6c>
1c004324:	288001ac 	ld.w	$r12,$r13,0
1c004328:	4c000181 	jirl	$r1,$r12,0
1c00432c:	5fffe6f9 	bne	$r23,$r25,-28(0x3ffe4) # 1c004310 <ext_handler+0x50>
1c004330:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004334:	28806077 	ld.w	$r23,$r3,24(0x18)
1c004338:	28805078 	ld.w	$r24,$r3,20(0x14)
1c00433c:	28804079 	ld.w	$r25,$r3,16(0x10)
1c004340:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c004344:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004348:	4c000020 	jirl	$r0,$r1,0
1c00434c:	03400000 	andi	$r0,$r0,0x0

1c004350 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004350:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004354:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004358:	29803061 	st.w	$r1,$r3,12(0xc)
1c00435c:	0380f18d 	ori	$r13,$r12,0x3c
1c004360:	1400020e 	lu12i.w	$r14,16(0x10)
1c004364:	298001ae 	st.w	$r14,$r13,0
1c004368:	0380118c 	ori	$r12,$r12,0x4
1c00436c:	2880018c 	ld.w	$r12,$r12,0
1c004370:	57f213ff 	bl	-3568(0xffff210) # 1c003580 <WDG_DogFeed>
1c004374:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004378:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00437c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004380:	53ef93ff 	b	-4208(0xfffef90) # 1c003310 <Wake_Set>
1c004384:	03400000 	andi	$r0,$r0,0x0
1c004388:	03400000 	andi	$r0,$r0,0x0
1c00438c:	03400000 	andi	$r0,$r0,0x0

1c004390 <TOUCH>:
TOUCH():
1c004390:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004394:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004398:	0380118c 	ori	$r12,$r12,0x4
1c00439c:	29802077 	st.w	$r23,$r3,8(0x8)
1c0043a0:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0043a4:	28800197 	ld.w	$r23,$r12,0
1c0043a8:	28800184 	ld.w	$r4,$r12,0
1c0043ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043b0:	1400040f 	lu12i.w	$r15,32(0x20)
1c0043b4:	0380f1ad 	ori	$r13,$r13,0x3c
1c0043b8:	02803c0e 	addi.w	$r14,$r0,15(0xf)
1c0043bc:	298001af 	st.w	$r15,$r13,0
1c0043c0:	2980018e 	st.w	$r14,$r12,0
1c0043c4:	03403c84 	andi	$r4,$r4,0xf
1c0043c8:	57f3cbff 	bl	-3128(0xffff3c8) # 1c003790 <Printf_KeyType>
1c0043cc:	007bc2e4 	bstrpick.w	$r4,$r23,0x1b,0x10
1c0043d0:	57f343ff 	bl	-3264(0xffff340) # 1c003710 <Printf_KeyChannel>
1c0043d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043d8:	28802077 	ld.w	$r23,$r3,8(0x8)
1c0043dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043e0:	53f453ff 	b	-2992(0xffff450) # 1c003830 <Printf_KeyVal>
1c0043e4:	03400000 	andi	$r0,$r0,0x0
1c0043e8:	03400000 	andi	$r0,$r0,0x0
1c0043ec:	03400000 	andi	$r0,$r0,0x0

1c0043f0 <UART2_INT>:
UART2_INT():
1c0043f0:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0043f4:	1400080e 	lu12i.w	$r14,64(0x40)
1c0043f8:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0043fc:	0380f1ad 	ori	$r13,$r13,0x3c
1c004400:	0380098c 	ori	$r12,$r12,0x2
1c004404:	298001ae 	st.w	$r14,$r13,0
1c004408:	2a00018c 	ld.bu	$r12,$r12,0
1c00440c:	4c000020 	jirl	$r0,$r1,0

1c004410 <BAT_FAIL>:
BAT_FAIL():
1c004410:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004414:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004418:	29802077 	st.w	$r23,$r3,8(0x8)
1c00441c:	03801197 	ori	$r23,$r12,0x4
1c004420:	0380f18d 	ori	$r13,$r12,0x3c
1c004424:	288002ec 	ld.w	$r12,$r23,0
1c004428:	288002ee 	ld.w	$r14,$r23,0
1c00442c:	1401f010 	lu12i.w	$r16,3968(0xf80)
1c004430:	29803061 	st.w	$r1,$r3,12(0xc)
1c004434:	0014c1ce 	and	$r14,$r14,$r16
1c004438:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c00443c:	0077cd8c 	bstrpick.w	$r12,$r12,0x17,0x13
1c004440:	298001ae 	st.w	$r14,$r13,0
1c004444:	58003d8f 	beq	$r12,$r15,60(0x3c) # 1c004480 <BAT_FAIL+0x70>
1c004448:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00444c:	5c00258d 	bne	$r12,$r13,36(0x24) # 1c004470 <BAT_FAIL+0x60>
1c004450:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004454:	02972084 	addi.w	$r4,$r4,1480(0x5c8)
1c004458:	57e54bff 	bl	-6840(0xfffe548) # 1c0029a0 <myprintf>
1c00445c:	288002ec 	ld.w	$r12,$r23,0
1c004460:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004464:	03bffdad 	ori	$r13,$r13,0xfff
1c004468:	0014b58c 	and	$r12,$r12,$r13
1c00446c:	298002ec 	st.w	$r12,$r23,0
1c004470:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004474:	28802077 	ld.w	$r23,$r3,8(0x8)
1c004478:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00447c:	4c000020 	jirl	$r0,$r1,0
1c004480:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004484:	0295c084 	addi.w	$r4,$r4,1392(0x570)
1c004488:	57e51bff 	bl	-6888(0xfffe518) # 1c0029a0 <myprintf>
1c00448c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004490:	298002e0 	st.w	$r0,$r23,0
1c004494:	28802077 	ld.w	$r23,$r3,8(0x8)
1c004498:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00449c:	4c000020 	jirl	$r0,$r1,0

1c0044a0 <intc_handler>:
intc_handler():
1c0044a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0044a4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0044a8:	29805078 	st.w	$r24,$r3,20(0x14)
1c0044ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0044b0:	29806077 	st.w	$r23,$r3,24(0x18)
1c0044b4:	29804079 	st.w	$r25,$r3,16(0x10)
1c0044b8:	2980307a 	st.w	$r26,$r3,12(0xc)
1c0044bc:	0380158c 	ori	$r12,$r12,0x5
1c0044c0:	2a000197 	ld.bu	$r23,$r12,0
1c0044c4:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
1c0044c8:	034006f8 	andi	$r24,$r23,0x1
1c0044cc:	44004700 	bnez	$r24,68(0x44) # 1c004510 <intc_handler+0x70>
1c0044d0:	034012ec 	andi	$r12,$r23,0x4
1c0044d4:	44018580 	bnez	$r12,388(0x184) # 1c004658 <intc_handler+0x1b8>
1c0044d8:	034022f7 	andi	$r23,$r23,0x8
1c0044dc:	4400f6e0 	bnez	$r23,244(0xf4) # 1c0045d0 <intc_handler+0x130>
1c0044e0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0044e4:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0044e8:	03800d8c 	ori	$r12,$r12,0x3
1c0044ec:	2900018d 	st.b	$r13,$r12,0
1c0044f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0044f4:	28806077 	ld.w	$r23,$r3,24(0x18)
1c0044f8:	28805078 	ld.w	$r24,$r3,20(0x14)
1c0044fc:	28804079 	ld.w	$r25,$r3,16(0x10)
1c004500:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c004504:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004508:	4c000020 	jirl	$r0,$r1,0
1c00450c:	03400000 	andi	$r0,$r0,0x0
1c004510:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004514:	57f55fff 	bl	-2724(0xffff55c) # 1c003a70 <TIM_GetITStatus>
1c004518:	43ffb89f 	beqz	$r4,-72(0x7fffb8) # 1c0044d0 <intc_handler+0x30>
1c00451c:	1cc7ffba 	pcaddu12i	$r26,409597(0x63ffd)
1c004520:	28ac935a 	ld.w	$r26,$r26,-1244(0xb24)
1c004524:	2880034c 	ld.w	$r12,$r26,0
1c004528:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00452c:	5801f98d 	beq	$r12,$r13,504(0x1f8) # 1c004724 <intc_handler+0x284>
1c004530:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004534:	1cc7ff99 	pcaddu12i	$r25,409596(0x63ffc)
1c004538:	02ab7339 	addi.w	$r25,$r25,-1316(0xadc)
1c00453c:	5802498d 	beq	$r12,$r13,584(0x248) # 1c004784 <intc_handler+0x2e4>
1c004540:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c004544:	28abe1ad 	ld.w	$r13,$r13,-1288(0xaf8)
1c004548:	1cc7ffae 	pcaddu12i	$r14,409597(0x63ffd)
1c00454c:	28ab31ce 	ld.w	$r14,$r14,-1332(0xacc)
1c004550:	288001ac 	ld.w	$r12,$r13,0
1c004554:	288001ce 	ld.w	$r14,$r14,0
1c004558:	6001a1cc 	blt	$r14,$r12,416(0x1a0) # 1c0046f8 <intc_handler+0x258>
1c00455c:	2a000338 	ld.bu	$r24,$r25,0
1c004560:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004564:	298001ac 	st.w	$r12,$r13,0
1c004568:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00456c:	00678318 	bstrpick.w	$r24,$r24,0x7,0x0
1c004570:	0015030d 	move	$r13,$r24
1c004574:	2880034c 	ld.w	$r12,$r26,0
1c004578:	29000338 	st.b	$r24,$r25,0
1c00457c:	680009ac 	bltu	$r13,$r12,8(0x8) # 1c004584 <intc_handler+0xe4>
1c004580:	29000320 	st.b	$r0,$r25,0
1c004584:	1cc7ff98 	pcaddu12i	$r24,409596(0x63ffc)
1c004588:	02aa4318 	addi.w	$r24,$r24,-1392(0xa90)
1c00458c:	2880030c 	ld.w	$r12,$r24,0
1c004590:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004594:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004598:	2980030c 	st.w	$r12,$r24,0
1c00459c:	57f4f7ff 	bl	-2828(0xffff4f4) # 1c003a90 <TIM_ClearIT>
1c0045a0:	2880030d 	ld.w	$r13,$r24,0
1c0045a4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0045a8:	67ff298d 	bge	$r12,$r13,-216(0x3ff28) # 1c0044d0 <intc_handler+0x30>
1c0045ac:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c0045b0:	28a971ad 	ld.w	$r13,$r13,-1444(0xa5c)
1c0045b4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0045b8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0045bc:	02a9818c 	addi.w	$r12,$r12,-1440(0xa60)
1c0045c0:	29800300 	st.w	$r0,$r24,0
1c0045c4:	290001ae 	st.b	$r14,$r13,0
1c0045c8:	29000180 	st.b	$r0,$r12,0
1c0045cc:	53ff07ff 	b	-252(0xfffff04) # 1c0044d0 <intc_handler+0x30>
1c0045d0:	1cc7ff97 	pcaddu12i	$r23,409596(0x63ffc)
1c0045d4:	02a922f7 	addi.w	$r23,$r23,-1464(0xa48)
1c0045d8:	2a0002f8 	ld.bu	$r24,$r23,0
1c0045dc:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0045e0:	0280070c 	addi.w	$r12,$r24,1(0x1)
1c0045e4:	290002ec 	st.b	$r12,$r23,0
1c0045e8:	57e7fbff 	bl	-6152(0xfffe7f8) # 1c002de0 <UART_ReceiveData>
1c0045ec:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0045f0:	28a9718c 	ld.w	$r12,$r12,-1444(0xa5c)
1c0045f4:	2a0002ee 	ld.bu	$r14,$r23,0
1c0045f8:	0010618c 	add.w	$r12,$r12,$r24
1c0045fc:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c004600:	29000184 	st.b	$r4,$r12,0
1c004604:	6c000dae 	bgeu	$r13,$r14,12(0xc) # 1c004610 <intc_handler+0x170>
1c004608:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00460c:	290002ec 	st.b	$r12,$r23,0
1c004610:	1cc7ff8e 	pcaddu12i	$r14,409596(0x63ffc)
1c004614:	02a811ce 	addi.w	$r14,$r14,-1532(0xa04)
1c004618:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00461c:	298001c0 	st.w	$r0,$r14,0
1c004620:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004624:	03800d8c 	ori	$r12,$r12,0x3
1c004628:	2900018d 	st.b	$r13,$r12,0
1c00462c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004630:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004634:	03800d8c 	ori	$r12,$r12,0x3
1c004638:	2900018d 	st.b	$r13,$r12,0
1c00463c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004640:	28806077 	ld.w	$r23,$r3,24(0x18)
1c004644:	28805078 	ld.w	$r24,$r3,20(0x14)
1c004648:	28804079 	ld.w	$r25,$r3,16(0x10)
1c00464c:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c004650:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004654:	4c000020 	jirl	$r0,$r1,0
1c004658:	1cc7ff98 	pcaddu12i	$r24,409596(0x63ffc)
1c00465c:	02a6eb18 	addi.w	$r24,$r24,-1606(0x9ba)
1c004660:	2a000319 	ld.bu	$r25,$r24,0
1c004664:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c004668:	0280072c 	addi.w	$r12,$r25,1(0x1)
1c00466c:	2900030c 	st.b	$r12,$r24,0
1c004670:	57e773ff 	bl	-6288(0xfffe770) # 1c002de0 <UART_ReceiveData>
1c004674:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004678:	28a7218c 	ld.w	$r12,$r12,-1592(0x9c8)
1c00467c:	2800030d 	ld.b	$r13,$r24,0
1c004680:	0010658c 	add.w	$r12,$r12,$r25
1c004684:	29000184 	st.b	$r4,$r12,0
1c004688:	600039a0 	blt	$r13,$r0,56(0x38) # 1c0046c0 <intc_handler+0x220>
1c00468c:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c004690:	02a615ad 	addi.w	$r13,$r13,-1659(0x985)
1c004694:	1cc7ff8f 	pcaddu12i	$r15,409596(0x63ffc)
1c004698:	02a601ef 	addi.w	$r15,$r15,-1664(0x980)
1c00469c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0046a0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0046a4:	290001ae 	st.b	$r14,$r13,0
1c0046a8:	298001e0 	st.w	$r0,$r15,0
1c0046ac:	03800d8c 	ori	$r12,$r12,0x3
1c0046b0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0046b4:	2900018d 	st.b	$r13,$r12,0
1c0046b8:	53fe23ff 	b	-480(0xffffe20) # 1c0044d8 <intc_handler+0x38>
1c0046bc:	03400000 	andi	$r0,$r0,0x0
1c0046c0:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0046c4:	2900030c 	st.b	$r12,$r24,0
1c0046c8:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c0046cc:	02a525ad 	addi.w	$r13,$r13,-1719(0x949)
1c0046d0:	1cc7ff8f 	pcaddu12i	$r15,409596(0x63ffc)
1c0046d4:	02a511ef 	addi.w	$r15,$r15,-1724(0x944)
1c0046d8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0046dc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0046e0:	290001ae 	st.b	$r14,$r13,0
1c0046e4:	298001e0 	st.w	$r0,$r15,0
1c0046e8:	03800d8c 	ori	$r12,$r12,0x3
1c0046ec:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0046f0:	2900018d 	st.b	$r13,$r12,0
1c0046f4:	53fde7ff 	b	-540(0xffffde4) # 1c0044d8 <intc_handler+0x38>
1c0046f8:	1cc7ffaf 	pcaddu12i	$r15,409597(0x63ffd)
1c0046fc:	28a4f1ef 	ld.w	$r15,$r15,-1732(0x93c)
1c004700:	02800810 	addi.w	$r16,$r0,2(0x2)
1c004704:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004708:	02a4218c 	addi.w	$r12,$r12,-1784(0x908)
1c00470c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c004710:	298001a0 	st.w	$r0,$r13,0
1c004714:	298001f0 	st.w	$r16,$r15,0
1c004718:	2980018e 	st.w	$r14,$r12,0
1c00471c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004720:	53fe57ff 	b	-428(0xffffe54) # 1c004574 <intc_handler+0xd4>
1c004724:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004728:	28a4418c 	ld.w	$r12,$r12,-1776(0x910)
1c00472c:	2880018c 	ld.w	$r12,$r12,0
1c004730:	40003180 	beqz	$r12,48(0x30) # 1c004760 <intc_handler+0x2c0>
1c004734:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004738:	58008d8d 	beq	$r12,$r13,140(0x8c) # 1c0047c4 <intc_handler+0x324>
1c00473c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c004740:	1cc7ff99 	pcaddu12i	$r25,409596(0x63ffc)
1c004744:	02a34339 	addi.w	$r25,$r25,-1840(0x8d0)
1c004748:	5ffdf98d 	bne	$r12,$r13,-520(0x3fdf8) # 1c004540 <intc_handler+0xa0>
1c00474c:	57ccf7ff 	bl	-13068(0xfffccf4) # 1c001440 <BYJ_gpio_stop>
1c004750:	1cc7ff99 	pcaddu12i	$r25,409596(0x63ffc)
1c004754:	02a30339 	addi.w	$r25,$r25,-1856(0x8c0)
1c004758:	53fdebff 	b	-536(0xffffde8) # 1c004540 <intc_handler+0xa0>
1c00475c:	03400000 	andi	$r0,$r0,0x0
1c004760:	1cc7ff99 	pcaddu12i	$r25,409596(0x63ffc)
1c004764:	02a2c339 	addi.w	$r25,$r25,-1872(0x8b0)
1c004768:	2a00032d 	ld.bu	$r13,$r25,0
1c00476c:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004770:	02a4318c 	addi.w	$r12,$r12,-1780(0x90c)
1c004774:	0010358c 	add.w	$r12,$r12,$r13
1c004778:	2a000184 	ld.bu	$r4,$r12,0
1c00477c:	57cc57ff 	bl	-13228(0xfffcc54) # 1c0013d0 <BYJ_gpio_write>
1c004780:	53fdc3ff 	b	-576(0xffffdc0) # 1c004540 <intc_handler+0xa0>
1c004784:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004788:	28a2c18c 	ld.w	$r12,$r12,-1872(0x8b0)
1c00478c:	2880018c 	ld.w	$r12,$r12,0
1c004790:	40001980 	beqz	$r12,24(0x18) # 1c0047a8 <intc_handler+0x308>
1c004794:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004798:	5800518d 	beq	$r12,$r13,80(0x50) # 1c0047e8 <intc_handler+0x348>
1c00479c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0047a0:	5ffda18d 	bne	$r12,$r13,-608(0x3fda0) # 1c004540 <intc_handler+0xa0>
1c0047a4:	53ffabff 	b	-88(0xfffffa8) # 1c00474c <intc_handler+0x2ac>
1c0047a8:	2a00032d 	ld.bu	$r13,$r25,0
1c0047ac:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0047b0:	02a3118c 	addi.w	$r12,$r12,-1852(0x8c4)
1c0047b4:	0010358c 	add.w	$r12,$r12,$r13
1c0047b8:	2a000184 	ld.bu	$r4,$r12,0
1c0047bc:	57cc17ff 	bl	-13292(0xfffcc14) # 1c0013d0 <BYJ_gpio_write>
1c0047c0:	53fd83ff 	b	-640(0xffffd80) # 1c004540 <intc_handler+0xa0>
1c0047c4:	1cc7ff99 	pcaddu12i	$r25,409596(0x63ffc)
1c0047c8:	02a13339 	addi.w	$r25,$r25,-1972(0x84c)
1c0047cc:	2a00032d 	ld.bu	$r13,$r25,0
1c0047d0:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0047d4:	02a2c18c 	addi.w	$r12,$r12,-1872(0x8b0)
1c0047d8:	0010358c 	add.w	$r12,$r12,$r13
1c0047dc:	2a000184 	ld.bu	$r4,$r12,0
1c0047e0:	57cbf3ff 	bl	-13328(0xfffcbf0) # 1c0013d0 <BYJ_gpio_write>
1c0047e4:	53fd5fff 	b	-676(0xffffd5c) # 1c004540 <intc_handler+0xa0>
1c0047e8:	2a00032d 	ld.bu	$r13,$r25,0
1c0047ec:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0047f0:	02a2218c 	addi.w	$r12,$r12,-1912(0x888)
1c0047f4:	0010358c 	add.w	$r12,$r12,$r13
1c0047f8:	2a000184 	ld.bu	$r4,$r12,0
1c0047fc:	57cbd7ff 	bl	-13356(0xfffcbd4) # 1c0013d0 <BYJ_gpio_write>
1c004800:	53fd43ff 	b	-704(0xffffd40) # 1c004540 <intc_handler+0xa0>
1c004804:	03400000 	andi	$r0,$r0,0x0
1c004808:	03400000 	andi	$r0,$r0,0x0
1c00480c:	03400000 	andi	$r0,$r0,0x0

1c004810 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004810:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004814:	29803061 	st.w	$r1,$r3,12(0xc)
1c004818:	57eaebff 	bl	-5400(0xfffeae8) # 1c003300 <Set_Timer_clear>
1c00481c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004820:	02888084 	addi.w	$r4,$r4,544(0x220)
1c004824:	57e17fff 	bl	-7812(0xfffe17c) # 1c0029a0 <myprintf>
1c004828:	02818804 	addi.w	$r4,$r0,98(0x62)
1c00482c:	57e717ff 	bl	-6380(0xfffe714) # 1c002f40 <Uart0_send>
1c004830:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004834:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004838:	53eabbff 	b	-5448(0xfffeab8) # 1c0032f0 <Set_Timer_stop>
1c00483c:	03400000 	andi	$r0,$r0,0x0

1c004840 <check_password>:
check_password():
1c004840:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004844:	29801078 	st.w	$r24,$r3,4(0x4)
1c004848:	1cc7ff78 	pcaddu12i	$r24,409595(0x63ffb)
1c00484c:	029f6318 	addi.w	$r24,$r24,2008(0x7d8)
1c004850:	29803061 	st.w	$r1,$r3,12(0xc)
1c004854:	29802077 	st.w	$r23,$r3,8(0x8)
1c004858:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c00485c:	02a0d1ad 	addi.w	$r13,$r13,-1996(0x834)
1c004860:	0015030c 	move	$r12,$r24
1c004864:	02801310 	addi.w	$r16,$r24,4(0x4)
1c004868:	2a00018f 	ld.bu	$r15,$r12,0
1c00486c:	2a0001ae 	ld.bu	$r14,$r13,0
1c004870:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004874:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c004878:	5c019dee 	bne	$r15,$r14,412(0x19c) # 1c004a14 <check_password+0x1d4>
1c00487c:	5fffee0c 	bne	$r16,$r12,-20(0x3ffec) # 1c004868 <check_password+0x28>
1c004880:	02800806 	addi.w	$r6,$r0,2(0x2)
1c004884:	00150005 	move	$r5,$r0
1c004888:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00488c:	57d307ff 	bl	-11516(0xfffd304) # 1c001b90 <OLED_ShowCHinese>
1c004890:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c004894:	00150005 	move	$r5,$r0
1c004898:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00489c:	57d2f7ff 	bl	-11532(0xfffd2f4) # 1c001b90 <OLED_ShowCHinese>
1c0048a0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0048a4:	00150005 	move	$r5,$r0
1c0048a8:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0048ac:	57d2e7ff 	bl	-11548(0xfffd2e4) # 1c001b90 <OLED_ShowCHinese>
1c0048b0:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c0048b4:	029dadad 	addi.w	$r13,$r13,1899(0x76b)
1c0048b8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0048bc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0048c0:	029d818c 	addi.w	$r12,$r12,1888(0x760)
1c0048c4:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c0048c8:	290001ae 	st.b	$r14,$r13,0
1c0048cc:	29000180 	st.b	$r0,$r12,0
1c0048d0:	57eb83ff 	bl	-5248(0xfffeb80) # 1c003450 <delay_ms>
1c0048d4:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0048d8:	00150005 	move	$r5,$r0
1c0048dc:	00150004 	move	$r4,$r0
1c0048e0:	57d2b3ff 	bl	-11600(0xfffd2b0) # 1c001b90 <OLED_ShowCHinese>
1c0048e4:	02806806 	addi.w	$r6,$r0,26(0x1a)
1c0048e8:	00150005 	move	$r5,$r0
1c0048ec:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0048f0:	57d2a3ff 	bl	-11616(0xfffd2a0) # 1c001b90 <OLED_ShowCHinese>
1c0048f4:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c0048f8:	00150005 	move	$r5,$r0
1c0048fc:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004900:	57d293ff 	bl	-11632(0xfffd290) # 1c001b90 <OLED_ShowCHinese>
1c004904:	02805806 	addi.w	$r6,$r0,22(0x16)
1c004908:	00150005 	move	$r5,$r0
1c00490c:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c004910:	57d283ff 	bl	-11648(0xfffd280) # 1c001b90 <OLED_ShowCHinese>
1c004914:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004918:	00150005 	move	$r5,$r0
1c00491c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004920:	57d273ff 	bl	-11664(0xfffd270) # 1c001b90 <OLED_ShowCHinese>
1c004924:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004928:	57ca0bff 	bl	-13816(0xfffca08) # 1c001330 <BYJ_init>
1c00492c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004930:	57f0e3ff 	bl	-3872(0xffff0e0) # 1c003a10 <timer_init>
1c004934:	14000027 	lu12i.w	$r7,1(0x1)
1c004938:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00493c:	289bf18c 	ld.w	$r12,$r12,1788(0x6fc)
1c004940:	1cc7ff97 	pcaddu12i	$r23,409596(0x63ffc)
1c004944:	289b82f7 	ld.w	$r23,$r23,1760(0x6e0)
1c004948:	1cc7ff8f 	pcaddu12i	$r15,409596(0x63ffc)
1c00494c:	289bc1ef 	ld.w	$r15,$r15,1776(0x6f0)
1c004950:	1cc7ff8e 	pcaddu12i	$r14,409596(0x63ffc)
1c004954:	289b71ce 	ld.w	$r14,$r14,1756(0x6dc)
1c004958:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00495c:	03bd00e7 	ori	$r7,$r7,0xf40
1c004960:	02802006 	addi.w	$r6,$r0,8(0x8)
1c004964:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004968:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c00496c:	2980018d 	st.w	$r13,$r12,0
1c004970:	298001e0 	st.w	$r0,$r15,0
1c004974:	298001c0 	st.w	$r0,$r14,0
1c004978:	298002e0 	st.w	$r0,$r23,0
1c00497c:	57cb27ff 	bl	-13532(0xfffcb24) # 1c0014a0 <BYJ_run_angle>
1c004980:	288002ec 	ld.w	$r12,$r23,0
1c004984:	44001580 	bnez	$r12,20(0x14) # 1c004998 <check_password+0x158>
1c004988:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00498c:	57eac7ff 	bl	-5436(0xfffeac4) # 1c003450 <delay_ms>
1c004990:	288002ec 	ld.w	$r12,$r23,0
1c004994:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004988 <check_password+0x148>
1c004998:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00499c:	57f077ff 	bl	-3980(0xffff074) # 1c003a10 <timer_init>
1c0049a0:	02806006 	addi.w	$r6,$r0,24(0x18)
1c0049a4:	00150005 	move	$r5,$r0
1c0049a8:	00150004 	move	$r4,$r0
1c0049ac:	57d1e7ff 	bl	-11804(0xfffd1e4) # 1c001b90 <OLED_ShowCHinese>
1c0049b0:	02805c06 	addi.w	$r6,$r0,23(0x17)
1c0049b4:	00150005 	move	$r5,$r0
1c0049b8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0049bc:	57d1d7ff 	bl	-11820(0xfffd1d4) # 1c001b90 <OLED_ShowCHinese>
1c0049c0:	02805806 	addi.w	$r6,$r0,22(0x16)
1c0049c4:	00150005 	move	$r5,$r0
1c0049c8:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0049cc:	57d1c7ff 	bl	-11836(0xfffd1c4) # 1c001b90 <OLED_ShowCHinese>
1c0049d0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0049d4:	00150005 	move	$r5,$r0
1c0049d8:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c0049dc:	57d1b7ff 	bl	-11852(0xfffd1b4) # 1c001b90 <OLED_ShowCHinese>
1c0049e0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0049e4:	00150005 	move	$r5,$r0
1c0049e8:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0049ec:	57d1a7ff 	bl	-11868(0xfffd1a4) # 1c001b90 <OLED_ShowCHinese>
1c0049f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0049f4:	0298a98c 	addi.w	$r12,$r12,1578(0x62a)
1c0049f8:	29000180 	st.b	$r0,$r12,0
1c0049fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a00:	29800300 	st.w	$r0,$r24,0
1c004a04:	28802077 	ld.w	$r23,$r3,8(0x8)
1c004a08:	28801078 	ld.w	$r24,$r3,4(0x4)
1c004a0c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a10:	4c000020 	jirl	$r0,$r1,0
1c004a14:	02801006 	addi.w	$r6,$r0,4(0x4)
1c004a18:	00150005 	move	$r5,$r0
1c004a1c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004a20:	57d173ff 	bl	-11920(0xfffd170) # 1c001b90 <OLED_ShowCHinese>
1c004a24:	02801406 	addi.w	$r6,$r0,5(0x5)
1c004a28:	00150005 	move	$r5,$r0
1c004a2c:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c004a30:	57d163ff 	bl	-11936(0xfffd160) # 1c001b90 <OLED_ShowCHinese>
1c004a34:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004a38:	00150005 	move	$r5,$r0
1c004a3c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004a40:	57d153ff 	bl	-11952(0xfffd150) # 1c001b90 <OLED_ShowCHinese>
1c004a44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004a4c:	0297518c 	addi.w	$r12,$r12,1492(0x5d4)
1c004a50:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004a54:	2900018d 	st.b	$r13,$r12,0
1c004a58:	28802077 	ld.w	$r23,$r3,8(0x8)
1c004a5c:	28801078 	ld.w	$r24,$r3,4(0x4)
1c004a60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a64:	4c000020 	jirl	$r0,$r1,0
1c004a68:	03400000 	andi	$r0,$r0,0x0
1c004a6c:	03400000 	andi	$r0,$r0,0x0

1c004a70 <lock_system>:
lock_system():
1c004a70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a74:	29801078 	st.w	$r24,$r3,4(0x4)
1c004a78:	1cc7ff78 	pcaddu12i	$r24,409595(0x63ffb)
1c004a7c:	02968718 	addi.w	$r24,$r24,1441(0x5a1)
1c004a80:	2a00030c 	ld.bu	$r12,$r24,0
1c004a84:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a88:	29802077 	st.w	$r23,$r3,8(0x8)
1c004a8c:	29800079 	st.w	$r25,$r3,0
1c004a90:	40002180 	beqz	$r12,32(0x20) # 1c004ab0 <lock_system+0x40>
1c004a94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a98:	29000300 	st.b	$r0,$r24,0
1c004a9c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c004aa0:	28801078 	ld.w	$r24,$r3,4(0x4)
1c004aa4:	28800079 	ld.w	$r25,$r3,0
1c004aa8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004aac:	4c000020 	jirl	$r0,$r1,0
1c004ab0:	02800419 	addi.w	$r25,$r0,1(0x1)
1c004ab4:	02806406 	addi.w	$r6,$r0,25(0x19)
1c004ab8:	00150005 	move	$r5,$r0
1c004abc:	00150004 	move	$r4,$r0
1c004ac0:	29000319 	st.b	$r25,$r24,0
1c004ac4:	57d0cfff 	bl	-12084(0xfffd0cc) # 1c001b90 <OLED_ShowCHinese>
1c004ac8:	02806806 	addi.w	$r6,$r0,26(0x1a)
1c004acc:	00150005 	move	$r5,$r0
1c004ad0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004ad4:	57d0bfff 	bl	-12100(0xfffd0bc) # 1c001b90 <OLED_ShowCHinese>
1c004ad8:	02805406 	addi.w	$r6,$r0,21(0x15)
1c004adc:	00150005 	move	$r5,$r0
1c004ae0:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004ae4:	57d0afff 	bl	-12116(0xfffd0ac) # 1c001b90 <OLED_ShowCHinese>
1c004ae8:	02805806 	addi.w	$r6,$r0,22(0x16)
1c004aec:	00150005 	move	$r5,$r0
1c004af0:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c004af4:	57d09fff 	bl	-12132(0xfffd09c) # 1c001b90 <OLED_ShowCHinese>
1c004af8:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004afc:	00150005 	move	$r5,$r0
1c004b00:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004b04:	57d08fff 	bl	-12148(0xfffd08c) # 1c001b90 <OLED_ShowCHinese>
1c004b08:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c004b0c:	02944dad 	addi.w	$r13,$r13,1299(0x513)
1c004b10:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004b14:	0294318c 	addi.w	$r12,$r12,1292(0x50c)
1c004b18:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004b1c:	290001a0 	st.b	$r0,$r13,0
1c004b20:	29000199 	st.b	$r25,$r12,0
1c004b24:	57c80fff 	bl	-14324(0xfffc80c) # 1c001330 <BYJ_init>
1c004b28:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004b2c:	57eee7ff 	bl	-4380(0xfffeee4) # 1c003a10 <timer_init>
1c004b30:	14000027 	lu12i.w	$r7,1(0x1)
1c004b34:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004b38:	2894018c 	ld.w	$r12,$r12,1280(0x500)
1c004b3c:	1cc7ff97 	pcaddu12i	$r23,409596(0x63ffc)
1c004b40:	289392f7 	ld.w	$r23,$r23,1252(0x4e4)
1c004b44:	1cc7ff8f 	pcaddu12i	$r15,409596(0x63ffc)
1c004b48:	2893d1ef 	ld.w	$r15,$r15,1268(0x4f4)
1c004b4c:	1cc7ff8e 	pcaddu12i	$r14,409596(0x63ffc)
1c004b50:	289381ce 	ld.w	$r14,$r14,1248(0x4e0)
1c004b54:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c004b58:	03bd00e7 	ori	$r7,$r7,0xf40
1c004b5c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c004b60:	00150005 	move	$r5,$r0
1c004b64:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c004b68:	2980018d 	st.w	$r13,$r12,0
1c004b6c:	298001e0 	st.w	$r0,$r15,0
1c004b70:	298001c0 	st.w	$r0,$r14,0
1c004b74:	298002e0 	st.w	$r0,$r23,0
1c004b78:	57c92bff 	bl	-14040(0xfffc928) # 1c0014a0 <BYJ_run_angle>
1c004b7c:	288002ec 	ld.w	$r12,$r23,0
1c004b80:	44001580 	bnez	$r12,20(0x14) # 1c004b94 <lock_system+0x124>
1c004b84:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004b88:	57e8cbff 	bl	-5944(0xfffe8c8) # 1c003450 <delay_ms>
1c004b8c:	288002ec 	ld.w	$r12,$r23,0
1c004b90:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004b84 <lock_system+0x114>
1c004b94:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004b98:	57ee7bff 	bl	-4488(0xfffee78) # 1c003a10 <timer_init>
1c004b9c:	02806006 	addi.w	$r6,$r0,24(0x18)
1c004ba0:	00150005 	move	$r5,$r0
1c004ba4:	00150004 	move	$r4,$r0
1c004ba8:	57cfebff 	bl	-12312(0xfffcfe8) # 1c001b90 <OLED_ShowCHinese>
1c004bac:	02805406 	addi.w	$r6,$r0,21(0x15)
1c004bb0:	00150005 	move	$r5,$r0
1c004bb4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004bb8:	57cfdbff 	bl	-12328(0xfffcfd8) # 1c001b90 <OLED_ShowCHinese>
1c004bbc:	02805806 	addi.w	$r6,$r0,22(0x16)
1c004bc0:	00150005 	move	$r5,$r0
1c004bc4:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004bc8:	57cfcbff 	bl	-12344(0xfffcfc8) # 1c001b90 <OLED_ShowCHinese>
1c004bcc:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c004bd0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004bd4:	00150005 	move	$r5,$r0
1c004bd8:	57cfbbff 	bl	-12360(0xfffcfb8) # 1c001b90 <OLED_ShowCHinese>
1c004bdc:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004be0:	57e873ff 	bl	-6032(0xfffe870) # 1c003450 <delay_ms>
1c004be4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004be8:	29000300 	st.b	$r0,$r24,0
1c004bec:	28802077 	ld.w	$r23,$r3,8(0x8)
1c004bf0:	28801078 	ld.w	$r24,$r3,4(0x4)
1c004bf4:	28800079 	ld.w	$r25,$r3,0
1c004bf8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004bfc:	4c000020 	jirl	$r0,$r1,0

1c004c00 <check_serial_data>:
check_serial_data():
1c004c00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c04:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c08:	29802077 	st.w	$r23,$r3,8(0x8)
1c004c0c:	29801078 	st.w	$r24,$r3,4(0x4)
1c004c10:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004c14:	288fe18c 	ld.w	$r12,$r12,1016(0x3f8)
1c004c18:	2a000197 	ld.bu	$r23,$r12,0
1c004c1c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004c20:	580032ed 	beq	$r23,$r13,48(0x30) # 1c004c50 <check_serial_data+0x50>
1c004c24:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004c28:	288fb18c 	ld.w	$r12,$r12,1004(0x3ec)
1c004c2c:	2a000197 	ld.bu	$r23,$r12,0
1c004c30:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004c34:	5800c2ed 	beq	$r23,$r13,192(0xc0) # 1c004cf4 <check_serial_data+0xf4>
1c004c38:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c3c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c004c40:	28801078 	ld.w	$r24,$r3,4(0x4)
1c004c44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c48:	4c000020 	jirl	$r0,$r1,0
1c004c4c:	03400000 	andi	$r0,$r0,0x0
1c004c50:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004c54:	1c000045 	pcaddu12i	$r5,2(0x2)
1c004c58:	028620a5 	addi.w	$r5,$r5,392(0x188)
1c004c5c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004c60:	288fb084 	ld.w	$r4,$r4,1004(0x3ec)
1c004c64:	29000180 	st.b	$r0,$r12,0
1c004c68:	57e82bff 	bl	-6104(0xfffe828) # 1c003490 <strncmp>
1c004c6c:	1cc7ff98 	pcaddu12i	$r24,409596(0x63ffc)
1c004c70:	288f7318 	ld.w	$r24,$r24,988(0x3dc)
1c004c74:	44001480 	bnez	$r4,20(0x14) # 1c004c88 <check_serial_data+0x88>
1c004c78:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c7c:	028e8d8c 	addi.w	$r12,$r12,931(0x3a3)
1c004c80:	2a00018d 	ld.bu	$r13,$r12,0
1c004c84:	400111a0 	beqz	$r13,272(0x110) # 1c004d94 <check_serial_data+0x194>
1c004c88:	02801006 	addi.w	$r6,$r0,4(0x4)
1c004c8c:	1c000045 	pcaddu12i	$r5,2(0x2)
1c004c90:	028560a5 	addi.w	$r5,$r5,344(0x158)
1c004c94:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004c98:	288ed084 	ld.w	$r4,$r4,948(0x3b4)
1c004c9c:	57e7f7ff 	bl	-6156(0xfffe7f4) # 1c003490 <strncmp>
1c004ca0:	44001480 	bnez	$r4,20(0x14) # 1c004cb4 <check_serial_data+0xb4>
1c004ca4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ca8:	028ddd8c 	addi.w	$r12,$r12,887(0x377)
1c004cac:	2a00018c 	ld.bu	$r12,$r12,0
1c004cb0:	44027180 	bnez	$r12,624(0x270) # 1c004f20 <check_serial_data+0x320>
1c004cb4:	02801406 	addi.w	$r6,$r0,5(0x5)
1c004cb8:	1c000045 	pcaddu12i	$r5,2(0x2)
1c004cbc:	0284d0a5 	addi.w	$r5,$r5,308(0x134)
1c004cc0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004cc4:	288e2084 	ld.w	$r4,$r4,904(0x388)
1c004cc8:	57e7cbff 	bl	-6200(0xfffe7c8) # 1c003490 <strncmp>
1c004ccc:	4000a480 	beqz	$r4,164(0xa4) # 1c004d70 <check_serial_data+0x170>
1c004cd0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cd4:	288df18c 	ld.w	$r12,$r12,892(0x37c)
1c004cd8:	29000180 	st.b	$r0,$r12,0
1c004cdc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ce0:	288cd18c 	ld.w	$r12,$r12,820(0x334)
1c004ce4:	2a000197 	ld.bu	$r23,$r12,0
1c004ce8:	29000300 	st.b	$r0,$r24,0
1c004cec:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004cf0:	5fff4aed 	bne	$r23,$r13,-184(0x3ff48) # 1c004c38 <check_serial_data+0x38>
1c004cf4:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c004cf8:	1c000045 	pcaddu12i	$r5,2(0x2)
1c004cfc:	0283f0a5 	addi.w	$r5,$r5,252(0xfc)
1c004d00:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d04:	288cf084 	ld.w	$r4,$r4,828(0x33c)
1c004d08:	29000180 	st.b	$r0,$r12,0
1c004d0c:	57e787ff 	bl	-6268(0xfffe784) # 1c003490 <strncmp>
1c004d10:	1cc7ff98 	pcaddu12i	$r24,409596(0x63ffc)
1c004d14:	288cb318 	ld.w	$r24,$r24,812(0x32c)
1c004d18:	44001480 	bnez	$r4,20(0x14) # 1c004d2c <check_serial_data+0x12c>
1c004d1c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d20:	028bfd8c 	addi.w	$r12,$r12,767(0x2ff)
1c004d24:	2a00018c 	ld.bu	$r12,$r12,0
1c004d28:	40020980 	beqz	$r12,520(0x208) # 1c004f30 <check_serial_data+0x330>
1c004d2c:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c004d30:	1c000045 	pcaddu12i	$r5,2(0x2)
1c004d34:	028330a5 	addi.w	$r5,$r5,204(0xcc)
1c004d38:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d3c:	288c1084 	ld.w	$r4,$r4,772(0x304)
1c004d40:	57e753ff 	bl	-6320(0xfffe750) # 1c003490 <strncmp>
1c004d44:	44001480 	bnez	$r4,20(0x14) # 1c004d58 <check_serial_data+0x158>
1c004d48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d4c:	028b4d8c 	addi.w	$r12,$r12,723(0x2d3)
1c004d50:	2a00018d 	ld.bu	$r13,$r12,0
1c004d54:	400285a0 	beqz	$r13,644(0x284) # 1c004fd8 <check_serial_data+0x3d8>
1c004d58:	29000300 	st.b	$r0,$r24,0
1c004d5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d60:	28802077 	ld.w	$r23,$r3,8(0x8)
1c004d64:	28801078 	ld.w	$r24,$r3,4(0x4)
1c004d68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d6c:	4c000020 	jirl	$r0,$r1,0
1c004d70:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c004d74:	028cc1ad 	addi.w	$r13,$r13,816(0x330)
1c004d78:	2a0001ac 	ld.bu	$r12,$r13,0
1c004d7c:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c004d80:	03c0058c 	xori	$r12,$r12,0x1
1c004d84:	00150185 	move	$r5,$r12
1c004d88:	290001ac 	st.b	$r12,$r13,0
1c004d8c:	57d797ff 	bl	-10348(0xfffd794) # 1c002520 <gpio_write_pin>
1c004d90:	53ff43ff 	b	-192(0xfffff40) # 1c004cd0 <check_serial_data+0xd0>
1c004d94:	02802806 	addi.w	$r6,$r0,10(0xa)
1c004d98:	00150005 	move	$r5,$r0
1c004d9c:	29000197 	st.b	$r23,$r12,0
1c004da0:	57cdf3ff 	bl	-12816(0xfffcdf0) # 1c001b90 <OLED_ShowCHinese>
1c004da4:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c004da8:	00150005 	move	$r5,$r0
1c004dac:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004db0:	57cde3ff 	bl	-12832(0xfffcde0) # 1c001b90 <OLED_ShowCHinese>
1c004db4:	02806006 	addi.w	$r6,$r0,24(0x18)
1c004db8:	00150005 	move	$r5,$r0
1c004dbc:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004dc0:	57cdd3ff 	bl	-12848(0xfffcdd0) # 1c001b90 <OLED_ShowCHinese>
1c004dc4:	02805c06 	addi.w	$r6,$r0,23(0x17)
1c004dc8:	00150005 	move	$r5,$r0
1c004dcc:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c004dd0:	57cdc3ff 	bl	-12864(0xfffcdc0) # 1c001b90 <OLED_ShowCHinese>
1c004dd4:	02805806 	addi.w	$r6,$r0,22(0x16)
1c004dd8:	00150005 	move	$r5,$r0
1c004ddc:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004de0:	57cdb3ff 	bl	-12880(0xfffcdb0) # 1c001b90 <OLED_ShowCHinese>
1c004de4:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004de8:	00150005 	move	$r5,$r0
1c004dec:	02814004 	addi.w	$r4,$r0,80(0x50)
1c004df0:	57cda3ff 	bl	-12896(0xfffcda0) # 1c001b90 <OLED_ShowCHinese>
1c004df4:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c004df8:	57e65bff 	bl	-6568(0xfffe658) # 1c003450 <delay_ms>
1c004dfc:	02806406 	addi.w	$r6,$r0,25(0x19)
1c004e00:	00150005 	move	$r5,$r0
1c004e04:	00150004 	move	$r4,$r0
1c004e08:	57cd8bff 	bl	-12920(0xfffcd88) # 1c001b90 <OLED_ShowCHinese>
1c004e0c:	02806806 	addi.w	$r6,$r0,26(0x1a)
1c004e10:	00150005 	move	$r5,$r0
1c004e14:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004e18:	57cd7bff 	bl	-12936(0xfffcd78) # 1c001b90 <OLED_ShowCHinese>
1c004e1c:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c004e20:	00150005 	move	$r5,$r0
1c004e24:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004e28:	57cd6bff 	bl	-12952(0xfffcd68) # 1c001b90 <OLED_ShowCHinese>
1c004e2c:	02805806 	addi.w	$r6,$r0,22(0x16)
1c004e30:	00150005 	move	$r5,$r0
1c004e34:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c004e38:	57cd5bff 	bl	-12968(0xfffcd58) # 1c001b90 <OLED_ShowCHinese>
1c004e3c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004e40:	00150005 	move	$r5,$r0
1c004e44:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004e48:	57cd4bff 	bl	-12984(0xfffcd48) # 1c001b90 <OLED_ShowCHinese>
1c004e4c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004e50:	29000300 	st.b	$r0,$r24,0
1c004e54:	57c4dfff 	bl	-15140(0xfffc4dc) # 1c001330 <BYJ_init>
1c004e58:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e5c:	57ebb7ff 	bl	-5196(0xfffebb4) # 1c003a10 <timer_init>
1c004e60:	14000027 	lu12i.w	$r7,1(0x1)
1c004e64:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e68:	2887418c 	ld.w	$r12,$r12,464(0x1d0)
1c004e6c:	1cc7ff97 	pcaddu12i	$r23,409596(0x63ffc)
1c004e70:	2886d2f7 	ld.w	$r23,$r23,436(0x1b4)
1c004e74:	1cc7ff8f 	pcaddu12i	$r15,409596(0x63ffc)
1c004e78:	288711ef 	ld.w	$r15,$r15,452(0x1c4)
1c004e7c:	1cc7ff8e 	pcaddu12i	$r14,409596(0x63ffc)
1c004e80:	2886c1ce 	ld.w	$r14,$r14,432(0x1b0)
1c004e84:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c004e88:	03bd00e7 	ori	$r7,$r7,0xf40
1c004e8c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c004e90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e94:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c004e98:	2980018d 	st.w	$r13,$r12,0
1c004e9c:	298001e0 	st.w	$r0,$r15,0
1c004ea0:	298001c0 	st.w	$r0,$r14,0
1c004ea4:	298002e0 	st.w	$r0,$r23,0
1c004ea8:	57c5fbff 	bl	-14856(0xfffc5f8) # 1c0014a0 <BYJ_run_angle>
1c004eac:	288002ec 	ld.w	$r12,$r23,0
1c004eb0:	44001580 	bnez	$r12,20(0x14) # 1c004ec4 <check_serial_data+0x2c4>
1c004eb4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004eb8:	57e59bff 	bl	-6760(0xfffe598) # 1c003450 <delay_ms>
1c004ebc:	288002ec 	ld.w	$r12,$r23,0
1c004ec0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004eb4 <check_serial_data+0x2b4>
1c004ec4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004ec8:	57eb4bff 	bl	-5304(0xfffeb48) # 1c003a10 <timer_init>
1c004ecc:	02806006 	addi.w	$r6,$r0,24(0x18)
1c004ed0:	00150005 	move	$r5,$r0
1c004ed4:	00150004 	move	$r4,$r0
1c004ed8:	57ccbbff 	bl	-13128(0xfffccb8) # 1c001b90 <OLED_ShowCHinese>
1c004edc:	02805c06 	addi.w	$r6,$r0,23(0x17)
1c004ee0:	00150005 	move	$r5,$r0
1c004ee4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004ee8:	57ccabff 	bl	-13144(0xfffcca8) # 1c001b90 <OLED_ShowCHinese>
1c004eec:	02805806 	addi.w	$r6,$r0,22(0x16)
1c004ef0:	00150005 	move	$r5,$r0
1c004ef4:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004ef8:	57cc9bff 	bl	-13160(0xfffcc98) # 1c001b90 <OLED_ShowCHinese>
1c004efc:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004f00:	00150005 	move	$r5,$r0
1c004f04:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c004f08:	57cc8bff 	bl	-13176(0xfffcc88) # 1c001b90 <OLED_ShowCHinese>
1c004f0c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004f10:	00150005 	move	$r5,$r0
1c004f14:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004f18:	57cc7bff 	bl	-13192(0xfffcc78) # 1c001b90 <OLED_ShowCHinese>
1c004f1c:	53fd6fff 	b	-660(0xffffd6c) # 1c004c88 <check_serial_data+0x88>
1c004f20:	57fb53ff 	bl	-1200(0xffffb50) # 1c004a70 <lock_system>
1c004f24:	29000300 	st.b	$r0,$r24,0
1c004f28:	53fd8fff 	b	-628(0xffffd8c) # 1c004cb4 <check_serial_data+0xb4>
1c004f2c:	03400000 	andi	$r0,$r0,0x0
1c004f30:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c004f34:	00150005 	move	$r5,$r0
1c004f38:	57cc5bff 	bl	-13224(0xfffcc58) # 1c001b90 <OLED_ShowCHinese>
1c004f3c:	02808006 	addi.w	$r6,$r0,32(0x20)
1c004f40:	00150005 	move	$r5,$r0
1c004f44:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004f48:	57cc4bff 	bl	-13240(0xfffcc48) # 1c001b90 <OLED_ShowCHinese>
1c004f4c:	0280ac06 	addi.w	$r6,$r0,43(0x2b)
1c004f50:	00150005 	move	$r5,$r0
1c004f54:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004f58:	57cc3bff 	bl	-13256(0xfffcc38) # 1c001b90 <OLED_ShowCHinese>
1c004f5c:	02805c06 	addi.w	$r6,$r0,23(0x17)
1c004f60:	00150005 	move	$r5,$r0
1c004f64:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c004f68:	57cc2bff 	bl	-13272(0xfffcc28) # 1c001b90 <OLED_ShowCHinese>
1c004f6c:	02805806 	addi.w	$r6,$r0,22(0x16)
1c004f70:	00150005 	move	$r5,$r0
1c004f74:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004f78:	57cc1bff 	bl	-13288(0xfffcc18) # 1c001b90 <OLED_ShowCHinese>
1c004f7c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004f80:	00150005 	move	$r5,$r0
1c004f84:	02814004 	addi.w	$r4,$r0,80(0x50)
1c004f88:	57cc0bff 	bl	-13304(0xfffcc08) # 1c001b90 <OLED_ShowCHinese>
1c004f8c:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c004f90:	57e4c3ff 	bl	-6976(0xfffe4c0) # 1c003450 <delay_ms>
1c004f94:	02801006 	addi.w	$r6,$r0,4(0x4)
1c004f98:	00150005 	move	$r5,$r0
1c004f9c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004fa0:	57cbf3ff 	bl	-13328(0xfffcbf0) # 1c001b90 <OLED_ShowCHinese>
1c004fa4:	02801406 	addi.w	$r6,$r0,5(0x5)
1c004fa8:	00150005 	move	$r5,$r0
1c004fac:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c004fb0:	57cbe3ff 	bl	-13344(0xfffcbe0) # 1c001b90 <OLED_ShowCHinese>
1c004fb4:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004fb8:	00150005 	move	$r5,$r0
1c004fbc:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004fc0:	57cbd3ff 	bl	-13360(0xfffcbd0) # 1c001b90 <OLED_ShowCHinese>
1c004fc4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fc8:	0281618c 	addi.w	$r12,$r12,88(0x58)
1c004fcc:	29000300 	st.b	$r0,$r24,0
1c004fd0:	29000197 	st.b	$r23,$r12,0
1c004fd4:	53fd5bff 	b	-680(0xffffd58) # 1c004d2c <check_serial_data+0x12c>
1c004fd8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004fdc:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c004fe0:	00150005 	move	$r5,$r0
1c004fe4:	2900018d 	st.b	$r13,$r12,0
1c004fe8:	57cbabff 	bl	-13400(0xfffcba8) # 1c001b90 <OLED_ShowCHinese>
1c004fec:	02808006 	addi.w	$r6,$r0,32(0x20)
1c004ff0:	00150005 	move	$r5,$r0
1c004ff4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004ff8:	57cb9bff 	bl	-13416(0xfffcb98) # 1c001b90 <OLED_ShowCHinese>
1c004ffc:	02806006 	addi.w	$r6,$r0,24(0x18)
1c005000:	00150005 	move	$r5,$r0
1c005004:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005008:	57cb8bff 	bl	-13432(0xfffcb88) # 1c001b90 <OLED_ShowCHinese>
1c00500c:	02805c06 	addi.w	$r6,$r0,23(0x17)
1c005010:	00150005 	move	$r5,$r0
1c005014:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c005018:	57cb7bff 	bl	-13448(0xfffcb78) # 1c001b90 <OLED_ShowCHinese>
1c00501c:	02805806 	addi.w	$r6,$r0,22(0x16)
1c005020:	00150005 	move	$r5,$r0
1c005024:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005028:	57cb6bff 	bl	-13464(0xfffcb68) # 1c001b90 <OLED_ShowCHinese>
1c00502c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c005030:	00150005 	move	$r5,$r0
1c005034:	02814004 	addi.w	$r4,$r0,80(0x50)
1c005038:	57cb5bff 	bl	-13480(0xfffcb58) # 1c001b90 <OLED_ShowCHinese>
1c00503c:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005040:	57e413ff 	bl	-7152(0xfffe410) # 1c003450 <delay_ms>
1c005044:	02806406 	addi.w	$r6,$r0,25(0x19)
1c005048:	00150005 	move	$r5,$r0
1c00504c:	00150004 	move	$r4,$r0
1c005050:	57cb43ff 	bl	-13504(0xfffcb40) # 1c001b90 <OLED_ShowCHinese>
1c005054:	02806806 	addi.w	$r6,$r0,26(0x1a)
1c005058:	00150005 	move	$r5,$r0
1c00505c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005060:	57cb33ff 	bl	-13520(0xfffcb30) # 1c001b90 <OLED_ShowCHinese>
1c005064:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c005068:	00150005 	move	$r5,$r0
1c00506c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005070:	57cb23ff 	bl	-13536(0xfffcb20) # 1c001b90 <OLED_ShowCHinese>
1c005074:	02805806 	addi.w	$r6,$r0,22(0x16)
1c005078:	00150005 	move	$r5,$r0
1c00507c:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c005080:	57cb13ff 	bl	-13552(0xfffcb10) # 1c001b90 <OLED_ShowCHinese>
1c005084:	02801806 	addi.w	$r6,$r0,6(0x6)
1c005088:	00150005 	move	$r5,$r0
1c00508c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005090:	57cb03ff 	bl	-13568(0xfffcb00) # 1c001b90 <OLED_ShowCHinese>
1c005094:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005098:	29000300 	st.b	$r0,$r24,0
1c00509c:	57c297ff 	bl	-15724(0xfffc294) # 1c001330 <BYJ_init>
1c0050a0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0050a4:	57e96fff 	bl	-5780(0xfffe96c) # 1c003a10 <timer_init>
1c0050a8:	14000027 	lu12i.w	$r7,1(0x1)
1c0050ac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050b0:	28be218c 	ld.w	$r12,$r12,-120(0xf88)
1c0050b4:	1cc7ff97 	pcaddu12i	$r23,409596(0x63ffc)
1c0050b8:	28bdb2f7 	ld.w	$r23,$r23,-148(0xf6c)
1c0050bc:	1cc7ff8f 	pcaddu12i	$r15,409596(0x63ffc)
1c0050c0:	28bdf1ef 	ld.w	$r15,$r15,-132(0xf7c)
1c0050c4:	1cc7ff8e 	pcaddu12i	$r14,409596(0x63ffc)
1c0050c8:	28bda1ce 	ld.w	$r14,$r14,-152(0xf68)
1c0050cc:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0050d0:	03bd00e7 	ori	$r7,$r7,0xf40
1c0050d4:	02802006 	addi.w	$r6,$r0,8(0x8)
1c0050d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0050dc:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c0050e0:	2980018d 	st.w	$r13,$r12,0
1c0050e4:	298001e0 	st.w	$r0,$r15,0
1c0050e8:	298001c0 	st.w	$r0,$r14,0
1c0050ec:	298002e0 	st.w	$r0,$r23,0
1c0050f0:	57c3b3ff 	bl	-15440(0xfffc3b0) # 1c0014a0 <BYJ_run_angle>
1c0050f4:	288002ec 	ld.w	$r12,$r23,0
1c0050f8:	44001980 	bnez	$r12,24(0x18) # 1c005110 <check_serial_data+0x510>
1c0050fc:	03400000 	andi	$r0,$r0,0x0
1c005100:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005104:	57e34fff 	bl	-7348(0xfffe34c) # 1c003450 <delay_ms>
1c005108:	288002ec 	ld.w	$r12,$r23,0
1c00510c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c005100 <check_serial_data+0x500>
1c005110:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005114:	57e8ffff 	bl	-5892(0xfffe8fc) # 1c003a10 <timer_init>
1c005118:	02806006 	addi.w	$r6,$r0,24(0x18)
1c00511c:	00150005 	move	$r5,$r0
1c005120:	00150004 	move	$r4,$r0
1c005124:	57ca6fff 	bl	-13716(0xfffca6c) # 1c001b90 <OLED_ShowCHinese>
1c005128:	02805c06 	addi.w	$r6,$r0,23(0x17)
1c00512c:	00150005 	move	$r5,$r0
1c005130:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005134:	57ca5fff 	bl	-13732(0xfffca5c) # 1c001b90 <OLED_ShowCHinese>
1c005138:	02805806 	addi.w	$r6,$r0,22(0x16)
1c00513c:	00150005 	move	$r5,$r0
1c005140:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005144:	57ca4fff 	bl	-13748(0xfffca4c) # 1c001b90 <OLED_ShowCHinese>
1c005148:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00514c:	00150005 	move	$r5,$r0
1c005150:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c005154:	57ca3fff 	bl	-13764(0xfffca3c) # 1c001b90 <OLED_ShowCHinese>
1c005158:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00515c:	00150005 	move	$r5,$r0
1c005160:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005164:	57ca2fff 	bl	-13780(0xfffca2c) # 1c001b90 <OLED_ShowCHinese>
1c005168:	29000300 	st.b	$r0,$r24,0
1c00516c:	53fbf3ff 	b	-1040(0xffffbf0) # 1c004d5c <check_serial_data+0x15c>

1c005170 <main>:
main():
1c005170:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c005174:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005178:	29813061 	st.w	$r1,$r3,76(0x4c)
1c00517c:	29812076 	st.w	$r22,$r3,72(0x48)
1c005180:	29811077 	st.w	$r23,$r3,68(0x44)
1c005184:	29810078 	st.w	$r24,$r3,64(0x40)
1c005188:	2980f079 	st.w	$r25,$r3,60(0x3c)
1c00518c:	2980e07a 	st.w	$r26,$r3,56(0x38)
1c005190:	2980d07b 	st.w	$r27,$r3,52(0x34)
1c005194:	2980c07c 	st.w	$r28,$r3,48(0x30)
1c005198:	2980b07d 	st.w	$r29,$r3,44(0x2c)
1c00519c:	2980a07e 	st.w	$r30,$r3,40(0x28)
1c0051a0:	2980907f 	st.w	$r31,$r3,36(0x24)
1c0051a4:	29805060 	st.w	$r0,$r3,20(0x14)
1c0051a8:	57e86bff 	bl	-6040(0xfffe868) # 1c003a10 <timer_init>
1c0051ac:	00150004 	move	$r4,$r0
1c0051b0:	57d533ff 	bl	-10960(0xfffd530) # 1c0026e0 <Spi_Init>
1c0051b4:	57c41fff 	bl	-15332(0xfffc41c) # 1c0015d0 <OLED_Init>
1c0051b8:	57e3fbff 	bl	-7176(0xfffe3f8) # 1c0035b0 <Adc_powerOn>
1c0051bc:	00150004 	move	$r4,$r0
1c0051c0:	57e443ff 	bl	-7104(0xfffe440) # 1c003600 <Adc_open>
1c0051c4:	57c74fff 	bl	-14516(0xfffc74c) # 1c001910 <OLED_Clear>
1c0051c8:	14000044 	lu12i.w	$r4,2(0x2)
1c0051cc:	03960084 	ori	$r4,$r4,0x580
1c0051d0:	57dc33ff 	bl	-9168(0xfffdc30) # 1c002e00 <Uart0_init>
1c0051d4:	14000384 	lu12i.w	$r4,28(0x1c)
1c0051d8:	03880084 	ori	$r4,$r4,0x200
1c0051dc:	57dcc7ff 	bl	-9020(0xfffdcc4) # 1c002ea0 <Uart1_init>
1c0051e0:	57d1b3ff 	bl	-11856(0xfffd1b0) # 1c002390 <DHT11_Init>
1c0051e4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0051e8:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0051ec:	57d337ff 	bl	-11468(0xfffd334) # 1c002520 <gpio_write_pin>
1c0051f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0051f4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0051f8:	57d32bff 	bl	-11480(0xfffd328) # 1c002520 <gpio_write_pin>
1c0051fc:	00150006 	move	$r6,$r0
1c005200:	00150005 	move	$r5,$r0
1c005204:	00150004 	move	$r4,$r0
1c005208:	57c98bff 	bl	-13944(0xfffc988) # 1c001b90 <OLED_ShowCHinese>
1c00520c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005210:	00150005 	move	$r5,$r0
1c005214:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005218:	57c97bff 	bl	-13960(0xfffc978) # 1c001b90 <OLED_ShowCHinese>
1c00521c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005220:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c005224:	00150005 	move	$r5,$r0
1c005228:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00522c:	57c847ff 	bl	-14268(0xfffc844) # 1c001a70 <OLED_ShowChar>
1c005230:	02808806 	addi.w	$r6,$r0,34(0x22)
1c005234:	02808005 	addi.w	$r5,$r0,32(0x20)
1c005238:	00150004 	move	$r4,$r0
1c00523c:	57c957ff 	bl	-13996(0xfffc954) # 1c001b90 <OLED_ShowCHinese>
1c005240:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c005244:	02808005 	addi.w	$r5,$r0,32(0x20)
1c005248:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00524c:	57c947ff 	bl	-14012(0xfffc944) # 1c001b90 <OLED_ShowCHinese>
1c005250:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005254:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c005258:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00525c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005260:	57c813ff 	bl	-14320(0xfffc810) # 1c001a70 <OLED_ShowChar>
1c005264:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005268:	02809406 	addi.w	$r6,$r0,37(0x25)
1c00526c:	02808005 	addi.w	$r5,$r0,32(0x20)
1c005270:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c005274:	57c7ffff 	bl	-14340(0xfffc7fc) # 1c001a70 <OLED_ShowChar>
1c005278:	02808806 	addi.w	$r6,$r0,34(0x22)
1c00527c:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c005280:	00150004 	move	$r4,$r0
1c005284:	57c90fff 	bl	-14068(0xfffc90c) # 1c001b90 <OLED_ShowCHinese>
1c005288:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c00528c:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c005290:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005294:	57c8ffff 	bl	-14084(0xfffc8fc) # 1c001b90 <OLED_ShowCHinese>
1c005298:	02804007 	addi.w	$r7,$r0,16(0x10)
1c00529c:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c0052a0:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0052a4:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0052a8:	57c7cbff 	bl	-14392(0xfffc7c8) # 1c001a70 <OLED_ShowChar>
1c0052ac:	02809006 	addi.w	$r6,$r0,36(0x24)
1c0052b0:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0052b4:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c0052b8:	57c8dbff 	bl	-14120(0xfffc8d8) # 1c001b90 <OLED_ShowCHinese>
1c0052bc:	0280a406 	addi.w	$r6,$r0,41(0x29)
1c0052c0:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0052c4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0052c8:	57c8cbff 	bl	-14136(0xfffc8c8) # 1c001b90 <OLED_ShowCHinese>
1c0052cc:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c0052d0:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0052d4:	02816004 	addi.w	$r4,$r0,88(0x58)
1c0052d8:	57c8bbff 	bl	-14152(0xfffc8b8) # 1c001b90 <OLED_ShowCHinese>
1c0052dc:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c0052e0:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0052e4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0052e8:	57c8abff 	bl	-14168(0xfffc8a8) # 1c001b90 <OLED_ShowCHinese>
1c0052ec:	02807806 	addi.w	$r6,$r0,30(0x1e)
1c0052f0:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0052f4:	02816004 	addi.w	$r4,$r0,88(0x58)
1c0052f8:	57c89bff 	bl	-14184(0xfffc898) # 1c001b90 <OLED_ShowCHinese>
1c0052fc:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c005300:	02ac218c 	addi.w	$r12,$r12,-1272(0xb08)
1c005304:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005308:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c00530c:	02ac11ad 	addi.w	$r13,$r13,-1276(0xb04)
1c005310:	2980306c 	st.w	$r12,$r3,12(0xc)
1c005314:	1400002c 	lu12i.w	$r12,1(0x1)
1c005318:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00531c:	03bd018c 	ori	$r12,$r12,0xf40
1c005320:	1cc7ff9d 	pcaddu12i	$r29,409596(0x63ffc)
1c005324:	28b4d3bd 	ld.w	$r29,$r29,-716(0xd34)
1c005328:	1cc7ff9c 	pcaddu12i	$r28,409596(0x63ffc)
1c00532c:	28b3d39c 	ld.w	$r28,$r28,-780(0xcf4)
1c005330:	1cc7ff9b 	pcaddu12i	$r27,409596(0x63ffc)
1c005334:	02b5c37b 	addi.w	$r27,$r27,-656(0xd70)
1c005338:	1cc7ff9a 	pcaddu12i	$r26,409596(0x63ffc)
1c00533c:	02b5435a 	addi.w	$r26,$r26,-688(0xd50)
1c005340:	1cc7ff97 	pcaddu12i	$r23,409596(0x63ffc)
1c005344:	28b382f7 	ld.w	$r23,$r23,-800(0xce0)
1c005348:	1cc7ff79 	pcaddu12i	$r25,409595(0x63ffb)
1c00534c:	02b34f39 	addi.w	$r25,$r25,-813(0xcd3)
1c005350:	1cc7ff98 	pcaddu12i	$r24,409596(0x63ffc)
1c005354:	02b50318 	addi.w	$r24,$r24,-704(0xd40)
1c005358:	1cc7ff76 	pcaddu12i	$r22,409595(0x63ffb)
1c00535c:	02b312d6 	addi.w	$r22,$r22,-828(0xcc4)
1c005360:	2980206d 	st.w	$r13,$r3,8(0x8)
1c005364:	2980406c 	st.w	$r12,$r3,16(0x10)
1c005368:	00150004 	move	$r4,$r0
1c00536c:	57e327ff 	bl	-7388(0xfffe324) # 1c003690 <Adc_Measure>
1c005370:	1cc7ff87 	pcaddu12i	$r7,409596(0x63ffc)
1c005374:	28b3a0e7 	ld.w	$r7,$r7,-792(0xce8)
1c005378:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c00537c:	28b290c6 	ld.w	$r6,$r6,-860(0xca4)
1c005380:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c005384:	28b2a0a5 	ld.w	$r5,$r5,-856(0xca8)
1c005388:	0015009e 	move	$r30,$r4
1c00538c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005390:	28b32084 	ld.w	$r4,$r4,-824(0xcc8)
1c005394:	57cedfff 	bl	-12580(0xfffcedc) # 1c002270 <DHT11_ReadData>
1c005398:	2a0003a6 	ld.bu	$r6,$r29,0
1c00539c:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0053a0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0053a4:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0053a8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0053ac:	57c907ff 	bl	-14076(0xfffc904) # 1c001cb0 <OLED_ShowNum>
1c0053b0:	2a000386 	ld.bu	$r6,$r28,0
1c0053b4:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0053b8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0053bc:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0053c0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0053c4:	57c8efff 	bl	-14100(0xfffc8ec) # 1c001cb0 <OLED_ShowNum>
1c0053c8:	02809406 	addi.w	$r6,$r0,37(0x25)
1c0053cc:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0053d0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0053d4:	57c7bfff 	bl	-14404(0xfffc7bc) # 1c001b90 <OLED_ShowCHinese>
1c0053d8:	02809806 	addi.w	$r6,$r0,38(0x26)
1c0053dc:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0053e0:	02816004 	addi.w	$r4,$r0,88(0x58)
1c0053e4:	57c7afff 	bl	-14420(0xfffc7ac) # 1c001b90 <OLED_ShowCHinese>
1c0053e8:	2a00036c 	ld.bu	$r12,$r27,0
1c0053ec:	40016580 	beqz	$r12,356(0x164) # 1c005550 <main+0x3e0>
1c0053f0:	0281a804 	addi.w	$r4,$r0,106(0x6a)
1c0053f4:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c0053f8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0053fc:	57c797ff 	bl	-14444(0xfffc794) # 1c001b90 <OLED_ShowCHinese>
1c005400:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005404:	57d0ffff 	bl	-12036(0xfffd0fc) # 1c002500 <gpio_get_pin>
1c005408:	44016480 	bnez	$r4,356(0x164) # 1c00556c <main+0x3fc>
1c00540c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005410:	57d0f3ff 	bl	-12048(0xfffd0f0) # 1c002500 <gpio_get_pin>
1c005414:	4001dc80 	beqz	$r4,476(0x1dc) # 1c0055f0 <main+0x480>
1c005418:	02976c0c 	addi.w	$r12,$r0,1499(0x5db)
1c00541c:	60002d9e 	blt	$r12,$r30,44(0x2c) # 1c005448 <main+0x2d8>
1c005420:	2a00034c 	ld.bu	$r12,$r26,0
1c005424:	40022d80 	beqz	$r12,556(0x22c) # 1c005650 <main+0x4e0>
1c005428:	2a00032c 	ld.bu	$r12,$r25,0
1c00542c:	4000e980 	beqz	$r12,232(0xe8) # 1c005514 <main+0x3a4>
1c005430:	57caa3ff 	bl	-13664(0xfffcaa0) # 1c001ed0 <key_scan>
1c005434:	2a003f0c 	ld.bu	$r12,$r24,15(0xf)
1c005438:	5c000984 	bne	$r12,$r4,8(0x8) # 1c005440 <main+0x2d0>
1c00543c:	57f637ff 	bl	-2508(0xffff634) # 1c004a70 <lock_system>
1c005440:	57f7c3ff 	bl	-2112(0xffff7c0) # 1c004c00 <check_serial_data>
1c005444:	53ff27ff 	b	-220(0xfffff24) # 1c005368 <main+0x1f8>
1c005448:	0297700c 	addi.w	$r12,$r0,1500(0x5dc)
1c00544c:	5bffdfcc 	beq	$r30,$r12,-36(0x3ffdc) # 1c005428 <main+0x2b8>
1c005450:	2a00034c 	ld.bu	$r12,$r26,0
1c005454:	43ffd59f 	beqz	$r12,-44(0x7fffd4) # 1c005428 <main+0x2b8>
1c005458:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c00545c:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c005460:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c005464:	028007de 	addi.w	$r30,$r30,1(0x1)
1c005468:	57dadbff 	bl	-9512(0xfffdad8) # 1c002f40 <Uart0_send>
1c00546c:	283fffc4 	ld.b	$r4,$r30,-1(0xfff)
1c005470:	47fff09f 	bnez	$r4,-16(0x7ffff0) # 1c005460 <main+0x2f0>
1c005474:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005478:	57bebbff 	bl	-16712(0xfffbeb8) # 1c001330 <BYJ_init>
1c00547c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005480:	57e593ff 	bl	-6768(0xfffe590) # 1c003a10 <timer_init>
1c005484:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c005488:	28aed1ad 	ld.w	$r13,$r13,-1100(0xbb4)
1c00548c:	28804067 	ld.w	$r7,$r3,16(0x10)
1c005490:	298001a0 	st.w	$r0,$r13,0
1c005494:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c005498:	28ae61ad 	ld.w	$r13,$r13,-1128(0xb98)
1c00549c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0054a0:	298001a0 	st.w	$r0,$r13,0
1c0054a4:	02802006 	addi.w	$r6,$r0,8(0x8)
1c0054a8:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c0054ac:	28ae31ad 	ld.w	$r13,$r13,-1140(0xb8c)
1c0054b0:	00150005 	move	$r5,$r0
1c0054b4:	0285a004 	addi.w	$r4,$r0,360(0x168)
1c0054b8:	298001ac 	st.w	$r12,$r13,0
1c0054bc:	298002e0 	st.w	$r0,$r23,0
1c0054c0:	57bfe3ff 	bl	-16416(0xfffbfe0) # 1c0014a0 <BYJ_run_angle>
1c0054c4:	288002ec 	ld.w	$r12,$r23,0
1c0054c8:	44001980 	bnez	$r12,24(0x18) # 1c0054e0 <main+0x370>
1c0054cc:	03400000 	andi	$r0,$r0,0x0
1c0054d0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0054d4:	57df7fff 	bl	-8324(0xfffdf7c) # 1c003450 <delay_ms>
1c0054d8:	288002ec 	ld.w	$r12,$r23,0
1c0054dc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0054d0 <main+0x360>
1c0054e0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0054e4:	57e52fff 	bl	-6868(0xfffe52c) # 1c003a10 <timer_init>
1c0054e8:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c0054ec:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0054f0:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c0054f4:	29000340 	st.b	$r0,$r26,0
1c0054f8:	57c69bff 	bl	-14696(0xfffc698) # 1c001b90 <OLED_ShowCHinese>
1c0054fc:	0280a006 	addi.w	$r6,$r0,40(0x28)
1c005500:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c005504:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c005508:	57c68bff 	bl	-14712(0xfffc688) # 1c001b90 <OLED_ShowCHinese>
1c00550c:	2a00032c 	ld.bu	$r12,$r25,0
1c005510:	47ff219f 	bnez	$r12,-224(0x7fff20) # 1c005430 <main+0x2c0>
1c005514:	57c9bfff 	bl	-13892(0xfffc9bc) # 1c001ed0 <key_scan>
1c005518:	0015008e 	move	$r14,$r4
1c00551c:	4401ec80 	bnez	$r4,492(0x1ec) # 1c005708 <main+0x598>
1c005520:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005524:	57df2fff 	bl	-8404(0xfffdf2c) # 1c003450 <delay_ms>
1c005528:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00552c:	02abd58c 	addi.w	$r12,$r12,-1291(0xaf5)
1c005530:	2a00018c 	ld.bu	$r12,$r12,0
1c005534:	40000d80 	beqz	$r12,12(0xc) # 1c005540 <main+0x3d0>
1c005538:	2a0002cc 	ld.bu	$r12,$r22,0
1c00553c:	40034d80 	beqz	$r12,844(0x34c) # 1c005888 <main+0x718>
1c005540:	57f6c3ff 	bl	-2368(0xffff6c0) # 1c004c00 <check_serial_data>
1c005544:	2a00032c 	ld.bu	$r12,$r25,0
1c005548:	43fe219f 	beqz	$r12,-480(0x7ffe20) # 1c005368 <main+0x1f8>
1c00554c:	53fee7ff 	b	-284(0xffffee4) # 1c005430 <main+0x2c0>
1c005550:	0281a804 	addi.w	$r4,$r0,106(0x6a)
1c005554:	02807006 	addi.w	$r6,$r0,28(0x1c)
1c005558:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00555c:	57c637ff 	bl	-14796(0xfffc634) # 1c001b90 <OLED_ShowCHinese>
1c005560:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005564:	57cf9fff 	bl	-12388(0xfffcf9c) # 1c002500 <gpio_get_pin>
1c005568:	43fea49f 	beqz	$r4,-348(0x7ffea4) # 1c00540c <main+0x29c>
1c00556c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005570:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c005574:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c005578:	57cfabff 	bl	-12376(0xfffcfa8) # 1c002520 <gpio_write_pin>
1c00557c:	00150005 	move	$r5,$r0
1c005580:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005584:	57cf9fff 	bl	-12388(0xfffcf9c) # 1c002520 <gpio_write_pin>
1c005588:	02804006 	addi.w	$r6,$r0,16(0x10)
1c00558c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c005590:	00150004 	move	$r4,$r0
1c005594:	57c5ffff 	bl	-14852(0xfffc5fc) # 1c001b90 <OLED_ShowCHinese>
1c005598:	02804406 	addi.w	$r6,$r0,17(0x11)
1c00559c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0055a0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0055a4:	57c5efff 	bl	-14868(0xfffc5ec) # 1c001b90 <OLED_ShowCHinese>
1c0055a8:	02804806 	addi.w	$r6,$r0,18(0x12)
1c0055ac:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0055b0:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0055b4:	57c5dfff 	bl	-14884(0xfffc5dc) # 1c001b90 <OLED_ShowCHinese>
1c0055b8:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c0055bc:	02804c06 	addi.w	$r6,$r0,19(0x13)
1c0055c0:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0055c4:	57c5cfff 	bl	-14900(0xfffc5cc) # 1c001b90 <OLED_ShowCHinese>
1c0055c8:	02811804 	addi.w	$r4,$r0,70(0x46)
1c0055cc:	03400000 	andi	$r0,$r0,0x0
1c0055d0:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c0055d4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c0055d8:	57d96bff 	bl	-9880(0xfffd968) # 1c002f40 <Uart0_send>
1c0055dc:	283fffe4 	ld.b	$r4,$r31,-1(0xfff)
1c0055e0:	47fff09f 	bnez	$r4,-16(0x7ffff0) # 1c0055d0 <main+0x460>
1c0055e4:	02819804 	addi.w	$r4,$r0,102(0x66)
1c0055e8:	57d97bff 	bl	-9864(0xfffd978) # 1c002f60 <Uart1_send>
1c0055ec:	53fe2fff 	b	-468(0xffffe2c) # 1c005418 <main+0x2a8>
1c0055f0:	00150005 	move	$r5,$r0
1c0055f4:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c0055f8:	57cf2bff 	bl	-12504(0xfffcf28) # 1c002520 <gpio_write_pin>
1c0055fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005600:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005604:	57cf1fff 	bl	-12516(0xfffcf1c) # 1c002520 <gpio_write_pin>
1c005608:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00560c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c005610:	00150004 	move	$r4,$r0
1c005614:	57c57fff 	bl	-14980(0xfffc57c) # 1c001b90 <OLED_ShowCHinese>
1c005618:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00561c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c005620:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005624:	57c56fff 	bl	-14996(0xfffc56c) # 1c001b90 <OLED_ShowCHinese>
1c005628:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00562c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c005630:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005634:	57c55fff 	bl	-15012(0xfffc55c) # 1c001b90 <OLED_ShowCHinese>
1c005638:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00563c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c005640:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c005644:	57c54fff 	bl	-15028(0xfffc54c) # 1c001b90 <OLED_ShowCHinese>
1c005648:	53fdd3ff 	b	-560(0xffffdd0) # 1c005418 <main+0x2a8>
1c00564c:	03400000 	andi	$r0,$r0,0x0
1c005650:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c005654:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c005658:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c00565c:	028007de 	addi.w	$r30,$r30,1(0x1)
1c005660:	57d8e3ff 	bl	-10016(0xfffd8e0) # 1c002f40 <Uart0_send>
1c005664:	283fffc4 	ld.b	$r4,$r30,-1(0xfff)
1c005668:	47fff09f 	bnez	$r4,-16(0x7ffff0) # 1c005658 <main+0x4e8>
1c00566c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005670:	57bcc3ff 	bl	-17216(0xfffbcc0) # 1c001330 <BYJ_init>
1c005674:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005678:	57e39bff 	bl	-7272(0xfffe398) # 1c003a10 <timer_init>
1c00567c:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c005680:	28a6f1ad 	ld.w	$r13,$r13,-1604(0x9bc)
1c005684:	28804067 	ld.w	$r7,$r3,16(0x10)
1c005688:	298001a0 	st.w	$r0,$r13,0
1c00568c:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c005690:	28a681ad 	ld.w	$r13,$r13,-1632(0x9a0)
1c005694:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005698:	298001a0 	st.w	$r0,$r13,0
1c00569c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c0056a0:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c0056a4:	28a651ad 	ld.w	$r13,$r13,-1644(0x994)
1c0056a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0056ac:	0285a004 	addi.w	$r4,$r0,360(0x168)
1c0056b0:	298001ac 	st.w	$r12,$r13,0
1c0056b4:	298002e0 	st.w	$r0,$r23,0
1c0056b8:	57bdebff 	bl	-16920(0xfffbde8) # 1c0014a0 <BYJ_run_angle>
1c0056bc:	288002ec 	ld.w	$r12,$r23,0
1c0056c0:	44001580 	bnez	$r12,20(0x14) # 1c0056d4 <main+0x564>
1c0056c4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0056c8:	57dd8bff 	bl	-8824(0xfffdd88) # 1c003450 <delay_ms>
1c0056cc:	288002ec 	ld.w	$r12,$r23,0
1c0056d0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0056c4 <main+0x554>
1c0056d4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0056d8:	57e33bff 	bl	-7368(0xfffe338) # 1c003a10 <timer_init>
1c0056dc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0056e0:	02807006 	addi.w	$r6,$r0,28(0x1c)
1c0056e4:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0056e8:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c0056ec:	2900034c 	st.b	$r12,$r26,0
1c0056f0:	57c4a3ff 	bl	-15200(0xfffc4a0) # 1c001b90 <OLED_ShowCHinese>
1c0056f4:	02809c06 	addi.w	$r6,$r0,39(0x27)
1c0056f8:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0056fc:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c005700:	57c493ff 	bl	-15216(0xfffc490) # 1c001b90 <OLED_ShowCHinese>
1c005704:	53fd27ff 	b	-732(0xffffd24) # 1c005428 <main+0x2b8>
1c005708:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c00570c:	001503cc 	move	$r12,$r30
1c005710:	0010330d 	add.w	$r13,$r24,$r12
1c005714:	2a3ffdad 	ld.bu	$r13,$r13,-1(0xfff)
1c005718:	0280401f 	addi.w	$r31,$r0,16(0x10)
1c00571c:	2880507e 	ld.w	$r30,$r3,20(0x14)
1c005720:	580019ae 	beq	$r13,$r14,24(0x18) # 1c005738 <main+0x5c8>
1c005724:	58009d9f 	beq	$r12,$r31,156(0x9c) # 1c0057c0 <main+0x650>
1c005728:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00572c:	0010330d 	add.w	$r13,$r24,$r12
1c005730:	2a3ffdad 	ld.bu	$r13,$r13,-1(0xfff)
1c005734:	5ffff1ae 	bne	$r13,$r14,-16(0x3fff0) # 1c005724 <main+0x5b4>
1c005738:	2a0002cd 	ld.bu	$r13,$r22,0
1c00573c:	40008da0 	beqz	$r13,140(0x8c) # 1c0057c8 <main+0x658>
1c005740:	5fffe59f 	bne	$r12,$r31,-28(0x3ffe4) # 1c005724 <main+0x5b4>
1c005744:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005748:	02a3658c 	addi.w	$r12,$r12,-1831(0x8d9)
1c00574c:	29000180 	st.b	$r0,$r12,0
1c005750:	02801806 	addi.w	$r6,$r0,6(0x6)
1c005754:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005758:	02a3198c 	addi.w	$r12,$r12,-1850(0x8c6)
1c00575c:	00150005 	move	$r5,$r0
1c005760:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c005764:	29000180 	st.b	$r0,$r12,0
1c005768:	290002c0 	st.b	$r0,$r22,0
1c00576c:	57c427ff 	bl	-15324(0xfffc424) # 1c001b90 <OLED_ShowCHinese>
1c005770:	02801806 	addi.w	$r6,$r0,6(0x6)
1c005774:	00150005 	move	$r5,$r0
1c005778:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00577c:	29805060 	st.w	$r0,$r3,20(0x14)
1c005780:	57c413ff 	bl	-15344(0xfffc410) # 1c001b90 <OLED_ShowCHinese>
1c005784:	00150006 	move	$r6,$r0
1c005788:	00150005 	move	$r5,$r0
1c00578c:	00150004 	move	$r4,$r0
1c005790:	57c403ff 	bl	-15360(0xfffc400) # 1c001b90 <OLED_ShowCHinese>
1c005794:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005798:	00150005 	move	$r5,$r0
1c00579c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0057a0:	57c3f3ff 	bl	-15376(0xfffc3f0) # 1c001b90 <OLED_ShowCHinese>
1c0057a4:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0057a8:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c0057ac:	00150005 	move	$r5,$r0
1c0057b0:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0057b4:	57c2bfff 	bl	-15684(0xfffc2bc) # 1c001a70 <OLED_ShowChar>
1c0057b8:	53fd6bff 	b	-664(0xffffd68) # 1c005520 <main+0x3b0>
1c0057bc:	03400000 	andi	$r0,$r0,0x0
1c0057c0:	2980507e 	st.w	$r30,$r3,20(0x14)
1c0057c4:	53fd5fff 	b	-676(0xffffd5c) # 1c005520 <main+0x3b0>
1c0057c8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0057cc:	0280240f 	addi.w	$r15,$r0,9(0x9)
1c0057d0:	680089ed 	bltu	$r15,$r13,136(0x88) # 1c005858 <main+0x6e8>
1c0057d4:	0280a3c4 	addi.w	$r4,$r30,40(0x28)
1c0057d8:	001501a6 	move	$r6,$r13
1c0057dc:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c0057e0:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0057e4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0057e8:	00150005 	move	$r5,$r0
1c0057ec:	2980706c 	st.w	$r12,$r3,28(0x1c)
1c0057f0:	2980606e 	st.w	$r14,$r3,24(0x18)
1c0057f4:	2980506d 	st.w	$r13,$r3,20(0x14)
1c0057f8:	57c4bbff 	bl	-15176(0xfffc4b8) # 1c001cb0 <OLED_ShowNum>
1c0057fc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005800:	02a0798c 	addi.w	$r12,$r12,-2018(0x81e)
1c005804:	2a000190 	ld.bu	$r16,$r12,0
1c005808:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c00580c:	02a061ad 	addi.w	$r13,$r13,-2024(0x818)
1c005810:	028023de 	addi.w	$r30,$r30,8(0x8)
1c005814:	0280060f 	addi.w	$r15,$r16,1(0x1)
1c005818:	001041b0 	add.w	$r16,$r13,$r16
1c00581c:	2880506d 	ld.w	$r13,$r3,20(0x14)
1c005820:	006783de 	bstrpick.w	$r30,$r30,0x7,0x0
1c005824:	2900020d 	st.b	$r13,$r16,0
1c005828:	006781ed 	bstrpick.w	$r13,$r15,0x7,0x0
1c00582c:	2900018d 	st.b	$r13,$r12,0
1c005830:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c005834:	2880606e 	ld.w	$r14,$r3,24(0x18)
1c005838:	2880706c 	ld.w	$r12,$r3,28(0x1c)
1c00583c:	6ffeeded 	bgeu	$r15,$r13,-276(0x3feec) # 1c005728 <main+0x5b8>
1c005840:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c005844:	029f75ad 	addi.w	$r13,$r13,2013(0x7dd)
1c005848:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c00584c:	290001af 	st.b	$r15,$r13,0
1c005850:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005854:	53fedbff 	b	-296(0xffffed8) # 1c00572c <main+0x5bc>
1c005858:	02803c0f 	addi.w	$r15,$r0,15(0xf)
1c00585c:	580041af 	beq	$r13,$r15,64(0x40) # 1c00589c <main+0x72c>
1c005860:	0280380f 	addi.w	$r15,$r0,14(0xe)
1c005864:	5ffec1af 	bne	$r13,$r15,-320(0x3fec0) # 1c005724 <main+0x5b4>
1c005868:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00586c:	2980606c 	st.w	$r12,$r3,24(0x18)
1c005870:	2980506e 	st.w	$r14,$r3,20(0x14)
1c005874:	57d6efff 	bl	-10516(0xfffd6ec) # 1c002f60 <Uart1_send>
1c005878:	2880506e 	ld.w	$r14,$r3,20(0x14)
1c00587c:	2880606c 	ld.w	$r12,$r3,24(0x18)
1c005880:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005884:	53feabff 	b	-344(0xffffea8) # 1c00572c <main+0x5bc>
1c005888:	57efbbff 	bl	-4168(0xfffefb8) # 1c004840 <check_password>
1c00588c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005890:	029e458c 	addi.w	$r12,$r12,1937(0x791)
1c005894:	29000180 	st.b	$r0,$r12,0
1c005898:	53fcabff 	b	-856(0xffffca8) # 1c005540 <main+0x3d0>
1c00589c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0058a0:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c0058a4:	029df5ad 	addi.w	$r13,$r13,1917(0x77d)
1c0058a8:	2980507e 	st.w	$r30,$r3,20(0x14)
1c0058ac:	290001ac 	st.b	$r12,$r13,0
1c0058b0:	53fc73ff 	b	-912(0xffffc70) # 1c005520 <main+0x3b0>
1c0058b4:	03400000 	andi	$r0,$r0,0x0
1c0058b8:	03400000 	andi	$r0,$r0,0x0
1c0058bc:	03400000 	andi	$r0,$r0,0x0

Disassembly of section .rodata:

1c0058c0 <msg_wakeup>:
msg_wakeup():
1c0058c0:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01c420 <_sidata+0x1560c>
1c0058c4:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c0058c9 <hexdecarr>:
hexdecarr():
1c0058c9:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c0058cd:	37363534 	0x37363534
1c0058d1:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfeba09 <_start-0x145f7>
1c0058d5:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfebe39 <_start-0x141c7>
1c0058d9:	 	addu16i.d	$r0,$r0,0

1c0058dc <Chi_Cha_Font_16x16>:
1c0058dc:	04448c10 	csrrd	$r16,0x1123
1c0058e0:	a69504e4 	0xa69504e4
1c0058e4:	84142444 	0x84142444
1c0058e8:	000c9444 	bytepick.d	$r4,$r2,$r5,0x1
1c0058ec:	417a0202 	beqz	$r16,621056(0x97a00) # 1c09d2ec <_sidata+0x964d8>
1c0058f0:	7e424341 	0x7e424341
1c0058f4:	43424242 	beqz	$r18,737856(0xb4240) # 1c0b9b34 <_sidata+0xb2d20>
1c0058f8:	000000f8 	0x000000f8
1c0058fc:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 1c013d80 <_sidata+0xcf6c>
1c005900:	0200c444 	slti	$r4,$r2,49(0x31)
1c005904:	828282f2 	0x828282f2
1c005908:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
1c00590c:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
1c005910:	08003f10 	0x08003f10
1c005914:	48080808 	bceqz	$fcc0,2099208(0x200808) # 1c20611c <_sidata+0x1ff308>
1c005918:	003f4088 	0x003f4088
1c00591c:	c2020200 	0xc2020200
1c005920:	fe020202 	0xfe020202
1c005924:	82828282 	0x82828282
1c005928:	00000282 	0x00000282
1c00592c:	7f404040 	0x7f404040
1c005930:	7f404040 	0x7f404040
1c005934:	40404040 	beqz	$r2,16448(0x4040) # 1c009974 <_sidata+0x2b60>
1c005938:	00404040 	0x00404040
1c00593c:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 1c013dc0 <_sidata+0xcfac>
1c005940:	1020c444 	addu16i.d	$r4,$r2,2097(0x831)
1c005944:	e42427e8 	0xe42427e8
1c005948:	00e02c34 	bstrpick.d	$r20,$r1,0x20,0xb
1c00594c:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
1c005950:	60803f10 	blt	$r24,$r16,32828(0x803c) # 1c00d98c <_sidata+0x6b78>
1c005954:	3f09091f 	0x3f09091f
1c005958:	007f8949 	bstrpick.w	$r9,$r10,0x1f,0x2
1c00595c:	24ef3040 	ldptr.w	$r0,$r2,-4304(0xef30)
1c005960:	7f484864 	0x7f484864
1c005964:	7f484848 	0x7f484848
1c005968:	00404848 	0x00404848
1c00596c:	217f0101 	sc.w	$r1,$r8,32512(0x7f00)
1c005970:	49ff0011 	bceqz	$fcc0,-3801344(0x45ff00) # 1bc65870 <_start-0x39a790>
1c005974:	49494949 	bcnez	$fcc2,2443592(0x254948) # 1c25a2bc <_sidata+0x2534a8>
1c005978:	000000ff 	0x000000ff
1c00597c:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c005980:	929e8000 	0x929e8000
1c005984:	92929292 	0x92929292
1c005988:	0000809e 	0x0000809e
1c00598c:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
1c005990:	24448494 	ldptr.w	$r20,$r4,17540(0x4484)
1c005994:	24140f14 	ldptr.w	$r20,$r24,5132(0x140c)
1c005998:	00848444 	bstrins.d	$r4,$r2,0x4,0x21
	...
1c0059bc:	84442404 	0x84442404
1c0059c0:	30409c64 	vldrepl.h	$vr4,$r3,78(0x4e)
1c0059c4:	0808c80f 	0x0808c80f
1c0059c8:	00001828 	cto.w	$r8,$r1
1c0059cc:	01060810 	0x01060810
1c0059d0:	18204c82 	pcaddi	$r2,66148(0x10264)
1c0059d4:	18060106 	pcaddi	$r6,12296(0x3008)
1c0059d8:	00804020 	bstrins.d	$r0,$r1,0x0,0x10
1c0059dc:	cc424040 	0xcc424040
1c0059e0:	04fc0000 	csrrd	$r0,0x3f00
1c0059e4:	04fc0002 	csrrd	$r2,0x3f00
1c0059e8:	0000fc04 	0x0000fc04
1c0059ec:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
1c0059f0:	444f4020 	bnez	$r1,20288(0x4f40) # 1c00a930 <_sidata+0x3b1c>
1c0059f4:	427f4042 	beqz	$r2,687936(0xa7f40) # 1c0ad934 <_sidata+0xa6b20>
1c0059f8:	00404344 	0x00404344
1c0059fc:	42424040 	beqz	$r2,148032(0x24240) # 1c029c3c <_sidata+0x22e28>
1c005a00:	42c24242 	beqz	$r18,705088(0xac240) # 1c0b1c40 <_sidata+0xaae2c>
1c005a04:	42424242 	beqz	$r18,672320(0xa4240) # 1c0a9c44 <_sidata+0xa2e30>
1c005a08:	00404042 	0x00404042
1c005a0c:	28702000 	ld.h	$r0,$r0,-1016(0xc08)
1c005a10:	20202324 	ll.w	$r4,$r25,8224(0x2020)
1c005a14:	30282420 	vldrepl.w	$vr0,$r1,-2012(0x824)
1c005a18:	000000e0 	0x000000e0
1c005a1c:	04e40404 	csrrd	$r4,0x3901
1c005a20:	0404f40f 	csrrd	$r15,0x13d
1c005a24:	44cf44f4 	bnez	$r7,-3092668(0x50cf44) # 1bd12968 <_start-0x2ed698>
1c005a28:	00044444 	alsl.w	$r4,$r2,$r17,0x1
1c005a2c:	447d4040 	bnez	$r2,32064(0x7d40) # 1c00d76c <_sidata+0x6958>
1c005a30:	45447d44 	bnez	$r10,1131644(0x11447c) # 1c119eac <_sidata+0x113098>
1c005a34:	45447c44 	bnez	$r2,1131644(0x11447c) # 1c119eb0 <_sidata+0x11309c>
1c005a38:	0040407c 	0x0040407c
1c005a3c:	b2c20000 	0xb2c20000
1c005a40:	82828282 	0x82828282
1c005a44:	8282fe82 	0x8282fe82
1c005a48:	00808282 	bstrins.d	$r2,$r20,0x0,0x20
1c005a4c:	10202000 	addu16i.d	$r0,$r0,2056(0x808)
1c005a50:	41020408 	beqz	$r0,2163204(0x210204) # 1c215c54 <_sidata+0x20ee40>
1c005a54:	00007f80 	0x00007f80
1c005a58:	00000000 	0x00000000
1c005a5c:	cc424040 	0xcc424040
1c005a60:	64440400 	bge	$r0,$r0,17412(0x4404) # 1c009e64 <_sidata+0x3050>
1c005a64:	44f4475c 	bnez	$r26,-986044(0x70f444) # 1bf14ea8 <_start-0xeb158>
1c005a68:	00044444 	alsl.w	$r4,$r2,$r17,0x1
1c005a6c:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
1c005a70:	44444420 	bnez	$r1,17476(0x4444) # 1c009eb4 <_sidata+0x30a0>
1c005a74:	447f4444 	bnez	$r2,1081156(0x107f44) # 1c10d9b8 <_sidata+0x106ba4>
1c005a78:	00444444 	0x00444444
1c005a7c:	ff101010 	0xff101010
1c005a80:	54445010 	bl	4211792(0x404450) # 1c409ed0 <_sidata+0x4030bc>
1c005a84:	6444c665 	bge	$r19,$r5,17604(0x44c4) # 1c009f48 <_sidata+0x3134>
1c005a88:	00404454 	0x00404454
1c005a8c:	7f824404 	0x7f824404
1c005a90:	4a828201 	0x4a828201
1c005a94:	52222356 	b	-44424672(0xd5a2220) # 195a7cb4 <_start-0x2a5834c>
1c005a98:	0002824e 	0x0002824e
1c005a9c:	88f80000 	0x88f80000
1c005aa0:	08888888 	0x08888888
1c005aa4:	0908ff08 	0x0908ff08
1c005aa8:	0008c80a 	bytepick.w	$r10,$r0,$r18,0x1
1c005aac:	001f6080 	mulw.d.w	$r0,$r4,$r24
1c005ab0:	801f2010 	0x801f2010
1c005ab4:	18162140 	pcaddi	$r0,45322(0xb10a)
1c005ab8:	00f84126 	bstrpick.d	$r6,$r9,0x38,0x10
1c005abc:	f8080808 	0xf8080808
1c005ac0:	10080808 	addu16i.d	$r8,$r0,514(0x202)
1c005ac4:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
1c005ac8:	0000f010 	0x0000f010
1c005acc:	1f103010 	pcaddu18i	$r16,-491136(0x88180)
1c005ad0:	30488808 	vldrepl.h	$vr8,$r0,1092(0x444)
1c005ad4:	8040010e 	0x8040010e
1c005ad8:	00003f40 	revb.d	$r0,$r26
1c005adc:	16180000 	lu32i.d	$r0,49152(0xc000)
1c005ae0:	97b8d010 	0x97b8d010
1c005ae4:	92909090 	0x92909090
1c005ae8:	00001094 	clo.w	$r20,$r4
1c005aec:	8c102000 	0x8c102000
1c005af0:	46418083 	bnez	$r4,934272(0xe4180) # 1c0e9c70 <_sidata+0xe2e5c>
1c005af4:	44281028 	bnez	$r1,2107408(0x202810) # 1c208304 <_sidata+0x2014f0>
1c005af8:	00808043 	bstrins.d	$r3,$r2,0x0,0x20
1c005afc:	1e304080 	pcaddu18i	$r0,98820(0x18204)
1c005b00:	ff101010 	0xff101010
1c005b04:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c005b08:	00001010 	clo.w	$r16,$r0
1c005b0c:	42424040 	beqz	$r2,148032(0x24240) # 1c029d4c <_sidata+0x22f38>
1c005b10:	7f424242 	0x7f424242
1c005b14:	42424242 	beqz	$r18,672320(0xa4240) # 1c0a9d54 <_sidata+0xa2f40>
1c005b18:	00404042 	0x00404042
1c005b1c:	38c00000 	0x38c00000
1c005b20:	ff000000 	0xff000000
1c005b24:	20400000 	ll.w	$r0,$r0,16384(0x4000)
1c005b28:	00000018 	0x00000018
1c005b2c:	20408180 	ll.w	$r0,$r12,16512(0x4080)
1c005b30:	00030c10 	0x00030c10
1c005b34:	20100c03 	ll.w	$r3,$r0,4108(0x100c)
1c005b38:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
1c005b3c:	c4040c10 	0xc4040c10
1c005b40:	f6050404 	0xf6050404
1c005b44:	04040404 	csrrd	$r4,0x101
1c005b48:	000c14c4 	bytepick.d	$r4,$r6,$r5,0x0
1c005b4c:	41428080 	beqz	$r4,82560(0x14280) # 1c019dcc <_sidata+0x12fb8>
1c005b50:	030c1020 	lu52i.d	$r0,$r1,772(0x304)
1c005b54:	4122100c 	beqz	$r0,3219984(0x312210) # 1c317d64 <_sidata+0x310f50>
1c005b58:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
1c005b5c:	00fc0000 	bstrpick.d	$r0,$r0,0x3c,0x0
1c005b60:	18040200 	pcaddi	$r0,8208(0x2010)
1c005b64:	7f800000 	0x7f800000
1c005b68:	00000000 	0x00000000
1c005b6c:	103f0000 	addu16i.d	$r0,$r0,4032(0xfc0)
1c005b70:	20408408 	ll.w	$r8,$r0,16516(0x4084)
1c005b74:	08030c10 	0x08030c10
1c005b78:	00c02010 	bstrpick.d	$r16,$r0,0x0,0x8
1c005b7c:	00000000 	0x00000000
1c005b80:	40ff0000 	beqz	$r0,65280(0xff00) # 1c015a80 <_sidata+0xec6c>
1c005b84:	40404040 	beqz	$r2,16448(0x4040) # 1c009bc4 <_sidata+0x2db0>
1c005b88:	00000040 	0x00000040
1c005b8c:	40404040 	beqz	$r2,16448(0x4040) # 1c009bcc <_sidata+0x2db8>
1c005b90:	407f4040 	beqz	$r2,32576(0x7f40) # 1c00dad0 <_sidata+0x6cbc>
1c005b94:	40404040 	beqz	$r2,16448(0x4040) # 1c009bd4 <_sidata+0x2dc0>
1c005b98:	00404040 	0x00404040
1c005b9c:	e72c1020 	0xe72c1020
1c005ba0:	e2002424 	0xe2002424
1c005ba4:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
1c005ba8:	0000e628 	0x0000e628
1c005bac:	7f010101 	0x7f010101
1c005bb0:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
1c005bb4:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
1c005bb8:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
1c005bbc:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
1c005bc0:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
1c005bc4:	d20e9222 	0xd20e9222
1c005bc8:	00001e22 	ctz.w	$r2,$r17
1c005bcc:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
1c005bd0:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
1c005bd4:	ff09090a 	0xff09090a
1c005bd8:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
1c005bdc:	82e20000 	0x82e20000
1c005be0:	82828282 	0x82828282
1c005be4:	fe828282 	0xfe828282
1c005be8:	00000000 	0x00000000
1c005bec:	403f0000 	beqz	$r0,16128(0x3f00) # 1c009aec <_sidata+0x2cd8>
1c005bf0:	40404040 	beqz	$r2,16448(0x4040) # 1c009c30 <_sidata+0x2e1c>
1c005bf4:	40404040 	beqz	$r2,16448(0x4040) # 1c009c34 <_sidata+0x2e20>
1c005bf8:	00007840 	0x00007840
1c005bfc:	c2020200 	0xc2020200
1c005c00:	fe020202 	0xfe020202
1c005c04:	82828282 	0x82828282
1c005c08:	00000282 	0x00000282
1c005c0c:	7f404040 	0x7f404040
1c005c10:	7f404040 	0x7f404040
1c005c14:	40404040 	beqz	$r2,16448(0x4040) # 1c009c54 <_sidata+0x2e40>
1c005c18:	00404040 	0x00404040
1c005c1c:	c8880808 	0xc8880808
1c005c20:	080b0c38 	0x080b0c38
1c005c24:	0808e808 	0x0808e808
1c005c28:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
1c005c2c:	ff000102 	0xff000102
1c005c30:	41414140 	beqz	$r10,82240(0x14140) # 1c019d70 <_sidata+0x12f5c>
1c005c34:	41417f41 	beqz	$r26,344444(0x5417c) # 1c059db0 <_sidata+0x52f9c>
1c005c38:	00404141 	0x00404141
1c005c3c:	82828280 	0x82828280
1c005c40:	828282fe 	0x828282fe
1c005c44:	82fe8282 	0x82fe8282
1c005c48:	00808282 	bstrins.d	$r2,$r20,0x0,0x20
1c005c4c:	30408000 	vldrepl.h	$vr0,$r0,64(0x40)
1c005c50:	0000000f 	0x0000000f
1c005c54:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c005c58:	00000000 	0x00000000
1c005c5c:	11100000 	addu16i.d	$r0,$r0,17408(0x4400)
1c005c60:	f0101016 	0xf0101016
1c005c64:	13141010 	addu16i.d	$r16,$r0,-15100(0xc504)
1c005c68:	00000010 	0x00000010
1c005c6c:	41418181 	beqz	$r12,344448(0x54180) # 1c059dec <_sidata+0x52fd8>
1c005c70:	030d1121 	lu52i.d	$r1,$r9,836(0x344)
1c005c74:	4121110d 	beqz	$r8,3481872(0x352110) # 1c357d84 <_sidata+0x350f70>
1c005c78:	00818141 	bstrins.d	$r1,$r10,0x1,0x20
1c005c7c:	54c40c10 	bl	4244492(0x40c40c) # 1c412088 <_sidata+0x40b274>
1c005c80:	46d5644c 	bnez	$r2,3331428(0x32d564) # 1c3331e4 <_sidata+0x32c3d0>
1c005c84:	544c4444 	bl	17845316(0x1104c44) # 1d10a8c8 <_sidata+0x1103ab4>
1c005c88:	000c14c4 	bytepick.d	$r4,$r6,$r5,0x0
1c005c8c:	40ff0000 	beqz	$r0,65280(0xff00) # 1c015b8c <_sidata+0xed78>
1c005c90:	49556244 	0x49556244
1c005c94:	40404355 	beqz	$r26,-2867136(0x544040) # 1bd49cd4 <_start-0x2b632c>
1c005c98:	000000ff 	0x000000ff
1c005c9c:	24440c10 	ldptr.w	$r16,$r0,17420(0x440c)
1c005ca0:	c6050414 	0xc6050414
1c005ca4:	24140404 	ldptr.w	$r4,$r0,5124(0x1404)
1c005ca8:	000c1444 	bytepick.d	$r4,$r2,$r5,0x0
1c005cac:	013f0000 	0x013f0000
1c005cb0:	ff010101 	0xff010101
1c005cb4:	21110101 	sc.w	$r1,$r8,4352(0x1100)
1c005cb8:	0000001f 	0x0000001f
1c005cbc:	00000000 	0x00000000
1c005cc0:	3fc00000 	0x3fc00000
1c005cc4:	000000c0 	0x000000c0
1c005cc8:	00000000 	0x00000000
1c005ccc:	10204080 	addu16i.d	$r0,$r4,2064(0x810)
1c005cd0:	0000030c 	0x0000030c
1c005cd4:	100c0300 	addu16i.d	$r0,$r24,768(0x300)
1c005cd8:	00804020 	bstrins.d	$r0,$r1,0x0,0x10
1c005cdc:	2222fe00 	ll.d	$r0,$r16,8956(0x22fc)
1c005ce0:	204000fe 	ll.w	$r30,$r7,16384(0x4000)
1c005ce4:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c005ce8:	00402050 	0x00402050
1c005cec:	82027f80 	0x82027f80
1c005cf0:	444000ff 	bnez	$r7,-245760(0x7c4000) # 1bfc9cf0 <_start-0x36310>
1c005cf4:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00ab34 <_sidata+0x3d20>
1c005cf8:	00404758 	0x00404758
1c005cfc:	8c026010 	0x8c026010
1c005d00:	92fe0000 	0x92fe0000
1c005d04:	92929292 	0x92929292
1c005d08:	000000fe 	0x000000fe
1c005d0c:	017e0404 	0x017e0404
1c005d10:	42427e40 	beqz	$r18,148092(0x2427c) # 1c029f8c <_sidata+0x23178>
1c005d14:	427e427e 	beqz	$r19,-360896(0x7a7e40) # 1bfadb54 <_start-0x524ac>
1c005d18:	00407e42 	0x00407e42
1c005d1c:	8c026010 	0x8c026010
1c005d20:	9292fe00 	0x9292fe00
1c005d24:	92929292 	0x92929292
1c005d28:	000000fe 	0x000000fe
1c005d2c:	017e0404 	0x017e0404
1c005d30:	7f504844 	0x7f504844
1c005d34:	507f4040 	b	16809792(0x1007f40) # 1d00dc74 <_sidata+0x1006e60>
1c005d38:	00404448 	0x00404448
1c005d3c:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
1c005d40:	25fc2424 	stptr.w	$r4,$r1,-988(0xfc24)
1c005d44:	24fc2426 	ldptr.w	$r6,$r1,-988(0xfc24)
1c005d48:	00042424 	alsl.w	$r4,$r1,$r9,0x1
1c005d4c:	808f3040 	0x808f3040
1c005d50:	25554c84 	stptr.w	$r4,$r4,21836(0x554c)
1c005d54:	4c552525 	jirl	$r5,$r9,21796(0x5524)
1c005d58:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005d5c:	e6090906 	0xe6090906
1c005d60:	02040cf8 	slti	$r24,$r7,259(0x103)
1c005d64:	02020202 	slti	$r2,$r16,128(0x80)
1c005d68:	00001e04 	ctz.w	$r4,$r16
1c005d6c:	07000000 	0x07000000
1c005d70:	4020301f 	beqz	$r0,-253904(0x7c2030) # 1bfc7da0 <_start-0x38260>
1c005d74:	40404040 	beqz	$r2,16448(0x4040) # 1c009db4 <_sidata+0x2fa0>
1c005d78:	00001020 	clo.w	$r0,$r1
1c005d7c:	44424040 	bnez	$r2,16960(0x4240) # 1c009fbc <_sidata+0x31a8>
1c005d80:	7f40c058 	0x7f40c058
1c005d84:	4850c040 	bceqz	$fcc2,20672(0x50c0) # 1c00ae44 <_sidata+0x4030>
1c005d88:	00404046 	0x00404046
1c005d8c:	20408080 	ll.w	$r0,$r4,16512(0x4080)
1c005d90:	00000718 	0x00000718
1c005d94:	40403f00 	beqz	$r24,16444(0x403c) # 1c009dd0 <_sidata+0x2fbc>
1c005d98:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
1c005d9c:	4242fe00 	beqz	$r16,148220(0x242fc) # 1c02a098 <_sidata+0x23284>
1c005da0:	4200fe42 	beqz	$r18,655612(0xa00fc) # 1c0a5e9c <_sidata+0x9f088>
1c005da4:	a2829ea2 	0xa2829ea2
1c005da8:	0000bec2 	0x0000bec2
1c005dac:	08086f80 	0x08086f80
1c005db0:	0000cf28 	0x0000cf28
1c005db4:	0808c82f 	0x0808c82f
1c005db8:	0000cf28 	0x0000cf28
1c005dbc:	2222e202 	ll.d	$r2,$r16,8928(0x22e0)
1c005dc0:	9e80003e 	0x9e80003e
1c005dc4:	92f29292 	0x92f29292
1c005dc8:	00809e92 	bstrins.d	$r18,$r20,0x0,0x27
1c005dcc:	42824300 	beqz	$r24,164416(0x28240) # 1c02e00c <_sidata+0x271f8>
1c005dd0:	4447403e 	bnez	$r1,-506048(0x784740) # 1bf8a510 <_start-0x75af0>
1c005dd4:	447f4444 	bnez	$r2,1081156(0x107f44) # 1c10dd18 <_sidata+0x106f04>
1c005dd8:	00e75444 	bstrpick.d	$r4,$r2,0x27,0x15
1c005ddc:	9292f200 	0x9292f200
1c005de0:	009e9292 	bstrins.d	$r18,$r20,0x1e,0x24
1c005de4:	929292f2 	0x929292f2
1c005de8:	00009e92 	0x00009e92
1c005dec:	4a111000 	bceqz	$fcc0,135440(0x21110) # 1c026efc <_sidata+0x200e8>
1c005df0:	003f4488 	0x003f4488
1c005df4:	884a1110 	0x884a1110
1c005df8:	00003f44 	revb.d	$r4,$r26
1c005dfc:	88f80000 	0x88f80000
1c005e00:	ff888888 	0xff888888
1c005e04:	88888888 	0x88888888
1c005e08:	000000f8 	0x000000f8
1c005e0c:	081f0000 	fmadd.s	$f0,$f0,$f0,$f30
1c005e10:	7f080808 	0x7f080808
1c005e14:	88888888 	0x88888888
1c005e18:	00f0809f 	bstrpick.d	$r31,$r4,0x30,0x20
1c005e1c:	0201f800 	slti	$r0,$r0,126(0x7e)
1c005e20:	f29292f0 	0xf29292f0
1c005e24:	02f29292 	addi.d	$r18,$r20,-860(0xca4)
1c005e28:	0000fe02 	0x0000fe02
1c005e2c:	0000ff00 	0x0000ff00
1c005e30:	7f04040f 	0x7f04040f
1c005e34:	400f0404 	beqz	$r0,1052420(0x100f04) # 1c106d38 <_sidata+0xfff24>
1c005e38:	00007f80 	0x00007f80
1c005e3c:	88888080 	0x88888080
1c005e40:	ff888888 	0xff888888
1c005e44:	88888888 	0x88888888
1c005e48:	00808088 	bstrins.d	$r8,$r4,0x0,0x20
1c005e4c:	08102020 	fmadd.s	$f0,$f1,$f8,$f0
1c005e50:	ff010204 	0xff010204
1c005e54:	08040201 	0x08040201
1c005e58:	00202010 	div.w	$r16,$r0,$r8

1c005e5c <Front_16x8Tab>:
1c005e5c:	f8000000 	0xf8000000
1c005e60:	00000000 	0x00000000
1c005e64:	33000000 	0x33000000
1c005e68:	00000000 	0x00000000
1c005e6c:	020c1000 	slti	$r0,$r0,772(0x304)
1c005e70:	00020c10 	0x00020c10
	...
1c005e7c:	78c04000 	0x78c04000
1c005e80:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c005e84:	043f0400 	csrrd	$r0,0xfc1
1c005e88:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c005e8c:	88887000 	0x88887000
1c005e90:	003008fc 	0x003008fc
1c005e94:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c005e98:	001e21ff 	mulh.d	$r31,$r15,$r8
1c005e9c:	80f008f0 	0x80f008f0
1c005ea0:	00001860 	cto.w	$r0,$r3
1c005ea4:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c005ea8:	001e211e 	mulh.d	$r30,$r8,$r8
1c005eac:	8808f000 	0x8808f000
1c005eb0:	00000070 	0x00000070
1c005eb4:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c005eb8:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c005ebc:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c005ecc:	e0000000 	0xe0000000
1c005ed0:	00020418 	0x00020418
1c005ed4:	07000000 	0x07000000
1c005ed8:	00402018 	0x00402018
1c005edc:	18040200 	pcaddi	$r0,8208(0x2010)
1c005ee0:	000000e0 	0x000000e0
1c005ee4:	18204000 	pcaddi	$r0,66048(0x10200)
1c005ee8:	00000007 	0x00000007
1c005eec:	f0804040 	0xf0804040
1c005ef0:	00404080 	0x00404080
1c005ef4:	0f010202 	0x0f010202
1c005ef8:	00020201 	0x00020201
1c005efc:	00000000 	0x00000000
1c005f00:	000000e0 	0x000000e0
1c005f04:	01010100 	fadd.d	$f0,$f8,$f0
1c005f08:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c005f14:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c005f24:	01010100 	fadd.d	$f0,$f8,$f0
1c005f28:	00010101 	0x00010101
	...
1c005f34:	00303000 	0x00303000
	...
1c005f40:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c005f44:	07186000 	0x07186000
1c005f48:	00000000 	0x00000000
1c005f4c:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c005f50:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c005f54:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c005f58:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c005f5c:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c005f60:	000000f8 	0x000000f8
1c005f64:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c005f68:	0020203f 	div.w	$r31,$r1,$r8
1c005f6c:	08087000 	0x08087000
1c005f70:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c005f74:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c005f78:	00302122 	0x00302122
1c005f7c:	08083000 	0x08083000
1c005f80:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c005f84:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c005f88:	001c2221 	mul.w	$r1,$r17,$r8
1c005f8c:	40800000 	beqz	$r0,32768(0x8000) # 1c00df8c <_sidata+0x7178>
1c005f90:	0000f830 	0x0000f830
1c005f94:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c005f98:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c005f9c:	8888f800 	0x8888f800
1c005fa0:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c005fa4:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c005fa8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c005fac:	8810e000 	0x8810e000
1c005fb0:	00009088 	0x00009088
1c005fb4:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c005fb8:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c005fbc:	08081800 	0x08081800
1c005fc0:	00186888 	sra.w	$r8,$r4,$r26
1c005fc4:	3e000000 	0x3e000000
1c005fc8:	00000001 	0x00000001
1c005fcc:	08887000 	0x08887000
1c005fd0:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c005fd4:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c005fd8:	001c2221 	mul.w	$r1,$r17,$r8
1c005fdc:	0808f000 	0x0808f000
1c005fe0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c005fe4:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c005fe8:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c005fec:	c0000000 	0xc0000000
1c005ff0:	000000c0 	0x000000c0
1c005ff4:	30000000 	0x30000000
1c005ff8:	00000030 	0x00000030
1c005ffc:	80000000 	0x80000000
1c006000:	00000000 	0x00000000
1c006004:	e0000000 	0xe0000000
1c006008:	00000000 	0x00000000
1c00600c:	40800000 	beqz	$r0,32768(0x8000) # 1c00e00c <_sidata+0x71f8>
1c006010:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c006014:	04020100 	csrxchg	$r0,$r8,0x80
1c006018:	00201008 	div.w	$r8,$r0,$r4
1c00601c:	40404000 	beqz	$r0,16448(0x4040) # 1c00a05c <_sidata+0x3248>
1c006020:	00404040 	0x00404040
1c006024:	02020200 	slti	$r0,$r16,128(0x80)
1c006028:	00020202 	0x00020202
1c00602c:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c006030:	00008040 	0x00008040
1c006034:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c006038:	00010204 	0x00010204
1c00603c:	08487000 	0x08487000
1c006040:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c006044:	30000000 	0x30000000
1c006048:	00000037 	0x00000037
1c00604c:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c006050:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c006054:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c006058:	0017282f 	sll.w	$r15,$r1,$r10
1c00605c:	38c00000 	0x38c00000
1c006060:	000000e0 	0x000000e0
1c006064:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c006068:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c00606c:	8888f808 	0x8888f808
1c006070:	00007088 	0x00007088
1c006074:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006078:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00607c:	080830c0 	0x080830c0
1c006080:	00380808 	0x00380808
1c006084:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c006088:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00608c:	0808f808 	0x0808f808
1c006090:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006094:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006098:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00609c:	8888f808 	0x8888f808
1c0060a0:	001008e8 	add.w	$r8,$r7,$r2
1c0060a4:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0060a8:	00182023 	sra.w	$r3,$r1,$r8
1c0060ac:	8888f808 	0x8888f808
1c0060b0:	001008e8 	add.w	$r8,$r7,$r2
1c0060b4:	00203f20 	div.w	$r0,$r25,$r15
1c0060b8:	00000003 	0x00000003
1c0060bc:	080830c0 	0x080830c0
1c0060c0:	00003808 	revb.2w	$r8,$r0
1c0060c4:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c0060c8:	00021e22 	0x00021e22
1c0060cc:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0060d0:	08f80800 	0x08f80800
1c0060d4:	01213f20 	0x01213f20
1c0060d8:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c0060dc:	f8080800 	0xf8080800
1c0060e0:	00000808 	0x00000808
1c0060e4:	3f202000 	0x3f202000
1c0060e8:	00002020 	clo.d	$r0,$r1
1c0060ec:	08080000 	0x08080000
1c0060f0:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c0060f4:	808080c0 	0x808080c0
1c0060f8:	0000007f 	0x0000007f
1c0060fc:	c088f808 	0xc088f808
1c006100:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c006104:	01203f20 	0x01203f20
1c006108:	00203826 	div.w	$r6,$r1,$r14
1c00610c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006110:	00000000 	0x00000000
1c006114:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006118:	00302020 	0x00302020
1c00611c:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c006120:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c006124:	3e013f20 	0x3e013f20
1c006128:	00203f01 	div.w	$r1,$r24,$r15
1c00612c:	c030f808 	0xc030f808
1c006130:	08f80800 	0x08f80800
1c006134:	00203f20 	div.w	$r0,$r25,$r15
1c006138:	003f1807 	0x003f1807
1c00613c:	080810e0 	0x080810e0
1c006140:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006144:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c006148:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00614c:	0808f808 	0x0808f808
1c006150:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c006154:	01213f20 	0x01213f20
1c006158:	00000101 	0x00000101
1c00615c:	080810e0 	0x080810e0
1c006160:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006164:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c006168:	004f5030 	0x004f5030
1c00616c:	8888f808 	0x8888f808
1c006170:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c006174:	00203f20 	div.w	$r0,$r25,$r15
1c006178:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c00617c:	08887000 	0x08887000
1c006180:	00380808 	0x00380808
1c006184:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c006188:	001c2221 	mul.w	$r1,$r17,$r8
1c00618c:	f8080818 	0xf8080818
1c006190:	00180808 	sra.w	$r8,$r0,$r2
1c006194:	3f200000 	0x3f200000
1c006198:	00000020 	0x00000020
1c00619c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0061a0:	08f80800 	0x08f80800
1c0061a4:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0061a8:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0061ac:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c0061b0:	0838c800 	0x0838c800
1c0061b4:	38070000 	0x38070000
1c0061b8:	0000010e 	0x0000010e
1c0061bc:	f800f808 	0xf800f808
1c0061c0:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c0061c4:	013e0300 	0x013e0300
1c0061c8:	0000033e 	0x0000033e
1c0061cc:	80681808 	0x80681808
1c0061d0:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c0061d4:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c0061d8:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c0061dc:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c0061e0:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c0061e4:	3f200000 	0x3f200000
1c0061e8:	00000020 	0x00000020
1c0061ec:	08080810 	0x08080810
1c0061f0:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c0061f4:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c0061f8:	00182020 	sra.w	$r0,$r1,$r8
1c0061fc:	fe000000 	0xfe000000
1c006200:	00020202 	0x00020202
1c006204:	7f000000 	0x7f000000
1c006208:	00404040 	0x00404040
1c00620c:	c0380400 	0xc0380400
1c006210:	00000000 	0x00000000
1c006214:	01000000 	0x01000000
1c006218:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c00621c:	02020200 	slti	$r0,$r16,128(0x80)
1c006220:	000000fe 	0x000000fe
1c006224:	40404000 	beqz	$r0,16448(0x4040) # 1c00a264 <_sidata+0x3450>
1c006228:	0000007f 	0x0000007f
1c00622c:	02040000 	slti	$r0,$r0,256(0x100)
1c006230:	00000402 	0x00000402
	...
1c006244:	80808080 	0x80808080
1c006248:	80808080 	0x80808080
1c00624c:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c00625c:	80800000 	0x80800000
1c006260:	00000080 	0x00000080
1c006264:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c006268:	00203f12 	div.w	$r18,$r24,$r15
1c00626c:	8000f010 	0x8000f010
1c006270:	00000080 	0x00000080
1c006274:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c006278:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00627c:	80000000 	0x80000000
1c006280:	00008080 	0x00008080
1c006284:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006288:	00112020 	sub.w	$r0,$r1,$r8
1c00628c:	80800000 	0x80800000
1c006290:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c006294:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006298:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00629c:	80800000 	0x80800000
1c0062a0:	00008080 	0x00008080
1c0062a4:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c0062a8:	00172424 	sll.w	$r4,$r1,$r9
1c0062ac:	e0808000 	0xe0808000
1c0062b0:	00209090 	mod.w	$r16,$r4,$r4
1c0062b4:	3f202000 	0x3f202000
1c0062b8:	00002020 	clo.d	$r0,$r1
1c0062bc:	80800000 	0x80800000
1c0062c0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0062c4:	94946b00 	0x94946b00
1c0062c8:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c0062cc:	8000f010 	0x8000f010
1c0062d0:	00008080 	0x00008080
1c0062d4:	00213f20 	div.wu	$r0,$r25,$r15
1c0062d8:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0062dc:	98988000 	0x98988000
1c0062e0:	00000000 	0x00000000
1c0062e4:	3f202000 	0x3f202000
1c0062e8:	00002020 	clo.d	$r0,$r1
1c0062ec:	80000000 	0x80000000
1c0062f0:	00009898 	0x00009898
1c0062f4:	8080c000 	0x8080c000
1c0062f8:	00007f80 	0x00007f80
1c0062fc:	0000f010 	0x0000f010
1c006300:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006304:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c006308:	00203029 	div.w	$r9,$r1,$r12
1c00630c:	f8101000 	0xf8101000
1c006310:	00000000 	0x00000000
1c006314:	3f202000 	0x3f202000
1c006318:	00002020 	clo.d	$r0,$r1
1c00631c:	80808080 	0x80808080
1c006320:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006324:	00203f20 	div.w	$r0,$r25,$r15
1c006328:	3f00203f 	0x3f00203f
1c00632c:	80008080 	0x80008080
1c006330:	00008080 	0x00008080
1c006334:	00213f20 	div.wu	$r0,$r25,$r15
1c006338:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00633c:	80800000 	0x80800000
1c006340:	00008080 	0x00008080
1c006344:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006348:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00634c:	80008080 	0x80008080
1c006350:	00000080 	0x00000080
1c006354:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c006358:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00635c:	80000000 	0x80000000
1c006360:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c006364:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006368:	80ff9120 	0x80ff9120
1c00636c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006370:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006374:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c006378:	00010020 	asrtle.d	$r1,$r0
1c00637c:	80800000 	0x80800000
1c006380:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006384:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c006388:	00192424 	srl.d	$r4,$r1,$r9
1c00638c:	e0808000 	0xe0808000
1c006390:	00008080 	0x00008080
1c006394:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c006398:	00102020 	add.w	$r0,$r1,$r8
1c00639c:	00008080 	0x00008080
1c0063a0:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0063a4:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0063a8:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0063ac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0063b0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0063b4:	300c0300 	0x300c0300
1c0063b8:	0000030c 	0x0000030c
1c0063bc:	80008080 	0x80008080
1c0063c0:	80800080 	0x80800080
1c0063c4:	0c300e01 	0x0c300e01
1c0063c8:	01063807 	0x01063807
1c0063cc:	80808000 	0x80808000
1c0063d0:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0063d4:	0e312000 	0x0e312000
1c0063d8:	0020312e 	div.w	$r14,$r9,$r12
1c0063dc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0063e0:	80808000 	0x80808000
1c0063e4:	78868100 	0x78868100
1c0063e8:	00010618 	0x00010618
1c0063ec:	80808000 	0x80808000
1c0063f0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0063f4:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c0063f8:	00302122 	0x00302122
1c0063fc:	00000000 	0x00000000
1c006400:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c006404:	00000000 	0x00000000
1c006408:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04a444 <_sidata+0x43630>
1c00640c:	00000000 	0x00000000
1c006410:	000000ff 	0x000000ff
1c006414:	00000000 	0x00000000
1c006418:	000000ff 	0x000000ff
1c00641c:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c006420:	00000000 	0x00000000
1c006424:	013e4040 	0x013e4040
1c006428:	00000000 	0x00000000
1c00642c:	02010200 	slti	$r0,$r16,64(0x40)
1c006430:	00020402 	0x00020402
	...
1c00643c:	654b0a0d 	bge	$r16,$r13,84744(0x14b08) # 1c01af44 <_sidata+0x14130>
1c006440:	65722079 	bge	$r3,$r25,94752(0x17220) # 1c01d660 <_sidata+0x1684c>
1c006444:	21746573 	sc.w	$r19,$r11,29796(0x7464)
1c006448:	00000a0d 	0x00000a0d
1c00644c:	70730a0d 	vmin.w	$vr13,$vr16,$vr2
1c006450:	6f622069 	bgeu	$r3,$r9,-40416(0x36220) # 1bffc670 <_start-0x3990>
1c006454:	0000746f 	0x0000746f
1c006458:	6f640a0d 	bgeu	$r16,$r13,-39928(0x36408) # 1bffc860 <_start-0x37a0>
1c00645c:	61622067 	blt	$r3,$r7,90656(0x16220) # 1c01c67c <_sidata+0x15868>
1c006460:	0d216b72 	xvbitsel.v	$xr18,$xr27,$xr26,$xr2
1c006464:	0000000a 	0x0000000a
1c006468:	61770a0d 	blt	$r16,$r13,96008(0x17708) # 1c01db70 <_sidata+0x16d5c>
1c00646c:	7055656b 	vhaddw.d.w	$vr11,$vr11,$vr25
1c006470:	000a0d21 	0x000a0d21
1c006474:	1c002ba0 	pcaddu12i	$r0,349(0x15d)
1c006478:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00647c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006480:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006484:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006488:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00648c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006490:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006494:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006498:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00649c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064a0:	1c002bb8 	pcaddu12i	$r24,349(0x15d)
1c0064a4:	1c002aa0 	pcaddu12i	$r0,341(0x155)
1c0064a8:	1c002aa0 	pcaddu12i	$r0,341(0x155)
1c0064ac:	1c002aa0 	pcaddu12i	$r0,341(0x155)
1c0064b0:	1c002aa0 	pcaddu12i	$r0,341(0x155)
1c0064b4:	1c002aa0 	pcaddu12i	$r0,341(0x155)
1c0064b8:	1c002aa0 	pcaddu12i	$r0,341(0x155)
1c0064bc:	1c002aa0 	pcaddu12i	$r0,341(0x155)
1c0064c0:	1c002aa0 	pcaddu12i	$r0,341(0x155)
1c0064c4:	1c002aa0 	pcaddu12i	$r0,341(0x155)
1c0064c8:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064cc:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064d0:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064d4:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064d8:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064dc:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064e0:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064e4:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064e8:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064ec:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064f0:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064f4:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064f8:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0064fc:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006500:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006504:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006508:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00650c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006510:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006514:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006518:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00651c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006520:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006524:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006528:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00652c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006530:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006534:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006538:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00653c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006540:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006544:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006548:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00654c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006550:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006554:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006558:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00655c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006560:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006564:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006568:	1c002ad8 	pcaddu12i	$r24,342(0x156)
1c00656c:	1c002af8 	pcaddu12i	$r24,343(0x157)
1c006570:	1c002b14 	pcaddu12i	$r20,344(0x158)
1c006574:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006578:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00657c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006580:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006584:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006588:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00658c:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006590:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006594:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c006598:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c00659c:	1c002b34 	pcaddu12i	$r20,345(0x159)
1c0065a0:	1c002b54 	pcaddu12i	$r20,346(0x15a)
1c0065a4:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0065a8:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0065ac:	1c002b74 	pcaddu12i	$r20,347(0x15b)
1c0065b0:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0065b4:	1c002b90 	pcaddu12i	$r16,348(0x15c)
1c0065b8:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0065bc:	1c002c00 	pcaddu12i	$r0,352(0x160)
1c0065c0:	1c002b54 	pcaddu12i	$r20,346(0x15a)
1c0065c4:	7c7c7c7c 	0x7c7c7c7c
1c0065c8:	7c7c7c7c 	0x7c7c7c7c
1c0065cc:	7c7c7c7c 	0x7c7c7c7c
1c0065d0:	7c7c7c7c 	0x7c7c7c7c
1c0065d4:	7c7c7c7c 	0x7c7c7c7c
1c0065d8:	7c7c7c7c 	0x7c7c7c7c
1c0065dc:	7c7c7c7c 	0x7c7c7c7c
1c0065e0:	7c7c7c7c 	0x7c7c7c7c
1c0065e4:	7c7c7c7c 	0x7c7c7c7c
1c0065e8:	7c7c7c7c 	0x7c7c7c7c
1c0065ec:	7c7c7c7c 	0x7c7c7c7c
1c0065f0:	7c7c7c7c 	0x7c7c7c7c
1c0065f4:	7c7c7c7c 	0x7c7c7c7c
1c0065f8:	7c7c7c7c 	0x7c7c7c7c
1c0065fc:	7c7c7c7c 	0x7c7c7c7c
1c006600:	7c7c7c7c 	0x7c7c7c7c
1c006604:	7c7c7c7c 	0x7c7c7c7c
1c006608:	7c7c7c7c 	0x7c7c7c7c
1c00660c:	7c7c7c7c 	0x7c7c7c7c
1c006610:	7c7c7c7c 	0x7c7c7c7c
1c006614:	7c7c7c7c 	0x7c7c7c7c
1c006618:	7c7c7c7c 	0x7c7c7c7c
1c00661c:	7c7c7c7c 	0x7c7c7c7c
1c006620:	7c7c7c7c 	0x7c7c7c7c
1c006624:	00000a7c 	0x00000a7c
1c006628:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00662c:	7c7c7c7c 	0x7c7c7c7c
1c006630:	7c7c7c7c 	0x7c7c7c7c
1c006634:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006638:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00663c:	7c7c7c7c 	0x7c7c7c7c
1c006640:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006644:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006648:	7c7c7c7c 	0x7c7c7c7c
1c00664c:	7c202020 	0x7c202020
1c006650:	7c7c7c7c 	0x7c7c7c7c
1c006654:	7c7c2020 	0x7c7c2020
1c006658:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00665c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006660:	7c7c7c20 	0x7c7c7c20
1c006664:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006668:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00666c:	7c7c7c20 	0x7c7c7c20
1c006670:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006674:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006678:	7c7c7c20 	0x7c7c7c20
1c00667c:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006680:	7c7c7c7c 	0x7c7c7c7c
1c006684:	7c20207c 	0x7c20207c
1c006688:	00000a7c 	0x00000a7c
1c00668c:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006690:	7c7c7c7c 	0x7c7c7c7c
1c006694:	7c7c7c7c 	0x7c7c7c7c
1c006698:	7c202020 	0x7c202020
1c00669c:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066a0:	7c7c7c20 	0x7c7c7c20
1c0066a4:	7c202020 	0x7c202020
1c0066a8:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066ac:	7c7c7c20 	0x7c7c7c20
1c0066b0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0066b4:	7c7c7c7c 	0x7c7c7c7c
1c0066b8:	7c7c2020 	0x7c7c2020
1c0066bc:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0066c0:	7c7c7c7c 	0x7c7c7c7c
1c0066c4:	7c7c2020 	0x7c7c2020
1c0066c8:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0066cc:	7c7c7c7c 	0x7c7c7c7c
1c0066d0:	7c7c2020 	0x7c7c2020
1c0066d4:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0066d8:	7c7c7c7c 	0x7c7c7c7c
1c0066dc:	7c7c2020 	0x7c7c2020
1c0066e0:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0066e4:	7c7c7c20 	0x7c7c7c20
1c0066e8:	7c20207c 	0x7c20207c
1c0066ec:	00000a7c 	0x00000a7c
1c0066f0:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0066f4:	7c7c7c7c 	0x7c7c7c7c
1c0066f8:	7c7c7c7c 	0x7c7c7c7c
1c0066fc:	7c7c2020 	0x7c7c2020
1c006700:	7c7c7c7c 	0x7c7c7c7c
1c006704:	7c7c7c20 	0x7c7c7c20
1c006708:	7c7c2020 	0x7c7c2020
1c00670c:	7c7c7c7c 	0x7c7c7c7c
1c006710:	7c7c7c20 	0x7c7c7c20
1c006714:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006718:	7c7c7c20 	0x7c7c7c20
1c00671c:	7c7c2020 	0x7c7c2020
1c006720:	7c20207c 	0x7c20207c
1c006724:	7c7c7c7c 	0x7c7c7c7c
1c006728:	7c7c7c7c 	0x7c7c7c7c
1c00672c:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006730:	7c7c2020 	0x7c7c2020
1c006734:	7c7c7c7c 	0x7c7c7c7c
1c006738:	7c20207c 	0x7c20207c
1c00673c:	7c7c7c7c 	0x7c7c7c7c
1c006740:	7c7c207c 	0x7c7c207c
1c006744:	7c20207c 	0x7c20207c
1c006748:	7c7c2020 	0x7c7c2020
1c00674c:	7c20207c 	0x7c20207c
1c006750:	00000a7c 	0x00000a7c
1c006754:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006758:	7c7c7c7c 	0x7c7c7c7c
1c00675c:	7c7c7c7c 	0x7c7c7c7c
1c006760:	7c7c2020 	0x7c7c2020
1c006764:	7c7c7c7c 	0x7c7c7c7c
1c006768:	7c7c7c20 	0x7c7c7c20
1c00676c:	7c7c2020 	0x7c7c2020
1c006770:	7c7c7c7c 	0x7c7c7c7c
1c006774:	7c7c7c20 	0x7c7c7c20
1c006778:	7c7c2020 	0x7c7c2020
1c00677c:	7c7c2020 	0x7c7c2020
1c006780:	7c7c2020 	0x7c7c2020
1c006784:	7c20207c 	0x7c20207c
1c006788:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00678c:	7c7c2020 	0x7c7c2020
1c006790:	7c7c7c7c 	0x7c7c7c7c
1c006794:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006798:	7c7c7c20 	0x7c7c7c20
1c00679c:	7c20207c 	0x7c20207c
1c0067a0:	7c7c7c7c 	0x7c7c7c7c
1c0067a4:	7c7c207c 	0x7c7c207c
1c0067a8:	7c20207c 	0x7c20207c
1c0067ac:	7c20207c 	0x7c20207c
1c0067b0:	7c20207c 	0x7c20207c
1c0067b4:	00000a7c 	0x00000a7c
1c0067b8:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0067bc:	7c7c7c7c 	0x7c7c7c7c
1c0067c0:	7c7c7c7c 	0x7c7c7c7c
1c0067c4:	7c7c2020 	0x7c7c2020
1c0067c8:	7c7c7c7c 	0x7c7c7c7c
1c0067cc:	7c7c7c20 	0x7c7c7c20
1c0067d0:	7c7c2020 	0x7c7c2020
1c0067d4:	7c7c7c7c 	0x7c7c7c7c
1c0067d8:	7c7c7c20 	0x7c7c7c20
1c0067dc:	7c7c2020 	0x7c7c2020
1c0067e0:	7c20207c 	0x7c20207c
1c0067e4:	7c7c2020 	0x7c7c2020
1c0067e8:	7c20207c 	0x7c20207c
1c0067ec:	7c7c7c7c 	0x7c7c7c7c
1c0067f0:	7c7c2020 	0x7c7c2020
1c0067f4:	7c7c7c7c 	0x7c7c7c7c
1c0067f8:	7c7c7c7c 	0x7c7c7c7c
1c0067fc:	7c7c2020 	0x7c7c2020
1c006800:	7c20207c 	0x7c20207c
1c006804:	7c7c7c7c 	0x7c7c7c7c
1c006808:	7c7c207c 	0x7c7c207c
1c00680c:	7c20207c 	0x7c20207c
1c006810:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006814:	7c20207c 	0x7c20207c
1c006818:	00000a7c 	0x00000a7c
1c00681c:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006820:	7c7c7c7c 	0x7c7c7c7c
1c006824:	7c7c7c7c 	0x7c7c7c7c
1c006828:	7c202020 	0x7c202020
1c00682c:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006830:	7c7c7c20 	0x7c7c7c20
1c006834:	7c202020 	0x7c202020
1c006838:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00683c:	7c7c7c20 	0x7c7c7c20
1c006840:	7c7c2020 	0x7c7c2020
1c006844:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006848:	7c7c2020 	0x7c7c2020
1c00684c:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006850:	7c7c7c7c 	0x7c7c7c7c
1c006854:	7c7c2020 	0x7c7c2020
1c006858:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00685c:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006860:	7c7c7c20 	0x7c7c7c20
1c006864:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006868:	7c7c7c7c 	0x7c7c7c7c
1c00686c:	7c7c2020 	0x7c7c2020
1c006870:	7c20207c 	0x7c20207c
1c006874:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006878:	7c202020 	0x7c202020
1c00687c:	00000a7c 	0x00000a7c
1c006880:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006884:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006888:	7c7c7c20 	0x7c7c7c20
1c00688c:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006890:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006894:	7c7c7c7c 	0x7c7c7c7c
1c006898:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00689c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0068a0:	7c7c7c7c 	0x7c7c7c7c
1c0068a4:	7c7c2020 	0x7c7c2020
1c0068a8:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0068ac:	7c7c2020 	0x7c7c2020
1c0068b0:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0068b4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0068b8:	7c7c7c20 	0x7c7c7c20
1c0068bc:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0068c0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0068c4:	7c7c7c7c 	0x7c7c7c7c
1c0068c8:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0068cc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0068d0:	7c7c7c20 	0x7c7c7c20
1c0068d4:	7c20207c 	0x7c20207c
1c0068d8:	7c7c7c7c 	0x7c7c7c7c
1c0068dc:	7c202020 	0x7c202020
1c0068e0:	00000a7c 	0x00000a7c
1c0068e4:	7c7c7c7c 	0x7c7c7c7c
1c0068e8:	7c7c7c7c 	0x7c7c7c7c
1c0068ec:	7c7c7c7c 	0x7c7c7c7c
1c0068f0:	7c7c7c7c 	0x7c7c7c7c
1c0068f4:	7c7c7c7c 	0x7c7c7c7c
1c0068f8:	7c7c7c7c 	0x7c7c7c7c
1c0068fc:	7c7c7c7c 	0x7c7c7c7c
1c006900:	7c7c7c7c 	0x7c7c7c7c
1c006904:	7c7c7c7c 	0x7c7c7c7c
1c006908:	5b7c7c7c 	beq	$r3,$r28,-33668(0x37c7c) # 1bffe584 <_start-0x1a7c>
1c00690c:	30323032 	0x30323032
1c006910:	4f4f4c20 	jirl	$r0,$r1,-45236(0x34f4c)
1c006914:	4f53474e 	jirl	$r14,$r26,-44220(0x35344)
1c006918:	7c7c5d4e 	0x7c7c5d4e
1c00691c:	7c7c7c7c 	0x7c7c7c7c
1c006920:	7c7c7c7c 	0x7c7c7c7c
1c006924:	7c7c7c7c 	0x7c7c7c7c
1c006928:	7c7c7c7c 	0x7c7c7c7c
1c00692c:	7c7c7c7c 	0x7c7c7c7c
1c006930:	7c7c7c7c 	0x7c7c7c7c
1c006934:	7c7c7c7c 	0x7c7c7c7c
1c006938:	7c7c7c7c 	0x7c7c7c7c
1c00693c:	7c7c7c7c 	0x7c7c7c7c
1c006940:	7c7c7c7c 	0x7c7c7c7c
1c006944:	00000a7c 	0x00000a7c
1c006948:	00642509 	bstrins.w	$r9,$r8,0x4,0x9
1c00694c:	6f440a0d 	bgeu	$r16,$r13,-48120(0x34408) # 1bffad54 <_start-0x52ac>
1c006950:	00006e77 	cpucfg	$r23,$r19
1c006954:	50550a0d 	b	-130788088(0x8345508) # 1434be5c <_start-0x7cb41a4>
1c006958:	00000000 	0x00000000
1c00695c:	754d0a0d 	0x754d0a0d
1c006960:	6f44696c 	bgeu	$r11,$r12,-48024(0x34468) # 1bffadc8 <_start-0x5238>
1c006964:	00006e77 	cpucfg	$r23,$r19
1c006968:	6f430a0d 	bgeu	$r16,$r13,-48376(0x34308) # 1bffac70 <_start-0x5390>
1c00696c:	20746e75 	ll.w	$r21,$r19,29804(0x746c)
1c006970:	0000564f 	bitrev.d	$r15,$r18
1c006974:	30090a0d 	0x30090a0d
1c006978:	31300930 	0x31300930
1c00697c:	09323009 	0x09323009
1c006980:	30093330 	0x30093330
1c006984:	35300934 	0x35300934
1c006988:	09363009 	0x09363009
1c00698c:	30093730 	0x30093730
1c006990:	39300938 	0x39300938
1c006994:	09303109 	0x09303109
1c006998:	00003131 	revb.2h	$r17,$r9
1c00699c:	6e630a0d 	bgeu	$r16,$r13,-105720(0x26308) # 1bfecca4 <_start-0x1335c>
1c0069a0:	00000074 	0x00000074
1c0069a4:	64342509 	bge	$r8,$r9,13348(0x3424) # 1c009dc8 <_sidata+0x2fb4>
1c0069a8:	00000000 	0x00000000
1c0069ac:	61420a0d 	blt	$r16,$r13,82440(0x14208) # 1c01abb4 <_sidata+0x13da0>
1c0069b0:	61566573 	blt	$r11,$r19,87652(0x15664) # 1c01c014 <_sidata+0x15200>
1c0069b4:	0000006c 	0x0000006c
1c0069b8:	75530a0d 	0x75530a0d
1c0069bc:	6c615662 	bgeu	$r19,$r2,24916(0x6154) # 1c00cb10 <_sidata+0x5cfc>
1c0069c0:	00000000 	0x00000000
1c0069c4:	64322509 	bge	$r8,$r9,12836(0x3224) # 1c009be8 <_sidata+0x2dd4>
1c0069c8:	00000000 	0x00000000
1c0069cc:	64332509 	bge	$r8,$r9,13092(0x3324) # 1c009cf0 <_sidata+0x2edc>
1c0069d0:	00000000 	0x00000000
1c0069d4:	3c200a0d 	0x3c200a0d
1c0069d8:	51524920 	b	75584072(0x4815248) # 2081bc20 <_sidata+0x4814e0c>
1c0069dc:	6425203a 	bge	$r1,$r26,9504(0x2520) # 1c008efc <_sidata+0x20e8>
1c0069e0:	6e756620 	bgeu	$r17,$r0,-101020(0x27564) # 1bfedf44 <_start-0x120bc>
1c0069e4:	73253a63 	vsat.d	$vr3,$vr19,0xe
1c0069e8:	3e202020 	0x3e202020
1c0069ec:	00000a0d 	0x00000a0d
1c0069f0:	2e2e0a0d 	0x2e2e0a0d
1c0069f4:	2e2e2e2e 	0x2e2e2e2e
1c0069f8:	2e2e2e2e 	0x2e2e2e2e
1c0069fc:	422e2e2e 	beqz	$r17,3812908(0x3a2e2c) # 1c3a9828 <_sidata+0x3a2a14>
1c006a00:	465f5441 	bnez	$r2,417620(0x65f54) # 1c06c954 <_sidata+0x65b40>
1c006a04:	2e4c4941 	0x2e4c4941
1c006a08:	2e2e2e2e 	0x2e2e2e2e
1c006a0c:	2e2e2e2e 	0x2e2e2e2e
1c006a10:	2e2e2e2e 	0x2e2e2e2e
1c006a14:	000a0d2e 	0x000a0d2e
1c006a18:	2e2e0a0d 	0x2e2e0a0d
1c006a1c:	2e2e2e2e 	0x2e2e2e2e
1c006a20:	2e2e2e2e 	0x2e2e2e2e
1c006a24:	412e2e2e 	beqz	$r17,3747372(0x392e2c) # 1c399850 <_sidata+0x392a3c>
1c006a28:	2e2e4344 	0x2e2e4344
1c006a2c:	2e2e2e2e 	0x2e2e2e2e
1c006a30:	2e2e2e2e 	0x2e2e2e2e
1c006a34:	2e2e2e2e 	0x2e2e2e2e
1c006a38:	00000a0d 	0x00000a0d
1c006a3c:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c01dca8 <_sidata+0x16e94>
1c006a40:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c01d394 <_sidata+0x16580>
1c006a44:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff8ab4 <_start-0x754c>
1c006a48:	7261656c 	0x7261656c
1c006a4c:	746e6920 	0x746e6920
1c006a50:	75727265 	0x75727265
1c006a54:	2e2e7470 	0x2e2e7470
1c006a58:	00000a0d 	0x00000a0d

1c006a5c <__FUNCTION__.1768>:
1c006a5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ded4 <_sidata+0x170c0>
1c006a60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dac4 <_sidata+0x16cb0>
1c006a64:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffa1c8 <_start-0x5e38>
1c006a68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbd8 <_start-0x2428>
1c006a6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8cc <_sidata+0x6ab8>
1c006a70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a74 <__FUNCTION__.1764>:
1c006a74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01deec <_sidata+0x170d8>
1c006a78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dadc <_sidata+0x16cc8>
1c006a7c:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffa0e0 <_start-0x5f20>
1c006a80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbf0 <_start-0x2410>
1c006a84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8e4 <_sidata+0x6ad0>
1c006a88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a8c <__FUNCTION__.1760>:
1c006a8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df04 <_sidata+0x170f0>
1c006a90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01daf4 <_sidata+0x16ce0>
1c006a94:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff9ff8 <_start-0x6008>
1c006a98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc08 <_start-0x23f8>
1c006a9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8fc <_sidata+0x6ae8>
1c006aa0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006aa4 <__FUNCTION__.1756>:
1c006aa4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df1c <_sidata+0x17108>
1c006aa8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db0c <_sidata+0x16cf8>
1c006aac:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff9f10 <_start-0x60f0>
1c006ab0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc20 <_start-0x23e0>
1c006ab4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d914 <_sidata+0x6b00>
1c006ab8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006abc <__FUNCTION__.1752>:
1c006abc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df34 <_sidata+0x17120>
1c006ac0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db24 <_sidata+0x16d10>
1c006ac4:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff9e28 <_start-0x61d8>
1c006ac8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc38 <_start-0x23c8>
1c006acc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d92c <_sidata+0x6b18>
1c006ad0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ad4 <__FUNCTION__.1748>:
1c006ad4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df4c <_sidata+0x17138>
1c006ad8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db3c <_sidata+0x16d28>
1c006adc:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff9d40 <_start-0x62c0>
1c006ae0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc50 <_start-0x23b0>
1c006ae4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d944 <_sidata+0x6b30>
1c006ae8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006aec <__FUNCTION__.1744>:
1c006aec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df64 <_sidata+0x17150>
1c006af0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db54 <_sidata+0x16d40>
1c006af4:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff9c58 <_start-0x63a8>
1c006af8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc68 <_start-0x2398>
1c006afc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d95c <_sidata+0x6b48>
1c006b00:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b04 <__FUNCTION__.1740>:
1c006b04:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df7c <_sidata+0x17168>
1c006b08:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db6c <_sidata+0x16d58>
1c006b0c:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff9b70 <_start-0x6490>
1c006b10:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc80 <_start-0x2380>
1c006b14:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d974 <_sidata+0x6b60>
1c006b18:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b1c <__FUNCTION__.1736>:
1c006b1c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df94 <_sidata+0x17180>
1c006b20:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db84 <_sidata+0x16d70>
1c006b24:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffa284 <_start-0x5d7c>
1c006b28:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc98 <_start-0x2368>
1c006b2c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d98c <_sidata+0x6b78>
1c006b30:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b34 <__FUNCTION__.1732>:
1c006b34:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dfac <_sidata+0x17198>
1c006b38:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db9c <_sidata+0x16d88>
1c006b3c:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffa19c <_start-0x5e64>
1c006b40:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdcb0 <_start-0x2350>
1c006b44:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d9a4 <_sidata+0x6b90>
1c006b48:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b4c <__FUNCTION__.1728>:
1c006b4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dfc4 <_sidata+0x171b0>
1c006b50:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dbb4 <_sidata+0x16da0>
1c006b54:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffa0b4 <_start-0x5f4c>
1c006b58:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdcc8 <_start-0x2338>
1c006b5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d9bc <_sidata+0x6ba8>
1c006b60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b64 <__FUNCTION__.1724>:
1c006b64:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dfdc <_sidata+0x171c8>
1c006b68:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dbcc <_sidata+0x16db8>
1c006b6c:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff9fcc <_start-0x6034>
1c006b70:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdce0 <_start-0x2320>
1c006b74:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d9d4 <_sidata+0x6bc0>
1c006b78:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b7c <__FUNCTION__.1720>:
1c006b7c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dff4 <_sidata+0x171e0>
1c006b80:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dbe4 <_sidata+0x16dd0>
1c006b84:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff9ee4 <_start-0x611c>
1c006b88:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdcf8 <_start-0x2308>
1c006b8c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d9ec <_sidata+0x6bd8>
1c006b90:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b94 <__FUNCTION__.1716>:
1c006b94:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e00c <_sidata+0x171f8>
1c006b98:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dbfc <_sidata+0x16de8>
1c006b9c:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff9dfc <_start-0x6204>
1c006ba0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd10 <_start-0x22f0>
1c006ba4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da04 <_sidata+0x6bf0>
1c006ba8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bac <__FUNCTION__.1712>:
1c006bac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e024 <_sidata+0x17210>
1c006bb0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc14 <_sidata+0x16e00>
1c006bb4:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff9d14 <_start-0x62ec>
1c006bb8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd28 <_start-0x22d8>
1c006bbc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da1c <_sidata+0x6c08>
1c006bc0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bc4 <__FUNCTION__.1708>:
1c006bc4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e03c <_sidata+0x17228>
1c006bc8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc2c <_sidata+0x16e18>
1c006bcc:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff9c2c <_start-0x63d4>
1c006bd0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd40 <_start-0x22c0>
1c006bd4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da34 <_sidata+0x6c20>
1c006bd8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bdc <__FUNCTION__.1704>:
1c006bdc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e054 <_sidata+0x17240>
1c006be0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc44 <_sidata+0x16e30>
1c006be4:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffa344 <_start-0x5cbc>
1c006be8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd58 <_start-0x22a8>
1c006bec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da4c <_sidata+0x6c38>
1c006bf0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bf4 <__FUNCTION__.1700>:
1c006bf4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e06c <_sidata+0x17258>
1c006bf8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc5c <_sidata+0x16e48>
1c006bfc:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffa25c <_start-0x5da4>
1c006c00:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd70 <_start-0x2290>
1c006c04:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da64 <_sidata+0x6c50>
1c006c08:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c0c <__FUNCTION__.1696>:
1c006c0c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e084 <_sidata+0x17270>
1c006c10:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc74 <_sidata+0x16e60>
1c006c14:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffa174 <_start-0x5e8c>
1c006c18:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd88 <_start-0x2278>
1c006c1c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da7c <_sidata+0x6c68>
1c006c20:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c24 <__FUNCTION__.1692>:
1c006c24:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e09c <_sidata+0x17288>
1c006c28:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc8c <_sidata+0x16e78>
1c006c2c:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffa08c <_start-0x5f74>
1c006c30:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdda0 <_start-0x2260>
1c006c34:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da94 <_sidata+0x6c80>
1c006c38:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c3c <__FUNCTION__.1688>:
1c006c3c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0b4 <_sidata+0x172a0>
1c006c40:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dca4 <_sidata+0x16e90>
1c006c44:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff9fa4 <_start-0x605c>
1c006c48:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffddb8 <_start-0x2248>
1c006c4c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00daac <_sidata+0x6c98>
1c006c50:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c54 <__FUNCTION__.1684>:
1c006c54:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0cc <_sidata+0x172b8>
1c006c58:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dcbc <_sidata+0x16ea8>
1c006c5c:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff9ebc <_start-0x6144>
1c006c60:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffddd0 <_start-0x2230>
1c006c64:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dac4 <_sidata+0x6cb0>
1c006c68:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c6c <__FUNCTION__.1680>:
1c006c6c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0e4 <_sidata+0x172d0>
1c006c70:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dcd4 <_sidata+0x16ec0>
1c006c74:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff9dd4 <_start-0x622c>
1c006c78:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdde8 <_start-0x2218>
1c006c7c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dadc <_sidata+0x6cc8>
1c006c80:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c84 <__FUNCTION__.1676>:
1c006c84:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0fc <_sidata+0x172e8>
1c006c88:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dcec <_sidata+0x16ed8>
1c006c8c:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff9cec <_start-0x6314>
1c006c90:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde00 <_start-0x2200>
1c006c94:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00daf4 <_sidata+0x6ce0>
1c006c98:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c9c <__FUNCTION__.1672>:
1c006c9c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e114 <_sidata+0x17300>
1c006ca0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd04 <_sidata+0x16ef0>
1c006ca4:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffa404 <_start-0x5bfc>
1c006ca8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde18 <_start-0x21e8>
1c006cac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db0c <_sidata+0x6cf8>
1c006cb0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006cb4 <__FUNCTION__.1668>:
1c006cb4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e12c <_sidata+0x17318>
1c006cb8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd1c <_sidata+0x16f08>
1c006cbc:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffa31c <_start-0x5ce4>
1c006cc0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde30 <_start-0x21d0>
1c006cc4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db24 <_sidata+0x6d10>
1c006cc8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ccc <__FUNCTION__.1664>:
1c006ccc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e144 <_sidata+0x17330>
1c006cd0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd34 <_sidata+0x16f20>
1c006cd4:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffa234 <_start-0x5dcc>
1c006cd8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde48 <_start-0x21b8>
1c006cdc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db3c <_sidata+0x6d28>
1c006ce0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ce4 <__FUNCTION__.1660>:
1c006ce4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e15c <_sidata+0x17348>
1c006ce8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd4c <_sidata+0x16f38>
1c006cec:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffa14c <_start-0x5eb4>
1c006cf0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde60 <_start-0x21a0>
1c006cf4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db54 <_sidata+0x6d40>
1c006cf8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006cfc <__FUNCTION__.1656>:
1c006cfc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e174 <_sidata+0x17360>
1c006d00:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd64 <_sidata+0x16f50>
1c006d04:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffa064 <_start-0x5f9c>
1c006d08:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde78 <_start-0x2188>
1c006d0c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db6c <_sidata+0x6d58>
1c006d10:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d14 <__FUNCTION__.1652>:
1c006d14:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e18c <_sidata+0x17378>
1c006d18:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd7c <_sidata+0x16f68>
1c006d1c:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff9f7c <_start-0x6084>
1c006d20:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde90 <_start-0x2170>
1c006d24:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db84 <_sidata+0x6d70>
1c006d28:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d2c <__FUNCTION__.1648>:
1c006d2c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e1a4 <_sidata+0x17390>
1c006d30:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd94 <_sidata+0x16f80>
1c006d34:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff9e94 <_start-0x616c>
1c006d38:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdea8 <_start-0x2158>
1c006d3c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db9c <_sidata+0x6d88>
1c006d40:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d44 <__FUNCTION__.1644>:
1c006d44:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e1bc <_sidata+0x173a8>
1c006d48:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ddac <_sidata+0x16f98>
1c006d4c:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff9dac <_start-0x6254>
1c006d50:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdec0 <_start-0x2140>
1c006d54:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dbb4 <_sidata+0x6da0>
1c006d58:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d5c <Ext_IrqHandle>:
1c006d5c:	1c003ac0 	pcaddu12i	$r0,470(0x1d6)
1c006d60:	1c003b00 	pcaddu12i	$r0,472(0x1d8)
1c006d64:	1c003b40 	pcaddu12i	$r0,474(0x1da)
1c006d68:	1c003b80 	pcaddu12i	$r0,476(0x1dc)
1c006d6c:	1c003bc0 	pcaddu12i	$r0,478(0x1de)
1c006d70:	1c003c00 	pcaddu12i	$r0,480(0x1e0)
1c006d74:	1c003c40 	pcaddu12i	$r0,482(0x1e2)
1c006d78:	1c003c80 	pcaddu12i	$r0,484(0x1e4)
1c006d7c:	1c003cc0 	pcaddu12i	$r0,486(0x1e6)
1c006d80:	1c003d00 	pcaddu12i	$r0,488(0x1e8)
1c006d84:	1c003d40 	pcaddu12i	$r0,490(0x1ea)
1c006d88:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c006d8c:	1c003dc0 	pcaddu12i	$r0,494(0x1ee)
1c006d90:	1c003e00 	pcaddu12i	$r0,496(0x1f0)
1c006d94:	1c003e40 	pcaddu12i	$r0,498(0x1f2)
1c006d98:	1c003e80 	pcaddu12i	$r0,500(0x1f4)
1c006d9c:	1c003ec0 	pcaddu12i	$r0,502(0x1f6)
1c006da0:	1c003f00 	pcaddu12i	$r0,504(0x1f8)
1c006da4:	1c003f40 	pcaddu12i	$r0,506(0x1fa)
1c006da8:	1c003f80 	pcaddu12i	$r0,508(0x1fc)
1c006dac:	1c003fc0 	pcaddu12i	$r0,510(0x1fe)
1c006db0:	1c004000 	pcaddu12i	$r0,512(0x200)
1c006db4:	1c004040 	pcaddu12i	$r0,514(0x202)
1c006db8:	1c004080 	pcaddu12i	$r0,516(0x204)
1c006dbc:	1c0040c0 	pcaddu12i	$r0,518(0x206)
1c006dc0:	1c004100 	pcaddu12i	$r0,520(0x208)
1c006dc4:	1c004140 	pcaddu12i	$r0,522(0x20a)
1c006dc8:	1c004180 	pcaddu12i	$r0,524(0x20c)
1c006dcc:	1c0041c0 	pcaddu12i	$r0,526(0x20e)
1c006dd0:	1c004200 	pcaddu12i	$r0,528(0x210)
1c006dd4:	1c004240 	pcaddu12i	$r0,530(0x212)
1c006dd8:	1c004280 	pcaddu12i	$r0,532(0x214)
1c006ddc:	4f4c4e55 	jirl	$r21,$r18,-46004(0x34c4c)
1c006de0:	00004b43 	bitrev.4b	$r3,$r26
1c006de4:	4b434f4c 	0x4b434f4c
1c006de8:	00000000 	0x00000000
1c006dec:	45574f50 	bnez	$r26,-4106420(0x41574c) # 1bc1c538 <_start-0x3e3ac8>
1c006df0:	00000052 	0x00000052
1c006df4:	33042313 	0x33042313
1c006df8:	00000000 	0x00000000
1c006dfc:	33032313 	0x33032313
1c006e00:	00000000 	0x00000000

1c006e04 <message2>:
1c006e04:	6867696c 	bltu	$r11,$r12,26472(0x6768) # 1c00d56c <_sidata+0x6758>
1c006e08:	00000074 	0x00000074

1c006e0c <message1>:
1c006e0c:	45524946 	bnez	$r10,1659464(0x195248) # 1c19c054 <_sidata+0x195240>
1c006e10:	00212121 	div.wu	$r1,$r9,$r8

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c0058c9 	pcaddu12i	$r9,710(0x2c6)
80001008:	80000034 	0x80000034
8000100c:	80000024 	0x80000024
80001010:	80000011 	0x80000011
80001014:	80000000 	0x80000000
80001018:	8000106c 	0x8000106c
8000101c:	800001be 	0x800001be
80001020:	8000000c 	0x8000000c
80001024:	80000028 	0x80000028
80001028:	800001bf 	0x800001bf
8000102c:	80000010 	0x80000010
80001030:	8000002c 	0x8000002c
80001034:	80000004 	0x80000004
80001038:	80000008 	0x80000008
8000103c:	800000b8 	0x800000b8
80001040:	80001060 	0x80001060
80001044:	1c0058c0 	pcaddu12i	$r0,710(0x2c6)
80001048:	80000138 	0x80000138
8000104c:	80000012 	0x80000012
80001050:	80000030 	0x80000030
80001054:	800001c0 	0x800001c0
80001058:	800001c1 	0x800001c1

8000105c <freq>:
8000105c:	00001f40 	ctz.w	$r0,$r26

80001060 <step>:
80001060:	00000008 	0x00000008

80001064 <teeth_num>:
80001064:	00000008 	0x00000008

80001068 <radio>:
80001068:	00000040 	0x00000040

8000106c <g_SystemFreq>:
8000106c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001070 <BYJ_Code_4_cw>:
80001070:	0d0b070e 	0x0d0b070e

80001074 <BYJ_Code_4_ccw>:
80001074:	070b0d0e 	0x070b0d0e

80001078 <BYJ_Code_8_cw>:
80001078:	06040c08 	cacop	0x8,$r0,259(0x103)
8000107c:	09010302 	0x09010302

80001080 <BYJ_Code_8_ccw>:
80001080:	02030109 	slti	$r9,$r8,192(0xc0)
80001084:	080c0406 	0x080c0406

80001088 <curtain_closed>:
80001088:	00000001 	0x00000001

8000108c <password>:
8000108c:	07070707 	0x07070707

80001090 <key_index>:
80001090:	18141211 	pcaddi	$r17,41104(0xa090)
80001094:	28242221 	ld.b	$r1,$r17,-1784(0x908)
80001098:	48444241 	0x48444241
8000109c:	88848281 	0x88848281

800010a0 <gpio_state>:
800010a0:	00000001 	0x00000001

Disassembly of section .bss:

80000000 <count_step>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <dir>:
80000004:	00000000 	0x00000000

80000008 <count>:
80000008:	00000000 	0x00000000

8000000c <motor_done>:
8000000c:	00000000 	0x00000000

80000010 <index>:
	...

80000011 <receive_flag1>:
	...

80000012 <receive_index1>:
	...

80000014 <receive_cnt>:
80000014:	00000000 	0x00000000

80000018 <receive_index>:
	...

80000019 <debounce.1768>:
	...

8000001a <k>:
	...

8000001b <unlock>:
	...

8000001c <reset_input>:
	...

8000001d <enter>:
8000001d:	 	0x00000000

80000020 <user>:
80000020:	00000000 	0x00000000

80000024 <b>:
80000024:	00000000 	0x00000000

80000028 <c>:
80000028:	00000000 	0x00000000

8000002c <d>:
8000002c:	00000000 	0x00000000

80000030 <a>:
80000030:	00000000 	0x00000000

80000034 <receive_flag>:
80000034:	00000000 	0x00000000

80000038 <exti_irq_handle>:
	...

800000b8 <receive_buf1>:
	...

80000138 <receive_buf>:
	...

800001b8 <Voltage>:
800001b8:	00000000 	0x00000000

800001bc <ADValue>:
	...

800001be <TempH>:
	...

800001bf <HumiL>:
	...

800001c0 <HumiH>:
	...

800001c1 <TempL>:
800001c1:	Address 0x00000000800001c1 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
