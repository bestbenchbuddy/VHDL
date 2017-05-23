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
static const char *ng0 = "T:/Lab2_Feb_28th - Phase 2/SevenSegController.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3148665504_3212880686_p_0(char *t0)
{
    char t7[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4448);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t8 = (t0 + 7184U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t7, t9, t8, 1);
    t11 = (t7 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    t14 = (9U != t13);
    if (t14 == 1)
        goto LAB8;

LAB9:    t15 = (t0 + 4560);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 9U);
    xsi_driver_first_trans_fast(t15);
    goto LAB3;

LAB5:    t2 = (t0 + 1152U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_size_not_matching(9U, t13, 0);
    goto LAB9;

}

static void work_a_3148665504_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    int t12;
    unsigned char t13;
    unsigned char t14;
    unsigned int t15;
    unsigned char t16;
    int t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2288U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2408U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 11);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2528U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2648U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 7338);
    t6 = (t0 + 4624);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 7342);
    t6 = (t0 + 4688);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t12 = (8 - 8);
    t3 = (t12 * -1);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t13 = *((unsigned char *)t1);
    t14 = (t13 == (unsigned char)3);
    if (t14 == 1)
        goto LAB5;

LAB6:    t11 = (unsigned char)0;

LAB7:    if (t11 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4464);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(80, ng0);
    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t7 = (t0 + 7346);
    t17 = xsi_mem_cmp(t7, t8, 4U);
    if (t17 == 1)
        goto LAB9;

LAB13:    t10 = (t0 + 7350);
    t19 = xsi_mem_cmp(t10, t8, 4U);
    if (t19 == 1)
        goto LAB10;

LAB14:    t20 = (t0 + 7354);
    t22 = xsi_mem_cmp(t20, t8, 4U);
    if (t22 == 1)
        goto LAB11;

LAB15:
LAB12:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t1 = (t0 + 4624);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 7370);
    t6 = (t0 + 4688);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);

LAB8:    goto LAB3;

LAB5:    t15 = (0U + 1);
    t15 = (t15 - 1);
    t6 = (t0 + 1792U);
    t16 = xsi_signal_has_event_indexed(t6, 0U, t15);
    t11 = t16;
    goto LAB7;

LAB9:    xsi_set_current_line(82, ng0);
    t23 = (t0 + 2408U);
    t24 = *((char **)t23);
    t23 = (t0 + 4624);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t24, 4U);
    xsi_driver_first_trans_fast(t23);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 7358);
    t6 = (t0 + 4688);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB8;

LAB10:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t1 = (t0 + 4624);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 7362);
    t6 = (t0 + 4688);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB8;

LAB11:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2648U);
    t2 = *((char **)t1);
    t1 = (t0 + 4624);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 7366);
    t6 = (t0 + 4688);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB8;

LAB16:;
}

static void work_a_3148665504_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(97, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4752);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4480);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3148665504_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3148665504_3212880686_p_0,(void *)work_a_3148665504_3212880686_p_1,(void *)work_a_3148665504_3212880686_p_2};
	xsi_register_didat("work_a_3148665504_3212880686", "isim/Processor_isim_beh.exe.sim/work/a_3148665504_3212880686.didat");
	xsi_register_executes(pe);
}
