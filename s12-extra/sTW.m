[x1, y1] = meshgrid(-10:0.5:10, -10:0.5:10);
z1 = x1 + y1;

[x2, y2] = meshgrid(-5:0.2:5, -5:0.2:5);
z2 = (x2.^2 + y2.^2);

[x3, y3] = meshgrid(-pi:0.1:pi, -pi:0.1:pi);
z3 = sin(x3) + cos(y3);

[x4, y4] = meshgrid(-5:0.2:5, -5:0.2:5);
z4 = x4.^2 - y4.^2;

[x5, y5] = meshgrid(-3:0.1:3, -3:0.1:3);
z5 = exp(-(x5.^2 + y5.^2));

[x6, y6] = meshgrid(-10:0.2:10, -10:0.2:10);
z6 = sin(pi^2 + y6);

[x7, y7] = meshgrid(-5:0.2:5, -5:0.2:5);
z7 = sin(x7) .* cos(y7) ./ (1 + x7.^2 + y7.^2);

[x8, y8] = meshgrid(-10:0.1:10, -10:0.1:10);
z8 = sin(x8.^2 + y8.^2) .* exp(-(x8.^2 + y8.^2));

[x9, y9] = meshgrid(-pi:0.01:pi, -5:0.2:5);
z9 = sin(x9) .* y9.^2;

[x10, y10] = meshgrid(-2*pi:0.01:2*pi, -5:0.2:5);
z10 = cos(x10) .* exp(-y10.^2 / 2);

[x11, y11] = meshgrid(-5:0.2:5, -5:0.2:5);
z11 = cos(y11) .* tanh(x11);

[r, theta] = meshgrid(0:0.1:5, 0:0.1:2*pi);
x12 = r .* cos(theta); y12 = r .* sin(theta); z12 = r;

figure;
subplot(4, 3, 1); surf(x1, y1, z1); title('Equation 1');
subplot(4, 3, 2); surf(x2, y2, z2); title('Equation 2');
subplot(4, 3, 3); surf(x3, y3, z3); title('Equation 3');
subplot(4, 3, 4); surf(x4, y4, z4); title('Equation 4');
subplot(4, 3, 5); surf(x5, y5, z5); title('Equation 5');
subplot(4, 3, 6); surf(x6, y6, z6); title('Equation 6');
subplot(4, 3, 7); surf(x7, y7, z7); title('Equation 7');
subplot(4, 3, 8); surf(x8, y8, z8); title('Equation 8');
subplot(4, 3, 9); surf(x9, y9, z9); title('Equation 9');
subplot(4, 3, 10); surf(x10, y10, z10); title('Equation 10');
subplot(4, 3, 11); surf(x11, y11, z11); title('Equation 11');
subplot(4, 3, 12); surf(x12, y12, z12); title('Equation 12 (Polar)');