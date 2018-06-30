function clustering = rcut( A,k )
%RCUTSpectral clustering: ratio cut 
%   此处显示详细说明
D=diag(sum(A));
L=D-A;
[Vr,Dr]=eigs(L,k+1,'sm');
%display(Dr);
clustering=kmeans(Vr,k);
end

