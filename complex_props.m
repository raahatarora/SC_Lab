function [mag, amp] = complex_props(z)
% complex_props calculates magnitude and amplitude of a complex number
%
% Input:
%   z   - complex number
%
% Outputs:
%   mag - magnitude
%   amp - amplitude (phase in radians)

mag = abs(z);        % magnitude
amp = angle(z);      % amplitude (phase in radians)
end
