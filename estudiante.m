function mpc = estudiante(a,b,c,d)
try
C=xlsread('Base1.xlsx','Branch_data',strcat('A3:M',num2str(c),''));
D= xlsread('Base1.xlsx','generator cost data',strcat('A8:F',num2str(d),''));
A= xlsread('Base1.xlsx','Bus_data',strcat('A3:M',num2str(a),''));
B=xlsread('Base1.xlsx','Generator_data',strcat('A3:U',num2str(b),''));
catch
         f = msgbox('Error intente de nuevo');
end
%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA =xlsread('Base1.xlsx','Informacion','B6');

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin

%num=num2str(a);

mpc.bus =A;

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf

%num1=num2str(b);

mpc.gen = B;

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax

%num2=num2str(c);

mpc.branch = C;

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0

%num3=num2str(d);

mpc.gencost = D;