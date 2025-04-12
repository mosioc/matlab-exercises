n_samples = 1000;

t = linspace(0, 1, n_samples);

A_values = [1, 2, 0.5];
f_values = [1, 2, 0.5];
q_values = [0, pi/4, pi/2];

figure;

num_A = length(A_values);
num_f = length(f_values);
num_q = length(q_values);
total_plots = num_A * num_f * num_q;

subplot_index = 1;

for A = A_values
    for f = f_values
        for q = q_values
            S = A * sin(2 * pi * f * t + q);
            
            subplot(num_A, num_f * num_q, subplot_index);
            plot(t, S);
            title(['A = ', num2str(A), ', f = ', num2str(f), ', q = ', num2str(q)]);
            xlabel('Time (s)');
            ylabel('Amplitude');
            
            subplot_index = subplot_index + 1;
        end
    end
end

sgtitle('Sine waves for Various A, f, q');