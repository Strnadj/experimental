#pragma once
/* Rice includes */
#include "rice/Data_Type.hpp"
#include "rice/Array.hpp"

/* TBB includes */
#include "tbb/parallel_sort.h"
#include "tbb/task_group.h"

class TbbProxy {
};

class TbbTaskGroup {
  private:
    tbb::task_group g;


  public:
    void addTask();
    void waitToGroup();
};
