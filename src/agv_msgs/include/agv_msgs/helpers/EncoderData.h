#pragma once

#include <cmath>
#include <ratio>
#include <unordered_map>

#include "agv_msgs/EncoderData.h"

namespace agv {

// Hash function for std::pair, long name to avoid collisions
struct encoder_data_pair_hash {
  template <class T1, class T2> std::size_t operator()(const std::pair<T1, T2> &pair) const {
    return std::hash<T1>()(pair.first) ^ std::hash<T2>()(pair.second);
  }
};

static bool convert(agv_msgs::EncoderData &enc, uint8_t target_units) {
  if (enc.units == target_units)
    return true;

  using agv_msgs::EncoderData;
  using units = EncoderData;

  static constexpr double DEG2RAD = M_PI / 180.0;
  static constexpr double RAD2DEG = 1.0 / DEG2RAD;
  static constexpr double DEG2ROT = 1.0 / 360.0;
  static constexpr double ROT2DEG = 1.0 / DEG2ROT;

  static constexpr double M2S = 60.0;
  static constexpr double S2M = 1.0 / M2S;

  static const std::unordered_map<std::pair<uint8_t, uint8_t>, std::function<void(EncoderData &)>,
                                  encoder_data_pair_hash>
      conv_map{{{units::RPM, units::RAD_S},
                [](EncoderData &enc) {
                  enc.velocity *= (ROT2DEG * DEG2RAD / M2S);
                  enc.distance *= (ROT2DEG * DEG2RAD);
                  enc.units = units::RAD_S;
                }},
               {{units::RAD_S, units::RPM}, [](EncoderData &enc) {
                  enc.velocity *= (RAD2DEG * DEG2ROT / S2M);
                  enc.distance *= (RAD2DEG * DEG2ROT);
                  enc.units = units::RPM;
                }}};

  auto conv = conv_map.find({enc.units, target_units});
  if (conv == conv_map.end())
    return false;

  conv->second(enc);

  return true;
}

} // namespace agv
