% histograms of combined correlations of all mice for each area group.
% fig = figure()
% set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]); % makes figure full screen
% subplot(3,2,1);
histogram(all_data_audp_audv_aud_d)
txt = sprintf('mean %f , std %f', mean(mean(all_data_audp_audv_aud_d,'omitnan'),'omitnan'), std(all_data_audp_audv_aud_d,'omitnan'));
title({sprintf('areas audp,audv and aud_dl - all cells'),txt,sprintf('%d cells',size(all_data_audp_audv_aud_d,2))})
% subplot(3,2,2);
% histogram(responsive_data_audp_audv_aud_d)
txt = sprintf('mean %f , std %f', mean(mean(responsive_data_audp_audv_aud_d,'omitnan'),'omitnan'), std(responsive_data_audp_audv_aud_d,'omitnan'));
title({sprintf('areas audp,audv and aud_dl - responsive cells'),txt,sprintf('%d cells',size(responsive_data_audp_audv_aud_d,2))})

% subplot(3,2,3);
% histogram(all_data_tead_ect)
txt = sprintf('mean %f , std %f', mean(mean(all_data_tead_ect,'omitnan'),'omitnan'), std(all_data_tead_ect,'omitnan'));
title({sprintf('areas tead and ect - all cells'),txt,sprintf('%d cells',size(all_data_tead_ect,2))})
% subplot(3,2,4);
% histogram(responsive_data_tead_ect)
txt = sprintf('mean %f , std %f', mean(mean(responsive_data_tead_ect,'omitnan'),'omitnan'), std(responsive_data_tead_ect,'omitnan'));
title({sprintf('areas tead and ect - responsive cells'),txt,sprintf('%d cells',size(responsive_data_tead_ect,2))})

% subplot(3,2,5);
% histogram(all_data_orb_pl)
txt = sprintf('mean %f , std %f', mean(mean(all_data_orb_pl,'omitnan'),'omitnan'), std(all_data_orb_pl,'omitnan'));
title({sprintf('areas orb and pl - all cells'),txt,sprintf('%d cells',size(all_data_orb_pl,2))})
% subplot(3,2,6);
% histogram(responsive_data_orb_pl)
txt = sprintf('mean %f , std %f', mean(mean(responsive_data_orb_pl,'omitnan'),'omitnan'), std(responsive_data_orb_pl,'omitnan'));
title({sprintf('areas orb and pl - responsive cells'),txt,sprintf('%d cells',size(responsive_data_orb_pl,2))})

%    saveas(fig,"all_mice_by_areas.png")
