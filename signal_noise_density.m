% denstiy plot
% figure()
sig_vec(sig_vec == 1) = NaN;
n_vec(n_vec == 1) = NaN;
[values, centers] = hist3([sig_vec(:) n_vec(:)], [50 50]);
imagesc(centers{:}, values.')
colorbar
axis equal
axis xy
title(sprintf("Voc %d, %s,\n density correlation", current_voc, specifics));
xlabel('Signal Correlation');
ylabel('Noise Correlation');
xlim([-0.2 0.4])
ylim([-0.4 0.4])