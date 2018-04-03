n = size(nav,1);
t = (0:n-1)*dts;

figure
set(gcf,'position',[200,200,350,350])
subplot(3,1,1)
plot(t, error(:,1), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
set(gca, 'ylim', [-1,1])
xlabel('ʱ��(s)')
ylabel('����λ�����(m)')
title('����λ���������')
grid on
subplot(3,1,2)
plot(t, error(:,2), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
set(gca, 'ylim', [-1,1])
xlabel('ʱ��(s)')
ylabel('����λ�����(m)')
grid on
subplot(3,1,3)
plot(t, error(:,3), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
set(gca, 'ylim', [-1,1])
xlabel('ʱ��(s)')
ylabel('�߶����(m)')
grid on

figure
set(gcf,'position',[200,200,350,350])
subplot(3,1,1)
plot(t, error(:,4), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.4,0.4])
% set(gca, 'ylim', [-0.5,3])
xlabel('ʱ��(s)')
ylabel('�����ٶ����(m/s)')
title('�����ٶ��������')
grid on
subplot(3,1,2)
plot(t, error(:,5), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.4,0.4])
% set(gca, 'ylim', [-1,1])
xlabel('ʱ��(s)')
ylabel('�����ٶ����(m/s)')
grid on
subplot(3,1,3)
plot(t, error(:,6), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.2,0.2])
xlabel('ʱ��(s)')
ylabel('�����ٶ����(m/s)')
grid on

figure
set(gcf,'position',[200,200,350,350])
subplot(3,1,1)
plot(t, error(:,7), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-3,1])
xlabel('ʱ��(s)')
ylabel('��������(��)')
title('������̬�������')
grid on
subplot(3,1,2)
plot(t, error(:,8), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.5,0.5])
xlabel('ʱ��(s)')
ylabel('���������(��)')
grid on
subplot(3,1,3)
plot(t, error(:,9), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.5,0.5])
xlabel('ʱ��(s)')
ylabel('��ת�����(��)')
grid on