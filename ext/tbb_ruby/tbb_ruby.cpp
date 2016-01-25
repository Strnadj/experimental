#include "rice/Class.hpp"
#include "rice/Data_Type.hpp"
#include "rice/Constructor.hpp"

/** Include proxy class */
#include "./tbb_proxy/proxy.h"

using namespace Rice;

// extern "C"
void Init_test() {
  Data_Type<TbbProxy::Proxy> rb_cTbbProxyProxy = define_class<TbbProxy::Proxy>("TbbProxy")
    .define_constructor(Constructor<TbbProxy::Proxy>())
    .define_method("parallel_sort", &TbbProxy::Proxy::parallel_sort);

  return;
}
