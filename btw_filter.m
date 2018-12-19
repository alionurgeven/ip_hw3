function filter = btw_filter( m, n, D0, level )
filter = zeros(m);
cx = ceil(m/2);
cy = ceil(n/2);
for i = 1:m
    for j = 1:n
        D = sqrt(power((i -cx),2)+power((j-cy),2));
        filter(i,j) = 1/(1 + (D/D0)^(2*level));
    end
end
end

