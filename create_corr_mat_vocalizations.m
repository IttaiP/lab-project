%--------------------- define data -----------------------------

BINSIZE=20;
fluc_vecs1 = ones(height(data), 2520);
fluc_vecs2 = ones(height(data), 2520);
fluc_vecs3 = ones(height(data), 2520);
fluc_vecs4 = ones(height(data), 2520);
fluc_vecs5 = ones(height(data), 2520);

corr_mat1 = ones(height(data),height(data));
corr_mat2 = ones(height(data),height(data));
corr_mat3 = ones(height(data),height(data));
corr_mat4 = ones(height(data),height(data));
corr_mat5 = ones(height(data),height(data));


for m = 1:5
    disp(m)

    for j = 1:height(data)
            % mean of 30 trials, into bins of 20 MS
        x = data.Vocal_rasters_stim{j,m};
        y = ones(30,140*12);
        for i = 1:size(SylStruct.stimonsetMS,2)
            columns = SylStruct.stimonsetMS(i):(SylStruct.stimonsetMS(i)+139);
            y(:,(i-1)*140+1:((i-1)*140)+140)=x(:,columns);

        end
        x = y;
    %     x = x(1:30, 1:3000);
        psthTemp=mean(x);
        psth=sum(reshape(psthTemp(1:end-mod(length(psthTemp),BINSIZE)),BINSIZE,[]));
        %convert to Hz
        psth = psth*(1000/ BINSIZE);


        % slices x to fit into bins and then inserts to bins
        z = x(:,[1:1680]);
        y = sepblockfun(z,[1,20],'mean');
        y = y*(1000/ BINSIZE);

        %subtract psth and flatten
%         disp(size(y))
%         disp(size(psth))
        y = y - psth;
        y = reshape(y, 1, []);
        switch(m)
            case 1
                fluc_vecs1(j, :) = y;
            case 2
                fluc_vecs2(j, :) = y;
            case 3
                fluc_vecs3(j, :) = y;
            case 4
                fluc_vecs4(j, :) = y;
            case 5
                fluc_vecs5(j, :) = y;
                
        end
        


    end
    switch(m)
            case 1
                corr_mat1 = corr(fluc_vecs1');
            case 2
                corr_mat2 = corr(fluc_vecs2');
            case 3
                corr_mat3 = corr(fluc_vecs3');
            case 4
                corr_mat4 = corr(fluc_vecs4');
            case 5
                corr_mat5 = corr(fluc_vecs5');
    end
end
        
    
% for i = 1:height(data)
%     disp(i)
%     for j = 1:height(data)
%         C = cov(fluc_vecs(i,:), fluc_vecs(j,:));
%         s=C(1,2) / sqrt(C(1,1) * C(2,2));
%         corr_mat(i,j) = s;
%         
%         
%         
%     end
% end
% corr_mat = corr(fluc_vecs');

