% 创建一个驾驶场景，其中一辆汽车在双车道道路上超过一辆静止的汽车。
scenario = drivingScenario;
road(scenario,[0 0; 10 0; 53 -20],'lanes',lanespec(2));
plot(scenario,'Waypoints','on');
stationaryCar = vehicle(scenario,'ClassID',1,'Position',[25 -5.5 0],'Yaw',-22);

passingCar = vehicle(scenario,'ClassID',1);
waypoints = [1 -1.5; 16.36 -2.5; 17.35 -2.765; ...
            23.83 -2.01; 24.9 -2.4; 50.5 -16.7];
speed = 15; % m/s
smoothTrajectory(passingCar,waypoints,speed);