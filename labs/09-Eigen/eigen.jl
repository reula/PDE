# Taken from:  https://gist.github.com/Balaje/102485bb14ec6daf677f938fbd8f3ebb
#using Gridap
#using Gridap.Arrays
#using Gridap.FESpaces
#using Gridap.CellData
using Gridap.Algebra
#using Gridap.CellData
#using Arpack

struct EigenOperator{K<:AbstractMatrix,M<:AbstractMatrix} <: NonlinearOperator
  stima::K
  massma::M
end

struct EigenProblem <: FEOperator
  trial::FESpace
  test::FESpace
  op::EigenOperator
  nev::Int64
  which::Symbol #LM or SM
  explicittransform::Symbol #:shiftinvert
  tol::Float64
  maxiter::Int64
  sigma
end

"""
function EigenProblem(weakformₖ::Function
        , weakformₘ::Function
        , test::FESpace
        , trial::FESpace
        ; nev::Int64=10
        , which::Symbol=:LM 
        :LM	eigenvalues of largest magnitude (default)
        :SM	eigenvalues of smallest magnitude 
        :LR	eigenvalues of largest real part 
        :SR	eigenvalues of smallest real part 
        :LI	eigenvalues of largest imaginary part (nonsymmetric or complex A only) 
        :SI	eigenvalues of smallest imaginary part (nonsymmetric or complex A only)
        :BE	compute half of the eigenvalues from each end of the spectrum, biased in favor of the high end. (real symmetric A only)
        , explicittransform=:auto
        , :none or :shiftinvert, specifying if shift and invert should be explicitly invoked in julia code
        , tol::Float64=10^(-6)
        , maxiter::Int64=100
        , sigma nothing or a number
    )
"""
function EigenProblem(weakformₖ::Function
        , weakformₘ::Function
        , test::FESpace
        , trial::FESpace
        ; nev::Int64=10
        , which::Symbol=:LM #:LM	eigenvalues of largest magnitude (default):SM	eigenvalues of smallest magnitude :LR	eigenvalues of largest real part :SR	eigenvalues of smallest real part :LI	eigenvalues of largest imaginary part (nonsymmetric or complex A only) :SI	eigenvalues of smallest imaginary part (nonsymmetric or complex A only):BE	compute half of the eigenvalues from each end of the spectrum, biased in favor of the high end. (real symmetric A only)
        , explicittransform::Symbol=:none
        , tol::Float64=10^(-6)
        , maxiter::Int64=100
        , sigma=0.0
    )
  L(v) = 0
  opK = AffineFEOperator(weakformₖ, L, test, trial)
  opM = AffineFEOperator(weakformₘ, L, test, trial)
  K = opK.op.matrix
  M = opM.op.matrix
  op = EigenOperator(K, M)
  EigenProblem(trial, test, op, nev, which, explicittransform, tol, maxiter, sigma)
end

function solve(prob::EigenProblem)
  K = prob.op.stima
  M = prob.op.massma
  ξ,Vec = eigs(K,M; nev=prob.nev
        ,which=prob.which
        ,explicittransform=prob.explicittransform
        ,tol=prob.tol
        ,maxiter=prob.maxiter
        ,sigma=prob.sigma #nothing
    )
  fₕs = Vector{CellField}(undef, prob.nev)
  for m=1:prob.nev
    fₕ = FEFunction(prob.trial, Vec[:,m])
    fₕs[m] = fₕ
  end
  ξ, fₕs
end