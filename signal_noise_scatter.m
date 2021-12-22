

% regression
% figure()
sig_vec(sig_vec == 1) = NaN;
n_vec(n_vec == 1) = NaN;

ind1 = ~isnan(sig_vec);
ind2 = ~isnan(n_vec);
ind = ind1.*ind2;
coeff = polyfit(sig_vec(ind==1), n_vec(ind==1),1);
plot(sig_vec, n_vec, 'r.', sig_vec, polyval(coeff, sig_vec), 'b')
title(sprintf('Voc %d, %s, Signal - Noise Correlations.\n Coefficients: %f %f',current_voc, specifics, coeff(1), coeff(2)));
xlabel('Signal Correlation');
ylabel('Noise Correlation');


