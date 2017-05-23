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
static const char *ng0 = "T:/Lab2_Feb_28th - Phase 2/InstructionMem.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2504613029_1878664202_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t2 = (t0 + 5924U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t2);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t13);
    t16 = (16U * t15);
    t17 = (0 + t16);
    t8 = (t4 + t17);
    t11 = (t0 + 3696);
    t12 = (t11 + 56U);
    t18 = *((char **)t12);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 16U);
    xsi_driver_first_trans_fast_port(t11);
    t2 = (t0 + 3552);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1032U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1512U);
    t11 = *((char **)t4);
    t4 = (t0 + 1352U);
    t12 = *((char **)t4);
    t4 = (t0 + 5924U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t4);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    t16 = (16U * t15);
    t17 = (0U + t16);
    t18 = (t0 + 3632);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 16U);
    xsi_driver_first_trans_delta(t18, t17, 16U, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 3696);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 16U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

}


extern void work_a_2504613029_1878664202_init()
{
	static char *pe[] = {(void *)work_a_2504613029_1878664202_p_0};
	xsi_register_didat("work_a_2504613029_1878664202", "isim/Processor_isim_beh.exe.sim/work/a_2504613029_1878664202.didat");
	xsi_register_executes(pe);
}
