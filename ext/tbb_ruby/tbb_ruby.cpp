#include "rice/Class.hpp"
#include "rice/Data_Type.hpp"
#include "rice/Constructor.hpp"

/** Include proxy class */
#include "./proxy.h"

using namespace Rice;

extern "C"

void Init_tbb_ruby() {
  define_class<TbbProxy>("TbbProxy")
    .define_constructor(Constructor<TbbProxy>())
    .define_method("parallel_sort", &TbbProxy::parallel_sort);

  define_class<TbbTaskGroup>("TbbTaskGroup")
    .define_constructor(Constructor<TbbTaskGroup>())
    .define_method("addTask", &TbbTaskGroup::addTask)
    .define_method("waitToGroup", &TbbTaskGroup::waitToGroup);

  return;
}
