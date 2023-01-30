function [F1_new, F2_new]=fps_sorting(F1,F2)

%Preallocate Memory
N=length(F1(:,1));
F1_new=NaN(N,3);F2_new=NaN(N,3);

% Enter the mean solution / or best solution
F1_new(1,1:3)=F1(1,1:3);
F2_new(1,1:3)=F2(1,1:3);

for i=2:length(F1(:,1))
    
    % Calculate difference between strike of the mean solution and
    % solutions from ersampling
    val=abs(F1(1,1)-F1(i,1));
    
    
    if val<90
    F1_new(i,1:3)=F1(i,1:3);
    F2_new(i,1:3)=F2(i,1:3);    
    else 
    F1_new(i,1:3)=F2(i,1:3);
    F2_new(i,1:3)=F1(i,1:3);    
    end
    
    
    
end %end of for loop

end %end of function