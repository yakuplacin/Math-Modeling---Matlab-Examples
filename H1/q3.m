%% part a

H = readmatrix ("input.txt");
A = spconvert(H);
D = sum(A,2);
Dhalf = diag(sparse(1./sqrt(D)));

identity = eye(10708); 

Q3PRoof = identity - (0.85 * (Dhalf * (A * Dhalf)));

b = zeros(10708,1);

for i = 1:10
    b(i,1) = 1/10;
end

inverseQ3PRoof = inv(Q3PRoof);

tic;
q3PartAX = Q3PRoof\b;
toc;

%% part b 
tic;
q3PartAXEfficient = zeros(10708,1);
for i = 1:10708
    q3PartAXEfficient(i,1) = inverseQ3PRoof(i,:) * b(:,1);
end
toc;