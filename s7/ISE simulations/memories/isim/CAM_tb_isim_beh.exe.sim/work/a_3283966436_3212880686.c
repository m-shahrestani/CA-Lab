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
static const char *ng0 = "C:/Users/MRSH/Documents/az/memories/CAM.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3283966436_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned int t25;
    char *t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned char t38;
    unsigned char t39;
    unsigned char t40;
    char *t41;
    char *t42;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 4032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 6841);
    *((int *)t1) = 0;
    t7 = (t0 + 6845);
    *((int *)t7) = t6;
    t8 = 0;
    t9 = t6;

LAB5:    if (t8 <= t9)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(59, ng0);
    t10 = (t0 + 6841);
    t11 = *((int *)t10);
    t12 = (t11 - 15);
    t13 = (t12 * -1);
    t14 = (1 * t13);
    t15 = (0U + t14);
    t16 = (t0 + 4112);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_delta(t16, t15, 1, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4176);
    t2 = (t1 + 56U);
    t7 = *((char **)t2);
    t10 = (t7 + 56U);
    t16 = *((char **)t10);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB7:    t1 = (t0 + 6841);
    t8 = *((int *)t1);
    t2 = (t0 + 6845);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB8;

LAB9:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 6841);
    *((int *)t7) = t8;
    goto LAB5;

LAB10:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t21 = *((unsigned char *)t7);
    t22 = (t21 == (unsigned char)3);
    if (t22 == 1)
        goto LAB15;

LAB16:    t4 = (unsigned char)0;

LAB17:    if (t4 != 0)
        goto LAB12;

LAB14:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t21 = (t4 == (unsigned char)3);
    if (t21 == 1)
        goto LAB49;

LAB50:    t3 = (unsigned char)0;

LAB51:    if (t3 != 0)
        goto LAB47;

LAB48:
LAB13:    goto LAB3;

LAB12:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4176);
    t16 = (t2 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4240);
    t2 = (t1 + 56U);
    t7 = *((char **)t2);
    t10 = (t7 + 56U);
    t16 = *((char **)t10);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(68, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 6849);
    *((int *)t1) = 0;
    t2 = (t0 + 6853);
    *((int *)t2) = t6;
    t8 = 0;
    t9 = t6;

LAB18:    if (t8 <= t9)
        goto LAB19;

LAB21:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB35;

LAB37:
LAB36:    goto LAB13;

LAB15:    t2 = (t0 + 1192U);
    t10 = *((char **)t2);
    t23 = *((unsigned char *)t10);
    t24 = (t23 == (unsigned char)2);
    t4 = t24;
    goto LAB17;

LAB19:    xsi_set_current_line(69, ng0);
    t7 = (t0 + 1672U);
    t10 = *((char **)t7);
    t7 = (t0 + 1992U);
    t16 = *((char **)t7);
    t7 = (t0 + 6849);
    t11 = *((int *)t7);
    t12 = (t11 - 15);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t7));
    t14 = (4U * t13);
    t15 = (0 + t14);
    t17 = (t16 + t15);
    t4 = 1;
    if (4U == 4U)
        goto LAB28;

LAB29:    t4 = 0;

LAB30:    if (t4 == 1)
        goto LAB25;

LAB26:    t3 = (unsigned char)0;

LAB27:    if (t3 != 0)
        goto LAB22;

LAB24:
LAB23:
LAB20:    t1 = (t0 + 6849);
    t8 = *((int *)t1);
    t2 = (t0 + 6853);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB21;

LAB34:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 6849);
    *((int *)t7) = t8;
    goto LAB18;

LAB22:    xsi_set_current_line(70, ng0);
    t33 = (t0 + 4240);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = (unsigned char)3;
    xsi_driver_first_trans_fast(t33);
    goto LAB23;

LAB25:    t20 = (t0 + 2152U);
    t26 = *((char **)t20);
    t20 = (t0 + 6849);
    t27 = *((int *)t20);
    t28 = (t27 - 15);
    t29 = (t28 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t20));
    t30 = (1U * t29);
    t31 = (0 + t30);
    t32 = (t26 + t31);
    t21 = *((unsigned char *)t32);
    t22 = (t21 == (unsigned char)2);
    t3 = t22;
    goto LAB27;

LAB28:    t25 = 0;

LAB31:    if (t25 < 4U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t18 = (t10 + t25);
    t19 = (t17 + t25);
    if (*((unsigned char *)t18) != *((unsigned char *)t19))
        goto LAB29;

LAB33:    t25 = (t25 + 1);
    goto LAB31;

LAB35:    xsi_set_current_line(74, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 6857);
    *((int *)t1) = 0;
    t7 = (t0 + 6861);
    *((int *)t7) = t6;
    t8 = 0;
    t9 = t6;

LAB38:    if (t8 <= t9)
        goto LAB39;

LAB41:    goto LAB36;

LAB39:    xsi_set_current_line(75, ng0);
    t10 = (t0 + 2152U);
    t16 = *((char **)t10);
    t10 = (t0 + 6857);
    t11 = *((int *)t10);
    t12 = (t11 - 15);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t10));
    t14 = (1U * t13);
    t15 = (0 + t14);
    t17 = (t16 + t15);
    t21 = *((unsigned char *)t17);
    t22 = (t21 == (unsigned char)3);
    if (t22 != 0)
        goto LAB42;

LAB44:
LAB43:
LAB40:    t1 = (t0 + 6857);
    t8 = *((int *)t1);
    t2 = (t0 + 6861);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB41;

LAB46:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 6857);
    *((int *)t7) = t8;
    goto LAB38;

LAB42:    xsi_set_current_line(76, ng0);
    t18 = (t0 + 6857);
    t27 = *((int *)t18);
    t28 = (t27 - 15);
    t25 = (t28 * -1);
    t29 = (1 * t25);
    t30 = (0U + t29);
    t19 = (t0 + 4112);
    t20 = (t19 + 56U);
    t26 = *((char **)t20);
    t32 = (t26 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)2;
    xsi_driver_first_trans_delta(t19, t30, 1, 0LL);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6857);
    t5 = *((int *)t1);
    t6 = (t5 - 15);
    t13 = (t6 * -1);
    t14 = (4U * t13);
    t15 = (0U + t14);
    t7 = (t0 + 4304);
    t10 = (t7 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t2, 4U);
    xsi_driver_first_trans_delta(t7, t15, 4U, 0LL);
    xsi_set_current_line(78, ng0);
    goto LAB41;

LAB45:    goto LAB43;

LAB47:    xsi_set_current_line(84, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 6865);
    *((int *)t1) = 0;
    t10 = (t0 + 6869);
    *((int *)t10) = t6;
    t8 = 0;
    t9 = t6;

LAB52:    if (t8 <= t9)
        goto LAB53;

LAB55:    goto LAB13;

LAB49:    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t22 = *((unsigned char *)t7);
    t23 = (t22 == (unsigned char)2);
    t3 = t23;
    goto LAB51;

LAB53:    xsi_set_current_line(85, ng0);
    t16 = (t0 + 1672U);
    t17 = *((char **)t16);
    t16 = (t0 + 1992U);
    t18 = *((char **)t16);
    t16 = (t0 + 6865);
    t11 = *((int *)t16);
    t12 = (t11 - 15);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t16));
    t14 = (4U * t13);
    t15 = (0 + t14);
    t19 = (t18 + t15);
    t38 = 1;
    if (4U == 4U)
        goto LAB62;

LAB63:    t38 = 0;

LAB64:    if (t38 == 1)
        goto LAB59;

LAB60:    t24 = (unsigned char)0;

LAB61:    if (t24 != 0)
        goto LAB56;

LAB58:
LAB57:
LAB54:    t1 = (t0 + 6865);
    t8 = *((int *)t1);
    t2 = (t0 + 6869);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB55;

LAB68:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 6865);
    *((int *)t7) = t8;
    goto LAB52;

LAB56:    xsi_set_current_line(86, ng0);
    t35 = (t0 + 4176);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t41 = (t37 + 56U);
    t42 = *((char **)t41);
    *((unsigned char *)t42) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t35);
    goto LAB57;

LAB59:    t32 = (t0 + 2152U);
    t33 = *((char **)t32);
    t32 = (t0 + 6865);
    t27 = *((int *)t32);
    t28 = (t27 - 15);
    t29 = (t28 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t32));
    t30 = (1U * t29);
    t31 = (0 + t30);
    t34 = (t33 + t31);
    t39 = *((unsigned char *)t34);
    t40 = (t39 == (unsigned char)2);
    t24 = t40;
    goto LAB61;

LAB62:    t25 = 0;

LAB65:    if (t25 < 4U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t20 = (t17 + t25);
    t26 = (t19 + t25);
    if (*((unsigned char *)t20) != *((unsigned char *)t26))
        goto LAB63;

LAB67:    t25 = (t25 + 1);
    goto LAB65;

}


extern void work_a_3283966436_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3283966436_3212880686_p_0};
	xsi_register_didat("work_a_3283966436_3212880686", "isim/CAM_tb_isim_beh.exe.sim/work/a_3283966436_3212880686.didat");
	xsi_register_executes(pe);
}
