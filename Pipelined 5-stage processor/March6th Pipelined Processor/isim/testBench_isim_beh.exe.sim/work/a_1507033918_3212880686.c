/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "T:/Lab2_Feb_28th - Phase 2/incrementor.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );


static void work_a_1507033918_3212880686_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t13 = (t4 == (unsigned char)3);
    if (t13 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3072);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 4688U);
    t7 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t5, t6, t1, 1);
    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB5:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t1 = (t0 + 4688U);
    t8 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t5, t7, t1, 1);
    t9 = (t0 + 3072);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t8, 16U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB3;

LAB7:    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)2);
    t3 = t15;
    goto LAB9;

}


extern void work_a_1507033918_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1507033918_3212880686_p_0};
	xsi_register_didat("work_a_1507033918_3212880686", "isim/testBench_isim_beh.exe.sim/work/a_1507033918_3212880686.didat");
	xsi_register_executes(pe);
}
