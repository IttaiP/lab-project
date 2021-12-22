   
   % histograms of combined correlations of responsive mice for each area group by expertise.
   map = brewermap(3,'Set1'); 
fig = figure()
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]); % makes figure full screen
ax1 = subplot(3,2,1);
ylim([0 0.12]);
sgtitle(sprintf('Responsive mice by expertise and area, voc: %d', current_voc)) ;


histogram(responsive_data_audp_audv_aud_d_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')

txt1 = sprintf('naive: mean %f , std %f', mean(mean(responsive_data_audp_audv_aud_d_naive,'omitnan'),'omitnan'), std(responsive_data_audp_audv_aud_d_naive,'omitnan'));
txt2 = sprintf(' expert: mean %f , std %f', mean(mean(responsive_data_audp_audv_aud_d_expert,'omitnan'),'omitnan'), std(responsive_data_audp_audv_aud_d_expert,'omitnan'));
[h,p] = ttest2(responsive_data_audp_audv_aud_d_naive,responsive_data_audp_audv_aud_d_expert);
txt3 = sprintf('t test result: p= %f, h= %d',p,h);

title({sprintf('areas audp,audv and aud_dl - naive-expert'),txt1,txt2, txt3,sprintf('naive: %d cells, expert: %d cells',size(responsive_data_audp_audv_aud_d_naive,2),size(responsive_data_audp_audv_aud_d_expert,2))})
hold on;
histogram(responsive_data_audp_audv_aud_d_expert,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend('naive','expert','location','northwest')
legend boxoff
% txt = sprintf('mean %f , std %f', mean(mean(responsive_data_audp_audv_aud_d_expert,'omitnan'),'omitnan'), std(responsive_data_audp_audv_aud_d_expert,'omitnan'));
% title({sprintf('areas audp,audv and aud_dl - naive-expert'),txt,sprintf('%d cells',size(responsive_data_audp_audv_aud_d_expert,2))})
% hold on;
% histogram(responsive_data_audp_audv_aud_d_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')
% txt = sprintf('mean %f , std %f', mean(mean(responsive_data_audp_audv_aud_d_passive,'omitnan'),'omitnan'), std(responsive_data_audp_audv_aud_d_passive,'omitnan'));
% title({sprintf('areas audp,audv and aud_dl - passive'),txt,sprintf('%d cells',size(responsive_data_audp_audv_aud_d_passive,2))})

ax2 = subplot(3,2,3);
ylim([0 0.12]);

histogram(responsive_data_tead_ect_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(responsive_data_tead_ect_naive,'omitnan'),'omitnan'), std(responsive_data_tead_ect_naive,'omitnan'));
txt2 = sprintf(' expert: mean %f , std %f', mean(mean(responsive_data_tead_ect_expert,'omitnan'),'omitnan'), std(responsive_data_tead_ect_expert,'omitnan'));
[h,p] = ttest2(responsive_data_tead_ect_naive,responsive_data_tead_ect_expert);
txt3 = sprintf('t test result:p = %f, h= %d',p,h );

title({sprintf('areas tead and ect - naive-expert'),txt1,txt2,txt3,sprintf('naive: %d cells, expert: %d cells',size(responsive_data_tead_ect_naive,2),size(responsive_data_tead_ect_expert,2))})
hold on;
histogram(responsive_data_tead_ect_expert,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend(ax2,'naive','expert','passive','location','northwest')
legend boxoff
% hold on;
% histogram(responsive_data_tead_ect_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')
% txt = sprintf('mean %f , std %f', mean(mean(responsive_data_tead_ect_passive,'omitnan'),'omitnan'), std(responsive_data_tead_ect_passive,'omitnan'));
% title({sprintf('areas tead and ect - passive'),txt,sprintf('%d cells',size(responsive_data_tead_ect_passive,2))})

ax3 = subplot(3,2,5);
ylim([0 0.12]);

histogram(responsive_data_orb_pl_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(responsive_data_orb_pl_naive,'omitnan'),'omitnan'), std(responsive_data_orb_pl_naive,'omitnan'));
txt2 = sprintf(' expert: mean %f , std %f', mean(mean(responsive_data_orb_pl_expert,'omitnan'),'omitnan'), std(responsive_data_orb_pl_expert,'omitnan'));
[h,p] = ttest2(responsive_data_orb_pl_naive,responsive_data_orb_pl_expert);
txt3 = sprintf('t test result:p =%f, h= %d',p,h);

title({sprintf('areas orb and pl - naive-expert'),txt1,txt2,txt3,sprintf('naive: %d cells, expert: %d cells',size(responsive_data_orb_pl_naive,2),size(responsive_data_orb_pl_expert,2))})
hold on;
histogram(responsive_data_orb_pl_expert,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend('naive','expert','passive','location','northwest')
legend boxoff% histogram(responsive_data_orb_pl_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')
% txt = sprintf('mean %f , std %f', mean(mean(responsive_data_orb_pl_passive,'omitnan'),'omitnan'), std(responsive_data_orb_pl_passive,'omitnan'));
% title({sprintf('areas orb and pl - passive'),txt,sprintf('%d cells',size(responsive_data_orb_pl_passive,2))})

ax4 = subplot(3,2,2);
ylim([0 0.12]);
histogram(responsive_data_audp_audv_aud_d_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(responsive_data_audp_audv_aud_d_naive,'omitnan'),'omitnan'), std(responsive_data_audp_audv_aud_d_naive,'omitnan'));
txt2 = sprintf('passive: mean %f , std %f', mean(mean(responsive_data_audp_audv_aud_d_passive,'omitnan'),'omitnan'), std(responsive_data_audp_audv_aud_d_passive,'omitnan'));
[h,p] = ttest2(responsive_data_audp_audv_aud_d_naive,responsive_data_audp_audv_aud_d_passive);
txt3 = sprintf('t test result:p= %f, h= %d',p,h);

title({sprintf('areas audp,audv and aud_dl - naive-passive'),txt1,txt2,txt3,sprintf('naive: %d cells, passive: %d cells',size(responsive_data_audp_audv_aud_d_naive,2),size(responsive_data_audp_audv_aud_d_passive,2))})
% hold on;
% histogram(responsive_data_audp_audv_aud_d_expert,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
% txt = sprintf('mean %f , std %f', mean(mean(responsive_data_audp_audv_aud_d_expert,'omitnan'),'omitnan'), std(responsive_data_audp_audv_aud_d_expert,'omitnan'));
% title({sprintf('areas audp,audv and aud_dl - expert'),txt,sprintf('%d cells',size(responsive_data_audp_audv_aud_d_expert,2))})
hold on;
histogram(responsive_data_audp_audv_aud_d_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend(ax4 , 'naive','passive','location','northwest')
legend boxoff


ax5 = subplot(3,2,4);
ylim([0 0.12]);
histogram(responsive_data_tead_ect_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(responsive_data_tead_ect_naive,'omitnan'),'omitnan'), std(responsive_data_tead_ect_naive,'omitnan'));
txt2 = sprintf('passive: mean %f , std %f', mean(mean(responsive_data_tead_ect_passive,'omitnan'),'omitnan'), std(responsive_data_tead_ect_passive,'omitnan'));
[h,p] = kstest2(responsive_data_tead_ect_naive,responsive_data_tead_ect_passive);
txt3 = sprintf('t test result:p= %f, h= %d',p,h);

title({sprintf('areas tead and ect - naive-passive'),txt1,txt2,txt3,sprintf('naive: %d cells, passive: %d cells',size(responsive_data_tead_ect_naive,2),size(responsive_data_tead_ect_passive,2))})
hold on;
% histogram(responsive_data_tead_ect_expert,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
% txt = sprintf('mean %f , std %f', mean(mean(responsive_data_tead_ect_expert,'omitnan'),'omitnan'), std(responsive_data_tead_ect_expert,'omitnan'));
% title({sprintf('areas tead and ect - expert'),txt,sprintf('%d cells',size(responsive_data_tead_ect_expert,2))})
% hold on;
histogram(responsive_data_tead_ect_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend(ax5,'naive','passive','location','northwest')
legend boxoff


ax6 = subplot(3,2,6);
ylim([0 0.12]);

histogram(responsive_data_orb_pl_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(responsive_data_orb_pl_naive,'omitnan'),'omitnan'), std(responsive_data_orb_pl_naive,'omitnan'));
txt2 = sprintf('passive: mean %f , std %f', mean(mean(responsive_data_orb_pl_passive,'omitnan'),'omitnan'), std(responsive_data_orb_pl_passive,'omitnan'));
[h,p] = ttest2(responsive_data_orb_pl_naive,responsive_data_orb_pl_passive);
txt3 = sprintf('t test result:p= %f, h= %d',p,h);

title({sprintf('areas orb and pl - naive-passive'),txt1,txt2,txt3,sprintf('naive: %d cells, passive: %d cells',size(responsive_data_orb_pl_naive,2),size(responsive_data_orb_pl_passive,2))})

% hold on;
% histogram(responsive_data_orb_pl_expert,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
% txt = sprintf('mean %f , std %f', mean(mean(responsive_data_orb_pl_expert,'omitnan'),'omitnan'), std(responsive_data_orb_pl_expert,'omitnan'));
% title({sprintf('areas orb and pl - expert'),txt,sprintf('%d cells',size(responsive_data_orb_pl_expert,2))})
hold on;
histogram(responsive_data_orb_pl_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')

box off
axis tight
legend(ax6,'naive','passive','location','northwest')
legend boxoff

saveas(fig,"responsive_mice_by_areas_expertise_.png")

n_corrs_voc_responsive = [responsive_data_audp_audv_aud_d,responsive_data_tead_ect,responsive_data_orb_pl];