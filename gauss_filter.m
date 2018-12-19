function filter = gauss_filter( m, n, D0)
filter = zeros(m);
cx = ceil(m/2);
cy = ceil(n/2);
for i = 1:m
    for j = 1:n
        D = sqrt(power((i -cx),2)+power((j-cy),2));
        filter(i,j) = exp(-((D^2)/(2*(D0^2))));
    end
end
end

