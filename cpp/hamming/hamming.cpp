#include "hamming.h"

namespace hamming {
  int compute(std::string a, std::string b) {
    int count = 0;
    if (a.size() != b.size()) {
      throw std::domain_error("unequal length");
    }
    for(std::string::size_type i = 0; i < a.size(); i++) {
      if (a[i] != b[i]) {
        count++ ;
      }
    }
    return count;
  }
}
