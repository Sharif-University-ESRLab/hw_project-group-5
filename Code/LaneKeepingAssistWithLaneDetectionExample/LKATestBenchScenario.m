function [scenario, egoVehicle] = LKATestBenchScenario()
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.9 (R2020b) and Automated Driving Toolbox 3.2 (R2020b).
% Generated on: 29-Dec-2020 15:09:12

% Construct a drivingScenario object.
scenario = drivingScenario('StopTime', 36, 'SampleTime', 0.1);

% Add all road segments
roadCenters = [0 0 0;
    15 0 0;
    30 0 0;
    45 0 0;
    60 0 0;
    99.1086 3.07791 0;
    137.254 12.2359 0;
    173.498 27.2484 0;
    206.946 47.7458 0;
    236.777 73.2233 0;
    266.607 98.7009 0;
    300.056 119.198 0;
    336.299 134.211 0;
    374.445 143.369 0;
    413.553 146.447 0;
    428.553 146.447 0;
    443.553 146.447 0;
    458.553 146.447 0;
    473.553 146.447 0];
laneSpecification = lanespec(3);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Mesh', driving.scenario.carMesh);
waypoints = [0 0 0;
    15 0 0;
    30 0 0;
    45 0 0;
    60 0 0;
    99.1086162600577 0.077914851215553 0;
    137.254248593737 12.2358709262116 0;
    173.497624934887 27.248368952908 0;
    206.946313073118 47.7457514062631 0;
    236.776695296637 73.2233047033631 0;
    264.485757176596 100.822178344023 0;
    300.055765658387 119.198240453818 0;
    336.299141999537 134.210738480515 0;
    374.444774333216 143.368694555511 0;
    413.553390593274 146.446609406726 0;
    428.553390593274 143.446609406726 0;
    443.553390593274 146.446609406726 0;
    458.553390593274 146.446609406726 0;
    473.553390593274 146.446609406726 0];
speed = 13.9;
trajectory(egoVehicle, waypoints, speed);

