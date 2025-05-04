function [beta, delta] = attacker_ai(difficulty)
%ATTACKER_AI Returns beta and delta based on difficulty level.
%   [beta, delta] = attacker_ai(difficulty) returns the attack rate (beta)
%   and conversion efficiency (delta) depending on the selected difficulty level.

    switch difficulty
        case 'Easy'
            beta = 0.015;
            delta = 0.01;
        case 'Medium'
            beta = 0.025;
            delta = 0.015;
        case 'Hard'
            beta = 0.035;
            delta = 0.02;
        otherwise
            error('Invalid difficulty level: %s. Choose Easy, Medium, or Hard.', difficulty);
    end
end