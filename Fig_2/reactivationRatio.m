function rat = reactivationRatio(N_reactiv, N_patt)
nepoch = size(N_reactiv,3);
num_exist = zeros(1,nepoch);
for m=1:nepoch
ll = ismember(N_reactiv(:,:,m), N_patt,'rows');
num_exist(m) = sum(ll);
end
rat = mean(num_exist);
end
