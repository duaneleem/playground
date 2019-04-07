#include <iostream>
#include <iomanip>
#include <ctime>
#include <cstdlib>

using namespace std;

const int WI = 20, WI_2 = 16;

// Function prototypes
char generateP2toss();
int checkThrow(char, char);
void printStatistics(int, int, int, int);
void finalStatistics(int, int, int, int);
void welcome();

int p1Wins = 0, p2Wins = 0, ties = 0, rounds = 1, result;

int main() {
  //declarations, housekeeping, welcome & directions
  welcome();

  char player1, player2, again, choice;

  //start of do-while loop
  do {
    // user input
    cout << setw(49) << "> Rock Paper Scissors Throw! r/p/s/q > ";
    cin >> choice;
    player1 = tolower(choice);

    // Display error if some other letter was chosen.
    while (choice != 'r' && choice != 'p' && choice != 's' && choice != 'q') {
      cout << setw(49) << "> ERROR: only pick from {r, p, s, q} > ";
      cin >> choice;
    } // while

    // Determine result between players.
    switch(checkThrow(player1, generateP2toss())) {
      case 0:
        cout << setw(WI_2) << "> Tie!" << endl;
        ties++;
        break;
      case 1:
        cout << setw(WI_2) << "> Lose!" << endl;
        p2Wins++;
        break;
      case 2:
        cout << setw(WI_2) << "> Win!" << endl;
        p1Wins++;
        break;
    } // switch(checkThrow(player1, generateP2toss()))

    printStatistics(p1Wins, p2Wins, ties, rounds);
    rounds++;

    //repeat program?
    cout << setw(46) << "> Play another entire game (Y/N)? > ";
    cin >> again;
    again = toupper(again);
    while (again != 'Y' && again != 'N') {
      cout << setw(39) << "> ERROR: only Y/N please --> ";
      cin >> again;
      again = toupper(again);
    }

  } while (again == 'Y'); // end of do while

  cout << setw(31) << "> Game ending. . . .\n";

  // Output statistics due to quitting.
  finalStatistics(p1Wins, p2Wins, ties, rounds);
  exit(0);

  return 0;
} // int main()

void welcome() {
  cout << "***ROCK, PAPER, SCISSORS GAME***\n\n";

  cout << "Directions: enter one of these to throw down:" << endl;
  cout << "r: rock" << endl;
  cout << "p: paper" << endl;
  cout << "s: scissors" << endl;
  cout << "q: quit && display statistics\n" << endl;
} // welcome()

int checkThrow(char player1, char player2) {
  int result;

  switch (player1) {
    case 'r':
      if (player2 == 'r') result = 0; // even
      else if (player2 == 'p') result = 1; // lose
      else result = 2; // win
      break;

    case 'p':
      if (player2 == 'p') result = 0;
      else if (player2 == 's') result = 1;
      else result = 2;
      break;

    case 's':
      if (player2 == 'p') result = 0;
      else if (player2 == 's') result = 1;
      else result = 2;
      break;

    case 'q':
      finalStatistics(p1Wins, p2Wins, ties, rounds);
      exit(0);
  }

  return result;
} // checkThrow()

char generateP2toss() {
  srand(time(0));

  char cpuPick;
  int cpuRand = rand() & 3;
  switch (cpuRand) {
    case 0:
      cpuPick = 'r';
      break;
    case 1:
      cpuPick = 'p';
      break;
    case 2:
      cpuPick = 's';
      break;
  }

  return cpuPick;
} // generateP2toss()

void printStatistics(int p1Wins, int p2Wins, int ties, int rounds) {
  cout << setw(20) << "> Rounds: " << rounds << " | " << "P1 wins: " << p1Wins << " | " << "Computer wins: " << p2Wins << " | " << "Ties: " << ties << endl;
} // printStatistics()

void finalStatistics(int p1Wins, int p2Wins, int ties, int rounds) {
  cout << "\n*************" << endl;
  cout << "Game results: " << endl;
  cout << "*************\n\n";

  cout << setw(WI) << "Player 1 wins: " << p1Wins << "(" << p1Wins / (float) rounds * 100 << "%" << ")" << endl;
  cout << setw(WI) << "Computer wins: " << p2Wins << "(" << p2Wins / (float) rounds * 100 << "%" << ")" << endl;
  cout << setw(WI) << "Ties: " << ties << "(" << ties / (float) rounds * 100 << "%" << ")" << endl;
  cout << setw(WI) << "Rounds: " << rounds << "\n\n";
} // finalStatistics()