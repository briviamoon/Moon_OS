# 1 "pr25331.c"
! mmixal:= 8H LOC Data_Section
	.text ! mmixal:= 9H LOC 8B
	.global f
	.data ! mmixal:= 8H LOC 9B
	.p2align 3
	LOC @+(8-@)&7
f	IS @
	LOC @+8
	.global g
	.p2align 2
	LOC @+(4-@)&3
g	IS @
	LOC @+4
	.global h
	.p2align 3
	LOC @+(8-@)&7
h	IS @
	LOC @+8
	.section	.rodata
	.p2align 2
	LOC @+(4-@)&3
LC:0	IS @
	BYTE #0
	.text ! mmixal:= 9H LOC 8B
	.p2align 2
	LOC @+(4-@)&3
	.global i
i	IS @
	SUBU $254,$254,240
	STOU $253,$254,232
	ADDU $253,$254,240
	SUBU $254,$254,168
	GET $1,rJ
	SETL $5,#198
	NEGU $5,0,$5
	ADDU $4,$253,$5
	STOU $0,$4,0
	SUBU $0,$253,16
	LDO $6,__stack_chk_guard
	STOU $6,$0,0
	SETL $7,#184
	NEGU $7,0,$7
	ADDU $0,$253,$7
	PUSHJ $8,ak
	PUT rJ,$1
	STTU $8,$0,0
	PUSHJ $8,o
	PUT rJ,$1
	SET $4,$8
	SETL $5,#18b
	NEGU $5,0,$5
	ADDU $0,$253,$5
	STBU $4,$0,0
	PUSHJ $8,ag
	PUT rJ,$1
	SETL $6,#18a
	NEGU $6,0,$6
	ADDU $0,$253,$6
	LDW $0,$0,0
	SET $0,$0
	SLU $0,$0,16
	SET $0,$0
	SLU $0,$0,32
	SR $0,$0,32
	SR $0,$0,16
	SET $0,$0
	AND $0,$0,8
	SET $0,$0
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:2
	SETL $7,#168
	NEGU $7,0,$7
	ADDU $0,$253,$7
	LDO $0,$0,0
	CMP $0,$0,0
	BZ $0,L:2
	GETA $9,c
	PUSHJ $8,t
	PUT rJ,$1
	SET $0,$8
	SLU $0,$0,32
	SR $0,$0,32
	SETL $5,#168
	NEGU $5,0,$5
	ADDU $4,$253,$5
	STOU $0,$4,0
L:2	IS @
	SETL $6,#168
	NEGU $6,0,$6
	ADDU $0,$253,$6
	LDO $0,$0,0
	CMP $0,$0,0
	BZ $0,L:3
	SETL $7,#174
	NEGU $7,0,$7
	ADDU $0,$253,$7
	SETL $1,#2
	STTU $1,$0,0
	JMP L:4
L:3	IS @
	PUSHJ $8,u
	PUT rJ,$1
	JMP L:5
L:7	IS @
	LDT $0,g
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:5
	SETL $4,#184
	NEGU $4,0,$4
	ADDU $0,$253,$4
	LDT $0,$0,0
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BNZ $0,L:29
L:5	IS @
	PUSHJ $8,c
	PUT rJ,$1
	SET $0,$8
	LDO $0,$0,0
	PUSHGO $8,$0,0
	PUT rJ,$1
	SET $0,$8
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BNZ $0,L:7
	JMP L:6
L:29	IS @
	SWYM 0,0,0
L:6	IS @
	LDT $0,g
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:30
	SWYM 0,0,0
	JMP L:9
L:31	IS @
	SWYM 0,0,0
	JMP L:9
L:32	IS @
	SWYM 0,0,0
L:9	IS @
	LDO $0,f
	SET $2,$0
	JMP L:8
L:30	IS @
	SWYM 0,0,0
L:8	IS @
	SLU $0,$2,32
	SR $0,$0,32
	CMP $0,$0,71
	BZ $0,L:10
	SLU $0,$2,32
	SR $0,$0,32
	CMP $0,$0,71
	BP $0,L:4
	SLU $0,$2,32
	SR $0,$0,32
	CMP $0,$0,32
	BZ $0,L:12
	SLU $0,$2,32
	SR $0,$0,32
	CMP $0,$0,68
	BZ $0,L:13
	JMP L:4
L:12	IS @
	SETL $5,#18b
	NEGU $5,0,$5
	ADDU $0,$253,$5
	LDB $0,$0,0
	SLU $0,$0,56
	SR $0,$0,56
	CMP $0,$0,0
	BZ $0,L:14
	SETL $6,#18b
	NEGU $6,0,$6
	ADDU $0,$253,$6
	SETL $7,#20
	STBU $7,$0,0
L:14	IS @
	SETL $2,#198
	NEGU $2,0,$2
	ADDU $0,$253,$2
	LDO $0,$0,0
	ADDU $4,$0,8
	SETL $5,#198
	NEGU $5,0,$5
	ADDU $2,$253,$5
	STOU $4,$2,0
	ADDU $2,$0,4
	SETL $6,#180
	NEGU $6,0,$6
	ADDU $0,$253,$6
	LDT $7,$2,0
	STTU $7,$0,0
	SETL $2,#180
	NEGU $2,0,$2
	ADDU $0,$253,$2
	LDT $0,$0,0
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BNZ $0,L:31
	SETL $4,#180
	NEGU $4,0,$4
	ADDU $0,$253,$4
	SETL $5,#180
	NEGU $5,0,$5
	ADDU $2,$253,$5
	LDT $6,$2,0
	STTU $6,$0,0
	LDO $0,f
	ADDU $2,$0,1
	STOU $2,f
	LDB $0,$0,0
	SET $0,$0
	SLU $0,$0,24
	SET $0,$0
	SLU $0,$0,32
	SR $0,$0,32
	SR $0,$0,24
	SET $2,$0
	SLU $0,$2,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:16
	SETL $7,#198
	NEGU $7,0,$7
	ADDU $0,$253,$7
	LDO $0,$0,0
	ADDU $5,$0,8
	SETL $6,#198
	NEGU $6,0,$6
	ADDU $4,$253,$6
	STOU $5,$4,0
	ADDU $0,$0,4
	LDT $0,$0,0
	SLU $0,$0,32
	SR $0,$0,32
	STOU $0,f
L:16	IS @
	SETL $7,#17c
	NEGU $7,0,$7
	ADDU $0,$253,$7
	LDT $0,$0,0
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BNZ $0,L:32
	SWYM 0,0,0
L:18	IS @
	SET $0,$2
	SLU $0,$0,32
	SRU $0,$0,32
	CMPU $0,$0,9
	BNP $0,L:18
	JMP L:19
L:22	IS @
	SLU $0,$2,32
	SR $0,$0,32
	CMP $0,$0,0
	BNZ $0,L:20
	AND $0,$3,6
	SET $0,$0
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:21
L:20	IS @
	PUSHJ $8,ak
	PUT rJ,$1
	SETL $4,#198
	NEGU $4,0,$4
	ADDU $0,$253,$4
	LDO $0,$0,0
	ADDU $5,$0,8
	SETL $6,#198
	NEGU $6,0,$6
	ADDU $4,$253,$6
	STOU $5,$4,0
	ADDU $0,$0,4
	LDT $0,$0,0
	SETL $7,#178
	NEGU $7,0,$7
	ADDU $4,$253,$7
	SETL $5,#188
	NEGU $5,0,$5
	ADDU $6,$253,$5
	SLU $0,$0,32
	SR $0,$0,32
	SETL $7,#170
	NEGU $7,0,$7
	ADDU $5,$253,$7
	SET $11,$6
	SET $10,$0
	LDO $9,$5,0
	PUSHJ $8,ao
	PUT rJ,$1
	STTU $8,$4,0
	JMP L:19
L:21	IS @
	LDO $4,h
	SETL $5,#198
	NEGU $5,0,$5
	ADDU $0,$253,$5
	LDO $0,$0,0
	ADDU $6,$0,8
	SETL $7,#198
	NEGU $7,0,$7
	ADDU $5,$253,$7
	STOU $6,$5,0
	ADDU $0,$0,4
	LDT $0,$0,0
	STTU $0,$4,0
L:19	IS @
	SLU $0,$2,32
	SR $0,$0,32
	CMP $0,$0,0
	BNZ $0,L:22
	JMP L:4
L:13	IS @
	AND $0,$3,6
	SET $0,$0
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:23
	SETL $1,#198
	NEGU $1,0,$1
	ADDU $0,$253,$1
	LDO $0,$0,0
	ADDU $4,$0,8
	SETL $5,#198
	NEGU $5,0,$5
	ADDU $1,$253,$5
	STOU $4,$1,0
	LDO $0,$0,0
	JMP L:24
L:23	IS @
	AND $0,$3,4
	SET $0,$0
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:25
	SETL $6,#198
	NEGU $6,0,$6
	ADDU $0,$253,$6
	LDO $0,$0,0
	ADDU $4,$0,8
	SETL $7,#198
	NEGU $7,0,$7
	ADDU $1,$253,$7
	STOU $4,$1,0
	ADDU $0,$0,4
	LDT $0,$0,0
	SET $0,$0
	SLU $0,$0,48
	SR $0,$0,48
	JMP L:24
L:25	IS @
	SETL $1,#198
	NEGU $1,0,$1
	ADDU $0,$253,$1
	LDO $0,$0,0
	ADDU $4,$0,8
	SETL $5,#198
	NEGU $5,0,$5
	ADDU $1,$253,$5
	STOU $4,$1,0
	ADDU $0,$0,4
	LDT $0,$0,0
	SLU $0,$0,32
	SR $0,$0,32
L:24	IS @
	SETL $6,#158
	NEGU $6,0,$6
	ADDU $1,$253,$6
	STOU $0,$1,0
L:10	IS @
	AND $0,$3,8
	SET $0,$0
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:27
	SETL $7,#198
	NEGU $7,0,$7
	ADDU $0,$253,$7
	LDO $0,$0,0
	ADDU $3,$0,8
	SETL $4,#198
	NEGU $4,0,$4
	ADDU $1,$253,$4
	STOU $3,$1,0
	SETL $5,#160
	NEGU $5,0,$5
	ADDU $1,$253,$5
	LDO $6,$0,0
	STOU $6,$1,0
L:27	IS @
	SETL $7,#168
	NEGU $7,0,$7
	ADDU $0,$253,$7
	LDO $0,$0,0
	CMP $0,$0,0
	BZ $0,L:4
	SETL $1,#160
	NEGU $1,0,$1
	ADDU $0,$253,$1
	LDO $0,$0,0
	SRU $0,$0,63
	SET $0,$0
	AND $0,$0,1
	SET $0,$0
	SLU $0,$0,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:4
	SLU $0,$2,32
	SR $0,$0,32
	CMP $0,$0,0
	BZ $0,L:4
	GETA $2,LC:0
	STOU $2,h
L:4	IS @
	SUBU $0,$253,16
	LDO $1,$0,0
	LDO $0,__stack_chk_guard
	CMP $0,$1,$0
	BZ $0,L:28
	PUSHJ $8,__stack_chk_fail
L:28	IS @
	SET $0,$2
	INCL $254,#190
	LDO $253,$254,0
	ADDU $254,$254,8
	POP 1,0

	.data ! mmixal:= 8H LOC 9B
