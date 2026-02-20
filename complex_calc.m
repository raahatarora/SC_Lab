function complex_calc()
    z = input('Enter a complex number: ');
    mag = abs(z);
    amp = angle(z);

    fprintf('Magnitude = %.4f\n', mag);
    fprintf('Amplitude (radians) = %.4f\n', amp);
end
