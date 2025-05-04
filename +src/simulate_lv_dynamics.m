function [t, pop] = simulate_lv_dynamics(initialPop, tspan, alpha, beta, delta, gamma)
    % Simulate Lotka-Volterra dynamics given parameters
    % initialPop = [x0; y0]
    % tspan = [t0, tf]
    % alpha, beta, delta, gamma = model parameters

    % Define system of differential equations
    f = @(t, y) [
        alpha * y(1) - beta * y(1) * y(2);         % dx/dt
        delta * y(1) * y(2) - gamma * y(2)         % dy/dt
    ];

    % Solve using ode45
    [t, pop] = ode45(f, tspan, initialPop);
end