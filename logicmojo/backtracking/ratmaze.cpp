#include<iostream>
#include<vector>

using namespace std;

bool findSolution(vector<vector<int>> &maze, vector<vector<int>> &sol, int currX, int currY)
{
    if(currX == maze.size() - 1 and currY == maze.size() - 1) {
        // Reached exit
        sol[currX][currY] = 1;
        return true;
    }

    if(currX == maze.size() or currY == maze.size() or maze[currX][currY] == 0) {
        // Blocked cell or invalid maze location
        return false;
    }

    sol[currX][currY] = 1;
    if(findSolution(maze, sol, currX + 1, currY)) {
        return true;
    }

    if(findSolution(maze, sol, currX, currY + 1)) {
        return true;
    }

    sol[currX][currY] = 0;
    return false;
}

vector<vector<int>> findSolution()
{
    vector<vector<int>> maze  =  {
        {1, 0, 0, 0, 0},
        {1, 1, 0, 1, 0},
        {0, 1, 1, 1, 0},
        {0, 0, 0, 1, 0},
        {1, 1, 1, 1, 1}
    };

    vector<vector<int>> sol = {
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0}
    };         //final solution of the maze path is stored here

    findSolution(maze, sol, 0, 0);

    return sol;
}

void printSolution(vector<vector<int>> sol)
{
    for(int x = 0; x < sol.size(); x++) {
        for(int y = 0; y < sol.size(); y++) {
            if(sol[x][y] == 1) {
                cout << x << " " << y << "\n";
            }
        }
    }
}
