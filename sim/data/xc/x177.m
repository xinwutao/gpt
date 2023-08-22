% 创建一个驾驶场景。指定道路中心和车道数，以添加一条 54 米长的双向双车道直线道路，其绘制方向为从上到下.
scenario = drivingScenario('StopTime',10);
roadCenters = [50 0; -4 0];
numLanes = [1 1];
% 创建一个标线宽度为 0.25 米的实心标线对象，构成双向道路最外侧的车道标线
outerLM = laneMarking('Solid','Width',0.25);
% 创建包含实线和虚线双黄线属性的实线标记和虚线标记对象的车道标记数组
lmArray = [laneMarking('DoubleSolid','Color','Yellow','Width',0.25)
           laneMarking('DashedSolid','Color','Yellow','Length',1,'Space',1.5,'Width',0.25)
           laneMarking('DoubleSolid','Color','Yellow','Width',0.25)
           laneMarking('SolidDashed','Color','Yellow','Length',1,'Space',1.5,'Width',0.25)];
centerLM = laneMarking(lmArray,'SegmentRange',[0.1 0.25 0.2 0.35]);

marking = [outerLM centerLM outerLM];
ls = lanespec(numLanes,'Width',7,'Marking',marking);

road(scenario,roadCenters,'Lanes',ls);
figMark = figure;
set(figMark,'Position',[0 0 600 600]);
hPlot = axes(figMark);
% 在场景中添加一辆慢速行驶的车辆（SMV），指定航点和速度值，速度为2
slowVehicle = vehicle(scenario,'ClassID',1,'Position',[37 -3 0]);
waypoints = [37 -3;12 -3];
speed = 2;
smoothTrajectory(slowVehicle,waypoints,speed);
% 在场景中添加另一辆车。设置该车辆的行驶轨迹，使其通过超车区域变道，超越前面的 SMV，速度为6
passingVehicle = vehicle(scenario,'ClassID',1,'Position',[49 -3 0]);
waypoints = [49 -3; 45 -3; 40 -3; 35 0;
             30 3; 26 3; 22 3; 18 3;
             8 0; 5 -2; 2 -3; 1 -3];
speed = 6;
smoothTrajectory(passingVehicle,waypoints,speed);

close all;
figScene = figure;
set(figScene,'Position',[0 0 600 600]);
hPanel = uipanel(figScene);
hPlot = axes(hPanel);
plot(scenario,'Parent',hPlot);
title('Passing Zone: Change Lane and Pass Other Vehicle')

% Run the simulation
while advance(scenario)
    pause(0.01)
end
