section .text
	bits 64
	global _start
_start:
	vminpd xmm0, xmm1, xmm2
	vminpd xmm8, xmm9, xmm10
	vminpd xmm8, xmm9, oword [rax]

	vminpd ymm0, ymm1, ymm2
	vminpd ymm8, ymm9, yword [rax]
	vminpd ymm9, ymm0, ymm10
	
	vmaxpd xmm0, xmm1, xmm2
	vmaxpd xmm8, xmm9, xmm10
	vmaxpd xmm8, xmm9, oword [rax]

	vmaxpd ymm0, ymm1, ymm2
	vmaxpd ymm8, ymm9, yword [rax]
	vmaxpd ymm9, ymm0, ymm10
