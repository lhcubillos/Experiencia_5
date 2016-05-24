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
static const char *ng0 = "C:/Users/LH Cubillos/Desktop/Universidad/2016-1-Windows/Lab digitales/Exp5/Exp5/prueba_2_asc.v";
static unsigned int ng1[] = {3U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {0, 0};
static int ng5[] = {0, 0, 0, 0};
static unsigned int ng6[] = {1U, 0U};
static int ng7[] = {1, 0, 0, 0};
static int ng8[] = {1, 0};



static void Initial_53_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(53, ng0);

LAB2:    xsi_set_current_line(54, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3336);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 608);
    t2 = *((char **)t1);
    t1 = (t0 + 3816);
    xsi_vlogvar_assign_value(t1, t2, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3496);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);
    xsi_set_current_line(57, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 2696);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);
    xsi_set_current_line(58, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 3016);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t1 = ((char*)((ng5)));
    t2 = (t0 + 3176);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 34);
    xsi_set_current_line(60, ng0);
    t1 = ((char*)((ng5)));
    t2 = (t0 + 3656);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 34);
    xsi_set_current_line(61, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 2856);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_64_1(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 4984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5800);
    *((int *)t2) = 1;
    t3 = (t0 + 5016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(67, ng0);

LAB16:    xsi_set_current_line(68, ng0);
    t9 = ((char*)((ng6)));
    t10 = (t0 + 3336);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 2);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB15;

LAB9:    xsi_set_current_line(73, ng0);

LAB17:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 3496);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t9 = (t5 + 4);
    t10 = (t7 + 4);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t9);
    t16 = *((unsigned int *)t10);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t10);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB21;

LAB18:    if (t21 != 0)
        goto LAB20;

LAB19:    *((unsigned int *)t11) = 1;

LAB21:    t25 = (t11 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t11);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3496);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t7 = (t4 + 4);
    t9 = (t5 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t9);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t9);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB29;

LAB26:    if (t21 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t11) = 1;

LAB29:    t24 = (t11 + 4);
    t26 = *((unsigned int *)t24);
    t27 = (~(t26));
    t28 = *((unsigned int *)t11);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB30;

LAB31:
LAB32:
LAB24:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB15;

LAB11:    xsi_set_current_line(82, ng0);

LAB33:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 3496);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t9 = (t5 + 4);
    t10 = (t7 + 4);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t9);
    t16 = *((unsigned int *)t10);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t10);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB37;

LAB34:    if (t21 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t11) = 1;

LAB37:    t25 = (t11 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t11);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3496);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t11, 0, 8);
    t7 = (t4 + 4);
    t9 = (t5 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t9);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t9);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB44;

LAB41:    if (t21 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t11) = 1;

LAB44:    t24 = (t11 + 4);
    t26 = *((unsigned int *)t24);
    t27 = (~(t26));
    t28 = *((unsigned int *)t11);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB45;

LAB46:
LAB47:
LAB40:    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB15;

LAB13:    xsi_set_current_line(91, ng0);

LAB49:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3336);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB15;

LAB20:    t24 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(74, ng0);

LAB25:    xsi_set_current_line(75, ng0);
    t31 = ((char*)((ng3)));
    t32 = (t0 + 3336);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 2);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB24;

LAB28:    t10 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(78, ng0);
    t25 = ((char*)((ng2)));
    t31 = (t0 + 3336);
    xsi_vlogvar_assign_value(t31, t25, 0, 0, 2);
    goto LAB32;

LAB36:    t24 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(83, ng0);
    t31 = ((char*)((ng6)));
    t32 = (t0 + 3336);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 2);
    goto LAB40;

LAB43:    t10 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(84, ng0);

LAB48:    xsi_set_current_line(85, ng0);
    t25 = ((char*)((ng1)));
    t31 = (t0 + 3336);
    xsi_vlogvar_assign_value(t31, t25, 0, 0, 2);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB47;

}

static void Always_99_2(char *t0)
{
    char t13[16];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;

LAB0:    t1 = (t0 + 5232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 5816);
    *((int *)t2) = 1;
    t3 = (t0 + 5264);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(99, ng0);

LAB5:    xsi_set_current_line(100, ng0);
    t4 = (t0 + 3816);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = (t0 + 608);
    t8 = *((char **)t7);
    t9 = xsi_vlog_unsigned_case_compare(t6, 1, t8, 32);
    if (t9 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 1, t3, 32);
    if (t9 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(101, ng0);

LAB12:    xsi_set_current_line(102, ng0);
    t7 = (t0 + 3176);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng7)));
    xsi_vlog_unsigned_add(t13, 34, t11, 34, t12, 32);
    t14 = (t0 + 3176);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 34, 0LL);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 880);
    t7 = *((char **)t5);
    xsi_vlog_unsigned_equal(t13, 34, t4, 34, t7, 32);
    t5 = (t13 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB13;

LAB14:
LAB15:    goto LAB11;

LAB9:    xsi_set_current_line(113, ng0);

LAB31:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 3656);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng7)));
    xsi_vlog_unsigned_add(t13, 34, t5, 34, t7, 32);
    t8 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t8, t13, 0, 0, 34, 0LL);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3656);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 744);
    t7 = *((char **)t5);
    xsi_vlog_unsigned_equal(t13, 34, t4, 34, t7, 32);
    t5 = (t13 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB32;

LAB33:
LAB34:    goto LAB11;

LAB13:    xsi_set_current_line(103, ng0);

LAB16:    xsi_set_current_line(104, ng0);
    t8 = (t0 + 3016);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memset(t20, 0, 8);
    t12 = (t11 + 4);
    t21 = *((unsigned int *)t12);
    t22 = (~(t21));
    t23 = *((unsigned int *)t11);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB20;

LAB18:    if (*((unsigned int *)t12) == 0)
        goto LAB17;

LAB19:    t14 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t14) = 1;

LAB20:    t26 = (t20 + 4);
    t27 = (t11 + 4);
    t28 = *((unsigned int *)t11);
    t29 = (~(t28));
    *((unsigned int *)t20) = t29;
    *((unsigned int *)t26) = 0;
    if (*((unsigned int *)t27) != 0)
        goto LAB22;

LAB21:    t34 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t34 & 1U);
    t35 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t35 & 1U);
    t36 = (t0 + 3016);
    xsi_vlogvar_wait_assign_value(t36, t20, 0, 0, 1, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3176);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 34, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 3016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t20, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t8);
    t21 = (t18 ^ t19);
    t22 = (t17 | t21);
    t23 = *((unsigned int *)t7);
    t24 = *((unsigned int *)t8);
    t25 = (t23 | t24);
    t28 = (~(t25));
    t29 = (t22 & t28);
    if (t29 != 0)
        goto LAB26;

LAB23:    if (t25 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t20) = 1;

LAB26:    t11 = (t20 + 4);
    t30 = *((unsigned int *)t11);
    t31 = (~(t30));
    t32 = *((unsigned int *)t20);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB27;

LAB28:
LAB29:    goto LAB15;

LAB17:    *((unsigned int *)t20) = 1;
    goto LAB20;

LAB22:    t30 = *((unsigned int *)t20);
    t31 = *((unsigned int *)t27);
    *((unsigned int *)t20) = (t30 | t31);
    t32 = *((unsigned int *)t26);
    t33 = *((unsigned int *)t27);
    *((unsigned int *)t26) = (t32 | t33);
    goto LAB21;

LAB25:    t10 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(106, ng0);

LAB30:    xsi_set_current_line(107, ng0);
    t12 = (t0 + 472);
    t14 = *((char **)t12);
    t12 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t12, t14, 0, 0, 1, 0LL);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB29;

LAB32:    xsi_set_current_line(115, ng0);

LAB35:    xsi_set_current_line(116, ng0);
    t8 = ((char*)((ng5)));
    t10 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t10, t8, 0, 0, 34, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t2 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB34;

}

static void Cont_124_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 5480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 3336);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 5832);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003379622775_0310294551_init()
{
	static char *pe[] = {(void *)Initial_53_0,(void *)Always_64_1,(void *)Always_99_2,(void *)Cont_124_3};
	xsi_register_didat("work_m_00000000003379622775_0310294551", "isim/tb_prueba1_isim_beh.exe.sim/work/m_00000000003379622775_0310294551.didat");
	xsi_register_executes(pe);
}
