function [RD,RC,LASTEN] = bsp004h(p,e)

% DIRICHLET-Randbedingungen ----------
I  = find(e(5,:) == 5); LI = length(I); % Boundary 5
RD1 = [e(1,I),e(2,I(LI)); zeros(1,LI+1)];
RD1 = [RD1, [e(6,I); zeros(1,LI)]];

RD = RD1;

% CAUCHY-Randbedingungen ----------------
I  = find(e(5,:) == 2); LI = length(I); %Boundary 2
BETA = 3; GAMMA = 2;
RC2  = [e([1,6,2],I); BETA*ones(1,LI); GAMMA*ones(1,LI)];

BETA = 4; GAMMA = 1;
I  = find(e(5,:) == 4); LI = length(I); % Boundary 4
BETA = 4; GAMMA = 1;
RC4 = [e([1,6,2],I); BETA*ones(1,LI); GAMMA*ones(1,LI)];

RC = [RC2,RC4];
LASTEN = 10;
