% 创建一个包含弯曲双车道道路的驾驶场景
scenario = drivingScenario('SampleTime',0.05);
roadcenters = [0 0; 24.2 27.7; 50 30];
lspec = lanespec(2);
road(scenario,roadcenters,'Lanes',lspec);
% 在场景中添加一辆车,设置车辆进入弯道时减速的轨迹(2.6 1.0),(23.6 24.9),(45.5 28.6)
v = vehicle(scenario,'ClassID',1);
waypoints = [2.6 1.0; 23.6 24.9; 45.5 28.6];
speed = [9 8 9];
smoothTrajectory(v,waypoints,speed)
plot(scenario)