   
   % histograms of combined correlations of all mice for each area group by expertise.
fig = figure()
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]); % makes figure full screen
sgtitle(sprintf('All tead mice by expertise, voc: %d', current_voc)) ;

ax1 = subplot(4,4,1);
specifics = "tead-all"
sig_vec = sigall_data_tead_ect 
n_vec = all_data_tead_ect
signal_noise_scatter;

ax1 = subplot(4,4,2);
signal_noise_density;




ax2 = subplot(4,4,3);
specifics = "tead-naive"
sig_vec = sigall_data_tead_ect_naive 
n_vec = all_data_tead_ect_naive
signal_noise_scatter;


ax1 = subplot(4,4,4);
signal_noise_density;



ax3 = subplot(4,4,5);
specifics = "tead-expert"
sig_vec = sigall_data_tead_ect_expert 
n_vec = all_data_tead_ect_expert
signal_noise_scatter;


ax1 = subplot(4,4,6);
signal_noise_density;


ax4 = subplot(4,4,7);
specifics = "tead-passive"
sig_vec = sigall_data_tead_ect_passive 
n_vec = all_data_tead_ect_passive
signal_noise_scatter;


ax1 = subplot(4,4,8);
signal_noise_density;


ax5 = subplot(4,4,9);
specifics = "tead-all_responsive"
sig_vec = sigresponsive_data_tead_ect 
n_vec = responsive_data_tead_ect
signal_noise_scatter;



ax1 = subplot(4,4,10);
signal_noise_density;


ax6 = subplot(4,4,11);
specifics = "tead-naive-responsive"
sig_vec = sigresponsive_data_tead_ect_naive 
n_vec = responsive_data_tead_ect_naive
signal_noise_scatter;


ax1 = subplot(4,4,12);
signal_noise_density;


ax7 = subplot(4,4,13);
specifics = "tead-expert-responsive"
sig_vec = sigresponsive_data_tead_ect_expert 
n_vec = responsive_data_tead_ect_expert
signal_noise_scatter;

ax1 = subplot(4,4,14);
signal_noise_density;



ax8 = subplot(4,4,15);
specifics = "tead-passive-responsive"
sig_vec = sigresponsive_data_tead_ect_passive 
n_vec = responsive_data_tead_ect_passive
signal_noise_scatter;


ax1 = subplot(4,4,16);
signal_noise_density;

