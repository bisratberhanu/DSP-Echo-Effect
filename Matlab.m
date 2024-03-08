
% echo effect 
try
    
    
    [y, Fs] = audioread('/MATLAB Drive/Dsp/sound.mp3');  % Load the audio file
    h = [1, zeros(1, 0.4 * Fs), 0.5, zeros(1, 0.4 * Fs), 0.2];
    
    % Ensure both y and h are column vectors
    y = y(:);  % Convert y to a column vector
    h = h(:);  % Convert h to a column vector
    
    %sound(y, Fs);
    
    % Perform convolution
    out = conv(y, h);
    
    % Plot the convolved signal
    plot(out);
    
    % Uncomment the line below if you want to listen to the convolved signal
    sound(out, Fs);
    
catch exception 
    disp(['Error loading audio file: ' exception.message]);
end
