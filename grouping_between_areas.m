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

all_data_aud_tead_naive= [];
all_data_aud_tead_expert= [];
all_data_aud_tead_passive= [];


all_data_aud_orb_naive= [];
all_data_aud_orb_expert= [];
all_data_aud_orb_passive= [];

all_data_orb_tead_naive= [];
all_data_orb_tead_expert= [];
all_data_orb_tead_passive= [];


% iterate over all mice
% for each mouse outputs 2 histograms for each area group, one of all cells and one of responsive cells
for i=1:26
    indices = mintersect(  sps_inds.all_exp{1, i},audp_audv_aud_d   );% gets indices that intersect specific mouse and area
    indices2 = mintersect(  sps_inds.all_exp{1, i},tead_ect   );% gets indices that intersect specific mouse and area

    data = temp(indices, indices2); % to get only cells by indices in the intersect
    flattenedData=data'; flattenedData = flattenedData(:)'; 


    
    %add to right group (naive, expert or passive)
    if (ismember(indices, sps_inds.groups{1, 1}))
        if (ismember(indices2, sps_inds.groups{1, 1}))
        all_data_aud_tead_naive = [all_data_aud_tead_naive, flattenedData];
        end
    elseif ismember(indices, sps_inds.groups{1, 2})
        if ismember(indices2, sps_inds.groups{1, 2})
        all_data_aud_tead_expert = [all_data_aud_tead_expert, flattenedData];
        end
    elseif ismember(indices, sps_inds.groups{1, 3})
        if ismember(indices2, sps_inds.groups{1, 3})
        all_data_aud_tead_passive = [all_data_aud_tead_passive, flattenedData];
        end
    end
    
    
    indices = mintersect(  sps_inds.all_exp{1, i},tead_ect   );
    indices2 = mintersect(  sps_inds.all_exp{1, i},orb_pl   );
    data = temp(indices, indices2); 
    flattenedData=data'; flattenedData = flattenedData(:)';
    
        %add to right group (naive, expert or passive)
    if ismember(indices, sps_inds.groups{1, 1})
        if ismember(indices2, sps_inds.groups{1, 1})
            all_data_orb_tead_naive = [all_data_orb_tead_naive, flattenedData];
        end
    elseif ismember(indices, sps_inds.groups{1, 2})
        if ismember(indices2, sps_inds.groups{1, 2})
        all_data_orb_tead_expert = [all_data_orb_tead_expert, flattenedData];
        end
    elseif ismember(indices, sps_inds.groups{1, 3})
        if ismember(indices2, sps_inds.groups{1, 3})
        all_data_orb_tead_passive = [all_data_orb_tead_passive, flattenedData];
        end
    end
    
        
    indices = mintersect(  sps_inds.all_exp{1, i},orb_pl   );
    indices2 = mintersect(  sps_inds.all_exp{1, i},audp_audv_aud_d   );

    data = temp(indices, indices2);
    flattenedData=data'; flattenedData = flattenedData(:)';

        %add to right group (naive, expert or passive)
    if ismember(indices, sps_inds.groups{1, 1})
        if ismember(indices2, sps_inds.groups{1, 1})
        all_data_aud_orb_naive = [all_data_aud_orb_naive, flattenedData];
        end
    elseif ismember(indices, sps_inds.groups{1, 2})
        if ismember(indices2, sps_inds.groups{1, 2})
        all_data_aud_orb_expert = [all_data_aud_orb_expert, flattenedData];
        end
    elseif ismember(indices, sps_inds.groups{1, 3})
        if ismember(indices2, sps_inds.groups{1, 3})
        all_data_aud_orb_passive = [all_data_aud_orb_passive, flattenedData];
        end
    end
     
end


