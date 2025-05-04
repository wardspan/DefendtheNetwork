function [finalLiveStatus, finalStatus, finalColor] = health_status(pop)
% HEALTH_STATUS Determines the end-game network security status
%
% Inputs:
%   pop - Matrix of populations over time. Columns: [Attackers, Defenders]
%
% Outputs:
%   finalLiveStatus - Emoji-coded text for live status (e.g., '🟢 Status: Holding')
%   finalStatus     - Emoji-coded text for final verdict (e.g., '💀 Final: ❌ System Breached')
%   finalColor      - RGB color for lamp [R G B]

    defenderMean = mean(pop(:,2));
    attackerMean = mean(pop(:,1));

    if defenderMean > attackerMean * 1.5
        finalStatus = '🛡️ Final: ✅ Network Secure';
        finalColor = [0 1 0];  % Bold Green
    elseif attackerMean > defenderMean * 1.5
        finalStatus = '💀 Final: ❌ System Breached';
        finalColor = [1 0 0];  % Bold Red
    else
        finalStatus = '⚠️ Final: ⚔️ Contested';
        finalColor = [1 1 0];  % Bold Yellow
    end

    finalAttackers = pop(end,1);
    finalDefenders = pop(end,2);

    if finalDefenders > finalAttackers * 1.5
        finalLiveStatus = '🟢 Status: Holding';
    elseif finalAttackers > finalDefenders * 1.5
        finalLiveStatus = '🔴 Status: Under Attack';
    else
        finalLiveStatus = '🟡 Status: Contested';
    end
end