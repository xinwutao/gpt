% 生成一段增加一个车道的道路,总共8辆轿车和卡车,轿车坐标是(-58.5,2.1,0) (-58.5,-2,0) (-49.5,1.97,0) (-22.2,-1.9,0) (-13.7,1.7,0) ,卡车坐标是(-40.5,1.87,0) (-31.36,1.86,0) (-22.2,1.9,0) 
scenario = drivingScenario;
roadCenters = [28.96 -1.76 0; 59.96 -1.76 0];
road(scenario, roadCenters, 'Lanes', lanespec([2 3]), 'Name', 'Road');
roadCenters = [0 0 0; 30 0 0];
road(scenario, roadCenters, 'Lanes', lanespec([2 2]), 'Name', 'Road');
roadCenters = [-60 0 0; 1 0 0];
road(scenario, roadCenters, 'Lanes', lanespec([2 2]), 'Name', 'Road');
%生成汽车
vehicle(scenario,'ClassID', 1,'Position', [-58.5 2.1 0]);
vehicle(scenario,'ClassID', 1,'Position', [-58.5 -2 0]);
vehicle(scenario,'ClassID', 1,'Position', [-49.5 1.97 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-40.5 1.87 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-31.36 1.86 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-22.2 1.9 0]);
vehicle(scenario,'ClassID', 1,'Position', [-22.2 -1.9 0]);
vehicle(scenario,'ClassID', 1,'Position', [-13.7 1.7 0]);