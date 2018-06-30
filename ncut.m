function clustering = ncut( A,k )
%NCUT Spectral clustering: normalized cut 
%   此处显示详细说明
D=diag(sum(A));
L=sqrtm(D)*(D-A)*sqrtm(D);
[Vn,Dn]=eigs(L,k+1,'sm');
%display(Dn);
clustering=kmeans(Vn,k);

end

