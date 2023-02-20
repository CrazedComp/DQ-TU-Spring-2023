function temple_abm_mexican_wave
%TEMPLE_ABM_MEXICAN_WAVE
%   Model for a mexican wave in a sports stadium, generated by
%   spectators who stand up and sit down to create the wave as
%   an emergent structure. The provided model is very simple
%   and should be improved. Model: 0=sitting; 1=standing.
%   Update rule: if sitting and left neighbor standing, then
%   stand up; if standing, then sit down.
%
% 01/2016 by Benjamin Seibold
%            http://www.math.temple.edu/~seibold/


% HW 1 - by Dean Quach


% Parameters
n = 40; % number of agents

% Initialization
x = [1:n==round(n)] % one agent from the left stands up
y = [1:n==round(1)]


% Computation
for j = 1:40 % time loop
    % Plotting
    fprintf('%d%d',x,y) %plotting both row vectors side by side/one after another. i.e.[x y]
    fprintf('\n')

    % Update rule
    if x==1 & y==1
    x=~x&x([end 1:end-1]);% If 0 & left neighbor 1, become 1; else: 0
    %y=~y&y([end-1:end 1]);% If 0 & left neighbor 1, become 1; else: 0
    y=~y&y([2:end 1]);% If 0 & right neighbor 1, become 1; else: 0
    else 
    x=~x&x([2:end 1]);% If 0 & left neighbor 1, become 1; else: 0
    %y=~y&y([end-1:end 1]);% If 0 & left neighbor 1, become 1; else: 0
    y=~y&y([end 1:end-1]);% If 0 & right neighbor 1, become 1; else: 0
    pause
    end
end


% In this case, the waves colide and I assume it to die off, or possibly
% the person on the other side of the middle person doesn't want to have to
% stand up that quickly .
