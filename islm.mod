/*
* Arquivo .mod - IS-LM
*/

var R             ${R}$             (long_name='real interest rate')
    Y             ${Y}$             (long_name='product')
    P             ${P}$             (long_name='price level')
    C             ${C}$             (long_name='aggregate consumption')
    I             ${I}$             (long_name='investment')
;


varexo Ms         ${Ms}$            (long_name='money supply')
       G          ${G}$             (long_name='government expenditure')
       C0         ${C0}$            (long_name='autonomous consumption')
       I0         ${I0}$            (long_name='autonomous investment')
;

parameters a      ${a}$          (long_name='parameter a')
           b      ${b}$          (long_name='parameter b')
           d      ${d}$          (long_name='parameter d: sensibility of investment to the interest rate')
;

a=0.5;
b=0.7;
d=0.1;

model;
Ms/P = a*Y*exp(-b*R);
Y=C+I+G;
C=C0+b*Y;
I=I0-d*R;

end;