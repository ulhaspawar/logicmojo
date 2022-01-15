#include<iostream>
#include<vector>

using namespace std;

long double pow(float x, int n);

//Rat maze
const short N = 5;
void printSolution(vector<vector<int>> sol);
vector<vector<int>> findSolution();

//SUDOKU
void printSolution();
bool solve();

int main()
{
    cout<<"Backtracking solutions"<<endl;

//    cout<<"Power!!!\n";
//    cout<<"Enter x, n:";
//    float x {};
//    int n {};
//    cin>>x>>n;
//
//    cout<<"\n x^n:" << pow(x, n);
    
//    cout <<"Rat Maze\n";
//    printSolution(findSolution());


    cout<<"SUDOKU!\n";
    solve();
    printSolution();

    cout << endl;
    return 0;
}
