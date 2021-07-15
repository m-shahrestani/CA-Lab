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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Home/Desktop/Lab/devider/devider.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_4101703549_3212880686_p_0(char *t0)
{
    char t21[16];
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3776U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 1268U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 3792U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 1336U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1404U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1336U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t7 = (t3 == 0);
    if (t7 == 1)
        goto LAB5;

LAB6:    t1 = (t0 + 592U);
    t4 = *((char **)t1);
    t8 = (8 - 1);
    t9 = (7 - t8);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t4 + t11);
    t5 = (t0 + 684U);
    t12 = *((char **)t5);
    t5 = ((IEEE_P_2592010699) + 2332);
    t13 = xsi_vhdl_greater(t5, t1, 4U, t12, 4U);
    t6 = t13;

LAB7:    if (t6 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);

LAB8:    t1 = (t0 + 1268U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 1336U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t6 = (t3 >= t8);
    if (t6 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1404U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t21, t3, 4);
    t4 = (t0 + 2236);
    t5 = (t4 + 32U);
    t12 = *((char **)t5);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1268U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t21, t3, 4);
    t4 = (t0 + 2272);
    t5 = (t4 + 32U);
    t12 = *((char **)t5);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2200);
    t2 = (t1 + 32U);
    t4 = *((char **)t2);
    t5 = (t4 + 40U);
    t12 = *((char **)t5);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 2156);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t14 = (t0 + 2200);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3880);
    t4 = (t0 + 2236);
    t5 = (t4 + 32U);
    t12 = *((char **)t5);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3884);
    t4 = (t0 + 2272);
    t5 = (t4 + 32U);
    t12 = *((char **)t5);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB5:    t6 = (unsigned char)1;
    goto LAB7;

LAB9:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1404U);
    t5 = *((char **)t1);
    t19 = *((int *)t5);
    t20 = (t19 + 1);
    t1 = (t0 + 1404U);
    t12 = *((char **)t1);
    t1 = (t12 + 0);
    *((int *)t1) = t20;
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1268U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 1336U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t19 = (t3 - t8);
    t1 = (t0 + 1268U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t19;
    goto LAB8;

LAB10:;
}


extern void work_a_4101703549_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4101703549_3212880686_p_0};
	xsi_register_didat("work_a_4101703549_3212880686", "isim/test_isim_beh.exe.sim/work/a_4101703549_3212880686.didat");
	xsi_register_executes(pe);
}
