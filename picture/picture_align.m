n = size(nav,1);
t = (0:n-1)*dts;

figure
set(gcf,'position',[200,200,350,350])
subplot(3,1,1)
plot(t, error(:,1), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-1,1])
xlabel('ʱ��(s)')
ylabel('����λ�����(m)')
title('��ʼ��׼λ���������')
grid on
subplot(3,1,2)
plot(t, error(:,2), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-1,1])
xlabel('ʱ��(s)')
ylabel('����λ�����(m)')
grid on
subplot(3,1,3)
plot(t, error(:,3), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-1,1])
xlabel('ʱ��(s)')
ylabel('�߶����(m)')
grid on

figure
set(gcf,'position',[200,200,350,350])
subplot(3,1,1)
plot(t, error(:,4), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.4,0.4])
xlabel('ʱ��(s)')
ylabel('�����ٶ����(m/s)')
title('��ʼ��׼�ٶ��������')
grid on
subplot(3,1,2)
plot(t, error(:,5), 'LineWidth',1.2)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.4,0.4])
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
% set(gca, 'ylim', [-6,2])
xlabel('ʱ��(s)')
ylabel('��������(��)')
title('��ʼ��׼��̬�������')
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

n = size(bias_esti,1);
t = (1:n)*dts;

figure
set(gcf,'position',[200,200,450,250])
plot(t, drift_g(3:2:end,1)+gyro_bias(1)/pi*180, 'LineWidth',1.2)
hold on
plot(t, bias_esti(:,3), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.1,0.1]+gyro_bias(1)/pi*180)
legend('Ԥ��ֵ','����ֵ', 'Location','best')
xlabel('ʱ��(s)')
ylabel('x����������ƫ(��/s)')
title('x����������ƫ��������')
grid on

figure
set(gcf,'position',[200,200,450,250])
plot(t, drift_g(3:2:end,2)+gyro_bias(2)/pi*180, 'LineWidth',1.2)
hold on
plot(t, bias_esti(:,4), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.1,0.1]+gyro_bias(2)/pi*180)
legend('Ԥ��ֵ','����ֵ', 'Location','best')
xlabel('ʱ��(s)')
ylabel('y����������ƫ(��/s)')
title('y����������ƫ��������')
grid on

figure
set(gcf,'position',[200,200,450,250])
plot(t, drift_g(3:2:end,3)+gyro_bias(3)/pi*180, 'LineWidth',1.2)
hold on
plot(t, bias_esti(:,5), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.1,0.1]+gyro_bias(3)/pi*180)
legend('Ԥ��ֵ','����ֵ', 'Location','best')
xlabel('ʱ��(s)')
ylabel('z����������ƫ(��/s)')
title('z����������ƫ��������')
grid on

figure
set(gcf,'position',[200,200,450,250])
plot(t, acc_bias(3)*ones(1,n), 'LineWidth',1.2)
hold on
plot(t, bias_esti(:,6), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
% set(gca, 'ylim', [-0.1,0.1]+acc_bias(3))
legend('Ԥ��ֵ','����ֵ', 'Location','best')
xlabel('ʱ��(s)')
ylabel('z����ٶȼ���ƫ(��/s)')
title('z����ٶȼ���ƫ��������')
grid on