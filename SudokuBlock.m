classdef SudokuBlock < handle
    properties
        possible;
        idx;
        row;
        col;
    end
    methods
        function block = SudokuBlock(idx,val)
            block.idx = idx;
            block.col = idivide(int8(idx),10)+1;
            block.row = mod(idx,10);
            
            if val == 0
                block.possible = [1:9];
            else
                block.possible = [val];
            end
        end
        
        function elim_poss(block,val)
            block.possible = block.possible(~val);
        end
        
        function row = get_row(block)
            row = block.row;
        end
        
        function col = get_col(block)
            col = block.col;
        end
        
        function box = get_box(block)
            b1 = [1 2 3 10 11 12 19 20 21];
            if any(b1==block.idx)
                box = b1(~block.idx);
                return
            end
            b2 = [4 5 6 13 14 15 22 23 24];
            if any(b2==block.idx)
                box = b2(~block.idx);
                return
            end
            b3 = [7 8 9 16 17 18 25 26 27];
            if any(b3==block.idx)
                box = b3(~block.idx);
                return
            end
            b4 = [28 29 30 37 38 39 46 47 48];
            if any(b4==block.idx)
                box = b4(~block.idx);
                return
            end
            b5 = [31 32 33 40 41 42 49 50 51];
            if any(b5==block.idx)
                box = b5(~block.idx);
                return
            end
            b6 = [34 35 36 43 44 45 52 53 54];
            if any(b6==block.idx)
                box = b6(~block.idx);
                return
            end
            b7 = [55 56 57 64 65 66 73 74 75];
            if any(b7==block.idx)
                box = b7(~block.idx);
                return
            end
            b8 = [58 59 60 67 68 69 76 77 78];
            if any(b8==block.idx)
                box = b8(~block.idx);
                return
            end
            b9 = [61 62 63 70 71 72 79 80 81];
            if any(b9==block.idx)
                box = b9(~block.idx);
                return
            end 
        end
        
        function possible = get_poss(block)
            possible = block.possible;
        end
    end
end