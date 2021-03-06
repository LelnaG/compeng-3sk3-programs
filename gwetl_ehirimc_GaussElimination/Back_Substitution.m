function solution_vec = Back_Substitution(ut_mat, new_b_vec)


i = height(ut_mat);
part_solution_vec = zeros(i,1); % row vector

while i <= height(ut_mat) && i>0
    column = i;
    solution_vec = back_subst_for_col(ut_mat, new_b_vec,... 
    column, part_solution_vec);
    i=i-1;
    part_solution_vec = solution_vec;
end

end