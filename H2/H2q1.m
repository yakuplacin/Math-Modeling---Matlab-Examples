x = optimvar('x');
y = optimvar('y');
cons1 = x <= 4;
cons2 = y <= 3;
cons3 = 4500*x + y*2700 >= 10000;
cons4 = x>=0;
cons5 = y>=0;

prob = optimproblem('ObjectiveSense','minimize');
prob.Objective = 450*x + 180*y + 1800*x + 1890*y;
prob.Constraints.cons1 = cons1;
prob.Constraints.cons2 = cons2;
prob.Constraints.cons3 = cons3; 
prob.Constraints.cons4 = cons4;
prob.Constraints.cons5 = cons5;
sol = solve(prob);

sol.x;
sol.y;
A = sol.x;
