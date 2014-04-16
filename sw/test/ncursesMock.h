#include <string>

using namespace std;

bool initScrFlag();
void initscr();

bool clearFlag();
void clear();

bool endWinFlag();
void endwin();

bool refreshFlag();
void refresh();

bool getchFlag();
void getch();

void addstr(const char *);

string getScreenRowNumber(int);

void move(int,int);
int moveRowCoord(void);

void ncursesReset(void);
