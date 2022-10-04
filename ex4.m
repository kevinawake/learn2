z = magic(10)
s1 = sum(z,1)
s2 = sum(diag(z))
z1 = z
z1(:,2) = z1(:,2)./sqrt(3)
A = zeros(10)
A(8,:) = z(3,:) 
z2 = z + A