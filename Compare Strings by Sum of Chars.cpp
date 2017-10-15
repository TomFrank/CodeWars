#include <numeric>
bool compare(std::string s1, std::string s2)
{
    //just do it!
    if (any_of(s1.begin(), s1.end(), [](char c){return !isalpha(c);}))
        s1 = "";
    if (any_of(s2.begin(), s2.end(), [](char c){return !isalpha(c);}))
        s2 = "";
    return accumulate(s1.begin(), s1.end(), 0, [](int n, char c){return n + toupper(c);}) ==
           accumulate(s2.begin(), s2.end(), 0, [](int n, char c){return n + toupper(c);});
}