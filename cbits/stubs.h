/*
 * Extra bits for cuSolver bindings
 */

#ifndef C_STUBS_H
#define C_STUBS_H

#ifdef __MINGW32__
#include <host_defines.h>
#undef CUDARTAPI
#define CUDARTAPI __stdcall
#endif

#include <cuda.h>
#include <cusolverDn.h>
#include <cusolverSp.h>
#include <cusolverSp_LOWLEVEL_PREVIEW.h>
#include <cusolverRf.h>
#include <cusolver_common.h>

#endif /* C_STUBS_H */

