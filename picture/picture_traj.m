n = size(traj,1);
t = (0:n-1)*dt;

figure
plot(traj(:,2),traj(:,1), 'LineWidth',2.5)
set(gcf,'position',[200,200,450,300])
xlabel('����(��)')
ylabel('γ��(��)')
title('�����켣λ������')
grid on

figure
set(gcf,'position',[200,200,350,350])
subplot(3,1,1)
plot(t, traj(:,4), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
set(gca, 'ylim', [125,160])
xlabel('ʱ��(s)')
ylabel('�����ٶ�(m/s)')
title('�����켣�ٶ�����')
grid on
subplot(3,1,2)
plot(t, traj(:,5), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
set(gca, 'ylim', [100,135])
xlabel('ʱ��(s)')
ylabel('�����ٶ�(m/s)')
grid on
subplot(3,1,3)
plot(t, traj(:,6), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
set(gca, 'ylim', [-25,25])
xlabel('ʱ��(s)')
ylabel('�����ٶ�(m/s)')
grid on

figure
set(gcf,'position',[200,200,350,350])
subplot(3,1,1)
plot(t, traj(:,7), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
xlabel('ʱ��(s)')
ylabel('�����(��)')
title('�����켣��̬����')
grid on
subplot(3,1,2)
plot(t, traj(:,8), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
set(gca, 'ylim', [-3,7])
xlabel('ʱ��(s)')
ylabel('������(��)')
grid on
subplot(3,1,3)
plot(t, traj(:,9), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-12,12])
xlabel('ʱ��(s)')
ylabel('��ת��(��)')
grid on