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


% HW Quach problem 2a: Dean Quach


% Parameters
n = 3; % number of walkers
ns = 100; % number of steps


% Initialization
x = (0:n-1)*5; % initial positions of walkers
X = ones(ns+1,1)*x; % matrix storing the walker positions in time

N=10000; % NEW: Number of Trials
Xstore = zeros(N,1); % NEW: initialize matrix of final positions

% Computation
for i=1:N   %trial loop
    for j = 1:ns % time loop
        x0 = x; % create copy of old state
        while 1 % start loop
            x = x0+(randi(2,1,n)*2-3); % add random step to all walkers
            if all(diff(x)>0) % if no walker collision or crossing,
                break % terminate loop
            end
        end
        X(j+1,:) = x; % save new state into matrix
    end
    y=X(end,1); %selecting that last position of bottom walker
    Xstore(i,:) = y; %save last entry of the trial
end


% % Plot paths of walkers
% clf
% figure(1)
% plot(0:ns,X,'.-')
% xlabel('step number')
% ylabel('position of walker')




% Plotting final positions of final walker
clf
figure(2)
histogram(Xstore,50)
title('Histogram of Bottom Walker')
ylabel('Number of Simulations')
xlabel('Final position')
