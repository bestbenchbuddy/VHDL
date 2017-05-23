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
static const char *ng0 = "T:/Lab2_Feb_28th - Phase 2/forwardingUnit.vhd";



static void work_a_1791977183_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(44, ng0);
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

LAB4:    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t6 = *((unsigned char *)t4);
    t9 = (t6 == (unsigned char)3);
    if (t9 == 1)
        goto LAB31;

LAB32:    t5 = (unsigned char)0;

LAB33:    if (t5 == 1)
        goto LAB28;

LAB29:    t2 = (unsigned char)0;

LAB30:    if (t2 == 1)
        goto LAB25;

LAB26:    t1 = (unsigned char)0;

LAB27:    if (t1 != 0)
        goto LAB23;

LAB24:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 6254);
    t7 = (t0 + 4032);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 2U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB58;

LAB59:    t2 = (unsigned char)0;

LAB60:    if (t2 == 1)
        goto LAB55;

LAB56:    t1 = (unsigned char)0;

LAB57:    if (t1 != 0)
        goto LAB52;

LAB54:    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t6 = *((unsigned char *)t4);
    t9 = (t6 == (unsigned char)3);
    if (t9 == 1)
        goto LAB81;

LAB82:    t5 = (unsigned char)0;

LAB83:    if (t5 == 1)
        goto LAB78;

LAB79:    t2 = (unsigned char)0;

LAB80:    if (t2 == 1)
        goto LAB75;

LAB76:    t1 = (unsigned char)0;

LAB77:    if (t1 != 0)
        goto LAB73;

LAB74:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 6266);
    t7 = (t0 + 4096);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 2U);
    xsi_driver_first_trans_fast_port(t7);

LAB53:    t3 = (t0 + 3952);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t19 = (t0 + 6247);
    t21 = (t0 + 4032);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t19, 2U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB3;

LAB5:    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 1352U);
    t15 = *((char **)t13);
    t16 = 1;
    if (3U == 3U)
        goto LAB17;

LAB18:    t16 = 0;

LAB19:    t1 = t16;
    goto LAB7;

LAB8:    t3 = (t0 + 1672U);
    t7 = *((char **)t3);
    t3 = (t0 + 6244);
    t9 = 1;
    if (3U == 3U)
        goto LAB11;

LAB12:    t9 = 0;

LAB13:    t2 = (!(t9));
    goto LAB10;

LAB11:    t10 = 0;

LAB14:    if (t10 < 3U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t11 = (t7 + t10);
    t12 = (t3 + t10);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB12;

LAB16:    t10 = (t10 + 1);
    goto LAB14;

LAB17:    t17 = 0;

LAB20:    if (t17 < 3U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t13 = (t14 + t17);
    t18 = (t15 + t17);
    if (*((unsigned char *)t13) != *((unsigned char *)t18))
        goto LAB18;

LAB22:    t17 = (t17 + 1);
    goto LAB20;

LAB23:    xsi_set_current_line(48, ng0);
    t23 = (t0 + 6252);
    t25 = (t0 + 4032);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t23, 2U);
    xsi_driver_first_trans_fast_port(t25);
    goto LAB3;

LAB25:    t19 = (t0 + 1832U);
    t20 = *((char **)t19);
    t19 = (t0 + 1352U);
    t21 = *((char **)t19);
    t27 = 1;
    if (3U == 3U)
        goto LAB46;

LAB47:    t27 = 0;

LAB48:    t1 = t27;
    goto LAB27;

LAB28:    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 1352U);
    t15 = *((char **)t13);
    t26 = 1;
    if (3U == 3U)
        goto LAB40;

LAB41:    t26 = 0;

LAB42:    t2 = (!(t26));
    goto LAB30;

LAB31:    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t3 = (t0 + 6249);
    t16 = 1;
    if (3U == 3U)
        goto LAB34;

LAB35:    t16 = 0;

LAB36:    t5 = (!(t16));
    goto LAB33;

LAB34:    t10 = 0;

LAB37:    if (t10 < 3U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t11 = (t7 + t10);
    t12 = (t3 + t10);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB35;

LAB39:    t10 = (t10 + 1);
    goto LAB37;

LAB40:    t17 = 0;

LAB43:    if (t17 < 3U)
        goto LAB44;
    else
        goto LAB42;

LAB44:    t13 = (t14 + t17);
    t18 = (t15 + t17);
    if (*((unsigned char *)t13) != *((unsigned char *)t18))
        goto LAB41;

LAB45:    t17 = (t17 + 1);
    goto LAB43;

LAB46:    t28 = 0;

LAB49:    if (t28 < 3U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t19 = (t20 + t28);
    t22 = (t21 + t28);
    if (*((unsigned char *)t19) != *((unsigned char *)t22))
        goto LAB47;

LAB51:    t28 = (t28 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(55, ng0);
    t19 = (t0 + 6259);
    t21 = (t0 + 4096);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t19, 2U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB53;

LAB55:    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 1512U);
    t15 = *((char **)t13);
    t16 = 1;
    if (3U == 3U)
        goto LAB67;

LAB68:    t16 = 0;

LAB69:    t1 = t16;
    goto LAB57;

LAB58:    t3 = (t0 + 1672U);
    t7 = *((char **)t3);
    t3 = (t0 + 6256);
    t9 = 1;
    if (3U == 3U)
        goto LAB61;

LAB62:    t9 = 0;

LAB63:    t2 = (!(t9));
    goto LAB60;

LAB61:    t10 = 0;

LAB64:    if (t10 < 3U)
        goto LAB65;
    else
        goto LAB63;

LAB65:    t11 = (t7 + t10);
    t12 = (t3 + t10);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB62;

LAB66:    t10 = (t10 + 1);
    goto LAB64;

LAB67:    t17 = 0;

LAB70:    if (t17 < 3U)
        goto LAB71;
    else
        goto LAB69;

LAB71:    t13 = (t14 + t17);
    t18 = (t15 + t17);
    if (*((unsigned char *)t13) != *((unsigned char *)t18))
        goto LAB68;

LAB72:    t17 = (t17 + 1);
    goto LAB70;

LAB73:    xsi_set_current_line(58, ng0);
    t23 = (t0 + 6264);
    t25 = (t0 + 4096);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t23, 2U);
    xsi_driver_first_trans_fast_port(t25);
    goto LAB53;

LAB75:    t19 = (t0 + 1832U);
    t20 = *((char **)t19);
    t19 = (t0 + 1512U);
    t21 = *((char **)t19);
    t27 = 1;
    if (3U == 3U)
        goto LAB96;

LAB97:    t27 = 0;

LAB98:    t1 = t27;
    goto LAB77;

LAB78:    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 1512U);
    t15 = *((char **)t13);
    t26 = 1;
    if (3U == 3U)
        goto LAB90;

LAB91:    t26 = 0;

LAB92:    t2 = (!(t26));
    goto LAB80;

LAB81:    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t3 = (t0 + 6261);
    t16 = 1;
    if (3U == 3U)
        goto LAB84;

LAB85:    t16 = 0;

LAB86:    t5 = (!(t16));
    goto LAB83;

LAB84:    t10 = 0;

LAB87:    if (t10 < 3U)
        goto LAB88;
    else
        goto LAB86;

LAB88:    t11 = (t7 + t10);
    t12 = (t3 + t10);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB85;

LAB89:    t10 = (t10 + 1);
    goto LAB87;

LAB90:    t17 = 0;

LAB93:    if (t17 < 3U)
        goto LAB94;
    else
        goto LAB92;

LAB94:    t13 = (t14 + t17);
    t18 = (t15 + t17);
    if (*((unsigned char *)t13) != *((unsigned char *)t18))
        goto LAB91;

LAB95:    t17 = (t17 + 1);
    goto LAB93;

LAB96:    t28 = 0;

LAB99:    if (t28 < 3U)
        goto LAB100;
    else
        goto LAB98;

LAB100:    t19 = (t20 + t28);
    t22 = (t21 + t28);
    if (*((unsigned char *)t19) != *((unsigned char *)t22))
        goto LAB97;

LAB101:    t28 = (t28 + 1);
    goto LAB99;

}


extern void work_a_1791977183_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1791977183_3212880686_p_0};
	xsi_register_didat("work_a_1791977183_3212880686", "isim/testBench_isim_beh.exe.sim/work/a_1791977183_3212880686.didat");
	xsi_register_executes(pe);
}
