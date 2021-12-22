   
   % histograms of combined correlations of all mice for each area group by expertise.
fig = figure()
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]); % makes figure full screen
sgtitle(sprintf('All aud mice by expertise, voc: %d', current_voc)) ;

ax1 = subplot(4,4,1);
sig_vec = sigall_data_audp_audv_aud_d ;
n_vec = all_data_audp_audv_aud_d;
specifics = "aud-all";
signal_noise_scatter();

ax1 = subplot(4,4,2);
signal_noise_density;


ax2 = subplot(4,4,3);
sig_vec = sigall_data_audp_audv_aud_d_naive ;
n_vec = all_data_audp_audv_aud_d_naive;
specifics = "aud-naive";
signal_noise_scatter();

ax1 = subplot(4,4,4);
signal_noise_density;


ax3 = subplot(4,4,5);
sig_vec = sigall_data_audp_audv_aud_d_expert ;
n_vec = all_data_audp_audv_aud_d_expert;
specifics = "aud-expert";
signal_noise_scatter();

ax1 = subplot(4,4,6);
signal_noise_density;


ax4 = subplot(4,4,7);
sig_vec = sigall_data_audp_audv_aud_d_passive ;
n_vec = all_data_audp_audv_aud_d_passive;
specifics = "aud-passive";
signal_noise_scatter();


ax1 = subplot(4,4,8);
signal_noise_density;


ax5 = subplot(4,4,9);
sig_vec = sigresponsive_data_audp_audv_aud_d ;
n_vec = responsive_data_audp_audv_aud_d;
specifics = "aud-all-responsive";
signal_noise_scatter();

ax1 = subplot(4,4,10);
signal_noise_density;


ax6 = subplot(4,4,11);
sig_vec = sigresponsive_data_audp_audv_aud_d_naive ;
n_vec = responsive_data_audp_audv_aud_d_naive;
specifics = "aud-naive-responsive";
signal_noise_scatter()

ax1 = subplot(4,4,12);
signal_noise_density;


ax7 = subplot(4,4,13);
sig_vec = sigresponsive_data_audp_audv_aud_d_expert ;
n_vec = responsive_data_audp_audv_aud_d_expert;
specifics = "aud-expert-responsive";
signal_noise_scatter()


ax1 = subplot(4,4,14);
signal_noise_density;


ax8 = subplot(4,4,15);
sig_vec = sigresponsive_data_audp_audv_aud_d_passive ;
n_vec = responsive_data_audp_audv_aud_d_passive;
specifics = "aud-passive-responsive";
signal_noise_scatter();

ax1 = subplot(4,4,16);
signal_noise_density;
