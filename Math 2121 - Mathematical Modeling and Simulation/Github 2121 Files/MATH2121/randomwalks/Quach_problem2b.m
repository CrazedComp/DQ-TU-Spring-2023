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
x = (-1:n-2)*5; % NEW: initial positions of walkers (changed to -5,0,5)
X = ones(ns+1,1)*x; % matrix storing the walker positions in time

N=10000; % NEW: Number of Trials
Xstore = zeros(N,1); % NEW: initialize matrix of final positions

z=rand(1,ns,1); % NEW B: making a vector or random integers [0,1]







% Computation
for i=1:N   %trial loop



%this chunk of code is very messy, and also has a few weird things about
%it, I note in the markdown file.
    for j = 1:ns % time loop
        x0 = x; % create copy of old state
      while 1 % start loop
            if z(:,j)<.5 % if the j^th entry in the vector is less than .5, then -1 step
                x(:,1)=x0(:,1)-1;
                x(:,3)=x0(:,3)-1;
            else        %otherwise +1 step
                x(:,1)=x0(:,1)+1;
                x(:,3)=x0(:,3)+1;
            end


            if x0(:,1)+((x0(:,3)-x0(:,1))/2) == x0(:,2) %midpoint probability,
                if z(:,j)<.5 % normal half probability
                    x(:,2)=x0(:,2)-1;
                else
                    x(:,2)=x0(:,2)+1;
                end
            else
                if x0(:,2)< x0(:,1)+((x0(:,3)-x0(:,1))/2) %less than midpoint
                        if z(:,j)<.6 %prob. less than 60%
                            x(:,1)=x0(:,1)-1; %to step down, closer
                        else        %still a 40% chance
                            x(:,1)=x0(:,1)+1; %to step further away (up)
                        end
                else    %greater than midpoint
                        if z(:,j)<.6 %prob. less than 60%
                            x(:,1)=x0(:,1)+1; %to step up, closer
                        else        %still a 40% chance
                            x(:,1)=x0(:,1)-1; %to step further away (down)
                        end
                end
            end


                if all(diff(x)>0) % if no walker collision or crossing,
                    break % terminate loop
                end

                
       end
      X(j+1,:) = x; % save new state into matrix
    end



    y=X(end,2); %selecting that last position of middle walker
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
histogram(Xstore,100)
title('Histogram of Middle Walker')
ylabel('Number of Simulations')
xlabel('Final position')
