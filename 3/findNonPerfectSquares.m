function result = findNonPerfectSquares(n)
    endIndex=n;
    m=floor(sqrt(endIndex));
    d=m;
    while d~=0
        endIndex = endIndex+d;
        m=floor(sqrt(endIndex));% 1~endindex里有m个平方数
        non=endIndex-m;% 1~endindex里的非完全平方数个数
        d=n-non; %还差的非完全平方数的个数
    end
    result = setdiff(1:endIndex, (1:m).^2);
end
