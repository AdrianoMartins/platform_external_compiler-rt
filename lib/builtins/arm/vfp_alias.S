//===-- vfp_alias.S - Override generic runtimes with VFP version ----------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is dual licensed under the MIT and the University of Illinois Open
// Source Licenses. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "../assembly.h"

#include "adddf3vfp.S"
#include "addsf3vfp.S"
#include "divdf3vfp.S"
#include "divsf3vfp.S"
#include "eqdf2vfp.S"
#include "eqsf2vfp.S"
#include "extendsfdf2vfp.S"
#include "fixdfsivfp.S"
#include "fixsfsivfp.S"
#include "fixunsdfsivfp.S"
#include "fixunssfsivfp.S"
#include "floatsidfvfp.S"
#include "floatsisfvfp.S"
#include "floatunssidfvfp.S"
#include "floatunssisfvfp.S"
#include "gedf2vfp.S"
#include "gesf2vfp.S"
#include "gtdf2vfp.S"
#include "gtsf2vfp.S"
#include "ledf2vfp.S"
#include "lesf2vfp.S"
#include "ltdf2vfp.S"
#include "ltsf2vfp.S"
#include "muldf3vfp.S"
#include "mulsf3vfp.S"
#include "nedf2vfp.S"
#include "negdf2vfp.S"
#include "negsf2vfp.S"
#include "nesf2vfp.S"
#include "subdf3vfp.S"
#include "subsf3vfp.S"
#include "truncdfsf2vfp.S"
#include "unorddf2vfp.S"
#include "unordsf2vfp.S"

#define DEFINE_VFP_FUNCTION_ALIAS(name)              \
  DEFINE_COMPILERRT_FUNCTION_ALIAS(name, name ## vfp)

#define DEFINE_VFP_AND_AEABI_ALIAS(aeabi_name, name) \
  DEFINE_VFP_FUNCTION_ALIAS(name)                    \
  DEFINE_AEABI_FUNCTION_ALIAS(aeabi_name, name)

DEFINE_VFP_FUNCTION_ALIAS(__eqsf2)
DEFINE_VFP_FUNCTION_ALIAS(__gesf2)
DEFINE_VFP_FUNCTION_ALIAS(__gtsf2)
DEFINE_VFP_FUNCTION_ALIAS(__lesf2)
DEFINE_VFP_FUNCTION_ALIAS(__ltsf2)

