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
static const char *ng0 = "T:/Lab2_Feb_28th - Phase 2/shifter.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_2540846514_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2547962040_1035706684(char *, char *, char *, char *, int );


static void work_a_3882926292_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB8;

LAB9:
LAB6:
LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 3232);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4920U);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 4904U);
    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t6);
    t8 = ieee_p_1242562249_sub_2540846514_1035706684(IEEE_P_1242562249, t10, t5, t1, t11);
    t9 = (t0 + 3232);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 16U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB6;

LAB8:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4920U);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 4904U);
    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t6);
    t8 = ieee_p_1242562249_sub_2547962040_1035706684(IEEE_P_1242562249, t10, t5, t1, t11);
    t9 = (t0 + 3232);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 16U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB6;

}


extern void work_a_3882926292_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3882926292_3212880686_p_0};
	xsi_register_didat("work_a_3882926292_3212880686", "isim/Processor_isim_beh.exe.sim/work/a_3882926292_3212880686.didat");
	xsi_register_executes(pe);
}
