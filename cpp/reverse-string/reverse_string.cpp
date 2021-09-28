#include "reverse_string.h"

namespace reverse_string {
  std::string reverse_string(std::string str) {
    std::string rev_str = "";
    for(int i = str.size() - 1; i >= 0; i--) {
      rev_str.push_back(str[i]);
    }
    return rev_str;
  }
}  // namespace reverse_string
