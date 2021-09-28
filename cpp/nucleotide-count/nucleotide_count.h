#if !defined(NUCLEOTIDE_COUNT_H)
#define NUCLEOTIDE_COUNT_H

#include <string>
#include <map>

namespace nucleotide_count {
  class counter {
    public:
      counter(std::string input);
      std::map<char, int> nucleotide_counts() const;
  };
};  // namespace nucleotide_count

#endif // NUCLEOTIDE_COUNT_H