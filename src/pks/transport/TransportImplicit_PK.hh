#ifndef AMANZI_TRANSPORT_IMPLICIT_PK_HH_
#define AMANZI_TRANSPORT_IMPLICIT_PK_HH_

// TPLs
#include "Epetra_Vector.h"
#include "Epetra_IntVector.h"
#include "Epetra_Import.h"
#include "Teuchos_RCP.hpp"

// Amanzi
#include "CompositeVector.hh"
#include "DenseVector.hh"
#include "Key.hh"
#include "LimiterCell.hh"
#include "PK.hh"
#include "PK_Explicit.hh"
#include "PK_Factory.hh"
#include "ReconstructionCell.hh"
#include "State.hh"
#include "Tensor.hh"
#include "Units.hh"
#include "VerboseObject.hh"

// Amanzi
#include "Transport_PK.hh"
#include "TransportDefs.hh"
#include "TransportDomainFunction.hh"

#include "BDF1_TI.hh"
#include "PDE_Accumulation.hh"
#include "PDE_AdvectionUpwind.hh"
#include "PK_BDF.hh"
#include "PK_Factory.hh"
#include "TreeVector.hh"

namespace Amanzi {
namespace Transport {

class TransportImplicit_PK : public Transport_PK, public PK_BDF {
 public:
  TransportImplicit_PK(Teuchos::ParameterList& pk_tree,
                        const Teuchos::RCP<Teuchos::ParameterList>& glist,
                        const Teuchos::RCP<State>& S,
                        const Teuchos::RCP<TreeVector>& soln);

  ~TransportImplicit_PK() {};

  virtual void Initialize(const Teuchos::Ptr<State>& S) override;  
  virtual bool AdvanceStep(double t_old, double t_new, bool reinit=false) override { return true; }

  // methods required for time integration interface
  // -- computes the non-linear functional f = f(t,u,udot) and related norm.
  virtual void FunctionalResidual(
      const double t_old, double t_new, 
      Teuchos::RCP<TreeVector> u_old, Teuchos::RCP<TreeVector> u_new, 
      Teuchos::RCP<TreeVector> f) override {};
  virtual double ErrorNorm(Teuchos::RCP<const TreeVector> u, Teuchos::RCP<const TreeVector> du) override { return 0.0; }

  // -- management of the preconditioner
  virtual int ApplyPreconditioner(Teuchos::RCP<const TreeVector> u, Teuchos::RCP<TreeVector> pu) override { return 0; }
  virtual void UpdatePreconditioner(double t, Teuchos::RCP<const TreeVector> u, double dt) override {};

  // -- check the admissibility of a solution
  //    override with the actual admissibility check
  virtual bool IsAdmissible(Teuchos::RCP<const TreeVector> up) override { return true; }

  // -- possibly modifies the predictor that is going to be used as a
  //    starting value for the nonlinear solve in the time integrator,
  //    the time integrator will pass the predictor that is computed
  //    using extrapolation and the time step that is used to compute
  //    this predictor this function returns true if the predictor was
  //    modified, false if not
  virtual bool ModifyPredictor(double dt, Teuchos::RCP<const TreeVector> u0,
                               Teuchos::RCP<TreeVector> u) override { return false; }

  // -- possibly modifies the correction, after the nonlinear solver (NKA)
  //    has computed it, will return true if it did change the correction,
  //    so that the nonlinear iteration can store the modified correction
  //    and pass it to NKA so that the NKA space can be updated
  virtual AmanziSolvers::FnBaseDefs::ModifyCorrectionResult
      ModifyCorrection(double dt, Teuchos::RCP<const TreeVector> res,
                       Teuchos::RCP<const TreeVector> u, 
                       Teuchos::RCP<TreeVector> du) override {
    return AmanziSolvers::FnBaseDefs::CORRECTION_NOT_MODIFIED;
  }

  // -- calling this indicates that the time integration
  //    scheme is changing the value of the solution in state.
  virtual void ChangedSolution() override {};

  // access
  Teuchos::RCP<Operators::Operator> op() { return op_; }
  Teuchos::RCP<Operators::PDE_AdvectionUpwind> op_adv() { return op_adv_; }
  
  // Forbidden.
  TransportImplicit_PK(const TransportImplicit_PK&);
  TransportImplicit_PK& operator=(const TransportImplicit_PK&);

 private:
  Teuchos::RCP<CompositeVector> acc_term_;
  
  // solvers
  Teuchos::RCP<Operators::Operator> op_;
  Teuchos::RCP<Operators::PDE_AdvectionUpwind> op_adv_;
  Teuchos::RCP<Operators::PDE_Accumulation> op_acc_;
  std::string solver_name_, solver_name_constraint_;
  
  // factory registration
  static RegisteredPKFactory<TransportImplicit_PK> reg_;
};

}  // namespace Transport
}  // namespace Amanzi


#endif
