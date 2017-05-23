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
static const char *ng0 = "T:/Lab2_Feb_28th - Phase 2/regFile.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_0501682878_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 7139);
    t3 = (16U != 16U);
    if (t3 == 1)
        goto LAB2;

LAB3:    t4 = (t0 + 4272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_delta(t4, 0U, 16U, 0LL);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2272U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB4;

LAB6:
LAB5:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 6824U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t15 = (t14 - 0);
    t16 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t14);
    t17 = (16U * t16);
    t18 = (0 + t17);
    t5 = (t2 + t18);
    t6 = (t0 + 4336);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t5, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t1 = (t0 + 6840U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t15 = (t14 - 0);
    t16 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t14);
    t17 = (16U * t16);
    t18 = (0 + t17);
    t5 = (t2 + t18);
    t6 = (t0 + 4400);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t5, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t14 = (6 - 0);
    t16 = (t14 * 1);
    t17 = (16U * t16);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t4 = (t0 + 4464);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_fast_port(t4);
    t1 = (t0 + 4192);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB3;

LAB4:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB5;

LAB7:    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    t3 = t11;
    goto LAB9;

LAB10:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1992U);
    t6 = *((char **)t2);
    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t2 = (t0 + 6856U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t2);
    t15 = (t14 - 0);
    t16 = (t15 * 1);
    t17 = (16U * t16);
    t18 = (0U + t17);
    t8 = (t0 + 4272);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t6, 16U);
    xsi_driver_first_trans_delta(t8, t18, 16U, 0LL);
    goto LAB11;

}


extern void work_a_0501682878_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0501682878_3212880686_p_0};
	xsi_register_didat("work_a_0501682878_3212880686", "isim/Processor_isim_beh.exe.sim/work/a_0501682878_3212880686.didat");
	xsi_register_executes(pe);
}
