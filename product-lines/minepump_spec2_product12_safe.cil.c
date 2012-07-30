extern int __VERIFIER_nondet_int(void);
extern int printf (__const char *__restrict __format, ...);
/* Generated by CIL v. 1.3.7 */
/* print_CIL_Input is true */

#line 2 "libacc.c"
struct JoinPoint {
   void **(*fp)(struct JoinPoint * ) ;
   void **args ;
   int argsCount ;
   char const   **argsType ;
   void *(*arg)(int  , struct JoinPoint * ) ;
   char const   *(*argType)(int  , struct JoinPoint * ) ;
   void **retValue ;
   char const   *retType ;
   char const   *funcName ;
   char const   *targetName ;
   char const   *fileName ;
   char const   *kind ;
   void *excep_return ;
};
#line 18 "libacc.c"
struct __UTAC__CFLOW_FUNC {
   int (*func)(int  , int  ) ;
   int val ;
   struct __UTAC__CFLOW_FUNC *next ;
};
#line 18 "libacc.c"
struct __UTAC__EXCEPTION {
   void *jumpbuf ;
   unsigned long long prtValue ;
   int pops ;
   struct __UTAC__CFLOW_FUNC *cflowfuncs ;
};
#line 211 "/usr/lib/gcc/x86_64-linux-gnu/4.4.5/include/stddef.h"
typedef unsigned long size_t;
#line 76 "libacc.c"
struct __ACC__ERR {
   void *v ;
   struct __ACC__ERR *next ;
};
#line 1 "featureselect.o"
#pragma merger(0,"featureselect.i","")
#line 8 "featureselect.h"
int select_one(void) ;
#line 10
void select_features(void) ;
#line 12
void select_helpers(void) ;
#line 14
int valid_product(void) ;
#line 8 "featureselect.c"
int select_one(void) 
{ int retValue_acc ;
  int choice ;

  {
#line 62 "featureselect.c"
  retValue_acc = choice;
#line 64
  return (retValue_acc);
#line 71
  return (retValue_acc);
}
}
#line 14 "featureselect.c"
void select_features(void) 
{ 

  {
#line 93 "featureselect.c"
  return;
}
}
#line 20 "featureselect.c"
void select_helpers(void) 
{ 

  {
#line 111 "featureselect.c"
  return;
}
}
#line 25 "featureselect.c"
int valid_product(void) 
{ int retValue_acc ;

  {
#line 129 "featureselect.c"
  retValue_acc = 1;
#line 131
  return (retValue_acc);
#line 138
  return (retValue_acc);
}
}
#line 1 "scenario.o"
#pragma merger(0,"scenario.i","")
#line 5 "scenario.c"
void waterRise(void) ;
#line 7
#line 8
void changeMethaneLevel(void) ;
#line 11
void startSystem(void) ;
#line 13
void stopSystem(void) ;
#line 15
void timeShift(void) ;
#line 17
void cleanup(void) ;
#line 1 "scenario.c"
void test(void) 
{ int splverifierCounter ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;

  {
#line 2
  splverifierCounter = 0;
  {
#line 3
  while (1) {
    while_0_continue: /* CIL Label */ ;
#line 3
    if (splverifierCounter < 4) {

    } else {
      goto while_0_break;
    }
    {
#line 7
    tmp = __VERIFIER_nondet_int();
    }
#line 7
    if (tmp) {
      {
#line 5
      waterRise();
      }
    } else {

    }
    {
#line 7
    tmp___0 = __VERIFIER_nondet_int();
    }
#line 7
    if (tmp___0) {
      {
#line 8
      changeMethaneLevel();
      }
    } else {

    }
    {
#line 10
    tmp___2 = __VERIFIER_nondet_int();
    }
#line 10
    if (tmp___2) {
      {
#line 11
      startSystem();
      }
    } else {
      {
#line 12
      tmp___1 = __VERIFIER_nondet_int();
      }
#line 12
      if (tmp___1) {
        {
#line 13
        stopSystem();
        }
      } else {

      }
    }
    {
#line 15
    timeShift();
    }
  }
  while_0_break: /* CIL Label */ ;
  }
  {
#line 17
  cleanup();
  }
#line 78 "scenario.c"
  return;
}
}
#line 1 "MinePump.o"
#pragma merger(0,"MinePump.i","")
#line 4 "Environment.h"
void lowerWaterLevel(void) ;
#line 10
int isMethaneLevelCritical(void) ;
#line 15
void printEnvironment(void) ;
#line 6 "MinePump.h"
void activatePump(void) ;
#line 8
void deactivatePump(void) ;
#line 10
int isPumpRunning(void) ;
#line 13
void printPump(void) ;
#line 7 "MinePump.c"
int pumpRunning  =    0;
#line 9 "MinePump.c"
int systemActive  =    1;
#line 10
void __utac_acc__Specification2_spec__2(void) ;
#line 16
void processEnvironment(void) ;
#line 12 "MinePump.c"
void timeShift(void) 
{ 

  {
#line 15
  if (pumpRunning) {
    {
#line 16
    lowerWaterLevel();
    }
  } else {

  }
#line 15
  if (systemActive) {
    {
#line 16
    processEnvironment();
    }
  } else {

  }
  {
#line 99 "MinePump.c"
  __utac_acc__Specification2_spec__2();
  }
#line 105
  return;
}
}
#line 19 "MinePump.c"
void processEnvironment(void) 
{ 

  {
#line 123 "MinePump.c"
  return;
}
}
#line 24 "MinePump.c"
void activatePump__wrappee__base(void) 
{ 

  {
#line 25
  pumpRunning = 1;
#line 143 "MinePump.c"
  return;
}
}
#line 32 "MinePump.c"
int isMethaneAlarm(void) ;
#line 27 "MinePump.c"
void activatePump(void) 
{ int tmp ;

  {
  {
#line 32
  tmp = isMethaneAlarm();
  }
#line 32
  if (tmp) {

  } else {
    {
#line 29
    activatePump__wrappee__base();
    }
  }
#line 167 "MinePump.c"
  return;
}
}
#line 36 "MinePump.c"
void deactivatePump(void) 
{ 

  {
#line 37
  pumpRunning = 0;
#line 187 "MinePump.c"
  return;
}
}
#line 41 "MinePump.c"
int isMethaneAlarm(void) 
{ int retValue_acc ;

  {
  {
#line 205 "MinePump.c"
  retValue_acc = isMethaneLevelCritical();
  }
#line 207
  return (retValue_acc);
#line 214
  return (retValue_acc);
}
}
#line 46 "MinePump.c"
int isPumpRunning(void) 
{ int retValue_acc ;

  {
#line 236 "MinePump.c"
  retValue_acc = pumpRunning;
#line 238
  return (retValue_acc);
#line 245
  return (retValue_acc);
}
}
#line 52 "MinePump.c"
extern int ( /* missing proto */  printf)() ;
#line 51 "MinePump.c"
void printPump(void) 
{ 

  {
  {
#line 52
  printf("Pump(System:");
  }
#line 53
  if (systemActive) {
    {
#line 54
    printf("On");
    }
  } else {
    {
#line 55
    printf("Off");
    }
  }
  {
#line 57
  printf(",Pump:");
  }
#line 58
  if (pumpRunning) {
    {
#line 59
    printf("On");
    }
  } else {
    {
#line 60
    printf("Off");
    }
  }
  {
#line 62
  printf(") ");
#line 63
  printEnvironment();
#line 64
  printf("\n");
  }
#line 285 "MinePump.c"
  return;
}
}
#line 66 "MinePump.c"
void stopSystem(void) 
{ 

  {
#line 71
  if (pumpRunning) {
    {
#line 68
    deactivatePump();
    }
  } else {

  }
#line 71
  systemActive = 0;
#line 310 "MinePump.c"
  return;
}
}
#line 73 "MinePump.c"
void startSystem(void) 
{ 

  {
#line 75
  systemActive = 1;
#line 330 "MinePump.c"
  return;
}
}
#line 1 "Specification2_spec.o"
#pragma merger(0,"Specification2_spec.i","")
#line 4 "wsllib.h"
void __automaton_fail(void) ;
#line 7 "Specification2_spec.c"
int methAndRunningLastTime  ;
#line 11 "Specification2_spec.c"
__inline void __utac_acc__Specification2_spec__1(void) 
{ 

  {
#line 13
  methAndRunningLastTime = 0;
#line 13
  return;
}
}
#line 17 "Specification2_spec.c"
void __utac_acc__Specification2_spec__2(void) 
{ int tmp ;
  int tmp___0 ;

  {
  {
#line 27
  tmp = isMethaneLevelCritical();
  }
#line 27
  if (tmp) {
    {
#line 27
    tmp___0 = isPumpRunning();
    }
#line 27
    if (tmp___0) {
#line 24
      if (methAndRunningLastTime) {
        {
#line 21
        __automaton_fail();
        }
      } else {
#line 23
        methAndRunningLastTime = 1;
      }
    } else {
#line 26
      methAndRunningLastTime = 0;
    }
  } else {
#line 26
    methAndRunningLastTime = 0;
  }
#line 26
  return;
}
}
#line 1 "Environment.o"
#pragma merger(0,"Environment.i","")
#line 12 "Environment.h"
int getWaterLevel(void) ;
#line 9 "Environment.c"
int waterLevel  =    1;
#line 12 "Environment.c"
int methaneLevelCritical  =    0;
#line 15 "Environment.c"
void lowerWaterLevel(void) 
{ 

  {
#line 19
  if (waterLevel > 0) {
#line 17
    waterLevel = waterLevel - 1;
  } else {

  }
#line 81 "Environment.c"
  return;
}
}
#line 22 "Environment.c"
void waterRise(void) 
{ 

  {
#line 26
  if (waterLevel < 2) {
#line 24
    waterLevel = waterLevel + 1;
  } else {

  }
#line 104 "Environment.c"
  return;
}
}
#line 29 "Environment.c"
void changeMethaneLevel(void) 
{ 

  {
#line 34
  if (methaneLevelCritical) {
#line 31
    methaneLevelCritical = 0;
  } else {
#line 33
    methaneLevelCritical = 1;
  }
#line 130 "Environment.c"
  return;
}
}
#line 38 "Environment.c"
int isMethaneLevelCritical(void) 
{ int retValue_acc ;

  {
#line 148 "Environment.c"
  retValue_acc = methaneLevelCritical;
#line 150
  return (retValue_acc);
#line 157
  return (retValue_acc);
}
}
#line 44 "Environment.c"
void printEnvironment(void) 
{ 

  {
  {
#line 45
  printf("Env(Water:%i", waterLevel);
#line 46
  printf(",Meth:");
  }
#line 47
  if (methaneLevelCritical) {
    {
#line 48
    printf("CRIT");
    }
  } else {
    {
#line 49
    printf("OK");
    }
  }
  {
#line 51
  printf(")");
  }
#line 189 "Environment.c"
  return;
}
}
#line 55 "Environment.c"
int getWaterLevel(void) 
{ int retValue_acc ;

  {
#line 207 "Environment.c"
  retValue_acc = waterLevel;
#line 209
  return (retValue_acc);
#line 216
  return (retValue_acc);
}
}
#line 1 "wsllib_check.o"
#pragma merger(0,"wsllib_check.i","")
#line 3 "wsllib_check.c"
void __automaton_fail(void) 
{ 

  {
  goto error;
  error: ;
#line 53 "wsllib_check.c"
  return;
}
}
#line 1 "libacc.o"
#pragma merger(0,"libacc.i","")
#line 73 "/usr/include/assert.h"
extern  __attribute__((__nothrow__, __noreturn__)) void __assert_fail(char const   *__assertion ,
                                                                      char const   *__file ,
                                                                      unsigned int __line ,
                                                                      char const   *__function ) ;
#line 471 "/usr/include/stdlib.h"
extern  __attribute__((__nothrow__)) void *malloc(size_t __size )  __attribute__((__malloc__)) ;
#line 488
extern  __attribute__((__nothrow__)) void free(void *__ptr ) ;
#line 32 "libacc.c"
void __utac__exception__cf_handler_set(void *exception , int (*cflow_func)(int  ,
                                                                           int  ) ,
                                       int val ) 
{ struct __UTAC__EXCEPTION *excep ;
  struct __UTAC__CFLOW_FUNC *cf ;
  void *tmp ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int (**mem_15)(int  , int  ) ;
  int *mem_16 ;
  struct __UTAC__CFLOW_FUNC **mem_17 ;
  struct __UTAC__CFLOW_FUNC **mem_18 ;
  struct __UTAC__CFLOW_FUNC **mem_19 ;

  {
  {
#line 33
  excep = (struct __UTAC__EXCEPTION *)exception;
#line 34
  tmp = malloc(24UL);
#line 34
  cf = (struct __UTAC__CFLOW_FUNC *)tmp;
#line 36
  mem_15 = (int (**)(int  , int  ))cf;
#line 36
  *mem_15 = cflow_func;
#line 37
  __cil_tmp7 = (unsigned long )cf;
#line 37
  __cil_tmp8 = __cil_tmp7 + 8;
#line 37
  mem_16 = (int *)__cil_tmp8;
#line 37
  *mem_16 = val;
#line 38
  __cil_tmp9 = (unsigned long )cf;
#line 38
  __cil_tmp10 = __cil_tmp9 + 16;
#line 38
  __cil_tmp11 = (unsigned long )excep;
#line 38
  __cil_tmp12 = __cil_tmp11 + 24;
#line 38
  mem_17 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp10;
#line 38
  mem_18 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp12;
#line 38
  *mem_17 = *mem_18;
#line 39
  __cil_tmp13 = (unsigned long )excep;
#line 39
  __cil_tmp14 = __cil_tmp13 + 24;
#line 39
  mem_19 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp14;
#line 39
  *mem_19 = cf;
  }
#line 654 "libacc.c"
  return;
}
}
#line 44 "libacc.c"
void __utac__exception__cf_handler_free(void *exception ) 
{ struct __UTAC__EXCEPTION *excep ;
  struct __UTAC__CFLOW_FUNC *cf ;
  struct __UTAC__CFLOW_FUNC *tmp ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct __UTAC__CFLOW_FUNC *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct __UTAC__CFLOW_FUNC **mem_15 ;
  struct __UTAC__CFLOW_FUNC **mem_16 ;
  struct __UTAC__CFLOW_FUNC **mem_17 ;

  {
#line 45
  excep = (struct __UTAC__EXCEPTION *)exception;
#line 46
  __cil_tmp5 = (unsigned long )excep;
#line 46
  __cil_tmp6 = __cil_tmp5 + 24;
#line 46
  mem_15 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp6;
#line 46
  cf = *mem_15;
  {
#line 49
  while (1) {
    while_1_continue: /* CIL Label */ ;
    {
#line 49
    __cil_tmp7 = (struct __UTAC__CFLOW_FUNC *)0;
#line 49
    __cil_tmp8 = (unsigned long )__cil_tmp7;
#line 49
    __cil_tmp9 = (unsigned long )cf;
#line 49
    if (__cil_tmp9 != __cil_tmp8) {

    } else {
      goto while_1_break;
    }
    }
    {
#line 50
    tmp = cf;
#line 51
    __cil_tmp10 = (unsigned long )cf;
#line 51
    __cil_tmp11 = __cil_tmp10 + 16;
#line 51
    mem_16 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp11;
#line 51
    cf = *mem_16;
#line 52
    __cil_tmp12 = (void *)tmp;
#line 52
    free(__cil_tmp12);
    }
  }
  while_1_break: /* CIL Label */ ;
  }
#line 55
  __cil_tmp13 = (unsigned long )excep;
#line 55
  __cil_tmp14 = __cil_tmp13 + 24;
#line 55
  mem_17 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp14;
#line 55
  *mem_17 = (struct __UTAC__CFLOW_FUNC *)0;
#line 694 "libacc.c"
  return;
}
}
#line 59 "libacc.c"
void __utac__exception__cf_handler_reset(void *exception ) 
{ struct __UTAC__EXCEPTION *excep ;
  struct __UTAC__CFLOW_FUNC *cf ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct __UTAC__CFLOW_FUNC *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int (*__cil_tmp10)(int  , int  ) ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct __UTAC__CFLOW_FUNC **mem_16 ;
  int (**mem_17)(int  , int  ) ;
  int *mem_18 ;
  struct __UTAC__CFLOW_FUNC **mem_19 ;

  {
#line 60
  excep = (struct __UTAC__EXCEPTION *)exception;
#line 61
  __cil_tmp5 = (unsigned long )excep;
#line 61
  __cil_tmp6 = __cil_tmp5 + 24;
#line 61
  mem_16 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp6;
#line 61
  cf = *mem_16;
  {
#line 64
  while (1) {
    while_2_continue: /* CIL Label */ ;
    {
#line 64
    __cil_tmp7 = (struct __UTAC__CFLOW_FUNC *)0;
#line 64
    __cil_tmp8 = (unsigned long )__cil_tmp7;
#line 64
    __cil_tmp9 = (unsigned long )cf;
#line 64
    if (__cil_tmp9 != __cil_tmp8) {

    } else {
      goto while_2_break;
    }
    }
    {
#line 65
    mem_17 = (int (**)(int  , int  ))cf;
#line 65
    __cil_tmp10 = *mem_17;
#line 65
    __cil_tmp11 = (unsigned long )cf;
#line 65
    __cil_tmp12 = __cil_tmp11 + 8;
#line 65
    mem_18 = (int *)__cil_tmp12;
#line 65
    __cil_tmp13 = *mem_18;
#line 65
    (*__cil_tmp10)(4, __cil_tmp13);
#line 66
    __cil_tmp14 = (unsigned long )cf;
#line 66
    __cil_tmp15 = __cil_tmp14 + 16;
#line 66
    mem_19 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp15;
#line 66
    cf = *mem_19;
    }
  }
  while_2_break: /* CIL Label */ ;
  }
  {
#line 69
  __utac__exception__cf_handler_free(exception);
  }
#line 732 "libacc.c"
  return;
}
}
#line 80 "libacc.c"
void *__utac__error_stack_mgt(void *env , int mode , int count ) ;
#line 80 "libacc.c"
static struct __ACC__ERR *head  =    (struct __ACC__ERR *)0;
#line 79 "libacc.c"
void *__utac__error_stack_mgt(void *env , int mode , int count ) 
{ void *retValue_acc ;
  struct __ACC__ERR *new ;
  void *tmp ;
  struct __ACC__ERR *temp ;
  struct __ACC__ERR *next ;
  void *excep ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void *__cil_tmp17 ;
  void **mem_18 ;
  struct __ACC__ERR **mem_19 ;
  struct __ACC__ERR **mem_20 ;
  void **mem_21 ;
  struct __ACC__ERR **mem_22 ;
  void **mem_23 ;
  void **mem_24 ;

  {
#line 82 "libacc.c"
  if (count == 0) {
#line 758 "libacc.c"
    return (retValue_acc);
  } else {

  }
#line 86 "libacc.c"
  if (mode == 0) {
    {
#line 87
    tmp = malloc(16UL);
#line 87
    new = (struct __ACC__ERR *)tmp;
#line 88
    mem_18 = (void **)new;
#line 88
    *mem_18 = env;
#line 89
    __cil_tmp10 = (unsigned long )new;
#line 89
    __cil_tmp11 = __cil_tmp10 + 8;
#line 89
    mem_19 = (struct __ACC__ERR **)__cil_tmp11;
#line 89
    *mem_19 = head;
#line 90
    head = new;
#line 776 "libacc.c"
    retValue_acc = (void *)new;
    }
#line 778
    return (retValue_acc);
  } else {

  }
#line 94 "libacc.c"
  if (mode == 1) {
#line 95
    temp = head;
    {
#line 98
    while (1) {
      while_3_continue: /* CIL Label */ ;
#line 98
      if (count > 1) {

      } else {
        goto while_3_break;
      }
      {
#line 99
      __cil_tmp12 = (unsigned long )temp;
#line 99
      __cil_tmp13 = __cil_tmp12 + 8;
#line 99
      mem_20 = (struct __ACC__ERR **)__cil_tmp13;
#line 99
      next = *mem_20;
#line 100
      mem_21 = (void **)temp;
#line 100
      excep = *mem_21;
#line 101
      __cil_tmp14 = (void *)temp;
#line 101
      free(__cil_tmp14);
#line 102
      __utac__exception__cf_handler_reset(excep);
#line 103
      temp = next;
#line 104
      count = count - 1;
      }
    }
    while_3_break: /* CIL Label */ ;
    }
    {
#line 107
    __cil_tmp15 = (unsigned long )temp;
#line 107
    __cil_tmp16 = __cil_tmp15 + 8;
#line 107
    mem_22 = (struct __ACC__ERR **)__cil_tmp16;
#line 107
    head = *mem_22;
#line 108
    mem_23 = (void **)temp;
#line 108
    excep = *mem_23;
#line 109
    __cil_tmp17 = (void *)temp;
#line 109
    free(__cil_tmp17);
#line 110
    __utac__exception__cf_handler_reset(excep);
#line 820 "libacc.c"
    retValue_acc = excep;
    }
#line 822
    return (retValue_acc);
  } else {

  }
#line 114
  if (mode == 2) {
#line 118 "libacc.c"
    if (head) {
#line 831
      mem_24 = (void **)head;
#line 831
      retValue_acc = *mem_24;
#line 833
      return (retValue_acc);
    } else {
#line 837 "libacc.c"
      retValue_acc = (void *)0;
#line 839
      return (retValue_acc);
    }
  } else {

  }
#line 846 "libacc.c"
  return (retValue_acc);
}
}
#line 122 "libacc.c"
void *__utac__get_this_arg(int i , struct JoinPoint *this ) 
{ void *retValue_acc ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void **__cil_tmp10 ;
  void **__cil_tmp11 ;
  int *mem_12 ;
  void ***mem_13 ;

  {
#line 123
  if (i > 0) {
    {
#line 123
    __cil_tmp4 = (unsigned long )this;
#line 123
    __cil_tmp5 = __cil_tmp4 + 16;
#line 123
    mem_12 = (int *)__cil_tmp5;
#line 123
    __cil_tmp6 = *mem_12;
#line 123
    if (i <= __cil_tmp6) {

    } else {
      {
#line 123
      __assert_fail("i > 0 && i <= this->argsCount", "libacc.c",
                    123U, "__utac__get_this_arg");
      }
    }
    }
  } else {
    {
#line 123
    __assert_fail("i > 0 && i <= this->argsCount", "libacc.c",
                  123U, "__utac__get_this_arg");
    }
  }
#line 870 "libacc.c"
  __cil_tmp7 = i - 1;
#line 870
  __cil_tmp8 = (unsigned long )this;
#line 870
  __cil_tmp9 = __cil_tmp8 + 8;
#line 870
  mem_13 = (void ***)__cil_tmp9;
#line 870
  __cil_tmp10 = *mem_13;
#line 870
  __cil_tmp11 = __cil_tmp10 + __cil_tmp7;
#line 870
  retValue_acc = *__cil_tmp11;
#line 872
  return (retValue_acc);
#line 879
  return (retValue_acc);
}
}
#line 129 "libacc.c"
char const   *__utac__get_this_argtype(int i , struct JoinPoint *this ) 
{ char const   *retValue_acc ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  char const   **__cil_tmp10 ;
  char const   **__cil_tmp11 ;
  int *mem_12 ;
  char const   ***mem_13 ;

  {
#line 131
  if (i > 0) {
    {
#line 131
    __cil_tmp4 = (unsigned long )this;
#line 131
    __cil_tmp5 = __cil_tmp4 + 16;
#line 131
    mem_12 = (int *)__cil_tmp5;
#line 131
    __cil_tmp6 = *mem_12;
#line 131
    if (i <= __cil_tmp6) {

    } else {
      {
#line 131
      __assert_fail("i > 0 && i <= this->argsCount", "libacc.c",
                    131U, "__utac__get_this_argtype");
      }
    }
    }
  } else {
    {
#line 131
    __assert_fail("i > 0 && i <= this->argsCount", "libacc.c",
                  131U, "__utac__get_this_argtype");
    }
  }
#line 903 "libacc.c"
  __cil_tmp7 = i - 1;
#line 903
  __cil_tmp8 = (unsigned long )this;
#line 903
  __cil_tmp9 = __cil_tmp8 + 24;
#line 903
  mem_13 = (char const   ***)__cil_tmp9;
#line 903
  __cil_tmp10 = *mem_13;
#line 903
  __cil_tmp11 = __cil_tmp10 + __cil_tmp7;
#line 903
  retValue_acc = *__cil_tmp11;
#line 905
  return (retValue_acc);
#line 912
  return (retValue_acc);
}
}
#line 1 "Test.o"
#pragma merger(0,"Test.i","")
#line 8 "Test.c"
int cleanupTimeShifts  =    4;
#line 11 "Test.c"
#line 17 "Test.c"
void cleanup(void) 
{ int i ;
  int __cil_tmp2 ;

  {
  {
#line 20
  timeShift();
#line 22
  i = 0;
  }
  {
#line 22
  while (1) {
    while_4_continue: /* CIL Label */ ;
    {
#line 22
    __cil_tmp2 = cleanupTimeShifts - 1;
#line 22
    if (i < __cil_tmp2) {

    } else {
      goto while_4_break;
    }
    }
    {
#line 23
    timeShift();
#line 22
    i = i + 1;
    }
  }
  while_4_break: /* CIL Label */ ;
  }
#line 1111 "Test.c"
  return;
}
}
#line 56 "Test.c"
void Specification2(void) 
{ 

  {
  {
#line 57
  timeShift();
#line 57
  printPump();
#line 58
  timeShift();
#line 58
  printPump();
#line 59
  timeShift();
#line 59
  printPump();
#line 60
  waterRise();
#line 60
  printPump();
#line 61
  timeShift();
#line 61
  printPump();
#line 62
  changeMethaneLevel();
#line 62
  printPump();
#line 63
  timeShift();
#line 63
  printPump();
#line 64
  cleanup();
  }
#line 1159 "Test.c"
  return;
}
}
#line 67 "Test.c"
void setup(void) 
{ 

  {
#line 1177 "Test.c"
  return;
}
}
#line 74 "Test.c"
void runTest(void) 
{ 

  {
  {
#line 1190 "Test.c"
  __utac_acc__Specification2_spec__1();
#line 77 "Test.c"
  test();
  }
#line 1205 "Test.c"
  return;
}
}
#line 82 "Test.c"
int main(void) 
{ int retValue_acc ;
  int tmp ;

  {
  {
#line 83
  select_helpers();
#line 84
  select_features();
#line 85
  tmp = valid_product();
  }
#line 85
  if (tmp) {
    {
#line 86
    setup();
#line 87
    runTest();
    }
  } else {

  }
#line 1234 "Test.c"
  retValue_acc = 0;
#line 1236
  return (retValue_acc);
#line 1243
  return (retValue_acc);
}
}
