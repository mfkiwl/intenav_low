n = size(bias_esti,1);
t = (1:n)*dts;

figure
set(gcf,'position',[200,200,450,250])
plot(t, drift_g(3:2:end,1)+gyro_bias(1)/pi*180, 'LineWidth',1.2)
hold on
plot(t, bias_esti(:,3), 'LineWidth',1.5)
set(gca, 'xlim', [t(1),t(end)])
set(gca, 'ylim', [-0.1,0.1]+gyro_bias(1)/pi*180)
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
set(gca, 'ylim', [-0.1,0.1]+gyro_bias(2)/pi*180)
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
set(gca, 'ylim', [-0.1,0.1]+gyro_bias(3)/pi*180)
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
set(gca, 'ylim', [-0.1,0.1]+acc_bias(3))
legend('Ԥ��ֵ','����ֵ', 'Location','best')
xlabel('ʱ��(s)')
ylabel('z����ٶȼ���ƫ(��/s)')
title('z����ٶȼ���ƫ��������')
grid on