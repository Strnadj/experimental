#pragma once
/* Rice includes */
#include "rice/Data_Type.hpp"
#include "rice/Array.hpp"
#include "rice/Object.hpp"
#include "rice/Director.hpp"

/* TBB includes */
#include "tbb/parallel_sort.h"
#include "tbb/task_group.h"

class TbbProxy {
  public:
    void parallel_sort(Rice::Array &array);
};

class TbbTaskGroup {
  private:
    tbb::task_group g;

  public:
    void addTask(Rice::Object);
    void waitToGroup();
};

