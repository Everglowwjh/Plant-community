ss1=sum(S_3_1');
ss2=sum(S_3_2');
ss3=sum(S_3_3');
ss4=sum(S_3_4');
figure(1)
plot(t_3_1,ss1,'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_2,ss2,'*-','Color',[0.615 0.653 0.304],'MarkerFaceColor',[0.815 0.653 0.304], 'LineWidth',1);
hold on;
plot(t_3_3,ss3,'+-','Color',[0.415 0.753 0.304],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
hold on;
plot(t_3_4,ss4,'+-','Color',[0.215 0.753 0.304],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Total Biomass');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
%Ôö³¤ÂÊ

for i=1:length(S_3_1)-1
    Sb1(i,1)=S_3_1(i+1,1)-S_3_1(i,1);
    Sb1(i,2)=S_3_1(i+1,2)-S_3_1(i,2);
    Sb1(i,3)=S_3_1(i+1,3)-S_3_1(i,3);
end
for i=1:length(S_3_2)-1
    Sb2(i,1)=S_3_2(i+1,1)-S_3_2(i,1);
    Sb2(i,2)=S_3_2(i+1,2)-S_3_2(i,2);
    Sb2(i,3)=S_3_2(i+1,3)-S_3_2(i,3);
end
for i=1:length(S_3_3)-1
    Sb3(i,1)=S_3_3(i+1,1)-S_3_3(i,1);
    Sb3(i,2)=S_3_3(i+1,2)-S_3_3(i,2);
    Sb3(i,3)=S_3_3(i+1,3)-S_3_3(i,3);
end
for i=1:length(S_3_4)-1
    Sb4(i,1)=S_3_4(i+1,1)-S_3_4(i,1);
    Sb4(i,2)=S_3_4(i+1,2)-S_3_4(i,2);
    Sb4(i,3)=S_3_4(i+1,3)-S_3_4(i,3);
end
figure(2)
subplot(221)
plot(t_3_1(2:length(S_3_1)),Sb1(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_1(2:length(S_3_1)),Sb1(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_3_1(2:length(S_3_1)),Sb1(:,3),'+-','Color',[0.415 0.353 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth (per unit time)');
legend('Species:S(1)','Species:S(2)','Species:S(3)');
title('(a)');
subplot(222)
plot(t_3_2(2:length(S_3_2)),Sb2(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_2(2:length(S_3_2)),Sb2(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_3_2(2:length(S_3_2)),Sb2(:,3),'+-','Color',[0.415 0.353 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth (per unit time)');
legend('Species:S(1)','Species:S(2)','Species:S(4)');
title('(b)');
subplot(223)
plot(t_3_3(2:length(S_3_3)),Sb3(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_3(2:length(S_3_3)),Sb3(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_3_3(2:length(S_3_3)),Sb3(:,3),'+-','Color',[0.415 0.353 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth (per unit time)');
legend('Species:S(1)','Species:S(3)','Species:S(4)');
title('(c)');
subplot(224)
plot(t_3_4(2:length(S_3_4)),Sb4(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_3_4(2:length(S_3_4)),Sb4(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_3_4(2:length(S_3_4)),Sb4(:,3),'+-','Color',[0.415 0.353 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth (per unit time)');
legend('Species:S(2)','Species:S(3)','Species:S(4)');
title('(d)');





figure(3)
sss1=sum(S_drought_1');
sss2=sum(S_drought_2');
sss3=sum(S_drought_3');
plot(t_drought_1,sss1,'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_drought_2,sss2,'*-','Color',[0.615 0.653 0.304],'MarkerFaceColor',[0.815 0.653 0.304], 'LineWidth',1);
hold on;
plot(t_drought_3,sss3,'+-','Color',[0.215 0.753 0.304],'MarkerFaceColor',[0.815 0.753 0.304], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Total Biomass');
legend('Drought once','Drought twice','Drought thrice');


for i=1:length(S_best)-1
    Sbest(i,1)=S_best(i+1,1)-S_best(i,1);
    Sbest(i,2)=S_best(i+1,2)-S_best(i,2);
    Sbest(i,3)=S_best(i+1,3)-S_best(i,3);
    Sbest(i,4)=S_best(i+1,4)-S_best(i,4);
end
figure(4)
plot(t_best(2:117),Sbest(:,1),'o-','Color',[0.815 0.453 0.304],'MarkerFaceColor',[0.815 0.453 0.304], 'LineWidth',1);
hold on;
plot(t_best(2:117),Sbest(:,2),'*-','Color',[0.215 0.753 0.204],'MarkerFaceColor',[0.215 0.753 0.204], 'LineWidth',1);
hold on;
plot(t_best(2:117),Sbest(:,3),'+-','Color',[0.415 0.353 0.804],'MarkerFaceColor',[0.415 0.353 0.804], 'LineWidth',1);
hold on;
plot(t_best(2:117),Sbest(:,4),'^-','Color',[0.715 0.253 0.604],'MarkerFaceColor',[0.715 0.253 0.604], 'LineWidth',1);
grid on;
xlabel('Time Series');
ylabel('Number of Plant Species growth');
legend('Species:S(1)','Species:S(2)','Species:S(3)','Species:S(4)');
title('4 Plant Species');