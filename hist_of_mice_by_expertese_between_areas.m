   
   % histograms of combined correlations of all mice for each area group by expertise.
   map = brewermap(3,'Set1'); 
fig = figure()
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]); % makes figure full screen
ax1 = subplot(3,2,1);
ylim([0 0.12]);
sgtitle(sprintf('All mice by expertise between areas, voc: %d', current_voc)) ;


histogram(all_data_aud_tead_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')

txt1 = sprintf('naive: mean %f , std %f', mean(mean(all_data_aud_tead_naive,'omitnan'),'omitnan'), std(all_data_aud_tead_naive,'omitnan'));
txt2 = sprintf(' expert: mean %f , std %f', mean(mean(all_data_audp_audv_aud_d_expert,'omitnan'),'omitnan'), std(all_data_aud_tead_expert,'omitnan'));
[h,p] = ttest2(all_data_aud_tead_naive,all_data_aud_tead_expert);
txt3 = sprintf('t test result: p= %f, h= %d  ',p,h);

title({sprintf('areas aud-tead - naive-expert'),txt1,txt2, txt3,sprintf('naive: %d cells, expert: %d cells',size(all_data_audp_audv_aud_d_naive,2),size(all_data_audp_audv_aud_d_expert,2))})
hold on;
histogram(all_data_aud_tead_expert,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend('naive','expert','location','northwest')
legend boxoff


ax2 = subplot(3,2,3);
ylim([0 0.12]);

histogram(all_data_aud_orb_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(all_data_aud_orb_naive,'omitnan'),'omitnan'), std(all_data_aud_orb_naive,'omitnan'));
txt2 = sprintf(' expert: mean %f , std %f', mean(mean(all_data_aud_orb_expert,'omitnan'),'omitnan'), std(all_data_aud_orb_expert,'omitnan'));
[h,p] = ttest2(all_data_aud_orb_naive,all_data_aud_orb_expert);
txt3 = sprintf('t test result: p= %f, h= %d',p,h);

title({sprintf('areas aud-orb - naive-expert'),txt1,txt2,txt3,sprintf('naive: %d cells, expert: %d cells',size(all_data_aud_orb_naive,2),size(all_data_aud_orb_expert,2))})
hold on;
histogram(all_data_aud_orb_expert,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend(ax2,'naive','expert','passive','location','northwest')
legend boxoff

ax3 = subplot(3,2,5);
ylim([0 0.12]);

histogram(all_data_orb_tead_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(all_data_orb_tead_naive,'omitnan'),'omitnan'), std(all_data_orb_tead_naive,'omitnan'));
txt2 = sprintf(' expert: mean %f , std %f', mean(mean(all_data_orb_tead_expert,'omitnan'),'omitnan'), std(all_data_orb_tead_expert,'omitnan'));
[h,p] = ttest2(all_data_orb_tead_naive,all_data_orb_tead_expert);
txt3 = sprintf('t test result: p= %f, h= %d',p,h);

title({sprintf('areas orb-tead - naive-expert'),txt1,txt2,txt3,sprintf('naive: %d cells, expert: %d cells',size(all_data_orb_tead_naive,2),size(all_data_orb_pl_expert,2))})
hold on;
histogram(all_data_orb_tead_expert,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend('naive','expert','passive','location','northwest')
legend boxoff% histogram(all_data_orb_pl_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')

ax4 = subplot(3,2,2);
ylim([0 0.12]);
histogram(all_data_aud_tead_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(all_data_aud_tead_naive,'omitnan'),'omitnan'), std(all_data_aud_tead_naive,'omitnan'));
txt2 = sprintf('passive: mean %f , std %f', mean(mean(all_data_aud_tead_passive,'omitnan'),'omitnan'), std(all_data_aud_tead_passive,'omitnan'));
[h,p] = ttest2(all_data_aud_tead_naive,all_data_aud_tead_passive);
txt3 = sprintf('t test result: p= %f, h =%d',p,h);

title({sprintf('areas aud-tead - naive-passive'),txt1,txt2,txt3,sprintf('naive: %d cells, passive: %d cells',size(all_data_aud_tead_naive,2),size(all_data_aud_tead_passive,2))})

hold on;
histogram(all_data_aud_tead_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend(ax4 , 'naive','passive','location','northwest')
legend boxoff


ax5 = subplot(3,2,4);
ylim([0 0.12]);
histogram(all_data_aud_orb_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(all_data_aud_orb_naive,'omitnan'),'omitnan'), std(all_data_aud_orb_naive,'omitnan'));
txt2 = sprintf('passive: mean %f , std %f', mean(mean(all_data_aud_orb_passive,'omitnan'),'omitnan'), std(all_data_aud_orb_passive,'omitnan'));
[h,p] = ttest2(all_data_aud_orb_naive,all_data_aud_orb_passive);
txt3 = sprintf('t test result: p= %f, h= %d',p,h);

title({sprintf('areas aud-orb - naive-passive'),txt1,txt2,txt3,sprintf('naive: %d cells, passive: %d cells',size(all_data_aud_orb_naive,2),size(all_data_aud_orb_passive,2))})
hold on;
histogram(all_data_aud_orb_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')
box off
axis tight
legend(ax5,'naive','passive','location','northwest')
legend boxoff


ax6 = subplot(3,2,6);
ylim([0 0.12]);

histogram(all_data_orb_tead_naive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
txt1 = sprintf('naive: mean %f , std %f', mean(mean(all_data_orb_tead_naive,'omitnan'),'omitnan'), std(all_data_orb_tead_naive,'omitnan'));
txt2 = sprintf('passive: mean %f , std %f', mean(mean(all_data_orb_tead_passive,'omitnan'),'omitnan'), std(all_data_orb_tead_passive,'omitnan'));
[h,p] = ttest2(all_data_orb_tead_naive,all_data_orb_tead_passive);
txt3 = sprintf('t test result: p= %f, h=%d',p,h);

title({sprintf('areas orb-tead - naive-passive'),txt1,txt2,txt3,sprintf('naive: %d cells, passive: %d cells',size(all_data_orb_tead_naive,2),size(all_data_orb_tead_passive,2))})

hold on;
histogram(all_data_orb_tead_passive,linspace(-0.3,0.5,200),'Normalization','probability','facecolor',map(3,:),'facealpha',.5,'edgecolor','none')

box off
axis tight
legend(ax6,'naive','passive','location','northwest')
legend boxoff

% saveas(fig,"all_mice_by_areas_expertise_.png")

% n_corrs_voc = [all_data_audp_audv_aud_d,all_data_tead_ect,all_data_orb_pl];