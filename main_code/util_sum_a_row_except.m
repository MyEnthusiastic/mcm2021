function [num] = util_sum_a_row_except(x, row, col)
    max_col = size(x);
    max_col = max_col(2);
    min_col = 1;
    if col == 1
        num = sum(x(row, col+1:max_col));
    elseif col == max_col
        num = sum(x(row, min_col:col-1));
    else
        num = sum(x(row, min_col:col-1)) + sum(x(row, col+1:max_col));
    end
end