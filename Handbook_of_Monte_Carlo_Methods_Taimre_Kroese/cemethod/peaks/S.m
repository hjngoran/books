function out = S(X)
out =  3*(1-X(:,1)).^2.*exp(-X(:,1).^2 - (X(:,2)+1).^2) ...
   - 10*(X(:,1)/5 - X(:,1).^3 - X(:,2).^5).*exp(-X(:,1).^2-X(:,2).^2) ...
   - 1/3*exp(-(X(:,1)+1).^2 - X(:,2).^2);
