#include "../../../../lib/builtins/assembly.h"

.syntax unified
// __attribute__((pcs("aapcs")))
// int32_t call_apsr_d(double a, double b, void(*fn)(double, double)) {
//   fn(a, b);
//   return apsr;
// }

DEFINE_COMPILERRT_PRIVATE_FUNCTION(call_apsr_d)
    push {r7, lr}
    ldr r7, [sp, #8]
    blx r7
    mrs r0, apsr
    pop {r7, pc}
END_COMPILERRT_FUNCTION(call_apsr_d)

// __attribute__((pcs("aapcs")))
// int32_t call_apsr_f(float a, float b, void(*fn)(float, float)) {
//   fn(a, b);
//   return apsr;
// }

DEFINE_COMPILERRT_PRIVATE_FUNCTION(call_apsr_f)
    push {lr}
    blx r2
    mrs r0, apsr
    pop {pc}
END_COMPILERRT_FUNCTION(call_apsr_f)
