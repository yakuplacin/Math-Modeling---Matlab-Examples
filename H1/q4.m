  tic
  func1 = fibonacci(100);
  toc

 
 tic
 func2 = fibonacciwithmatrix(50);
  func2(1);
  toc
%% part a

function a = fibonacci(x)
    if x<= 0
        a = 0; 
    elseif x==1
        a = 1;
    else
        a = fibonacci(x-1) + fibonacci(x-2);
    end
end
%% part b


function q4b = fibonacciwithmatrix(n)
    q4b =[1 1; 1 0]^(n-1) * [1; 0];
end


%% part c


