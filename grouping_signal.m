%---------- add data structure here-------------
my_data = corr_mat;
%---------- get rid of some indexes to be synced with sps_inds-------------
% to_exclude = to_exclude(1:4206,:);
% temp = my_data(find(to_exclude-1), :);
temp = my_data;



%---------- grouping areas-------------
% groups are: audp, audv, aud_d (1+2+3), tea and ect (4+6), and orb+pl (5+7)
audp_audv_aud_d = union(union(sps_inds.all_areas{1, 1}, sps_inds.all_areas{1, 2}),sps_inds.all_areas{1, 3});
tead_ect = union(sps_inds.all_areas{1, 4}, sps_inds.all_areas{1, 6});
orb_pl = union(sps_inds.all_areas{1, 5}, sps_inds.all_areas{1, 7});

all_data_audp_audv_aud_d = [];
all_data_audp_audv_aud_d_naive= [];
all_data_audp_audv_aud_d_expert= [];
all_data_audp_audv_aud_d_passive= [];


all_data_tead_ect = [];
all_data_tead_ect_naive= [];
all_data_tead_ect_expert= [];
all_data_tead_ect_passive= [];

all_data_orb_pl = [];
all_data_orb_pl_naive= [];
all_data_orb_pl_expert= [];
all_data_orb_pl_passive= [];



responsive_data_audp_audv_aud_d = [];
responsive_data_audp_audv_aud_d_naive = [];
responsive_data_audp_audv_aud_d_expert = [];
responsive_data_audp_audv_aud_d_passive = [];

responsive_data_tead_ect = [];
responsive_data_tead_ect_naive = [];
responsive_data_tead_ect_expert = [];
responsive_data_tead_ect_passive = [];

responsive_data_orb_pl = [];
responsive_data_orb_pl_naive = [];
responsive_data_orb_pl_expert = [];
responsive_data_orb_pl_passive = [];


% iterate over all mice
% for each mouse outputs 2 histograms for each area group, one of all cells and one of responsive cells
for i=1:26
%     fig = figure()
%     set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]); % makes figure full screen
%     subplot(3,2,1)
    indices = mintersect(  sps_inds.all_exp{1, i},audp_audv_aud_d   );% gets indices that intersect specific mouse and area
    data = temp(indices, indices); % to get only cells by indices in the intersect
%     data(data == 1) = []; % remove correlations of cells with themselves, where correlation would be 1.
    flattenedData=data'; flattenedData = flattenedData(:)'; 
    all_data_audp_audv_aud_d = [all_data_audp_audv_aud_d, flattenedData]; % add data to general area group array (not just specific mouse)
%     histogram(data)
    txt = sprintf('mean %f , std %f', mean(mean(data,'omitnan'),'omitnan'), std(std(data,'omitnan'),'omitnan'));
    title({sprintf('mouse %d and areas audp,audv and aud_d (all cells)', i),txt,sprintf('%d cells',size(data,1))})
    % same for responsive cells
    r_indices = mintersect(sps_inds.all_exp{1, i},audp_audv_aud_d, sps_inds.IndexesVocalresp);
    r_data = temp(r_indices, r_indices); 
%     r_data(r_data == 1) = [];
    r_flattenedData=r_data'; r_flattenedData = r_flattenedData(:)'; 
    responsive_data_audp_audv_aud_d = [responsive_data_audp_audv_aud_d, r_flattenedData]; % add data to general area group array (not just specific mouse)
%     subplot(3,2,2)
%     histogram(r_data)
    txt = sprintf('mean %f , std %f', mean(mean(data,'omitnan'),'omitnan'), std(std(r_data,'omitnan'),'omitnan'));
    title({sprintf('mouse %d and areas audp,audv and aud_d (vocal responsive cells)', i),txt,sprintf('%d cells',size(r_data,1))})
    
    %add to right group (naive, expert or passive)
    if ismember(indices, sps_inds.groups{1, 1})
        all_data_audp_audv_aud_d_naive = [all_data_audp_audv_aud_d_naive, flattenedData];
    elseif ismember(indices, sps_inds.groups{1, 2})
        all_data_audp_audv_aud_d_expert = [all_data_audp_audv_aud_d_expert, flattenedData];
    elseif ismember(indices, sps_inds.groups{1, 3})
        all_data_audp_audv_aud_d_passive = [all_data_audp_audv_aud_d_passive, flattenedData];
    end
    
        %add to right group (naive, expert or passive)
    if ismember(r_indices, sps_inds.groups{1, 1})
        responsive_data_audp_audv_aud_d_naive = [responsive_data_audp_audv_aud_d_naive, r_flattenedData];
    elseif ismember(r_indices, sps_inds.groups{1, 2})
        responsive_data_audp_audv_aud_d_expert = [responsive_data_audp_audv_aud_d_expert, r_flattenedData];
    elseif ismember(r_indices, sps_inds.groups{1, 3})
        responsive_data_audp_audv_aud_d_passive = [responsive_data_audp_audv_aud_d_passive, r_flattenedData];
    end
    
%     subplot(3,2,3)
    indices = mintersect(  sps_inds.all_exp{1, i},tead_ect   );
    data = temp(indices, indices); 
%     data(data == 1) = [];
    flattenedData=data'; flattenedData = flattenedData(:)';
    all_data_tead_ect = [all_data_tead_ect, flattenedData];
%     histogram(data)
    txt = sprintf('mean %f , std %f', mean(mean(data,'omitnan'),'omitnan'), std(std(data,'omitnan'),'omitnan'));
    title({sprintf('mouse %d and areas tead and ect (all cells)', i),txt,sprintf('%d cells',size(data,1))})
%     subplot(3,2,4)
    r_indices = mintersect(  sps_inds.all_exp{1, i},tead_ect,  sps_inds.IndexesVocalresp  );
    r_data = temp(r_indices, r_indices);
%     r_data(r_data == 1) = [];
    r_flattenedData=r_data'; r_flattenedData = r_flattenedData(:)';
    responsive_data_tead_ect = [responsive_data_tead_ect, r_flattenedData];
%     histogram(r_data)
    txt = sprintf('mean %f , std %f', mean(mean(r_data,'omitnan'),'omitnan'), std(std(r_data,'omitnan'),'omitnan'));
    title({sprintf('mouse %d and areas tead and ect (vocal responsive cells)', i),txt,sprintf('%d cells',size(r_data,1))})
    
        %add to right group (naive, expert or passive)
    if ismember(indices, sps_inds.groups{1, 1})
        all_data_tead_ect_naive = [all_data_tead_ect_naive, flattenedData];
    elseif ismember(indices, sps_inds.groups{1, 2})
        all_data_tead_ect_expert = [all_data_tead_ect_expert, flattenedData];
    elseif ismember(indices, sps_inds.groups{1, 3})
        all_data_tead_ect_passive = [all_data_tead_ect_passive, flattenedData];
    end
    
            %add to right group (naive, expert or passive)
    if ismember(r_indices, sps_inds.groups{1, 1})
        responsive_data_tead_ect_naive = [responsive_data_tead_ect_naive, r_flattenedData];
    elseif ismember(r_indices, sps_inds.groups{1, 2})
        responsive_data_tead_ect_expert = [responsive_data_tead_ect_expert, r_flattenedData];
    elseif ismember(r_indices, sps_inds.groups{1, 3})
        responsive_data_tead_ect_passive = [responsive_data_tead_ect_passive, r_flattenedData];
    end

        
%     subplot(3,2,5)
    indices = mintersect(  sps_inds.all_exp{1, i},orb_pl   );
    data = temp(indices, indices);
%     data(data == 1) = [];
    flattenedData=data'; flattenedData = flattenedData(:)';
    all_data_orb_pl = [all_data_orb_pl, flattenedData];
%     histogram(data)
    txt = sprintf('mean %f , std %f', mean(mean(data,'omitnan'),'omitnan'), std(std(data,'omitnan'),'omitnan'));
    title({sprintf('mouse %d and areas orb and pl (all cells)', i),txt,sprintf('%d cells',size(data,1))})
%     subplot(3,2,6)
    r_indices = mintersect(  sps_inds.all_exp{1, i},orb_pl,  sps_inds.IndexesVocalresp  );
    r_data = temp(r_indices, r_indices); 
%     r_data(r_data == 1) = [];
    r_flattenedData=r_data'; r_flattenedData = r_flattenedData(:)';
    responsive_data_orb_pl = [responsive_data_orb_pl, r_flattenedData];
%     histogram(r_data)
    txt = sprintf('mean %f , std %f', mean(mean(r_data,'omitnan'),'omitnan'), std(std(r_data,'omitnan'),'omitnan'));
    title({sprintf('mouse %d and areas orb and pl (vocal responsive cells)', i),txt,sprintf('%d cells',size(r_data,1))})
    
        %add to right group (naive, expert or passive)
    if ismember(indices, sps_inds.groups{1, 1})
        all_data_orb_pl_naive = [all_data_orb_pl_naive, flattenedData];
    elseif ismember(indices, sps_inds.groups{1, 2})
        all_data_orb_pl_expert = [all_data_orb_pl_expert, flattenedData];
    elseif ismember(indices, sps_inds.groups{1, 3})
        all_data_orb_pl_passive = [all_data_orb_pl_passive, flattenedData];
    end
    
    if ismember(r_indices, sps_inds.groups{1, 1})
        responsive_data_orb_pl_naive = [responsive_data_orb_pl_naive, r_flattenedData];
    elseif ismember(r_indices, sps_inds.groups{1, 2})
        responsive_data_orb_pl_expert = [responsive_data_orb_pl_expert, r_flattenedData];
    elseif ismember(r_indices, sps_inds.groups{1, 3})
        responsive_data_orb_pl_passive = [responsive_data_orb_pl_passive, r_flattenedData];
    end
    
    
    
%     saveas(fig,i+".png")
end


sigall_data_audp_audv_aud_d = all_data_audp_audv_aud_d;
sigall_data_audp_audv_aud_d_naive= all_data_audp_audv_aud_d_naive;
sigall_data_audp_audv_aud_d_expert= all_data_audp_audv_aud_d_expert;
sigall_data_audp_audv_aud_d_passive= all_data_audp_audv_aud_d_passive;


sigall_data_tead_ect = all_data_tead_ect;
sigall_data_tead_ect_naive= all_data_tead_ect_naive;
sigall_data_tead_ect_expert= all_data_tead_ect_expert;
sigall_data_tead_ect_passive= all_data_tead_ect_passive;

sigall_data_orb_pl = all_data_orb_pl;
sigall_data_orb_pl_naive= all_data_orb_pl_naive;
sigall_data_orb_pl_expert= all_data_orb_pl_expert;
sigall_data_orb_pl_passive= all_data_orb_pl_passive;



sigresponsive_data_audp_audv_aud_d = responsive_data_audp_audv_aud_d;
sigresponsive_data_audp_audv_aud_d_naive = responsive_data_audp_audv_aud_d_naive;
sigresponsive_data_audp_audv_aud_d_expert = responsive_data_audp_audv_aud_d_expert;
sigresponsive_data_audp_audv_aud_d_passive = responsive_data_audp_audv_aud_d_passive;

sigresponsive_data_tead_ect = responsive_data_tead_ect;
sigresponsive_data_tead_ect_naive = responsive_data_tead_ect_naive;
sigresponsive_data_tead_ect_expert = responsive_data_tead_ect_expert;
sigresponsive_data_tead_ect_passive = responsive_data_tead_ect_passive;

sigresponsive_data_orb_pl = responsive_data_orb_pl;
sigresponsive_data_orb_pl_naive = responsive_data_orb_pl_naive;
sigresponsive_data_orb_pl_expert = responsive_data_orb_pl_expert;
sigresponsive_data_orb_pl_passive =responsive_data_orb_pl_passive;

