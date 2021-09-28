#include "nucleotide_count.h"

namespace nucleotide_count {
  std::string dna_string;

  counter::counter(std::string input) {
    dna_string = input;
  }

  std::map<char, int> nucleotide_counts() {
    return {{}};
  }
}
