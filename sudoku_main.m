%% Sudoku solver main file
% Takes a 9x9 matrix representing a sudoku board
% Empty spaces are represented with 0's
% Returns a solved 9x9 matrix

%% Initalize
% Clean Everything up
clear;
clc;
close all;
% Load an example puzzle
puzzle_num = 1;
load(fullfile('.','puzzles',['puzzle_' num2str(puzzle_num) '.mat']));

%% Solve Puzzle
soln_mat = SudokuSolver(a)

%% Confirm Answer
assert(all(all(soln_mat == b)),"Close, maybe next time");
disp("I agree")