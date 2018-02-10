classdef SudokuSolver < handle
    properties
        board;
        given;
    end
    methods
        function obj = SudokuSolver(puzzle)
            obj.given = find(puzzle)
            
        end
    end
    
    methods(Static)
        function board_init
            obj.board = cell(9)
            obj.board(:) = {1:9}
        end
    end
end