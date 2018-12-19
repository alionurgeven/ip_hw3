function filter = ideal_filter( m, n, D0 )
filter = zeros(m);
cx = ceil(m/2);
cy = ceil(n/2);
for i = 1:m
    for j = 1:n
        if sqrt(power((i -cx),2)+power((j-cy),2))<D0
            filter(i,j)=1;
        end
    end
end
end

