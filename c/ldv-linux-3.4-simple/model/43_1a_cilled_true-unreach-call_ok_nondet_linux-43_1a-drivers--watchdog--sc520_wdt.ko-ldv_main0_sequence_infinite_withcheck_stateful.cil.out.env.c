// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Function: __module_get
// with type: void __module_get(struct module *)
// with return type: void
void __module_get(struct module *arg0) {
  // Void type
  return;
}

// Function: _copy_to_user
// with type: unsigned long int _copy_to_user(void *, const void *, unsigned int)
// with return type: unsigned long int
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  // Simple type
  return __VERIFIER_nondet_ulong();
}

// Function: _raw_spin_lock
// with type: void _raw_spin_lock(raw_spinlock_t *)
// with return type: void
void _raw_spin_lock(raw_spinlock_t *arg0) {
  // Void type
  return;
}

// Function: _raw_spin_unlock
// with type: void _raw_spin_unlock(raw_spinlock_t *)
// with return type: void
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  // Void type
  return;
}

// Function: _raw_spin_unlock_irqrestore
// with type: void _raw_spin_unlock_irqrestore(raw_spinlock_t *, unsigned long)
// with return type: void
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  // Void type
  return;
}

// Function: del_timer
// with type: int del_timer(struct timer_list *)
// with return type: int
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: ioremap_nocache
// with type: void *ioremap_nocache(resource_size_t , unsigned long)
// with return type: (void)*
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: iounmap
// with type: void iounmap(volatile void *)
// with return type: void
void iounmap(volatile void *arg0) {
  // Void type
  return;
}

// Function: kmem_cache_alloc
// with type: void *kmem_cache_alloc(struct kmem_cache *, gfp_t )
// with return type: (void)*
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: ldv_check_final_state
// with type: void ldv_check_final_state()
// with return type: void
void ldv_check_final_state() {
  // Void type
  return;
}

// Function: ldv_check_return_value
// with type: void ldv_check_return_value(int)
// with return type: void
void ldv_check_return_value(int arg0) {
  // Void type
  return;
}

// Function: ldv_initialize
// with type: void ldv_initialize()
// with return type: void
void ldv_initialize() {
  // Void type
  return;
}

// Function: ldv_some_page
// with type: struct page *ldv_some_page()
// with return type: (struct page)*
void *external_alloc(void);
struct page *ldv_some_page() {
  // Pointer type
  return (struct page *)external_alloc();
}

// Function: might_fault
// with type: void might_fault()
// with return type: void
void might_fault() {
  // Void type
  return;
}

// Function: misc_deregister
// with type: int misc_deregister(struct miscdevice *)
// with return type: int
int __VERIFIER_nondet_int(void);
int misc_deregister(struct miscdevice *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: misc_register
// with type: int misc_register(struct miscdevice *)
// with return type: int
int __VERIFIER_nondet_int(void);
int misc_register(struct miscdevice *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: mod_timer
// with type: int mod_timer(struct timer_list *, unsigned long)
// with return type: int
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: nonseekable_open
// with type: int nonseekable_open(struct inode *, struct file *)
// with return type: int
int __VERIFIER_nondet_int(void);
int nonseekable_open(struct inode *arg0, struct file *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: printk
// with type: int printk(const char *, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: register_reboot_notifier
// with type: int register_reboot_notifier(struct notifier_block *)
// with return type: int
int __VERIFIER_nondet_int(void);
int register_reboot_notifier(struct notifier_block *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: unregister_reboot_notifier
// with type: int unregister_reboot_notifier(struct notifier_block *)
// with return type: int
int __VERIFIER_nondet_int(void);
int unregister_reboot_notifier(struct notifier_block *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

