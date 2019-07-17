/* -*-  mode: c++; c-default-style: "google"; indent-tabs-mode: nil -*- */
//! Visualization: a class for controlling simulation output.
/*
  Copyright 2010-201x held jointly by LANS/LANL, LBNL, and PNNL. 
  Amanzi is released under the three-clause BSD License. 
  The terms of use and "as is" disclaimer for this license are 
  provided in the top-level COPYRIGHT file.

  Authors: Markus Berndt
           Ethan Coon (ecoon@lanl.gov)
*/

/*!

Each list contains all parameters as in a IOEvent_ spec, and also:

* `"file name base`" ``[string]`` **"checkpoint"**

* `"file name digits`" ``[int]`` **5**

INCLUDES:
* ``[io-event-spec]`` An IOEvent_ spec

  Write mesh data for every visualization dump, this facilitates visualizing deforming meshes.

Example:

.. code-block:: xml

  <ParameterList name="checkpoint">
    <Parameter name="cycles start period stop" type="Array(int)" value="{{0, 100, -1}}" />
    <Parameter name="cycles" type="Array(int)" value="{{999, 1001}}" />
    <Parameter name="times start period stop 0" type="Array(double)" value="{{0.0, 10.0, 100.0}}"/>
    <Parameter name="times start period stop 1" type="Array(double)" value="{{100.0, 25.0, -1.0}}"/>
    <Parameter name="times" type="Array(double)" value="{{101.0, 303.0, 422.0}}"/>
  </ParameterList>

In this example, checkpoint files are written when the cycle number is
a multiple of 100, every 10 seconds for the first 100 seconds, and
every 25 seconds thereafter, along with times 101, 303, and 422.  Files will be written in the form: `"checkpoint00000.h5`".

*/


#ifndef AMANZI_STATE_CHECKPOINT_HH_
#define AMANZI_STATE_CHECKPOINT_HH_

#include "Teuchos_ParameterList.hpp"
#include "Teuchos_VerboseObject.hpp"


#include "HDF5_MPI.hh"
#include "IOEvent.hh"
#include "ObservationData.hh"

namespace Amanzi {

class Checkpoint : public IOEvent {

 public:
  Checkpoint(Teuchos::ParameterList& plist, const Comm_ptr_type& comm);
  Checkpoint(); // this object will not create any output

  // public interface for coordinator clients
  void CreateFile(int cycle);
  void CreateFinalFile(int cycle);
  void WriteVector(const Epetra_MultiVector& vec, const std::vector<std::string>& names) const;
  void WriteAttributes(double time, double dt, int cycle, int pos) const;
  void WriteAttributes(double time, double dt, int cycle) const;
  void WriteAttributes(double time, int cycle) const;
  void WriteObservations(ObservationData* obs_data);
  void Finalize();

  void set_filebasename(std::string base) { filebasename_ = base; }

 protected:
  void ReadParameters_();

  std::string filebasename_;
  int filenamedigits_;
  int restart_cycle_;

  Comm_ptr_type comm_;
  
  Teuchos::RCP<Amanzi::HDF5_MPI> checkpoint_output_;
};

}  // namespace Amanzi
#endif
