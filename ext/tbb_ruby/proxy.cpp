#include "proxy.h"

void TbbProxy::parallel_sort(Rice::Array &array) {
  Rice::Object arr[] = from_ruby<Rice::Array>(array);
};

void TbbTaskGroup::addTask(Rice::Object obj) {
  rb_funcall(obj, rb_intern("execute"), 0);
  /*g.run([&] {
  });*/
};

void TbbTaskGroup::waitToGroup() {
  g.wait();
};
