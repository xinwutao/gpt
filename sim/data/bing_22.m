% 生成一个丁字路口,总共5辆轿车和卡车,轿车坐标是(-58.5,2.1,0) (-58.5,-2,0) ,卡车坐标是(-40.5,1.87,0) (-31.36,-1.89,0) (-4.75,1.83,0),总共9辆轿车和卡车,轿车坐标是(-49.5,1.97,0) (-31.36,1.86,0) (-31.36,-1.89,0) (-13.7,1.7,0) (-13.7,-1.88,0) (-4.75,1.83,0) (-4.75,-1.85,0) ,卡车坐标是(-40.5,-1.96,0) (-22.2,-1.9,0) 
scenario = drivingScenario;
roadCenters = [0 0; 30 0];
road(scenario, roadCenters, 'Lanes', lanespec([1, 1]));
roadCenters = [30 30; 30 -30];
road(scenario, roadCenters, 'Lanes', lanespec([1, 1]));
roadCenters = [-60 0 0; 1 0 0];
road(scenario, roadCenters, 'Lanes', lanespec([1, 1]));
%生成汽车
vehicle(scenario,'ClassID', 1,'Position', [-49.5 1.97 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-40.5 -1.96 0]);
vehicle(scenario,'ClassID', 1,'Position', [-31.36 1.86 0]);
vehicle(scenario,'ClassID', 1,'Position', [-31.36 -1.89 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-22.2 -1.9 0]);
vehicle(scenario,'ClassID', 1,'Position', [-13.7 1.7 0]);
vehicle(scenario,'ClassID', 1,'Position', [-13.7 -1.88 0]);
vehicle(scenario,'ClassID', 1,'Position', [-4.75 1.83 0]);
vehicle(scenario,'ClassID', 1,'Position', [-4.75 -1.85 0]);