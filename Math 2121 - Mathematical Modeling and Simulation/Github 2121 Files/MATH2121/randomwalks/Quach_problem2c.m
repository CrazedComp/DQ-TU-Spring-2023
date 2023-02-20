function Quach_problem2a
%TEMPLE_ABM_RANDOM_WALKERS
%   Random walkers in one space dimension. In each time step,
%   each walker steps either one step up or one step down
%   (i.e., its position is increased or decreased by 1).
%   In addition, any update step that would cause walkers to
%   collide or cross paths is rejected. Hence the paths of the
%   walkers are not independent.
%   Plotted are the paths of the walkers over the number
%   of steps.
%
% 01/2016 by Benjamin Seibold
%            http://www.math.temple.edu/~seibold/


% HW Quach problem 2c: Dean Quach


% Parameters
n = 1; % number of walkers
ns10 = 10; % number of steps
ns40 = 40;
ns160 = 160;

% Initialization
x = n; % initial positions of walker
X = ones(ns10+1,1)*x; % matrix storing the walker position in time

N=100000; % NEW: Number of Trials
Xstore = zeros(N,1); % NEW: initialize matrix of final positions

z=rand(1,ns10,1);



% Computation
for i=1:N   %trial loop
    for j = 1:ns10 % time loop
        x0 = x; % create copy of old state
        while 1 % start loop
            if z(:,j)<.5 % if the j^th entry in the vector is less than .5, then stepping down
                if z(:,j)<.95 %prob.95 down
                    x(:,1)=x0(:,1)-1;
                else
                    x(:,1)=x0(:,1)-21; %5% is 21 steps down
                end
            else        %otherwise stepping up
                if z(:,j)<.95 %prob.95 down
                    x(:,1)=x0(:,1)+1;
                else
                    x(:,1)=x0(:,1)+21; %5% is 21 steps down
                end
            end
        end
        X(j+1,1) = x; % save new state into matrix
    end
    y=X(end,1); %selecting that last position of bottom walker
    Xstore(i,:) = y; %save last entry of the trial
end


% Plot paths of walkers
clf
figure(1)
plot(0:ns10,X,'.-')
xlabel('step number')
ylabel('position of walker')




% % Plotting final positions of final walker
% clf
% figure(2)
% subplot(1,3,1)
% histogram(Xstore,50)
% title('Histogram of Bottom Walker')
% ylabel('Number of Simulations')
% xlabel('Final position')
% 
% subplot(1,3,2)
% histogram(Xstore,50)
% title('Histogram of Bottom Walker')
% ylabel('Number of Simulations')
% xlabel('Final position')
% 
% subplot(1,3,3)
% histogram(Xstore,50)
% title('Histogram of Bottom Walker')
% ylabel('Number of Simulations')
% xlabel('Final position')
