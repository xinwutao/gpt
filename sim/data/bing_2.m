% 生成一个直角转弯路段,总共9辆轿车和卡车,轿车坐标是(-31.36,1.86,0) (-22.2,1.9,0) (-13.7,-1.88,0) (-4.75,-1.85,0) ,卡车坐标是(-58.5,2.1,0) (-49.5,-2.03,0) (-40.5,-1.96,0) (-31.36,-1.89,0) (-22.2,-1.9,0),总共8辆轿车和卡车,轿车坐标是(-31.36,1.86,0) ,卡车坐标是(-58.5,-2,0) (-49.5,1.97,0) (-40.5,1.87,0) (-40.5,-1.96,0) (-22.2,1.9,0) (-22.2,-1.9,0) (-4.75,1.83,0) 
scenario = drivingScenario;
roadCenters = [0 0 0; 30 0 0];
road(scenario, roadCenters, 'Lanes', lanespec([1 1]));
roadCenters = [26.36 0.12 0; 26.36 -29.88 0];
road(scenario, roadCenters, 'Lanes', lanespec([1 1]));
roadCenters = [-60 0 0;1 0 0];
road(scenario, roadCenters, 'Lanes', lanespec([1 1]));
%生成汽车
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-58.5 -2 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-49.5 1.97 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-40.5 1.87 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-40.5 -1.96 0]);
vehicle(scenario,'ClassID', 1,'Position', [-31.36 1.86 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-22.2 1.9 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-22.2 -1.9 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-4.75 1.83 0]);