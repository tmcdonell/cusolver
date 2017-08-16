Haskell FFI Bindings to cuSolver
================================

[![Build status](https://travis-ci.org/tmcdonell/cusolver.svg?branch=master)](https://travis-ci.org/tmcdonell/cusolver)
[![Hackage](https://img.shields.io/hackage/v/cusolver.svg)](https://hackage.haskell.org/package/cusolver)

The cuSolver library provides useful LAPACK-like features implemented on NVIDIA
GPUs, such as common matrix factorization and triangular solve routines for
dense matrices, a sparse least-squares solver routine, and an eigenvalue solver.
This package provides FFI bindings to the functions of the cuSolver library. You
will need to install the CUDA driver and developer toolkit:

  <http://developer.nvidia.com/cuda-downloads>

  <http://docs.nvidia.com/cuda/cusolver/index.html>

