#include <stack>
#include <algorithm>
using std::string;
using std::vector;
using std::stack;
class DirReduction
{
public:
    static std::vector<std::string> dirReduc(std::vector<std::string> &arr) {
      stack<string> s;
      vector<string> ret;
      auto can = [](string a, string b){return (a=="NORTH"&&b=="SOUTH")||(a=="WEST"&&b=="EAST");};
      for (auto ss:arr) {
        if (s.empty())s.push(ss);
        else if (can(s.top(), ss)||can(ss, s.top()))s.pop();
        else s.push(ss);
      }
      while (!s.empty()) {
        ret.push_back(s.top());
        s.pop();
      }
      reverse(ret.begin(), ret.end());
      return ret;
    }
};