function [t, pop, dx, dy] = lv_simulation(alpha, beta, gamma, delta, x0, y0, tspan)
% LV_SIMULATION Runs the Lotka-Volterra predator-prey dynamics
%
% Inputs:
%   alpha - Defender growth rate
%   beta  - Attacker impact on defenders
%   gamma - Attacker burnout rate
%   delta - Defender response to attackers
%   x0    - Initial attacker population
%   y0    - Initial defender population
%   tspan - Time span of the simulation [t0 tf]
%
% Outputs:
%   t     - Time vector
%   pop   - Population matrix [attackers, defenders]
%   dx    - Change in attackers over time
%   dy    - Change in defenders over time

    % Define the differential equations
    f = @(t, y) [
        alpha * y(1) - beta * y(1) * y(2);         % dx/dt
        delta * y(1) * y(2) - gamma * y(2)          % dy/dt
    ];

    % Solve the system
    [t, pop] = ode45(f, tspan, [x0; y0]);

    % Compute derivatives for each time step
    dx = alpha .* pop(:,1) - beta .* pop(:,1) .* pop(:,2);
    dy = delta .* pop(:,1) .* pop(:,2) - gamma .* pop(:,2);
end