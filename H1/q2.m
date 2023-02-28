%% Question 2

H = readmatrix ("input.txt");
A = spconvert(H);
D = sum(A,2);
DHalf = diag(sparse(1./sqrt(D)));

identity = eye(10708);

P = identity - (DHalf*A*DHalf);

%% part a
tic;
[eigenVectors, eigenValues] = eigs(P,2);
toc;

P = full(P);

%% part b

prp = size(P,1);
empty = 1:1:prp;
 
 scatter(empty, eigenVectors(:,1),'magenta');
    hold on;
  scatter(empty, eigenVectors(:,2),'cyan');
 
%% part c

 partc = eig(P + (0.6)*identity);

 %% part d

 tic 
 [eigenVectorsPowered, eigenValuesPowered] = eig(P^20);
 toc
