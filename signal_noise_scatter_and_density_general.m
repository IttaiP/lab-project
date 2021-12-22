sig_vec(sig_vec == 1) = NaN;
n_vec(n_vec == 1) = NaN;

% regression
figure()
ind1 = ~isnan(sig_vec);
ind2 = ~isnan(n_vec);
ind = ind1.*ind2;
coeff = polyfit(sig_vec(ind==1), n_vec(ind==1),1);
plot(sig_vec, n_vec, 'r.', sig_vec, polyval(coeff, sig_vec), 'b')
title(sprintf('Voc %d, Signal - Noise Correlations. Coefficients: %f %f',current_voc, coeff(1), coeff(2)));
xlabel('Signal Correlation');
ylabel('Noise Correlation');




% denstiy plot
figure()
[values, centers] = hist3([sig_vec n_vec], [50 50]);
imagesc(centers{:}, values.')
colorbar
axis equal
axis xy
title(sprintf("Voc %d, density correlation", current_voc));
xlabel('Signal Correlation');
ylabel('Noise Correlation');
xlim([-0.2 0.4])
ylim([-0.4 0.4])