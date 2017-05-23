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
static const char *ng0 = "T:/Lab2_Feb_28th - Phase 2/hazardDetect.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4202298664_0625112718_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 2272U);
    t1 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t1 != 0)
        goto LAB32;

LAB34:
LAB33:
LAB3:    t3 = (t0 + 3792);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t26 = (t0 + 3872);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t26);
    goto LAB3;

LAB5:    t19 = (t0 + 1032U);
    t20 = *((char **)t19);
    t19 = (t0 + 5894);
    t22 = 1;
    if (3U == 3U)
        goto LAB26;

LAB27:    t22 = 0;

LAB28:    t1 = (!(t22));
    goto LAB7;

LAB8:    t3 = (t0 + 1352U);
    t8 = *((char **)t3);
    t3 = (t0 + 1032U);
    t9 = *((char **)t3);
    t10 = 1;
    if (3U == 3U)
        goto LAB14;

LAB15:    t10 = 0;

LAB16:    if (t10 == 1)
        goto LAB11;

LAB12:    t13 = (t0 + 1352U);
    t14 = *((char **)t13);
    t13 = (t0 + 1192U);
    t15 = *((char **)t13);
    t16 = 1;
    if (3U == 3U)
        goto LAB20;

LAB21:    t16 = 0;

LAB22:    t7 = t16;

LAB13:    t2 = t7;
    goto LAB10;

LAB11:    t7 = (unsigned char)1;
    goto LAB13;

LAB14:    t11 = 0;

LAB17:    if (t11 < 3U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t3 = (t8 + t11);
    t12 = (t9 + t11);
    if (*((unsigned char *)t3) != *((unsigned char *)t12))
        goto LAB15;

LAB19:    t11 = (t11 + 1);
    goto LAB17;

LAB20:    t17 = 0;

LAB23:    if (t17 < 3U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t13 = (t14 + t17);
    t18 = (t15 + t17);
    if (*((unsigned char *)t13) != *((unsigned char *)t18))
        goto LAB21;

LAB25:    t17 = (t17 + 1);
    goto LAB23;

LAB26:    t23 = 0;

LAB29:    if (t23 < 3U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t24 = (t20 + t23);
    t25 = (t19 + t23);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB27;

LAB31:    t23 = (t23 + 1);
    goto LAB29;

LAB32:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 3872);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB33;

}


extern void work_a_4202298664_0625112718_init()
{
	static char *pe[] = {(void *)work_a_4202298664_0625112718_p_0};
	xsi_register_didat("work_a_4202298664_0625112718", "isim/testBench_isim_beh.exe.sim/work/a_4202298664_0625112718.didat");
	xsi_register_executes(pe);
}
