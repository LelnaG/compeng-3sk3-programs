function areEqual = check_matrix_solution(A_mat, b_vec, solution_mat)
    %checking that b_vec are equal
    
    %create an nx1 matrix to store if they're equal
    areEqual = zeros(height(b_vec), 1);

    solved_b_vec = A_mat*solution_mat;


    for i = 1:height(b_vec)
        %define a tolerance
        tol = 5*eps(b_vec(1));
        areEqual(i) = abs(solved_b_vec(i)-b_vec(i))<tol;
    end
end
