#include<vector>
#include<iostream>

using namespace std;

struct Cell {
    int r;
    int c;
};

//vector<vector<short>> sudoku =  {
//    {2,0,0,4,0,0,0,1,0},
//    {0,0,0,0,0,0,0,6,4},
//    {8,0,0,0,1,0,5,0,0},
//    {0,0,0,0,0,0,0,0,0},
//    {0,2,0,0,0,3,1,0,0},
//    {9,0,0,0,5,0,7,0,0},
//    {0,6,0,0,4,0,0,0,0},
//    {0,7,0,0,9,0,2,0,0},
//    {0,3,0,5,0,0,6,0,7}
//};

vector<vector<short>> sudoku =  {
    {7,0,0,8,0,0,1,2,0},
    {0,9,0,0,4,0,0,0,0},
    {0,0,0,0,0,0,0,0,3},
    {1,0,0,2,0,0,5,7,0},
    {0,0,0,0,0,0,0,6,0},
    {0,0,2,0,0,8,0,0,0},
    {0,7,0,0,0,9,3,5,0},
    {0,0,0,5,0,0,0,0,6},
    {3,0,0,0,0,0,0,0,8}
};

bool isRowSafe(Cell cell, short n)
{
    vector<short> row = sudoku[cell.r];

    for(int idx = 0; idx < 9; idx++) {
        if(row[idx] == n) {
            return false;
        }
    }

    return true;
}

bool isColSafe(Cell cell, short n)
{
    for(int idx = 0; idx < 9; idx++) {
        if(sudoku[idx][cell.c] == n) {
            return false;
        }
    }

    return true;
}

bool isSquareSafe(Cell cell, short n)
{
    short startingRow = cell.r >= 6
                        ? 6
                        : cell.r >= 3
                        ? 3 : 0;

    short startingCol = cell.c >= 6
                        ? 6
                        : cell.c >= 3
                        ? 3 : 0;
    for(int rowIdx = startingRow; rowIdx < startingRow + 3; rowIdx++) {
        for(int colIdx = startingCol; colIdx < startingCol + 3; colIdx++) {
            if(sudoku[rowIdx][colIdx] == n) {
                return false;
            }
        }
    }

    return true;
}

Cell getEmptyCell()
{
    struct Cell cell = {-1,-1};
    for(int r = 0; r < 9; r++) {
        for(int c = 0; c < 9; c++) {
            if(sudoku[r][c] == 0) {
                cell.r = r;
                cell.c = c;
                return cell;
            }
        }
    }

    return cell;
}

bool solve()
{
    Cell cell = getEmptyCell();

    if(cell.r == -1) {
        //No empty cell found, Sudoku solved
        return true;
    }

    for(int n = 1; n < 10; n++) {
        if(isRowSafe(cell, n) and isColSafe(cell, n) and isSquareSafe(cell, n)) {
            sudoku[cell.r][cell.c] = n;

            if(solve()) {
                return true;
            }
        }
    }

    sudoku[cell.r][cell.c] = 0;
    return false;
}

void printSolution()
{
    for(int r = 0; r < 9; r++) {
        for(int c = 0; c < 9; c++) {
            cout<<sudoku[r][c]<<"\t";
        }
        cout << "\n";
    }
}
