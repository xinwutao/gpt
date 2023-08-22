% 生成一个有缓弯路段的高速公路,总共9辆轿车和卡车,轿车坐标是(-49.5,1.97,0) (-49.5,-2.03,0) (-31.36,1.86,0) (-4.75,1.83,0) ,卡车坐标是(-31.36,-1.89,0) (-22.2,1.9,0) (-13.7,1.7,0) (-13.7,-1.88,0) (-4.75,-1.85,0) 
scenario = drivingScenario;
roadCenters = [-2.9 0.1 0; 6 0 0; 23.6 -2.8 0; 38.4 -8.8 0; 45.8 -13.5 0];
road(scenario, roadCenters, 'Lanes', lanespec([1 1]));
roadCenters = [-60 0 0; 1 0 0];
road(scenario, roadCenters, 'Lanes', lanespec([1 1]));
% 高速护栏
barrierCenters = [-60 0 0; -2.9 0.1 0; 6 0 0; 23.6 -2.8 0; 38.4 -8.8 0; 45.8 -13.5 0];
barrier(scenario, barrierCenters, 'ClassID', 5);
%生成汽车
vehicle(scenario,'ClassID', 1,'Position', [-49.5 1.97 0]);
vehicle(scenario,'ClassID', 1,'Position', [-49.5 -2.03 0]);
vehicle(scenario,'ClassID', 1,'Position', [-31.36 1.86 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-31.36 -1.89 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-22.2 1.9 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-13.7 1.7 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-13.7 -1.88 0]);
vehicle(scenario,'ClassID', 1,'Position', [-4.75 1.83 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-4.75 -1.85 0]);