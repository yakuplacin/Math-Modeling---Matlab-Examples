x = optimvar('x');
y = optimvar('y');
cons1 = x <= 5000;
cons2 =  y <= 2000;
cons3 = x + y <= 5500;
cons4 = x>=0;
cons5 = y>=0;
cons6 = 5*x + 2*y <= 48000;
prob = optimproblem('ObjectiveSense','maximize');
prob.Objective = 200*x + (y*175);
prob.Constraints.cons1 = cons1;
prob.Constraints.cons2 = cons2;
prob.Constraints.cons3 = cons3; 
prob.Constraints.cons4 = cons4;
prob.Constraints.cons5 = cons5;
prob.Constraints.cons6 = cons6;

sol = solve(prob);
    
A = sol.x;
B = sol.y;
totalMaxProfit = profit(A,B);

show(prob);

fprintf('The MAX profit of the Prof Midas is: %d\n',totalMaxProfit);

function prof = profit(A1,B1)
    prof = 200*A1/1000 + (B1*175/1000);
end

