%maneuver

if t==0
    %-------------- init --------------%
    T = 300;
    n = T/dt*2+1;
	angle = zeros(n,3); %deg
    speed = zeros(n,3); %m/s
    gpsflag = zeros(T/dt+1,1); %0/1
    %---------------------------------------------------------------------%
    p0 = [30, 120, 5000]; %deg, [lat,lon,h]
    v0 = [200, 0, 90]; %m/s,deg, [horizontal velocity, down velocity, velocity direction]
    att0 = [90, 0, 0]; %deg, [psi,theta,gamma]
    %---------------------------------------------------------------------%
    Cnb = angle2dcm(att0(1)/180*pi, att0(2)/180*pi, att0(3)/180*pi);
    vh = v0(1);
    vd = v0(2);
    vy = v0(3);
    vn0 = [vh*cosd(vy), vh*sind(vy), vd];
    vb0 = vn0*Cnb';
    angle(1,:) = att0;
    speed(1,:) = vn0;
else
    angle(k,:) = angle(k-1,:);
    speed(k,:) = speed(k-1,:);
    if mod(k-1,dtgps/dt*2)==0
        gpsflag((k-1)/2+1) = 1;
    end
    
    %-------------- yaw --------------%
    if 60<t && t<=70
        angle(k,1) = 90*(70-t)/10;
    end

    %-------------- pith --------------%
    if 60<t && t<=64
        angle(k,2) = 4*(t-60)/4;
    elseif 66<t && t<=70
        angle(k,2) = 4*(70-t)/4;
    end

    %-------------- roll --------------%
    if 60<t && t<=64
        angle(k,3) = 10*(t-60)/4;
    elseif 66<t && t<=70
        angle(k,3) = 10*(70-t)/4;
    end

    %-------------- vh --------------%

    %-------------- vd --------------%

    %-------------- vy --------------%
    if 60<t && t<=70
        vy = 90*(70-t)/10;
    end
    
    %-------------- GPS --------------%
    
    %*********************************************************************%
    speed(k,:) = [vh*cosd(vy), vh*sind(vy), vd];
end