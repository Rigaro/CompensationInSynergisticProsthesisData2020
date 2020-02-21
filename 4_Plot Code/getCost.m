 %% 
function J = getCost(xTrunk,xShoulder,armLength)
    w1=0.5;
    w2=1-w1;
%     J = max((w1*abs(xTrunk).^2 + w2* max(abs(xShoulder),0.065*armLength).^2),0.0025*armLength^2);
    J = w1*abs(xTrunk).^2 + w2* abs(xShoulder);
end

