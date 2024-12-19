#pragma once

#include "agv_msgs/TractionData.h"
#include "agv_msgs/helpers/EncoderData.h"

namespace agv {
static bool convert(agv_msgs::TractionData &trac, uint8_t target_units) {
  return convert(trac.left.enc, target_units) && convert(trac.right.enc, target_units);
}
} // namespace agv
