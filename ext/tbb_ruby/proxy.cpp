#include "proxy.h"

TbbProxy::TbbProxy() {

};

void TbbProxy::parallel_sort(Rice::Array &array) {
  // tbb::parallel_sort(array.begin(), array.end());
};

void TbbTaskGroup::addTask() {
  if (rb_block_given_p()) {
    g.run([&] { Rice::protect(rb_yield); });
  }
};

void TbbTaskGroup::waitToGroup() {
  g.wait();
};
