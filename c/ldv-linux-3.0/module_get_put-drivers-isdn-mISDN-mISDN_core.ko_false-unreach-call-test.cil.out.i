extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct list_head {
   struct list_head *next ;
};
struct mISDNtimerdev {
   struct list_head expired ;
};
struct file {
   void *private ;
};
extern void *__kmalloc(size_t , gfp_t ) ;
int mISDN_open(struct file *filep )
{ struct mISDNtimerdev *dev ;
  dev = __kmalloc(208UL, 208U);
  if (dev == 0) {
    return (-12);
  }
  dev->expired.next = 1;
  filep->private = (void *)dev;
  return (0);
}
int mISDN_read(struct file *filep)
{ struct mISDNtimerdev *dev ;
  struct list_head task_list ;
  dev = (struct mISDNtimerdev *)filep->private;
  if (dev != 0U) { }
  task_list.next = 0;
  if (dev->expired.next != 1) {
      return -14;
  }
  return 0;
}
int main(void)
{ struct file *var_group1 ;
  int res ;
  mISDN_open(var_group1);
  res = mISDN_read(var_group1);
  if (res < 0L) {
    ERROR: __VERIFIER_error();
  }
  return 0;
}
void *external_alloc(void);
void *__kmalloc(arg0, arg1) {
  return (void *)external_alloc();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
