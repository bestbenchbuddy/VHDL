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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_0774719531;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_0774719531_init();
    work_a_4188165282_0625112718_init();
    work_a_1507033918_3212880686_init();
    work_a_3882926292_3212880686_init();
    work_a_2504613029_1878664202_init();
    work_a_2193568692_3212880686_init();
    work_a_0501682878_3212880686_init();
    work_a_1875784663_1878664202_init();
    work_a_0135316324_3212880686_init();
    work_a_0197362100_3212880686_init();
    work_a_1208337864_3212880686_init();
    work_a_2581126453_3212880686_init();
    work_a_3148665504_3212880686_init();
    work_a_1569544451_0625112718_init();
    work_a_3521940171_0625112718_init();
    work_a_2758340412_0625112718_init();
    work_a_0625197276_0625112718_init();
    work_a_4202298664_0625112718_init();
    work_a_2607658077_3212880686_init();
    work_a_2578690938_3212880686_init();
    work_a_1791977183_3212880686_init();
    work_a_1640669797_3212880686_init();
    work_a_1949178628_2372691052_init();


    xsi_register_tops("work_a_1949178628_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
