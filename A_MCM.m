%无竞争作用 单个物种
tspan = [0 60];
y0=10;
[t_1,S_1] = ode45(@growth_original_1, tspan, y0);
figure(1);
draw(t_1,S_1,1);
%仅包含地面竞争
tspan = [0 60];
y0=[10;5;2;3];
[t_original,S_original] = ode45(@growth_original_4, tspan, y0);
figure(2);
draw(t_original,S_original,4);
%包含所有竞争关系(包含根系)
tspan = [0 60];
y0=[10;5;2;3];
[t_comp,S_comp] = ode45(@growth_comp_root, tspan, y0);
figure(3);
draw(t_comp,S_comp,4);
%包含气候条件
tspan = [0 400];
y0=[10;5;2;3];
[t_drought,S_drought] = ode45(@growth_drought_4, tspan, y0);
figure(4);
draw(t_drought,S_drought,4);
%未施加干旱条件,不同物种数量的变化(2,3,4,5)
%2species
tspan =[0 60];
y0=[10;5];
[t_2,S_2] = ode45(@growth_original_2, tspan, y0);
%3species
tspan =[0 60];
y0=[10;5;2];
[t_3,S_3] =ode45(@growth_original_3, tspan, y0);
%4species
tspan =[0 60];
y0=[10;5;2;3];
[t_4,S_4] = ode45(@growth_original_4, tspan, y0);
%5species
tspan =[0 60];
y0=[10;5;2;3;1];
[t_5,S_5] = ode45(@growth_original_5, tspan, y0);
figure(5);
subplot(221)
draw(t_2,S_2,2);
subplot(222)
draw(t_3,S_3,3);
subplot(223)
draw(t_4,S_4,4);
subplot(224)
draw(t_5,S_5,5);
%保存数据后,划在同一个图中再次对比,横向对比,纵向对比
figure(6)
subplot(131)
plot(t_1,S_1(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_2,S_2(:,1),'*-','Color',[0.815 0.653 0.304],'MarkerFaceColor',[0.815 0.653 0.304], 'LineWidth',1);
hold on;
plot(t_3,S_3(:,1),'+','Color',[0.815 0.753 0.304],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
hold on;
plot(t_4,S_4(:,1),'^-','Color',[0.815 0.853 0.304],'MarkerFaceColor',[0.815 0.853 0.304], 'LineWidth',1);
hold on;
plot(t_5,S_5(:,1),'square-','Color',[0.815 0.953 0.304],'MarkerFaceColor',[0.815 0.953 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('1 Species','2 Species','3 Species','4 Species','5 Species');
title('(a) Species(1) growth in different number of species');
subplot(132)
plot(t_2,S_2(:,2),'o-','Color',[0.315 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3,S_3(:,2),'*-','Color',[0.315 0.653 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_4,S_4(:,2),'+','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_5,S_5(:,2),'^','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('2 Species','3 Species','4 Species','5 Species');
title('(b) Species(2) growth in different number of species');
subplot(133)
plot(t_3,S_3(:,3),'o-','Color',[0.615 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_4,S_4(:,3),'*-','Color',[0.615 0.653 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_5,S_5(:,3),'+','Color',[0.615 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('3 Species','4 Species','5 Species');
title('(c) Species(3) growth in different number of species');
%不同物种类型的数量变化
%几种组合画图,(1,2,3)(1,2,4)(1,3,4)(2,3,4)
tspan =[0 60];
y1=[10;5;2];
y2=[10;5;3];
y3=[10;2;3];
y4=[5;2;3];
[t_3_1,S_3_1] =ode45(@growth_original_3, tspan, y1);
[t_3_2,S_3_2] =ode45(@growth_original_3_2, tspan, y2);
[t_3_3,S_3_3] =ode45(@growth_original_3_3, tspan, y3);
[t_3_4,S_3_4] =ode45(@growth_original_3_4, tspan, y4);

%横向比较
figure(7) 
subplot(221)
plot(t_3_1,S_3_1(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_1,S_3_1(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_3_1,S_3_1(:,3),'+-','Color',[0.415 0.353 0.204],'MarkerFaceColor',[0.415 0.353 0.204], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)');
title('(a) 3 Plant Species:Species(1)-(2)-(3)');
subplot(222)
plot(t_3_2,S_3_2(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_2,S_3_2(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_3_2,S_3_2(:,3),'^-','Color',[0.615 0.353 0.804],'MarkerFaceColor',[0.615 0.353 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(4)');
title('(b) 3 Plant Species:Species(1)-(2)-(4)');
subplot(223)
plot(t_3_3,S_3_3(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_3,S_3_3(:,2),'+-','Color',[0.415 0.353 0.204],'MarkerFaceColor',[0.415 0.353 0.204], 'LineWidth',1);
hold on;
plot(t_3_3,S_3_3(:,3),'^-','Color',[0.615 0.353 0.804],'MarkerFaceColor',[0.615 0.353 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(3)','Species:S(4)');
title('(c) 3 Plant Species:Species(1)-(3)-(4)');
subplot(224)
plot(t_3_4,S_3_4(:,1),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_3_4,S_3_4(:,2),'+-','Color',[0.415 0.353 0.204],'MarkerFaceColor',[0.415 0.353 0.204], 'LineWidth',1);
hold on;
plot(t_3_4,S_3_4(:,3),'^-','Color',[0.615 0.353 0.804],'MarkerFaceColor',[0.615 0.353 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(2)','Species:S(3)','Species:S(4)');
title('(d) 3 Plant Species:Species(2)-(3)-(4)');
%纵向
figure(8)
subplot(221)
plot(t_3_1,S_3_1(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_2,S_3_2(:,1),'*-','Color',[0.815 0.653 0.304],'MarkerFaceColor',[0.815 0.653 0.304], 'LineWidth',1);
hold on;
plot(t_3_3,S_3_3(:,1),'+-','Color',[0.815 0.753 0.304],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Type:Species(1)-(2)-(3)','Type:Species(1)-(2)-(4)','Type:Species(1)-(3)-(4)');
title('(a) Species(1) growth in different type of species');
subplot(222)
plot(t_3_1,S_3_1(:,2),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_2,S_3_2(:,2),'*-','Color',[0.815 0.653 0.304],'MarkerFaceColor',[0.815 0.653 0.304], 'LineWidth',1);
hold on;
plot(t_3_4,S_3_4(:,1),'+-','Color',[0.815 0.753 0.304],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Type:Species(1)-(2)-(3)','Type:Species(1)-(2)-(4)','Type:Species(2)-(3)-(4)');
title('(b) Species(2) growth in different type of species');
subplot(223)
plot(t_3_1,S_3_1(:,3),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_3,S_3_3(:,2),'*-','Color',[0.815 0.653 0.304],'MarkerFaceColor',[0.815 0.653 0.304], 'LineWidth',1);
hold on;
plot(t_3_4,S_3_4(:,2),'+','Color',[0.815 0.753 0.304],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Type:Species(1)-(2)-(3)','Type:Species(1)-(3)-(4)','Type:Species(2)-(3)-(4)');
title('(c) Species(3) growth in different type of species');
subplot(224)
plot(t_3_2,S_3_2(:,3),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_3,S_3_3(:,3),'*-','Color',[0.815 0.653 0.304],'MarkerFaceColor',[0.815 0.653 0.304], 'LineWidth',1);
hold on;
plot(t_3_4,S_3_4(:,3),'+-','Color',[0.815 0.753 0.304],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Type:Species(1)-(2)-(4)','Type:Species(1)-(3)-(4)','Type:Species(2)-(3)-(4)');
title('(d) Species(4) growth in different type of species');
%不同干旱频率
%一年一次 一年两次 两年三次 持续干旱
tspan = [0 400];
y0=[10;5;2;3];
[t_drought_1,S_drought_1] = ode45(@growth_drought_4, tspan, y0);
tspan = [0 800];
y0=[10;5;2;3];
[t_drought_2,S_drought_2] = ode45(@growth_drought_4_2, tspan, y0);
tspan = [0 1000];
y0=[10;5;2;3];
[t_drought_3,S_drought_3] = ode45(@growth_drought_4_3, tspan, y0);
figure(9);
subplot(131)
draw(t_drought_1,S_drought_1,4);
subplot(132)
draw(t_drought_2,S_drought_2,4);
subplot(133)
draw(t_drought_3,S_drought_3,4);

%不同污染程度和栖息地
%不同污染程度  不同栖息地破坏比率
%一级污染 二级污染 三级污染
tspan = [0 400];
y0=[10;5;2;3];
[t_pollution_1,S_pollution_1] = ode45(@growth_original_pollution_1, tspan, y0);
[t_pollution_2,S_pollution_2] = ode45(@growth_original_pollution_2, tspan, y0);
[t_pollution_3,S_pollution_3] = ode45(@growth_original_pollution_3, tspan, y0);
figure(10)
subplot(131)
plot(t_pollution_1,S_pollution_1(:,1),'o-','Color',[0.315 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_pollution_1,S_pollution_1(:,2),'*-','Color',[0.315 0.653 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_pollution_1,S_pollution_1(:,3),'+-','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_pollution_1,S_pollution_1(:,4),'^','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
title('(a) Growth in pollution (20%)');
subplot(132)
plot(t_pollution_2,S_pollution_2(:,1),'o-','Color',[0.315 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_pollution_2,S_pollution_2(:,2),'*-','Color',[0.315 0.653 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_pollution_2,S_pollution_2(:,3),'+-','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_pollution_2,S_pollution_2(:,4),'^','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
title('(b) Growth in pollution (40%)');
subplot(133)
plot(t_pollution_3,S_pollution_3(:,1),'o-','Color',[0.315 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_pollution_3,S_pollution_3(:,2),'*-','Color',[0.315 0.653 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_pollution_3,S_pollution_3(:,3),'+-','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_pollution_3,S_pollution_3(:,4),'^','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
title('(c) Growth in pollution (60%)');
%栖息地损失百分比 20% 50% 80%
tspan = [0 400];
y0=[10;5;2;3];
[t_habitat_1,S_habitat_1] = ode45(@growth_original_habitat_1, tspan, y0);
[t_habitat_2,S_habitat_2] = ode45(@growth_original_habitat_2, tspan, y0);
[t_habitat_3,S_habitat_3] = ode45(@growth_original_habitat_3, tspan, y0);
figure(11)
subplot(131)
plot(t_habitat_1,S_habitat_1(:,1),'o-','Color',[0.315 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_habitat_1,S_habitat_1(:,2),'*-','Color',[0.315 0.653 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_habitat_1,S_habitat_1(:,3),'+','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_habitat_1,S_habitat_1(:,4),'^','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
title('(a) Growth under habitat destroy (20%)');
subplot(132)
plot(t_habitat_2,S_habitat_2(:,1),'o-','Color',[0.315 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_habitat_2,S_habitat_2(:,2),'*-','Color',[0.315 0.653 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_habitat_2,S_habitat_2(:,3),'+','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_habitat_2,S_habitat_2(:,4),'^','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
title('(b) Growth under habitat destroy (40%)');
subplot(133)
plot(t_habitat_3,S_habitat_3(:,1),'o-','Color',[0.315 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_habitat_3,S_habitat_3(:,2),'*-','Color',[0.315 0.653 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_habitat_3,S_habitat_3(:,3),'+','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_habitat_3,S_habitat_3(:,4),'^','Color',[0.315 0.753 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
title('(c) Growth under habitat destroy (60%)');


%最优结果
tspan = [0 60];
y0=[10;5;2;3];
[t_best,S_best] = ode45(@growth_original_best, tspan, y0);
figure(12);
plot(t_best,S_best(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_best,S_best(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_best,S_best(:,3),'+-','Color',[0.415 0.353 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
hold on;
plot(t_best,S_best(:,4),'^-','Color',[0.715 0.253 0.604],'MarkerFaceColor',[0.715 0.253 0.604], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
title('4 Plant Species');

%灵敏度分析
% drought
% pollution
% habitat
% growth_rate
tspan = [0 60];
y1=10;
y2=50;
y3=100;
y4=200;
[t_y1,S_y1] = ode45(@growth_original_1, tspan, y1);
[t_y2,S_y2] = ode45(@growth_original_1, tspan, y2);
[t_y3,S_y3] = ode45(@growth_original_1, tspan, y3);
[t_y4,S_y4] = ode45(@growth_original_1, tspan, y4);
figure(13)
subplot(121)
plot(t_y1,S_y1,'o-','Color',[0.815 0.553 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_y2,S_y2,'*-','Color',[0.215 0.553 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_y3,S_y3,'+-','Color',[0.415 0.553 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
hold on;
plot(t_y4,S_y4,'^-','Color',[0.715 0.553 0.804],'MarkerFaceColor',[0.715 0.253 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('S_0=10','S_0=50','S_0=100','S_0=200');
%生长率
subplot(122)
plot(t_1,S_1(:,1)*0.9,'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_2,S_2(:,2)*0.8,'^-','Color',[0.815 0.653 0.304],'MarkerFaceColor',[0.815 0.653 0.304], 'LineWidth',1);
hold on;
plot(t_3,S_3(:,3)*0.7,'+-','Color',[0.815 0.853 0.304],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
hold on;
plot(t_5,S_5(:,4)*0.6,'*-','Color',[0.815 0.953 0.304],'MarkerFaceColor',[0.815 0.953 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('r=0.5','r=0.4','r=0.15','r=0.1');

%模型优化
tspan = [0 60];
y0=3;
[t_x1,S_x1] = ode45(@growth_original_opt1, tspan, y0);
[t_x2,S_x2] = ode45(@growth_original_opt2, tspan, y0);
[t_x3,S_x3] = ode45(@growth_original_opt3, tspan, y0);
[t_x4,S_x4] = ode45(@growth_original_opt4, tspan, y0);
[t_x,S_x] = ode45(@growth_original_1, tspan, y0);
figure(14)
plot(t_x1,S_x1,'o-','Color',[0.815 0.453 0.404],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_x2,S_x2,'^-','Color',[0.815 0.653 0.504],'MarkerFaceColor',[0.815 0.653 0.304], 'LineWidth',1);
hold on;
plot(t_x3,S_x3,'+-','Color',[0.815 0.853 0.604],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
hold on;
plot(t_x4,S_x4,'*-','Color',[0.815 0.953 0.704],'MarkerFaceColor',[0.815 0.953 0.304], 'LineWidth',1);
hold on;
plot(t_x,S_x,'square-','Color',[0.815 0.753 0.804],'MarkerFaceColor',[0.815 0.853 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('c_1','c_2','c_3','c_4','Origin');


function draw(t,S,num)
if num==1
plot(t,S(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)');
title('1 Plant Species');
end
if num==2
plot(t,S(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t,S(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)');
title('(a) 2 Plant Species');
end
if num==3
plot(t,S(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t,S(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t,S(:,3),'+-','Color',[0.415 0.353 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(2)','Species:S(2)','Species:S(3)');
title('(b) 3 Plant Species');
end

if num==4
plot(t,S(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t,S(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t,S(:,3),'+-','Color',[0.415 0.353 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
hold on;
plot(t,S(:,4),'^-','Color',[0.715 0.253 0.804],'MarkerFaceColor',[0.715 0.253 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
title('(c) 4 Plant Species');
end
if num==5
plot(t,S(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t,S(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t,S(:,3),'+-','Color',[0.415 0.353 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
hold on;
plot(t,S(:,4),'^-','Color',[0.715 0.253 0.804],'MarkerFaceColor',[0.715 0.253 0.804], 'LineWidth',1);
hold on;
plot(t,S(:,5),'square-','Color',[0.315 0.653 0.604],'MarkerFaceColor',[0.315 0.653 0.604], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)','Species:S(5)');
title('(d) 5 Plant Species');
end

end


function dS=growth_original_5(t,S)
a=[0,0.1,0.2,0.15,0.15;0.1,0,0.3,0.05,0.2;0.2,0.3,0,0.1,0.25;0.15,0.05,0.1,0,0.1;0.15,0.2,0.25,0.1,0];
r=[0.5,0.2,0.3,0.15,0.35];
K=[1000,500,200,300,600];
dS=[0;0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4),S(5)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4),S(5)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4),S(5)]')/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4),S(5)]')/K(4));
dS(5)=r(5)*S(5)*(1-S(5)/K(5)+sum(a(5,:)*[S(1),S(2),S(3),S(4),S(5)]')/K(5));
end

function dS=growth_original_4(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
r=[0.5,0.2,0.3,0.15];
K=[1000,500,200,300];
dS=[0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4));
end

function dS=growth_original_3(t,S)
a=[0,0.1,0.2;0.1,0,0.3;0.2,0.3,0];
r=[0.5,0.2,0.3];
K=[1100,600,300];
dS=[0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3)]')/K(3));
end
%不同组合类型
function dS=growth_original_3_2(t,S)
a=[0,0.1,0.25;0.1,0,0.15;0.25,0.15,0];
r=[0.5,0.2,0.4];
K=[1100,600,500];
dS=[0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3)]')/K(3));
end
%
function dS=growth_original_3_3(t,S)
a=[0,0.2,0.25;0.3,0,0.15;0.25,0.15,0];
r=[0.5,0.3,0.4];
K=[1100,300,500];
dS=[0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3)]')/K(3));
end
%
function dS=growth_original_3_4(t,S)
a=[0,0.15,0.15;0.05,0,0.15;0.15,0.15,0];
r=[0.2,0.3,0.4];
K=[300,400,500];
dS=[0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3)]')/K(3));
end

function dS=growth_original_2(t,S)
a=[0,0.1;0.1,0];
r=[0.5,0.2];
K=[1200,700];
dS=[0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2)]')/K(2));
end
function dS=growth_original_1(t,S)
a=0.1;
r=0.5;
K=1500;
dS=0;
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*S(1))/K(1));
end

function dS=growth_comp_root(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
b=[0,0.2,0.1,0.1;0.2,0,0.1,0.3;0.1,0.1,0,0.3;0.1,0.3,0.3,0];
r=[0.5,0.2,0.3,0.15];
K=[1000,500,200,300];
dS=[0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-sum(b(1,:)*S(1))/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-sum(b(2,:)*S(2))/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-sum(b(3,:)*S(3))/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-sum(b(4,:)*S(4))/K(4));
end


function dS=growth_drought_4(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
b=[0,0.2,0.1,0.1;0.2,0,0.1,0.3;0.1,0.1,0,0.3;0.1,0.3,0.3,0];
r=[0.08,0.05,0.03,0.02];
K=[5000,3500,2000,1000];
dS=[0;0;0;0];
if t>=0&&t<200
    d=[0,0,0,0];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
elseif t>=200&&t<300
    d=[0.2,0.15,0.2,0.8];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
else t>=300;
    d=[0.1,0.05,0.15,0.03];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
end
end

function dS=growth_drought_4_2(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
b=[0,0.2,0.1,0.1;0.2,0,0.1,0.3;0.1,0.1,0,0.3;0.1,0.3,0.3,0];
r=[0.08,0.05,0.03,0.02];
K=[5000,3500,2000,1000];
dS=[0;0;0;0];
if t>=0&&t<200
    d=[0,0,0,0];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
elseif t>=200&&t<300
    d=[0.2,0.15,0.2,0.8];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
elseif t>=300&&t<500
    d=[0.1,0.05,0.15,0.03];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
elseif t>=500&&t<600
    d=[0.2,0.15,0.2,0.8];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
else t>600
    d=[0.1,0.05,0.15,0.03];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4)); 
end
end

function dS=growth_drought_4_3(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
b=[0,0.2,0.1,0.1;0.2,0,0.1,0.3;0.1,0.1,0,0.3;0.1,0.3,0.3,0];
r=[0.08,0.05,0.03,0.02];
K=[5000,3500,2000,1000];
dS=[0;0;0;0];
if t>=0&&t<200
    d=[0,0,0,0];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
elseif t>=200&&t<300
    d=[0.2,0.15,0.2,0.8];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
elseif t>=300&&t<500
    d=[0.1,0.05,0.15,0.03];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
elseif t>=500&&t<600
    d=[0.2,0.15,0.2,0.8];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
elseif t>600&&t<800
    d=[0.1,0.05,0.15,0.03];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4)); 
elseif t>=800&&t<900
    d=[0.2,0.15,0.2,0.8];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4));
else t>900
    d=[0.1,0.05,0.15,0.03];
    dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1)-d(1)*S(1)/K(1)-sum(b(1,:)*S(1))/K(1));
    dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2)-d(2)*S(2)/K(2)-sum(b(2,:)*S(2))/K(2));
    dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3)-d(3)*S(3)/K(3)-sum(b(3,:)*S(3))/K(3));
    dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4)-d(4)*S(4)/K(4)-sum(b(4,:)*S(4))/K(4)); 
end
end

function dS=growth_original_pollution_1(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
r=[0.5,0.2,0.3,0.15]*0.8;
K=[1000,500,200,300]*0.75;
dS=[0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4));
end
function dS=growth_original_pollution_2(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
r=[0.5,0.2,0.3,0.15]*0.6;
K=[1000,500,200,300]*0.55;
dS=[0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4));
end
function dS=growth_original_pollution_3(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
r=[0.5,0.2,0.3,0.15]*0.3;
K=[1000,500,200,300]*0.35;
dS=[0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4));
end

function dS=growth_original_habitat_1(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
r=[0.5,0.2,0.3,0.15]*0.8;
K=[1000,500,200,300]*0.8;
dS=[0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4));
end
function dS=growth_original_habitat_2(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
r=[0.5,0.2,0.3,0.15]*0.6;
K=[1000,500,200,300]*0.6;
dS=[0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4));
end
function dS=growth_original_habitat_3(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
r=[0.5,0.2,0.3,0.15]*0.3;
K=[1000,500,200,300]*0.3;
dS=[0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+sum(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+sum(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+sum(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4));
end

function dS=growth_original_best(t,S)
a=[0,0.1,0.2,0.15;0.1,0,0.3,0.05;0.2,0.3,0,0.1;0.15,0.05,0.1,0];
r=[0.5,0.2,0.3,0.15]*1.2;
K=[1500,700,300,500];
dS=[0;0;0;0];
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+(a(1,:)*[S(1),S(2),S(3),S(4)]')/K(1));
dS(2)=r(2)*S(2)*(1-S(2)/K(2)+(a(2,:)*[S(1),S(2),S(3),S(4)]')/K(2));
dS(3)=r(3)*S(3)*(1-S(3)/K(3)+(a(3,:)*[S(1),S(2),S(3),S(4)]')/K(3));
dS(4)=r(4)*S(4)*(1-S(4)/K(4)+(a(4,:)*[S(1),S(2),S(3),S(4)]')/K(4));
end

function dS=growth_original_opt1(t,S)
a=0.1;
r=0.05*t;
K=1500;
dS=0;
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*S(1))/K(1));
end

function dS=growth_original_opt2(t,S)
a=0.1;
r=0.05*1/(t+1);
K=1500;
dS=0;
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*S(1))/K(1));
end

function dS=growth_original_opt3(t,S)
a=0.1;
r=0.05*t^2;
K=1500;
dS=0;
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*S(1))/K(1));
end

function dS=growth_original_opt4(t,S)
a=0.1;
r=0.05*t^(1/2);
K=1500;
dS=0;
dS(1)=r(1)*S(1)*(1-S(1)/K(1)+sum(a(1,:)*S(1))/K(1));
end


