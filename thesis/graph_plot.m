% Data structure construction time 

figure(1) 

% X-Axis Frames 
x=[0 1 2 3 4 5 6 7 8 9]; 

% Y-Axis Construction Time

% Photon Mapping
y=[5338 5431 5400 5398 5320 5373 5319 5417 5450 5403];

% New approach 
y2=[4923 4969 5089 5027 4943 5066 4960 5096 5060 4945]

plot(x, y, 'r');hold;plot(x, y2, 'g'); 

legend('Photon Map','KD-Tree Photon Queue')

title('Data Structure Construction Time (in ms, 5000 photons total)')

hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Memory consumption 

figure(2)

% X-Axis: Number of photons 
x=[10000, 20000, 50000, 100000, 200000];

% Y-Axis: MB
y1 = [1.606, 1.925, 2.884, 6.485, 13.684];

y2 = [16.221, 21.4425, 32.27, 68.5, 139.84]; 

plot(x, y1, '-*r');hold;plot(x, y2, '-*g'); 

legend('Photon Map','KD-Tree Photon Queue')
xlabel('Total number of photons'); 
ylabel('Memory in MB'); 

title('Memory Consumption (in MB). Max Frames: 10')

hold on 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Memory consumption in construction 

figure(3)

% X-Axis: Number of photons 
x=[10000, 20000, 50000, 100000, 200000];

% Y-Axis: MB
y1 = [4.028, 6.894, 9.891, 15.835, 27.490];

y2 = [27.916, 39.894, 60.782, 101.5, 190.831]; 

plot(x, y1, '-*r');hold;plot(x, y2, '-*g'); 

legend('Photon Map','KD-Tree Photon Queue')
xlabel('Total number of photons'); 
ylabel('Memory in MB'); 

title('Peak Memory Consumption (in MB). Max Frames: 10')

hold on 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Photon search with different number of photons 

figure(4)

% X-Axis: Number of photons 
x=[10000, 20000, 50000, 100000, 200000];

% Y-Axis: MB
y1 = [10.745, 18.118, 35.939, 53.210, 62.660];

y2 = [8.247, 17.252, 32.247, 52.453, 66.629]; 

plot(x, y1, '-*r');hold;plot(x, y2, '-*g'); 

legend('Photon Map','KD-Tree Photon Queue')
xlabel('Total number of photons'); 
ylabel('Time in seconds'); 

title('Phoons search performance (r = 1.0)')

hold on 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Photon search with different query radius

figure(5)

% X-Axis: query radius
x=[0.5, 0.75, 1.0, 1.25, 1.5];

% Y-Axis: time(sec) 
y1 = [13.560, 23.107, 29.522, 35.374, 39.786];

y2 = [12.983, 21.653, 27.861, 31.989, 34.833]; 

plot(x, y1, '-*r');hold;plot(x, y2, '-*g'); 

legend('Photon Map','KD-Tree Photon Queue')
xlabel('Query radius'); 
ylabel('Time in seconds'); 

title('Photons search performance (50000 photons)')

hold on 




