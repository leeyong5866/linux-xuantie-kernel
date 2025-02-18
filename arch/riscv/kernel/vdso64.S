/* SPDX-License-Identifier: GPL-2.0-only */
/*
 * Copyright (C) 2014 Regents of the University of California
 */

#include <linux/init.h>
#include <linux/linkage.h>
#include <asm/page.h>

#ifndef __VDSO_PATH
#define __VDSO_PATH "arch/riscv/kernel/vdso/vdso64.so"
#endif

	__PAGE_ALIGNED_DATA

	.globl vdso64_start, vdso64_end
	.balign PAGE_SIZE
vdso64_start:
	.incbin __VDSO_PATH
	.balign PAGE_SIZE
vdso64_end:

	.previous
