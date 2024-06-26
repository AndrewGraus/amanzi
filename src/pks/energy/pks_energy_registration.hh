/*
  Copyright 2010-202x held jointly by participating institutions.
  Amanzi is released under the three-clause BSD License.
  The terms of use and "as is" disclaimer for this license are
  provided in the top-level COPYRIGHT file.

  Authors: Ethan Coon
*/

/*
  Energy

  Self-registering factory of models for energy PK.
*/

#include "EnergyOnePhase_PK.hh"
#include "EnergyTwoPhase_PK.hh"

namespace Amanzi {
namespace Energy {

RegisteredPKFactory<EnergyOnePhase_PK> EnergyOnePhase_PK::reg_("one-phase energy");
RegisteredPKFactory<EnergyTwoPhase_PK> EnergyTwoPhase_PK::reg_("two-phase energy");

} // namespace Energy
} // namespace Amanzi
