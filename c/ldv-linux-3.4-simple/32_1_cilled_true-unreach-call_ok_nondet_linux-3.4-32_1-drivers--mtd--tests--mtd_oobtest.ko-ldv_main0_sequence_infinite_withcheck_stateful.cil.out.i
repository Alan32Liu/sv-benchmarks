extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned char u_char;
typedef unsigned long u_long;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned int gfp_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head *head ) ;
};
typedef void (*ctor_fn_t)(void);
struct module;
struct module;
struct device;
struct device;
struct completion;
struct completion;
struct pt_regs;
struct pt_regs;
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct task_struct;
struct mm_struct;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_15 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_16 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_14 {
   struct __anonstruct____missing_field_name_15 __annonCompField5 ;
   struct __anonstruct____missing_field_name_16 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_14 __annonCompField7 ;
} __attribute__((__packed__)) ;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_20 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_20 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct file;
struct page;
struct thread_struct;
struct thread_struct;
struct mm_struct;
struct desc_struct;
struct task_struct;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_24 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_24 __annonCompField8 ;
};
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct pt_regs;
struct cpumask {
   unsigned long bits[((4096UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct static_key;
struct pt_regs;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_31 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_32 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_30 {
   struct __anonstruct____missing_field_name_31 __annonCompField12 ;
   struct __anonstruct____missing_field_name_32 __annonCompField13 ;
};
union __anonunion____missing_field_name_33 {
   u32 padding1[12] ;
   u32 sw_reserved[12] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_30 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32] ;
   u32 xmm_space[64] ;
   u32 padding[12] ;
   union __anonunion____missing_field_name_33 __annonCompField15 ;
} __attribute__((__aligned__(16))) ;
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2] ;
   u64 reserved2[5] ;
} __attribute__((__packed__)) ;
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
} __attribute__((__packed__, __aligned__(64))) ;
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct raw_spinlock raw_spinlock_t;
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct __anonstruct_nodemask_t_42 {
   unsigned long bits[(((unsigned long )(1 << 10) + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct __anonstruct_nodemask_t_42 nodemask_t;
struct page;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct page;
struct device;
struct device;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16] ;
};
struct hrtimer;
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct device;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct vm_area_struct;
struct vm_area_struct;
struct page;
struct vm_area_struct;
struct completion;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct nsproxy;
struct cred;
struct cred;
struct file;
struct task_struct;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct file;
struct sock;
struct sock;
struct kobject;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct file;
struct vm_area_struct;
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
struct tracepoint;
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module;
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t count ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
struct exception_table_entry;
struct notifier_block;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
struct klist_node;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device;
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct module;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct notifier_block;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
                    size_t count ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device *dev ) ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned int active : 1 ;
};
struct otp_info {
   __u32 start ;
   __u32 length ;
   __u32 locked ;
};
struct nand_oobfree {
   __u32 offset ;
   __u32 length ;
};
struct mtd_ecc_stats {
   __u32 corrected ;
   __u32 failed ;
   __u32 badblocks ;
   __u32 bbtblocks ;
};
struct mtd_info;
struct erase_info {
   struct mtd_info *mtd ;
   uint64_t addr ;
   uint64_t len ;
   uint64_t fail_addr ;
   u_long time ;
   u_long retries ;
   unsigned int dev ;
   unsigned int cell ;
   void (*callback)(struct erase_info *self ) ;
   u_long priv ;
   u_char state ;
   struct erase_info *next ;
};
struct mtd_erase_region_info {
   uint64_t offset ;
   uint32_t erasesize ;
   uint32_t numblocks ;
   unsigned long *lockmap ;
};
struct mtd_oob_ops {
   unsigned int mode ;
   size_t len ;
   size_t retlen ;
   size_t ooblen ;
   size_t oobretlen ;
   uint32_t ooboffs ;
   uint8_t *datbuf ;
   uint8_t *oobbuf ;
};
struct nand_ecclayout {
   __u32 eccbytes ;
   __u32 eccpos[448] ;
   __u32 oobavail ;
   struct nand_oobfree oobfree[32] ;
};
struct module;
struct backing_dev_info;
struct mtd_info {
   u_char type ;
   uint32_t flags ;
   uint64_t size ;
   uint32_t erasesize ;
   uint32_t writesize ;
   uint32_t writebufsize ;
   uint32_t oobsize ;
   uint32_t oobavail ;
   unsigned int erasesize_shift ;
   unsigned int writesize_shift ;
   unsigned int erasesize_mask ;
   unsigned int writesize_mask ;
   char const *name ;
   int index ;
   struct nand_ecclayout *ecclayout ;
   unsigned int ecc_strength ;
   int numeraseregions ;
   struct mtd_erase_region_info *eraseregions ;
   int (*_erase)(struct mtd_info *mtd , struct erase_info *instr ) ;
   int (*_point)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                 void **virt , resource_size_t *phys ) ;
   int (*_unpoint)(struct mtd_info *mtd , loff_t from , size_t len ) ;
   unsigned long (*_get_unmapped_area)(struct mtd_info *mtd , unsigned long len ,
                                       unsigned long offset , unsigned long flags ) ;
   int (*_read)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                u_char *buf ) ;
   int (*_write)(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                 u_char const *buf ) ;
   int (*_panic_write)(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                       u_char const *buf ) ;
   int (*_read_oob)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) ;
   int (*_write_oob)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ) ;
   int (*_get_fact_prot_info)(struct mtd_info *mtd , struct otp_info *buf , size_t len ) ;
   int (*_read_fact_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                              u_char *buf ) ;
   int (*_get_user_prot_info)(struct mtd_info *mtd , struct otp_info *buf , size_t len ) ;
   int (*_read_user_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                              u_char *buf ) ;
   int (*_write_user_prot_reg)(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                               u_char *buf ) ;
   int (*_lock_user_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len ) ;
   int (*_writev)(struct mtd_info *mtd , struct kvec const *vecs , unsigned long count ,
                  loff_t to , size_t *retlen ) ;
   void (*_sync)(struct mtd_info *mtd ) ;
   int (*_lock)(struct mtd_info *mtd , loff_t ofs , uint64_t len ) ;
   int (*_unlock)(struct mtd_info *mtd , loff_t ofs , uint64_t len ) ;
   int (*_is_locked)(struct mtd_info *mtd , loff_t ofs , uint64_t len ) ;
   int (*_block_isbad)(struct mtd_info *mtd , loff_t ofs ) ;
   int (*_block_markbad)(struct mtd_info *mtd , loff_t ofs ) ;
   int (*_suspend)(struct mtd_info *mtd ) ;
   void (*_resume)(struct mtd_info *mtd ) ;
   int (*_get_device)(struct mtd_info *mtd ) ;
   void (*_put_device)(struct mtd_info *mtd ) ;
   struct backing_dev_info *backing_dev_info ;
   struct notifier_block reboot_notifier ;
   struct mtd_ecc_stats ecc_stats ;
   int subpage_sft ;
   void *priv ;
   struct module *owner ;
   struct device dev ;
   int usecount ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct task_struct;
struct kernel_cap_struct {
   __u32 cap[2] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct user_namespace;
struct user_namespace;
struct prio_tree_node;
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct address_space;
struct address_space;
union __anonunion____missing_field_name_204 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_208 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_207 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_208 __annonCompField34 ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion____missing_field_name_207 __annonCompField35 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_205 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_206 __annonCompField36 ;
};
struct __anonstruct____missing_field_name_203 {
   union __anonunion____missing_field_name_204 __annonCompField33 ;
   union __anonunion____missing_field_name_205 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_210 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_209 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_210 __annonCompField39 ;
};
union __anonunion____missing_field_name_211 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_203 __annonCompField38 ;
   union __anonunion____missing_field_name_209 __annonCompField40 ;
   union __anonunion____missing_field_name_211 __annonCompField41 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_213 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_212 {
   struct __anonstruct_vm_set_213 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_212 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   atomic_long_t count[3] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file *filp , unsigned long addr , unsigned long len ,
                                      unsigned long pgoff , unsigned long flags ) ;
   void (*unmap_area)(struct mm_struct *mm , unsigned long addr ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long reserved_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
};
typedef unsigned long cputime_t;
struct task_struct;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct siginfo;
struct __anonstruct_sigset_t_215 {
   unsigned long sig[1] ;
};
typedef struct __anonstruct_sigset_t_215 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_217 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_218 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[sizeof(__kernel_uid32_t ) - sizeof(int )] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_219 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_220 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_221 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_222 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_216 {
   int _pad[(128UL - 4UL * sizeof(int )) / sizeof(int )] ;
   struct __anonstruct__kill_217 _kill ;
   struct __anonstruct__timer_218 _timer ;
   struct __anonstruct__rt_219 _rt ;
   struct __anonstruct__sigchld_220 _sigchld ;
   struct __anonstruct__sigfault_221 _sigfault ;
   struct __anonstruct__sigpoll_222 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_216 _sifields ;
};
typedef struct siginfo siginfo_t;
struct siginfo;
struct task_struct;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct timespec;
struct pt_regs;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3] ;
   struct rcu_head rcu ;
   struct upid numbers[1] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct pid_namespace;
struct __anonstruct_seccomp_t_225 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_225 seccomp_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct task_struct;
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct task_struct;
struct latency_record {
   unsigned long backtrace[12] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct key;
struct user_struct;
struct signal_struct;
struct signal_struct;
struct cred;
struct key_type;
struct key_type;
struct keyring_list;
struct keyring_list;
struct key_user;
union __anonunion____missing_field_name_226 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_227 {
   struct list_head link ;
   unsigned long x[2] ;
   void *p[2] ;
   int reject_error ;
};
union __anonunion_payload_228 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_226 __annonCompField42 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_227 type_data ;
   union __anonunion_payload_228 payload ;
};
struct audit_context;
struct audit_context;
struct user_struct;
struct cred;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32] ;
   gid_t *blocks[0] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct futex_pi_state;
struct robust_list_head;
struct robust_list_head;
struct bio_list;
struct bio_list;
struct fs_struct;
struct fs_struct;
struct perf_event_context;
struct perf_event_context;
struct blk_plug;
struct blk_plug;
struct cfs_rq;
struct cfs_rq;
struct task_struct;
struct nsproxy;
struct user_namespace;
struct mm_struct;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   int oom_adj ;
   int oom_score_adj ;
   int oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   uid_t uid ;
   struct user_namespace *user_ns ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct io_context;
struct audit_context;
struct mempolicy;
struct pipe_inode_info;
struct pipe_inode_info;
struct rq;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*dequeue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*yield_task)(struct rq *rq ) ;
   bool (*yield_to_task)(struct rq *rq , struct task_struct *p , bool preempt ) ;
   void (*check_preempt_curr)(struct rq *rq , struct task_struct *p , int flags ) ;
   struct task_struct *(*pick_next_task)(struct rq *rq ) ;
   void (*put_prev_task)(struct rq *rq , struct task_struct *p ) ;
   int (*select_task_rq)(struct task_struct *p , int sd_flag , int flags ) ;
   void (*pre_schedule)(struct rq *this_rq , struct task_struct *task ) ;
   void (*post_schedule)(struct rq *this_rq ) ;
   void (*task_waking)(struct task_struct *task ) ;
   void (*task_woken)(struct rq *this_rq , struct task_struct *task ) ;
   void (*set_cpus_allowed)(struct task_struct *p , struct cpumask const *newmask ) ;
   void (*rq_online)(struct rq *rq ) ;
   void (*rq_offline)(struct rq *rq ) ;
   void (*set_curr_task)(struct rq *rq ) ;
   void (*task_tick)(struct rq *rq , struct task_struct *p , int queued ) ;
   void (*task_fork)(struct task_struct *p ) ;
   void (*switched_from)(struct rq *this_rq , struct task_struct *task ) ;
   void (*switched_to)(struct rq *this_rq , struct task_struct *task ) ;
   void (*prio_changed)(struct rq *this_rq , struct task_struct *task , int oldprio ) ;
   unsigned int (*get_rr_interval)(struct rq *rq , struct task_struct *task ) ;
   void (*task_move_group)(struct task_struct *p , int on_rq ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   int nr_cpus_allowed ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int did_exec : 1 ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   unsigned int irq_thread : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   struct cred *replacement_session_keyring ;
   char comm[16] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void *priv ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
struct pid_namespace;
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
extern void __might_sleep(char const *file , int line , int preempt_offset ) ;
extern void *memset(void *s , int c , size_t n ) ;
extern int memcmp(void const *cs , void const *ct , unsigned long count ) ;
__inline static long __attribute__((__warn_unused_result__)) PTR_ERR(void const *ptr ) __attribute__((__no_instrument_function__)) ;
__inline static long __attribute__((__warn_unused_result__)) PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long __attribute__((__warn_unused_result__)) IS_ERR(void const *ptr ) __attribute__((__no_instrument_function__)) ;
__inline static long __attribute__((__warn_unused_result__)) IS_ERR(void const *ptr )
{ long tmp ;
  unsigned long __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  long __cil_tmp7 ;
  {
  {
  __cil_tmp3 = (unsigned long )ptr;
  __cil_tmp4 = __cil_tmp3 >= 0xfffffffffffff001UL;
  __cil_tmp5 = ! __cil_tmp4;
  __cil_tmp6 = ! __cil_tmp5;
  __cil_tmp7 = (long )__cil_tmp6;
  tmp = ldv__builtin_expect(__cil_tmp7, 0L);
  }
  return (tmp);
}
}
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern struct kernel_param_ops param_ops_int ;
int init_module(void) ;
void cleanup_module(void) ;
extern int mtd_erase(struct mtd_info *mtd , struct erase_info *instr ) ;
__inline static int mtd_read_oob(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) __attribute__((__no_instrument_function__)) ;
__inline static int mtd_read_oob(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops )
{ size_t tmp ;
  int tmp___0 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int (*__cil_tmp12)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int (*__cil_tmp15)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) ;
  {
  tmp = (size_t )0;
  __cil_tmp6 = (unsigned long )ops;
  __cil_tmp7 = __cil_tmp6 + 32;
  *((size_t *)__cil_tmp7) = tmp;
  __cil_tmp8 = (unsigned long )ops;
  __cil_tmp9 = __cil_tmp8 + 16;
  *((size_t *)__cil_tmp9) = tmp;
  {
  __cil_tmp10 = (unsigned long )mtd;
  __cil_tmp11 = __cil_tmp10 + 152;
  __cil_tmp12 = *((int (**)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ))__cil_tmp11);
  if (! __cil_tmp12) {
    return (-95);
  } else {
  }
  }
  {
  __cil_tmp13 = (unsigned long )mtd;
  __cil_tmp14 = __cil_tmp13 + 152;
  __cil_tmp15 = *((int (**)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ))__cil_tmp14);
  tmp___0 = (*__cil_tmp15)(mtd, from, ops);
  }
  return (tmp___0);
}
}
__inline static int mtd_write_oob(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ) __attribute__((__no_instrument_function__)) ;
__inline static int mtd_write_oob(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops )
{ size_t tmp ;
  int tmp___0 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int (*__cil_tmp12)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ) ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  uint32_t __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int (*__cil_tmp19)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ) ;
  {
  tmp = (size_t )0;
  __cil_tmp6 = (unsigned long )ops;
  __cil_tmp7 = __cil_tmp6 + 32;
  *((size_t *)__cil_tmp7) = tmp;
  __cil_tmp8 = (unsigned long )ops;
  __cil_tmp9 = __cil_tmp8 + 16;
  *((size_t *)__cil_tmp9) = tmp;
  {
  __cil_tmp10 = (unsigned long )mtd;
  __cil_tmp11 = __cil_tmp10 + 160;
  __cil_tmp12 = *((int (**)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ))__cil_tmp11);
  if (! __cil_tmp12) {
    return (-95);
  } else {
  }
  }
  {
  __cil_tmp13 = (unsigned long )mtd;
  __cil_tmp14 = __cil_tmp13 + 4;
  __cil_tmp15 = *((uint32_t *)__cil_tmp14);
  __cil_tmp16 = __cil_tmp15 & 1024U;
  if (! __cil_tmp16) {
    return (-30);
  } else {
  }
  }
  {
  __cil_tmp17 = (unsigned long )mtd;
  __cil_tmp18 = __cil_tmp17 + 160;
  __cil_tmp19 = *((int (**)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ))__cil_tmp18);
  tmp___0 = (*__cil_tmp19)(mtd, to, ops);
  }
  return (tmp___0);
}
}
extern int mtd_block_isbad(struct mtd_info *mtd , loff_t ofs ) ;
extern struct mtd_info *get_mtd_device(struct mtd_info *mtd , int num ) ;
extern void put_mtd_device(struct mtd_info *mtd ) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
extern int _cond_resched(void) ;
static int dev = -22;
static char const __param_str_dev[4] = { (char const )'d', (char const )'e', (char const )'v', (char const )'\000'};
static struct kernel_param const __param_dev __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_dev, (struct kernel_param_ops const *)(& param_ops_int), (u16 )292,
    (s16 )0, {(void *)(& dev)}};
static char const __mod_devtype35[17] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'d', (char const )'e', (char const )'v',
        (char const )':', (char const )'i', (char const )'n', (char const )'t',
        (char const )'\000'};
static char const __mod_dev36[34] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'=', (char const )'d', (char const )'e', (char const )'v',
        (char const )':', (char const )'M', (char const )'T', (char const )'D',
        (char const )' ', (char const )'d', (char const )'e', (char const )'v',
        (char const )'i', (char const )'c', (char const )'e', (char const )' ',
        (char const )'n', (char const )'u', (char const )'m', (char const )'b',
        (char const )'e', (char const )'r', (char const )' ', (char const )'t',
        (char const )'o', (char const )' ', (char const )'u', (char const )'s',
        (char const )'e', (char const )'\000'};
static struct mtd_info *mtd ;
static unsigned char *readbuf ;
static unsigned char *writebuf ;
static unsigned char *bbt ;
static int ebcnt ;
static int pgcnt ;
static int errcnt ;
static int use_offset ;
static int use_len ;
static int use_len_max ;
static int vary_offset ;
static unsigned long next = 1UL;
__inline static unsigned int simple_rand(void) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int simple_rand(void)
{ unsigned long __cil_tmp1 ;
  unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  {
  __cil_tmp1 = next * 1103515245UL;
  next = __cil_tmp1 + 12345UL;
  {
  __cil_tmp2 = next / 65536UL;
  __cil_tmp3 = __cil_tmp2 % 32768UL;
  return ((unsigned int )__cil_tmp3);
  }
}
}
__inline static void simple_srand(unsigned long seed ) __attribute__((__no_instrument_function__)) ;
__inline static void simple_srand(unsigned long seed )
{
  {
  next = seed;
  return;
}
}
static void set_random_data(unsigned char *buf , size_t len )
{ size_t i ;
  unsigned int tmp___7 ;
  unsigned char *__cil_tmp5 ;
  {
  i = (size_t )0;
  {
  while (1) {
    while_continue: ;
    if (i < len) {
    } else {
      goto while_break;
    }
    {
    tmp___7 = simple_rand();
    __cil_tmp5 = buf + i;
    *__cil_tmp5 = (unsigned char )tmp___7;
    i = i + 1UL;
    }
  }
  while_break: ;
  }
  return;
}
}
static int erase_eraseblock(int ebnum )
{ int err ;
  struct erase_info ei ;
  loff_t addr ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  uint32_t __cil_tmp7 ;
  uint32_t __cil_tmp8 ;
  uint32_t __cil_tmp9 ;
  void *__cil_tmp10 ;
  struct erase_info *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  uint32_t __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u_char __cil_tmp18 ;
  int __cil_tmp19 ;
  {
  {
  __cil_tmp5 = (unsigned long )mtd;
  __cil_tmp6 = __cil_tmp5 + 16;
  __cil_tmp7 = *((uint32_t *)__cil_tmp6);
  __cil_tmp8 = (uint32_t )ebnum;
  __cil_tmp9 = __cil_tmp8 * __cil_tmp7;
  addr = (loff_t )__cil_tmp9;
  __cil_tmp10 = (void *)(& ei);
  memset(__cil_tmp10, 0, 88UL);
  __cil_tmp11 = & ei;
  *((struct mtd_info **)__cil_tmp11) = mtd;
  __cil_tmp12 = (unsigned long )(& ei) + 8;
  *((uint64_t *)__cil_tmp12) = (uint64_t )addr;
  __cil_tmp13 = (unsigned long )(& ei) + 16;
  __cil_tmp14 = (unsigned long )mtd;
  __cil_tmp15 = __cil_tmp14 + 16;
  __cil_tmp16 = *((uint32_t *)__cil_tmp15);
  *((uint64_t *)__cil_tmp13) = (uint64_t )__cil_tmp16;
  err = mtd_erase(mtd, & ei);
  }
  if (err) {
    {
    printk("<6>mtd_oobtest: error %d while erasing EB %d\n", err, ebnum);
    }
    return (err);
  } else {
  }
  {
  __cil_tmp17 = (unsigned long )(& ei) + 72;
  __cil_tmp18 = *((u_char *)__cil_tmp17);
  __cil_tmp19 = (int )__cil_tmp18;
  if (__cil_tmp19 == 16) {
    {
    printk("<6>mtd_oobtest: some erase error occurred at EB %d\n", ebnum);
    }
    return (-5);
  } else {
  }
  }
  return (0);
}
}
static int erase_whole_device(void)
{ int err ;
  unsigned int i ;
  unsigned int __cil_tmp3 ;
  unsigned char *__cil_tmp4 ;
  int __cil_tmp5 ;
  {
  {
  printk("<6>mtd_oobtest: erasing whole device\n");
  i = 0U;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp3 = (unsigned int )ebcnt;
    if (i < __cil_tmp3) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp4 = bbt + i;
    if (*__cil_tmp4) {
      goto __Cont;
    } else {
    }
    }
    {
    __cil_tmp5 = (int )i;
    err = erase_eraseblock(__cil_tmp5);
    }
    if (err) {
      return (err);
    } else {
    }
    {
    __might_sleep("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5472/dscv_tempdir/dscv/ri/32_1/drivers/mtd/tests/mtd_oobtest.c.common.c",
                  109, 0);
    _cond_resched();
    }
    __Cont:
    i = i + 1U;
  }
  while_break: ;
  }
  {
  printk("<6>mtd_oobtest: erased %u eraseblocks\n", i);
  }
  return (0);
}
}
static void do_vary_offset(void)
{
  {
  use_len = use_len - 1;
  if (use_len < 1) {
    use_offset = use_offset + 1;
    if (use_offset >= use_len_max) {
      use_offset = 0;
    } else {
    }
    use_len = use_len_max - use_offset;
  } else {
  }
  return;
}
}
static int write_eraseblock(int ebnum )
{ int i ;
  struct mtd_oob_ops ops ;
  int err ;
  loff_t addr ;
  int tmp___7 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  uint32_t __cil_tmp9 ;
  uint32_t __cil_tmp10 ;
  uint32_t __cil_tmp11 ;
  size_t __cil_tmp12 ;
  struct mtd_oob_ops *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  void *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  size_t __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  size_t __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  uint32_t __cil_tmp27 ;
  loff_t __cil_tmp28 ;
  {
  err = 0;
  __cil_tmp7 = (unsigned long )mtd;
  __cil_tmp8 = __cil_tmp7 + 16;
  __cil_tmp9 = *((uint32_t *)__cil_tmp8);
  __cil_tmp10 = (uint32_t )ebnum;
  __cil_tmp11 = __cil_tmp10 * __cil_tmp9;
  addr = (loff_t )__cil_tmp11;
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < pgcnt) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp12 = (size_t )use_len;
    set_random_data(writebuf, __cil_tmp12);
    __cil_tmp13 = & ops;
    *((unsigned int *)__cil_tmp13) = 1U;
    __cil_tmp14 = (unsigned long )(& ops) + 8;
    *((size_t *)__cil_tmp14) = (size_t )0;
    __cil_tmp15 = (unsigned long )(& ops) + 16;
    *((size_t *)__cil_tmp15) = (size_t )0;
    __cil_tmp16 = (unsigned long )(& ops) + 24;
    *((size_t *)__cil_tmp16) = (size_t )use_len;
    __cil_tmp17 = (unsigned long )(& ops) + 32;
    *((size_t *)__cil_tmp17) = (size_t )0;
    __cil_tmp18 = (unsigned long )(& ops) + 40;
    *((uint32_t *)__cil_tmp18) = (uint32_t )use_offset;
    __cil_tmp19 = (unsigned long )(& ops) + 48;
    __cil_tmp20 = (void *)0;
    *((uint8_t **)__cil_tmp19) = (uint8_t *)__cil_tmp20;
    __cil_tmp21 = (unsigned long )(& ops) + 56;
    *((uint8_t **)__cil_tmp21) = writebuf;
    err = mtd_write_oob(mtd, addr, & ops);
    }
    if (err) {
      goto _L;
    } else {
      {
      __cil_tmp22 = (size_t )use_len;
      __cil_tmp23 = (unsigned long )(& ops) + 32;
      __cil_tmp24 = *((size_t *)__cil_tmp23);
      if (__cil_tmp24 != __cil_tmp22) {
        _L:
        {
        printk("<6>mtd_oobtest: error: writeoob failed at %#llx\n", addr);
        printk("<6>mtd_oobtest: error: use_len %d, use_offset %d\n", use_len, use_offset);
        errcnt = errcnt + 1;
        }
        if (err) {
          tmp___7 = err;
        } else {
          tmp___7 = -1;
        }
        return (tmp___7);
      } else {
      }
      }
    }
    if (vary_offset) {
      {
      do_vary_offset();
      }
    } else {
    }
    i = i + 1;
    __cil_tmp25 = (unsigned long )mtd;
    __cil_tmp26 = __cil_tmp25 + 20;
    __cil_tmp27 = *((uint32_t *)__cil_tmp26);
    __cil_tmp28 = (loff_t )__cil_tmp27;
    addr = addr + __cil_tmp28;
  }
  while_break: ;
  }
  return (err);
}
}
static int write_whole_device(void)
{ int err ;
  unsigned int i ;
  unsigned int __cil_tmp3 ;
  unsigned char *__cil_tmp4 ;
  int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  {
  {
  printk("<6>mtd_oobtest: writing OOBs of whole device\n");
  i = 0U;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp3 = (unsigned int )ebcnt;
    if (i < __cil_tmp3) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp4 = bbt + i;
    if (*__cil_tmp4) {
      goto __Cont;
    } else {
    }
    }
    {
    __cil_tmp5 = (int )i;
    err = write_eraseblock(__cil_tmp5);
    }
    if (err) {
      return (err);
    } else {
    }
    {
    __cil_tmp6 = i % 256U;
    if (__cil_tmp6 == 0U) {
      {
      printk("<6>mtd_oobtest: written up to eraseblock %u\n", i);
      }
    } else {
    }
    }
    {
    __might_sleep("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5472/dscv_tempdir/dscv/ri/32_1/drivers/mtd/tests/mtd_oobtest.c.common.c",
                  173, 0);
    _cond_resched();
    }
    __Cont:
    i = i + 1U;
  }
  while_break: ;
  }
  {
  printk("<6>mtd_oobtest: written %u eraseblocks\n", i);
  }
  return (0);
}
}
static int verify_eraseblock(int ebnum )
{ int i ;
  struct mtd_oob_ops ops ;
  int err ;
  loff_t addr ;
  int tmp___7 ;
  int tmp___8 ;
  int k ;
  int tmp___9 ;
  int tmp___10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  uint32_t __cil_tmp13 ;
  uint32_t __cil_tmp14 ;
  uint32_t __cil_tmp15 ;
  size_t __cil_tmp16 ;
  struct mtd_oob_ops *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  void *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  size_t __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  size_t __cil_tmp28 ;
  void const *__cil_tmp29 ;
  void const *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  struct nand_ecclayout *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  __u32 __cil_tmp37 ;
  __u32 __cil_tmp38 ;
  struct mtd_oob_ops *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  struct nand_ecclayout *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  __u32 __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  void *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  struct nand_ecclayout *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  __u32 __cil_tmp59 ;
  size_t __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  size_t __cil_tmp62 ;
  unsigned char *__cil_tmp63 ;
  void const *__cil_tmp64 ;
  void const *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned char *__cil_tmp67 ;
  unsigned char __cil_tmp68 ;
  int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  struct nand_ecclayout *__cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  __u32 __cil_tmp75 ;
  __u32 __cil_tmp76 ;
  unsigned char *__cil_tmp77 ;
  unsigned char __cil_tmp78 ;
  int __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  uint32_t __cil_tmp82 ;
  loff_t __cil_tmp83 ;
  {
  err = 0;
  __cil_tmp11 = (unsigned long )mtd;
  __cil_tmp12 = __cil_tmp11 + 16;
  __cil_tmp13 = *((uint32_t *)__cil_tmp12);
  __cil_tmp14 = (uint32_t )ebnum;
  __cil_tmp15 = __cil_tmp14 * __cil_tmp13;
  addr = (loff_t )__cil_tmp15;
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < pgcnt) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp16 = (size_t )use_len;
    set_random_data(writebuf, __cil_tmp16);
    __cil_tmp17 = & ops;
    *((unsigned int *)__cil_tmp17) = 1U;
    __cil_tmp18 = (unsigned long )(& ops) + 8;
    *((size_t *)__cil_tmp18) = (size_t )0;
    __cil_tmp19 = (unsigned long )(& ops) + 16;
    *((size_t *)__cil_tmp19) = (size_t )0;
    __cil_tmp20 = (unsigned long )(& ops) + 24;
    *((size_t *)__cil_tmp20) = (size_t )use_len;
    __cil_tmp21 = (unsigned long )(& ops) + 32;
    *((size_t *)__cil_tmp21) = (size_t )0;
    __cil_tmp22 = (unsigned long )(& ops) + 40;
    *((uint32_t *)__cil_tmp22) = (uint32_t )use_offset;
    __cil_tmp23 = (unsigned long )(& ops) + 48;
    __cil_tmp24 = (void *)0;
    *((uint8_t **)__cil_tmp23) = (uint8_t *)__cil_tmp24;
    __cil_tmp25 = (unsigned long )(& ops) + 56;
    *((uint8_t **)__cil_tmp25) = readbuf;
    err = mtd_read_oob(mtd, addr, & ops);
    }
    if (err) {
      goto _L;
    } else {
      {
      __cil_tmp26 = (size_t )use_len;
      __cil_tmp27 = (unsigned long )(& ops) + 32;
      __cil_tmp28 = *((size_t *)__cil_tmp27);
      if (__cil_tmp28 != __cil_tmp26) {
        _L:
        {
        printk("<6>mtd_oobtest: error: readoob failed at %#llx\n", addr);
        errcnt = errcnt + 1;
        }
        if (err) {
          tmp___7 = err;
        } else {
          tmp___7 = -1;
        }
        return (tmp___7);
      } else {
      }
      }
    }
    {
    __cil_tmp29 = (void const *)readbuf;
    __cil_tmp30 = (void const *)writebuf;
    __cil_tmp31 = (unsigned long )use_len;
    tmp___8 = memcmp(__cil_tmp29, __cil_tmp30, __cil_tmp31);
    }
    if (tmp___8) {
      {
      printk("<6>mtd_oobtest: error: verify failed at %#llx\n", addr);
      errcnt = errcnt + 1;
      }
      if (errcnt > 1000) {
        {
        printk("<6>mtd_oobtest: error: too many errors\n");
        }
        return (-1);
      } else {
      }
    } else {
    }
    if (use_offset != 0) {
      goto _L___1;
    } else {
      {
      __cil_tmp32 = (unsigned long )mtd;
      __cil_tmp33 = __cil_tmp32 + 72;
      __cil_tmp34 = *((struct nand_ecclayout **)__cil_tmp33);
      __cil_tmp35 = (unsigned long )__cil_tmp34;
      __cil_tmp36 = __cil_tmp35 + 1796;
      __cil_tmp37 = *((__u32 *)__cil_tmp36);
      __cil_tmp38 = (__u32 )use_len;
      if (__cil_tmp38 < __cil_tmp37) {
        _L___1:
        {
        __cil_tmp39 = & ops;
        *((unsigned int *)__cil_tmp39) = 1U;
        __cil_tmp40 = (unsigned long )(& ops) + 8;
        *((size_t *)__cil_tmp40) = (size_t )0;
        __cil_tmp41 = (unsigned long )(& ops) + 16;
        *((size_t *)__cil_tmp41) = (size_t )0;
        __cil_tmp42 = (unsigned long )(& ops) + 24;
        __cil_tmp43 = (unsigned long )mtd;
        __cil_tmp44 = __cil_tmp43 + 72;
        __cil_tmp45 = *((struct nand_ecclayout **)__cil_tmp44);
        __cil_tmp46 = (unsigned long )__cil_tmp45;
        __cil_tmp47 = __cil_tmp46 + 1796;
        __cil_tmp48 = *((__u32 *)__cil_tmp47);
        *((size_t *)__cil_tmp42) = (size_t )__cil_tmp48;
        __cil_tmp49 = (unsigned long )(& ops) + 32;
        *((size_t *)__cil_tmp49) = (size_t )0;
        __cil_tmp50 = (unsigned long )(& ops) + 40;
        *((uint32_t *)__cil_tmp50) = (uint32_t )0;
        __cil_tmp51 = (unsigned long )(& ops) + 48;
        __cil_tmp52 = (void *)0;
        *((uint8_t **)__cil_tmp51) = (uint8_t *)__cil_tmp52;
        __cil_tmp53 = (unsigned long )(& ops) + 56;
        *((uint8_t **)__cil_tmp53) = readbuf;
        err = mtd_read_oob(mtd, addr, & ops);
        }
        if (err) {
          goto _L___0;
        } else {
          {
          __cil_tmp54 = (unsigned long )mtd;
          __cil_tmp55 = __cil_tmp54 + 72;
          __cil_tmp56 = *((struct nand_ecclayout **)__cil_tmp55);
          __cil_tmp57 = (unsigned long )__cil_tmp56;
          __cil_tmp58 = __cil_tmp57 + 1796;
          __cil_tmp59 = *((__u32 *)__cil_tmp58);
          __cil_tmp60 = (size_t )__cil_tmp59;
          __cil_tmp61 = (unsigned long )(& ops) + 32;
          __cil_tmp62 = *((size_t *)__cil_tmp61);
          if (__cil_tmp62 != __cil_tmp60) {
            _L___0:
            {
            printk("<6>mtd_oobtest: error: readoob failed at %#llx\n", addr);
            errcnt = errcnt + 1;
            }
            if (err) {
              tmp___9 = err;
            } else {
              tmp___9 = -1;
            }
            return (tmp___9);
          } else {
          }
          }
        }
        {
        __cil_tmp63 = readbuf + use_offset;
        __cil_tmp64 = (void const *)__cil_tmp63;
        __cil_tmp65 = (void const *)writebuf;
        __cil_tmp66 = (unsigned long )use_len;
        tmp___10 = memcmp(__cil_tmp64, __cil_tmp65, __cil_tmp66);
        }
        if (tmp___10) {
          {
          printk("<6>mtd_oobtest: error: verify failed at %#llx\n", addr);
          errcnt = errcnt + 1;
          }
          if (errcnt > 1000) {
            {
            printk("<6>mtd_oobtest: error: too many errors\n");
            }
            return (-1);
          } else {
          }
        } else {
        }
        k = 0;
        {
        while (1) {
          while_continue___0: ;
          if (k < use_offset) {
          } else {
            goto while_break___0;
          }
          {
          __cil_tmp67 = readbuf + k;
          __cil_tmp68 = *__cil_tmp67;
          __cil_tmp69 = (int )__cil_tmp68;
          if (__cil_tmp69 != 255) {
            {
            printk("<6>mtd_oobtest: error: verify 0xff failed at %#llx\n", addr);
            errcnt = errcnt + 1;
            }
            if (errcnt > 1000) {
              {
              printk("<6>mtd_oobtest: error: too many errors\n");
              }
              return (-1);
            } else {
            }
          } else {
          }
          }
          k = k + 1;
        }
        while_break___0: ;
        }
        k = use_offset + use_len;
        {
        while (1) {
          while_continue___1: ;
          {
          __cil_tmp70 = (unsigned long )mtd;
          __cil_tmp71 = __cil_tmp70 + 72;
          __cil_tmp72 = *((struct nand_ecclayout **)__cil_tmp71);
          __cil_tmp73 = (unsigned long )__cil_tmp72;
          __cil_tmp74 = __cil_tmp73 + 1796;
          __cil_tmp75 = *((__u32 *)__cil_tmp74);
          __cil_tmp76 = (__u32 )k;
          if (__cil_tmp76 < __cil_tmp75) {
          } else {
            goto while_break___1;
          }
          }
          {
          __cil_tmp77 = readbuf + k;
          __cil_tmp78 = *__cil_tmp77;
          __cil_tmp79 = (int )__cil_tmp78;
          if (__cil_tmp79 != 255) {
            {
            printk("<6>mtd_oobtest: error: verify 0xff failed at %#llx\n", addr);
            errcnt = errcnt + 1;
            }
            if (errcnt > 1000) {
              {
              printk("<6>mtd_oobtest: error: too many errors\n");
              }
              return (-1);
            } else {
            }
          } else {
          }
          }
          k = k + 1;
        }
        while_break___1: ;
        }
      } else {
      }
      }
    }
    if (vary_offset) {
      {
      do_vary_offset();
      }
    } else {
    }
    i = i + 1;
    __cil_tmp80 = (unsigned long )mtd;
    __cil_tmp81 = __cil_tmp80 + 20;
    __cil_tmp82 = *((uint32_t *)__cil_tmp81);
    __cil_tmp83 = (loff_t )__cil_tmp82;
    addr = addr + __cil_tmp83;
  }
  while_break: ;
  }
  return (err);
}
}
static int verify_eraseblock_in_one_go(int ebnum )
{ struct mtd_oob_ops ops ;
  int err ;
  loff_t addr ;
  size_t len ;
  int tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  uint32_t __cil_tmp10 ;
  uint32_t __cil_tmp11 ;
  uint32_t __cil_tmp12 ;
  __u32 __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct nand_ecclayout *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  __u32 __cil_tmp19 ;
  __u32 __cil_tmp20 ;
  struct mtd_oob_ops *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  void *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  size_t __cil_tmp31 ;
  void const *__cil_tmp32 ;
  void const *__cil_tmp33 ;
  {
  {
  err = 0;
  __cil_tmp8 = (unsigned long )mtd;
  __cil_tmp9 = __cil_tmp8 + 16;
  __cil_tmp10 = *((uint32_t *)__cil_tmp9);
  __cil_tmp11 = (uint32_t )ebnum;
  __cil_tmp12 = __cil_tmp11 * __cil_tmp10;
  addr = (loff_t )__cil_tmp12;
  __cil_tmp13 = (__u32 )pgcnt;
  __cil_tmp14 = (unsigned long )mtd;
  __cil_tmp15 = __cil_tmp14 + 72;
  __cil_tmp16 = *((struct nand_ecclayout **)__cil_tmp15);
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 + 1796;
  __cil_tmp19 = *((__u32 *)__cil_tmp18);
  __cil_tmp20 = __cil_tmp19 * __cil_tmp13;
  len = (size_t )__cil_tmp20;
  set_random_data(writebuf, len);
  __cil_tmp21 = & ops;
  *((unsigned int *)__cil_tmp21) = 1U;
  __cil_tmp22 = (unsigned long )(& ops) + 8;
  *((size_t *)__cil_tmp22) = (size_t )0;
  __cil_tmp23 = (unsigned long )(& ops) + 16;
  *((size_t *)__cil_tmp23) = (size_t )0;
  __cil_tmp24 = (unsigned long )(& ops) + 24;
  *((size_t *)__cil_tmp24) = len;
  __cil_tmp25 = (unsigned long )(& ops) + 32;
  *((size_t *)__cil_tmp25) = (size_t )0;
  __cil_tmp26 = (unsigned long )(& ops) + 40;
  *((uint32_t *)__cil_tmp26) = (uint32_t )0;
  __cil_tmp27 = (unsigned long )(& ops) + 48;
  __cil_tmp28 = (void *)0;
  *((uint8_t **)__cil_tmp27) = (uint8_t *)__cil_tmp28;
  __cil_tmp29 = (unsigned long )(& ops) + 56;
  *((uint8_t **)__cil_tmp29) = readbuf;
  err = mtd_read_oob(mtd, addr, & ops);
  }
  if (err) {
    goto _L;
  } else {
    {
    __cil_tmp30 = (unsigned long )(& ops) + 32;
    __cil_tmp31 = *((size_t *)__cil_tmp30);
    if (__cil_tmp31 != len) {
      _L:
      {
      printk("<6>mtd_oobtest: error: readoob failed at %#llx\n", addr);
      errcnt = errcnt + 1;
      }
      if (err) {
        tmp___7 = err;
      } else {
        tmp___7 = -1;
      }
      return (tmp___7);
    } else {
    }
    }
  }
  {
  __cil_tmp32 = (void const *)readbuf;
  __cil_tmp33 = (void const *)writebuf;
  tmp___8 = memcmp(__cil_tmp32, __cil_tmp33, len);
  }
  if (tmp___8) {
    {
    printk("<6>mtd_oobtest: error: verify failed at %#llx\n", addr);
    errcnt = errcnt + 1;
    }
    if (errcnt > 1000) {
      {
      printk("<6>mtd_oobtest: error: too many errors\n");
      }
      return (-1);
    } else {
    }
  } else {
  }
  return (err);
}
}
static int verify_all_eraseblocks(void)
{ int err ;
  unsigned int i ;
  unsigned int __cil_tmp3 ;
  unsigned char *__cil_tmp4 ;
  int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  {
  {
  printk("<6>mtd_oobtest: verifying all eraseblocks\n");
  i = 0U;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp3 = (unsigned int )ebcnt;
    if (i < __cil_tmp3) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp4 = bbt + i;
    if (*__cil_tmp4) {
      goto __Cont;
    } else {
    }
    }
    {
    __cil_tmp5 = (int )i;
    err = verify_eraseblock(__cil_tmp5);
    }
    if (err) {
      return (err);
    } else {
    }
    {
    __cil_tmp6 = i % 256U;
    if (__cil_tmp6 == 0U) {
      {
      printk("<6>mtd_oobtest: verified up to eraseblock %u\n", i);
      }
    } else {
    }
    }
    {
    __might_sleep("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5472/dscv_tempdir/dscv/ri/32_1/drivers/mtd/tests/mtd_oobtest.c.common.c",
                  322, 0);
    _cond_resched();
    }
    __Cont:
    i = i + 1U;
  }
  while_break: ;
  }
  {
  printk("<6>mtd_oobtest: verified %u eraseblocks\n", i);
  }
  return (0);
}
}
static int is_block_bad(int ebnum )
{ int ret ;
  loff_t addr ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  uint32_t __cil_tmp6 ;
  uint32_t __cil_tmp7 ;
  uint32_t __cil_tmp8 ;
  {
  {
  __cil_tmp4 = (unsigned long )mtd;
  __cil_tmp5 = __cil_tmp4 + 16;
  __cil_tmp6 = *((uint32_t *)__cil_tmp5);
  __cil_tmp7 = (uint32_t )ebnum;
  __cil_tmp8 = __cil_tmp7 * __cil_tmp6;
  addr = (loff_t )__cil_tmp8;
  ret = mtd_block_isbad(mtd, addr);
  }
  if (ret) {
    {
    printk("<6>mtd_oobtest: block %d is bad\n", ebnum);
    }
  } else {
  }
  return (ret);
}
}
static int scan_for_bad_eraseblocks(void)
{ int i ;
  int bad ;
  void *tmp___7 ;
  int tmp___9 ;
  size_t __cil_tmp6 ;
  unsigned char *__cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  {
  {
  bad = 0;
  __cil_tmp6 = (size_t )ebcnt;
  tmp___7 = kmalloc(__cil_tmp6, 208U);
  bbt = (unsigned char *)tmp___7;
  }
  if (! bbt) {
    {
    printk("<6>mtd_oobtest: error: cannot allocate memory\n");
    }
    return (-12);
  } else {
  }
  {
  printk("<6>mtd_oobtest: scanning for bad eraseblocks\n");
  i = 0;
  }
  {
  while (1) {
    while_continue: ;
    if (i < ebcnt) {
    } else {
      goto while_break;
    }
    {
    tmp___9 = is_block_bad(i);
    }
    if (tmp___9) {
      __cil_tmp7 = bbt + i;
      *__cil_tmp7 = (unsigned char)1;
    } else {
      __cil_tmp8 = bbt + i;
      *__cil_tmp8 = (unsigned char)0;
    }
    {
    __cil_tmp9 = bbt + i;
    if (*__cil_tmp9) {
      bad = bad + 1;
    } else {
    }
    }
    {
    __might_sleep("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5472/dscv_tempdir/dscv/ri/32_1/drivers/mtd/tests/mtd_oobtest.c.common.c",
                  354, 0);
    _cond_resched();
    i = i + 1;
    }
  }
  while_break: ;
  }
  {
  printk("<6>mtd_oobtest: scanned %d eraseblocks, %d are bad\n", i, bad);
  }
  return (0);
}
}
static int mtd_oobtest_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int mtd_oobtest_init(void)
{ int err ;
  unsigned int i ;
  uint64_t tmp___7 ;
  struct mtd_oob_ops ops ;
  loff_t addr ;
  loff_t addr0 ;
  long tmp___8 ;
  long tmp___9 ;
  uint32_t __base ;
  uint32_t __rem ;
  void *tmp___10 ;
  void *tmp___11 ;
  int cnt ;
  int pg ;
  size_t sz ;
  int tmp___12 ;
  int *__cil_tmp17 ;
  int __cil_tmp18 ;
  int *__cil_tmp19 ;
  int __cil_tmp20 ;
  void *__cil_tmp21 ;
  struct mtd_info *__cil_tmp22 ;
  int *__cil_tmp23 ;
  int __cil_tmp24 ;
  void const *__cil_tmp25 ;
  void const *__cil_tmp26 ;
  u_char __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long long __cil_tmp33 ;
  unsigned long long __cil_tmp34 ;
  uint64_t __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  uint32_t __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  uint32_t __cil_tmp41 ;
  uint32_t __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  uint64_t __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  uint32_t __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  uint32_t __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  uint32_t __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  uint32_t __cil_tmp57 ;
  size_t __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  uint32_t __cil_tmp61 ;
  size_t __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  struct nand_ecclayout *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  __u32 __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct nand_ecclayout *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  __u32 __cil_tmp74 ;
  unsigned int __cil_tmp75 ;
  unsigned char *__cil_tmp76 ;
  int __cil_tmp77 ;
  unsigned int __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  struct nand_ecclayout *__cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  __u32 __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  struct nand_ecclayout *__cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  __u32 __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  struct nand_ecclayout *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  __u32 __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  struct nand_ecclayout *__cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  __u32 __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  struct nand_ecclayout *__cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  __u32 __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  struct nand_ecclayout *__cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  __u32 __cil_tmp114 ;
  unsigned int __cil_tmp115 ;
  unsigned char *__cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  uint32_t __cil_tmp119 ;
  loff_t __cil_tmp120 ;
  struct mtd_oob_ops *__cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  struct nand_ecclayout *__cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  void *__cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  struct mtd_oob_ops *__cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  struct nand_ecclayout *__cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  void *__cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  int __cil_tmp149 ;
  unsigned char *__cil_tmp150 ;
  struct mtd_oob_ops *__cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  struct nand_ecclayout *__cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  __u32 __cil_tmp160 ;
  __u32 __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  void *__cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  uint32_t __cil_tmp169 ;
  uint64_t __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  uint64_t __cil_tmp173 ;
  uint64_t __cil_tmp174 ;
  loff_t __cil_tmp175 ;
  struct mtd_oob_ops *__cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  struct nand_ecclayout *__cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  __u32 __cil_tmp185 ;
  __u32 __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  void *__cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  uint32_t __cil_tmp194 ;
  uint64_t __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  uint64_t __cil_tmp198 ;
  uint64_t __cil_tmp199 ;
  loff_t __cil_tmp200 ;
  int __cil_tmp201 ;
  struct mtd_oob_ops *__cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  unsigned long __cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  struct nand_ecclayout *__cil_tmp208 ;
  unsigned long __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  __u32 __cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  unsigned long __cil_tmp213 ;
  unsigned long __cil_tmp214 ;
  void *__cil_tmp215 ;
  unsigned long __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  uint32_t __cil_tmp219 ;
  uint64_t __cil_tmp220 ;
  unsigned long __cil_tmp221 ;
  unsigned long __cil_tmp222 ;
  uint64_t __cil_tmp223 ;
  uint64_t __cil_tmp224 ;
  loff_t __cil_tmp225 ;
  struct mtd_oob_ops *__cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  unsigned long __cil_tmp228 ;
  unsigned long __cil_tmp229 ;
  unsigned long __cil_tmp230 ;
  unsigned long __cil_tmp231 ;
  struct nand_ecclayout *__cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  unsigned long __cil_tmp234 ;
  __u32 __cil_tmp235 ;
  unsigned long __cil_tmp236 ;
  unsigned long __cil_tmp237 ;
  unsigned long __cil_tmp238 ;
  void *__cil_tmp239 ;
  unsigned long __cil_tmp240 ;
  unsigned long __cil_tmp241 ;
  unsigned long __cil_tmp242 ;
  uint32_t __cil_tmp243 ;
  uint64_t __cil_tmp244 ;
  unsigned long __cil_tmp245 ;
  unsigned long __cil_tmp246 ;
  uint64_t __cil_tmp247 ;
  uint64_t __cil_tmp248 ;
  loff_t __cil_tmp249 ;
  int __cil_tmp250 ;
  unsigned int __cil_tmp251 ;
  unsigned long __cil_tmp252 ;
  unsigned long __cil_tmp253 ;
  struct nand_ecclayout *__cil_tmp254 ;
  unsigned long __cil_tmp255 ;
  unsigned long __cil_tmp256 ;
  __u32 __cil_tmp257 ;
  unsigned char *__cil_tmp258 ;
  unsigned int __cil_tmp259 ;
  unsigned char *__cil_tmp260 ;
  unsigned long __cil_tmp261 ;
  unsigned long __cil_tmp262 ;
  uint32_t __cil_tmp263 ;
  unsigned long __cil_tmp264 ;
  unsigned long __cil_tmp265 ;
  uint32_t __cil_tmp266 ;
  unsigned int __cil_tmp267 ;
  unsigned int __cil_tmp268 ;
  unsigned int __cil_tmp269 ;
  struct mtd_oob_ops *__cil_tmp270 ;
  unsigned long __cil_tmp271 ;
  unsigned long __cil_tmp272 ;
  unsigned long __cil_tmp273 ;
  unsigned long __cil_tmp274 ;
  unsigned long __cil_tmp275 ;
  unsigned long __cil_tmp276 ;
  void *__cil_tmp277 ;
  unsigned long __cil_tmp278 ;
  unsigned int __cil_tmp279 ;
  unsigned long __cil_tmp280 ;
  unsigned long __cil_tmp281 ;
  uint32_t __cil_tmp282 ;
  loff_t __cil_tmp283 ;
  int __cil_tmp284 ;
  unsigned int __cil_tmp285 ;
  unsigned char *__cil_tmp286 ;
  unsigned int __cil_tmp287 ;
  unsigned char *__cil_tmp288 ;
  unsigned long __cil_tmp289 ;
  unsigned long __cil_tmp290 ;
  struct nand_ecclayout *__cil_tmp291 ;
  unsigned long __cil_tmp292 ;
  unsigned long __cil_tmp293 ;
  __u32 __cil_tmp294 ;
  __u32 __cil_tmp295 ;
  size_t __cil_tmp296 ;
  unsigned long __cil_tmp297 ;
  unsigned long __cil_tmp298 ;
  uint32_t __cil_tmp299 ;
  unsigned long __cil_tmp300 ;
  unsigned long __cil_tmp301 ;
  uint32_t __cil_tmp302 ;
  unsigned int __cil_tmp303 ;
  unsigned int __cil_tmp304 ;
  unsigned int __cil_tmp305 ;
  struct mtd_oob_ops *__cil_tmp306 ;
  unsigned long __cil_tmp307 ;
  unsigned long __cil_tmp308 ;
  unsigned long __cil_tmp309 ;
  unsigned long __cil_tmp310 ;
  unsigned long __cil_tmp311 ;
  struct nand_ecclayout *__cil_tmp312 ;
  unsigned long __cil_tmp313 ;
  unsigned long __cil_tmp314 ;
  __u32 __cil_tmp315 ;
  __u32 __cil_tmp316 ;
  unsigned long __cil_tmp317 ;
  unsigned long __cil_tmp318 ;
  unsigned long __cil_tmp319 ;
  void *__cil_tmp320 ;
  unsigned long __cil_tmp321 ;
  void const *__cil_tmp322 ;
  void const *__cil_tmp323 ;
  unsigned long __cil_tmp324 ;
  unsigned long __cil_tmp325 ;
  struct nand_ecclayout *__cil_tmp326 ;
  unsigned long __cil_tmp327 ;
  unsigned long __cil_tmp328 ;
  __u32 __cil_tmp329 ;
  __u32 __cil_tmp330 ;
  unsigned long __cil_tmp331 ;
  unsigned int __cil_tmp332 ;
  void const *__cil_tmp333 ;
  void const *__cil_tmp334 ;
  void const *__cil_tmp335 ;
  {
  {
  err = 0;
  addr = (loff_t )0;
  printk("<6>\n");
  printk("<6>=================================================\n");
  }
  {
  __cil_tmp17 = & dev;
  __cil_tmp18 = *__cil_tmp17;
  if (__cil_tmp18 < 0) {
    {
    printk("<6>mtd_oobtest: Please specify a valid mtd-device via module paramter\n");
    printk("<2>CAREFUL: This test wipes all data on the specified MTD device!\n");
    }
    return (-22);
  } else {
  }
  }
  {
  __cil_tmp19 = & dev;
  __cil_tmp20 = *__cil_tmp19;
  printk("<6>mtd_oobtest: MTD device: %d\n", __cil_tmp20);
  __cil_tmp21 = (void *)0;
  __cil_tmp22 = (struct mtd_info *)__cil_tmp21;
  __cil_tmp23 = & dev;
  __cil_tmp24 = *__cil_tmp23;
  mtd = get_mtd_device(__cil_tmp22, __cil_tmp24);
  __cil_tmp25 = (void const *)mtd;
  tmp___9 = (long )IS_ERR(__cil_tmp25);
  }
  if (tmp___9) {
    {
    __cil_tmp26 = (void const *)mtd;
    tmp___8 = (long )PTR_ERR(__cil_tmp26);
    err = (int )tmp___8;
    printk("<6>mtd_oobtest: error: cannot get MTD device\n");
    }
    return (err);
  } else {
  }
  {
  __cil_tmp27 = *((u_char *)mtd);
  __cil_tmp28 = (int )__cil_tmp27;
  if (__cil_tmp28 != 4) {
    {
    printk("<6>mtd_oobtest: this test requires NAND flash\n");
    }
    goto out;
  } else {
  }
  }
  {
  __cil_tmp29 = (unsigned long )mtd;
  __cil_tmp30 = __cil_tmp29 + 8;
  tmp___7 = *((uint64_t *)__cil_tmp30);
  __cil_tmp31 = (unsigned long )mtd;
  __cil_tmp32 = __cil_tmp31 + 16;
  __base = *((uint32_t *)__cil_tmp32);
  __cil_tmp33 = (unsigned long long )__base;
  __cil_tmp34 = tmp___7 % __cil_tmp33;
  __rem = (uint32_t )__cil_tmp34;
  __cil_tmp35 = (uint64_t )__base;
  tmp___7 = tmp___7 / __cil_tmp35;
  ebcnt = (int )tmp___7;
  __cil_tmp36 = (unsigned long )mtd;
  __cil_tmp37 = __cil_tmp36 + 20;
  __cil_tmp38 = *((uint32_t *)__cil_tmp37);
  __cil_tmp39 = (unsigned long )mtd;
  __cil_tmp40 = __cil_tmp39 + 16;
  __cil_tmp41 = *((uint32_t *)__cil_tmp40);
  __cil_tmp42 = __cil_tmp41 / __cil_tmp38;
  pgcnt = (int )__cil_tmp42;
  __cil_tmp43 = (unsigned long )mtd;
  __cil_tmp44 = __cil_tmp43 + 8;
  __cil_tmp45 = *((uint64_t *)__cil_tmp44);
  __cil_tmp46 = (unsigned long )mtd;
  __cil_tmp47 = __cil_tmp46 + 16;
  __cil_tmp48 = *((uint32_t *)__cil_tmp47);
  __cil_tmp49 = (unsigned long )mtd;
  __cil_tmp50 = __cil_tmp49 + 20;
  __cil_tmp51 = *((uint32_t *)__cil_tmp50);
  __cil_tmp52 = (unsigned long )mtd;
  __cil_tmp53 = __cil_tmp52 + 28;
  __cil_tmp54 = *((uint32_t *)__cil_tmp53);
  printk("<6>mtd_oobtest: MTD device size %llu, eraseblock size %u, page size %u, count of eraseblocks %u, pages per eraseblock %u, OOB size %u\n",
         __cil_tmp45, __cil_tmp48, __cil_tmp51, ebcnt, pgcnt, __cil_tmp54);
  err = -12;
  __cil_tmp55 = (unsigned long )mtd;
  __cil_tmp56 = __cil_tmp55 + 16;
  __cil_tmp57 = *((uint32_t *)__cil_tmp56);
  __cil_tmp58 = (size_t )__cil_tmp57;
  tmp___10 = kmalloc(__cil_tmp58, 208U);
  readbuf = (unsigned char *)tmp___10;
  }
  if (! readbuf) {
    {
    printk("<6>mtd_oobtest: error: cannot allocate memory\n");
    }
    goto out;
  } else {
  }
  {
  __cil_tmp59 = (unsigned long )mtd;
  __cil_tmp60 = __cil_tmp59 + 16;
  __cil_tmp61 = *((uint32_t *)__cil_tmp60);
  __cil_tmp62 = (size_t )__cil_tmp61;
  tmp___11 = kmalloc(__cil_tmp62, 208U);
  writebuf = (unsigned char *)tmp___11;
  }
  if (! writebuf) {
    {
    printk("<6>mtd_oobtest: error: cannot allocate memory\n");
    }
    goto out;
  } else {
  }
  {
  err = scan_for_bad_eraseblocks();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  use_offset = 0;
  __cil_tmp63 = (unsigned long )mtd;
  __cil_tmp64 = __cil_tmp63 + 72;
  __cil_tmp65 = *((struct nand_ecclayout **)__cil_tmp64);
  __cil_tmp66 = (unsigned long )__cil_tmp65;
  __cil_tmp67 = __cil_tmp66 + 1796;
  __cil_tmp68 = *((__u32 *)__cil_tmp67);
  use_len = (int )__cil_tmp68;
  __cil_tmp69 = (unsigned long )mtd;
  __cil_tmp70 = __cil_tmp69 + 72;
  __cil_tmp71 = *((struct nand_ecclayout **)__cil_tmp70);
  __cil_tmp72 = (unsigned long )__cil_tmp71;
  __cil_tmp73 = __cil_tmp72 + 1796;
  __cil_tmp74 = *((__u32 *)__cil_tmp73);
  use_len_max = (int )__cil_tmp74;
  vary_offset = 0;
  printk("<6>mtd_oobtest: test 1 of 5\n");
  err = erase_whole_device();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  simple_srand(1UL);
  err = write_whole_device();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  simple_srand(1UL);
  err = verify_all_eraseblocks();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  printk("<6>mtd_oobtest: test 2 of 5\n");
  err = erase_whole_device();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  simple_srand(3UL);
  err = write_whole_device();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  simple_srand(3UL);
  printk("<6>mtd_oobtest: verifying all eraseblocks\n");
  i = 0U;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp75 = (unsigned int )ebcnt;
    if (i < __cil_tmp75) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp76 = bbt + i;
    if (*__cil_tmp76) {
      goto __Cont;
    } else {
    }
    }
    {
    __cil_tmp77 = (int )i;
    err = verify_eraseblock_in_one_go(__cil_tmp77);
    }
    if (err) {
      goto out;
    } else {
    }
    {
    __cil_tmp78 = i % 256U;
    if (__cil_tmp78 == 0U) {
      {
      printk("<6>mtd_oobtest: verified up to eraseblock %u\n", i);
      }
    } else {
    }
    }
    {
    __might_sleep("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5472/dscv_tempdir/dscv/ri/32_1/drivers/mtd/tests/mtd_oobtest.c.common.c",
                  466, 0);
    _cond_resched();
    }
    __Cont:
    i = i + 1U;
  }
  while_break: ;
  }
  {
  printk("<6>mtd_oobtest: verified %u eraseblocks\n", i);
  printk("<6>mtd_oobtest: test 3 of 5\n");
  err = erase_whole_device();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  use_offset = 0;
  __cil_tmp79 = (unsigned long )mtd;
  __cil_tmp80 = __cil_tmp79 + 72;
  __cil_tmp81 = *((struct nand_ecclayout **)__cil_tmp80);
  __cil_tmp82 = (unsigned long )__cil_tmp81;
  __cil_tmp83 = __cil_tmp82 + 1796;
  __cil_tmp84 = *((__u32 *)__cil_tmp83);
  use_len = (int )__cil_tmp84;
  __cil_tmp85 = (unsigned long )mtd;
  __cil_tmp86 = __cil_tmp85 + 72;
  __cil_tmp87 = *((struct nand_ecclayout **)__cil_tmp86);
  __cil_tmp88 = (unsigned long )__cil_tmp87;
  __cil_tmp89 = __cil_tmp88 + 1796;
  __cil_tmp90 = *((__u32 *)__cil_tmp89);
  use_len_max = (int )__cil_tmp90;
  vary_offset = 1;
  simple_srand(5UL);
  err = write_whole_device();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  use_offset = 0;
  __cil_tmp91 = (unsigned long )mtd;
  __cil_tmp92 = __cil_tmp91 + 72;
  __cil_tmp93 = *((struct nand_ecclayout **)__cil_tmp92);
  __cil_tmp94 = (unsigned long )__cil_tmp93;
  __cil_tmp95 = __cil_tmp94 + 1796;
  __cil_tmp96 = *((__u32 *)__cil_tmp95);
  use_len = (int )__cil_tmp96;
  __cil_tmp97 = (unsigned long )mtd;
  __cil_tmp98 = __cil_tmp97 + 72;
  __cil_tmp99 = *((struct nand_ecclayout **)__cil_tmp98);
  __cil_tmp100 = (unsigned long )__cil_tmp99;
  __cil_tmp101 = __cil_tmp100 + 1796;
  __cil_tmp102 = *((__u32 *)__cil_tmp101);
  use_len_max = (int )__cil_tmp102;
  vary_offset = 1;
  simple_srand(5UL);
  err = verify_all_eraseblocks();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  use_offset = 0;
  __cil_tmp103 = (unsigned long )mtd;
  __cil_tmp104 = __cil_tmp103 + 72;
  __cil_tmp105 = *((struct nand_ecclayout **)__cil_tmp104);
  __cil_tmp106 = (unsigned long )__cil_tmp105;
  __cil_tmp107 = __cil_tmp106 + 1796;
  __cil_tmp108 = *((__u32 *)__cil_tmp107);
  use_len = (int )__cil_tmp108;
  __cil_tmp109 = (unsigned long )mtd;
  __cil_tmp110 = __cil_tmp109 + 72;
  __cil_tmp111 = *((struct nand_ecclayout **)__cil_tmp110);
  __cil_tmp112 = (unsigned long )__cil_tmp111;
  __cil_tmp113 = __cil_tmp112 + 1796;
  __cil_tmp114 = *((__u32 *)__cil_tmp113);
  use_len_max = (int )__cil_tmp114;
  vary_offset = 0;
  printk("<6>mtd_oobtest: test 4 of 5\n");
  err = erase_whole_device();
  }
  if (err) {
    goto out;
  } else {
  }
  addr0 = (loff_t )0;
  i = 0U;
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp115 = (unsigned int )ebcnt;
    if (i < __cil_tmp115) {
      {
      __cil_tmp116 = bbt + i;
      if (*__cil_tmp116) {
      } else {
        goto while_break___0;
      }
      }
    } else {
      goto while_break___0;
    }
    }
    __cil_tmp117 = (unsigned long )mtd;
    __cil_tmp118 = __cil_tmp117 + 16;
    __cil_tmp119 = *((uint32_t *)__cil_tmp118);
    __cil_tmp120 = (loff_t )__cil_tmp119;
    addr0 = addr0 + __cil_tmp120;
    i = i + 1U;
  }
  while_break___0: ;
  }
  {
  __cil_tmp121 = & ops;
  *((unsigned int *)__cil_tmp121) = 1U;
  __cil_tmp122 = (unsigned long )(& ops) + 8;
  *((size_t *)__cil_tmp122) = (size_t )0;
  __cil_tmp123 = (unsigned long )(& ops) + 16;
  *((size_t *)__cil_tmp123) = (size_t )0;
  __cil_tmp124 = (unsigned long )(& ops) + 24;
  *((size_t *)__cil_tmp124) = (size_t )1;
  __cil_tmp125 = (unsigned long )(& ops) + 32;
  *((size_t *)__cil_tmp125) = (size_t )0;
  __cil_tmp126 = (unsigned long )(& ops) + 40;
  __cil_tmp127 = (unsigned long )mtd;
  __cil_tmp128 = __cil_tmp127 + 72;
  __cil_tmp129 = *((struct nand_ecclayout **)__cil_tmp128);
  __cil_tmp130 = (unsigned long )__cil_tmp129;
  __cil_tmp131 = __cil_tmp130 + 1796;
  *((uint32_t *)__cil_tmp126) = *((__u32 *)__cil_tmp131);
  __cil_tmp132 = (unsigned long )(& ops) + 48;
  __cil_tmp133 = (void *)0;
  *((uint8_t **)__cil_tmp132) = (uint8_t *)__cil_tmp133;
  __cil_tmp134 = (unsigned long )(& ops) + 56;
  *((uint8_t **)__cil_tmp134) = writebuf;
  printk("<6>mtd_oobtest: attempting to start write past end of OOB\n");
  printk("<6>mtd_oobtest: an error is expected...\n");
  err = mtd_write_oob(mtd, addr0, & ops);
  }
  if (err) {
    {
    printk("<6>mtd_oobtest: error occurred as expected\n");
    err = 0;
    }
  } else {
    {
    printk("<6>mtd_oobtest: error: can write past end of OOB\n");
    errcnt = errcnt + 1;
    }
  }
  {
  __cil_tmp135 = & ops;
  *((unsigned int *)__cil_tmp135) = 1U;
  __cil_tmp136 = (unsigned long )(& ops) + 8;
  *((size_t *)__cil_tmp136) = (size_t )0;
  __cil_tmp137 = (unsigned long )(& ops) + 16;
  *((size_t *)__cil_tmp137) = (size_t )0;
  __cil_tmp138 = (unsigned long )(& ops) + 24;
  *((size_t *)__cil_tmp138) = (size_t )1;
  __cil_tmp139 = (unsigned long )(& ops) + 32;
  *((size_t *)__cil_tmp139) = (size_t )0;
  __cil_tmp140 = (unsigned long )(& ops) + 40;
  __cil_tmp141 = (unsigned long )mtd;
  __cil_tmp142 = __cil_tmp141 + 72;
  __cil_tmp143 = *((struct nand_ecclayout **)__cil_tmp142);
  __cil_tmp144 = (unsigned long )__cil_tmp143;
  __cil_tmp145 = __cil_tmp144 + 1796;
  *((uint32_t *)__cil_tmp140) = *((__u32 *)__cil_tmp145);
  __cil_tmp146 = (unsigned long )(& ops) + 48;
  __cil_tmp147 = (void *)0;
  *((uint8_t **)__cil_tmp146) = (uint8_t *)__cil_tmp147;
  __cil_tmp148 = (unsigned long )(& ops) + 56;
  *((uint8_t **)__cil_tmp148) = readbuf;
  printk("<6>mtd_oobtest: attempting to start read past end of OOB\n");
  printk("<6>mtd_oobtest: an error is expected...\n");
  err = mtd_read_oob(mtd, addr0, & ops);
  }
  if (err) {
    {
    printk("<6>mtd_oobtest: error occurred as expected\n");
    err = 0;
    }
  } else {
    {
    printk("<6>mtd_oobtest: error: can read past end of OOB\n");
    errcnt = errcnt + 1;
    }
  }
  {
  __cil_tmp149 = ebcnt - 1;
  __cil_tmp150 = bbt + __cil_tmp149;
  if (*__cil_tmp150) {
    {
    printk("<6>mtd_oobtest: skipping end of device tests because last block is bad\n");
    }
  } else {
    {
    __cil_tmp151 = & ops;
    *((unsigned int *)__cil_tmp151) = 1U;
    __cil_tmp152 = (unsigned long )(& ops) + 8;
    *((size_t *)__cil_tmp152) = (size_t )0;
    __cil_tmp153 = (unsigned long )(& ops) + 16;
    *((size_t *)__cil_tmp153) = (size_t )0;
    __cil_tmp154 = (unsigned long )(& ops) + 24;
    __cil_tmp155 = (unsigned long )mtd;
    __cil_tmp156 = __cil_tmp155 + 72;
    __cil_tmp157 = *((struct nand_ecclayout **)__cil_tmp156);
    __cil_tmp158 = (unsigned long )__cil_tmp157;
    __cil_tmp159 = __cil_tmp158 + 1796;
    __cil_tmp160 = *((__u32 *)__cil_tmp159);
    __cil_tmp161 = __cil_tmp160 + 1U;
    *((size_t *)__cil_tmp154) = (size_t )__cil_tmp161;
    __cil_tmp162 = (unsigned long )(& ops) + 32;
    *((size_t *)__cil_tmp162) = (size_t )0;
    __cil_tmp163 = (unsigned long )(& ops) + 40;
    *((uint32_t *)__cil_tmp163) = (uint32_t )0;
    __cil_tmp164 = (unsigned long )(& ops) + 48;
    __cil_tmp165 = (void *)0;
    *((uint8_t **)__cil_tmp164) = (uint8_t *)__cil_tmp165;
    __cil_tmp166 = (unsigned long )(& ops) + 56;
    *((uint8_t **)__cil_tmp166) = writebuf;
    printk("<6>mtd_oobtest: attempting to write past end of device\n");
    printk("<6>mtd_oobtest: an error is expected...\n");
    __cil_tmp167 = (unsigned long )mtd;
    __cil_tmp168 = __cil_tmp167 + 20;
    __cil_tmp169 = *((uint32_t *)__cil_tmp168);
    __cil_tmp170 = (uint64_t )__cil_tmp169;
    __cil_tmp171 = (unsigned long )mtd;
    __cil_tmp172 = __cil_tmp171 + 8;
    __cil_tmp173 = *((uint64_t *)__cil_tmp172);
    __cil_tmp174 = __cil_tmp173 - __cil_tmp170;
    __cil_tmp175 = (loff_t )__cil_tmp174;
    err = mtd_write_oob(mtd, __cil_tmp175, & ops);
    }
    if (err) {
      {
      printk("<6>mtd_oobtest: error occurred as expected\n");
      err = 0;
      }
    } else {
      {
      printk("<6>mtd_oobtest: error: wrote past end of device\n");
      errcnt = errcnt + 1;
      }
    }
    {
    __cil_tmp176 = & ops;
    *((unsigned int *)__cil_tmp176) = 1U;
    __cil_tmp177 = (unsigned long )(& ops) + 8;
    *((size_t *)__cil_tmp177) = (size_t )0;
    __cil_tmp178 = (unsigned long )(& ops) + 16;
    *((size_t *)__cil_tmp178) = (size_t )0;
    __cil_tmp179 = (unsigned long )(& ops) + 24;
    __cil_tmp180 = (unsigned long )mtd;
    __cil_tmp181 = __cil_tmp180 + 72;
    __cil_tmp182 = *((struct nand_ecclayout **)__cil_tmp181);
    __cil_tmp183 = (unsigned long )__cil_tmp182;
    __cil_tmp184 = __cil_tmp183 + 1796;
    __cil_tmp185 = *((__u32 *)__cil_tmp184);
    __cil_tmp186 = __cil_tmp185 + 1U;
    *((size_t *)__cil_tmp179) = (size_t )__cil_tmp186;
    __cil_tmp187 = (unsigned long )(& ops) + 32;
    *((size_t *)__cil_tmp187) = (size_t )0;
    __cil_tmp188 = (unsigned long )(& ops) + 40;
    *((uint32_t *)__cil_tmp188) = (uint32_t )0;
    __cil_tmp189 = (unsigned long )(& ops) + 48;
    __cil_tmp190 = (void *)0;
    *((uint8_t **)__cil_tmp189) = (uint8_t *)__cil_tmp190;
    __cil_tmp191 = (unsigned long )(& ops) + 56;
    *((uint8_t **)__cil_tmp191) = readbuf;
    printk("<6>mtd_oobtest: attempting to read past end of device\n");
    printk("<6>mtd_oobtest: an error is expected...\n");
    __cil_tmp192 = (unsigned long )mtd;
    __cil_tmp193 = __cil_tmp192 + 20;
    __cil_tmp194 = *((uint32_t *)__cil_tmp193);
    __cil_tmp195 = (uint64_t )__cil_tmp194;
    __cil_tmp196 = (unsigned long )mtd;
    __cil_tmp197 = __cil_tmp196 + 8;
    __cil_tmp198 = *((uint64_t *)__cil_tmp197);
    __cil_tmp199 = __cil_tmp198 - __cil_tmp195;
    __cil_tmp200 = (loff_t )__cil_tmp199;
    err = mtd_read_oob(mtd, __cil_tmp200, & ops);
    }
    if (err) {
      {
      printk("<6>mtd_oobtest: error occurred as expected\n");
      err = 0;
      }
    } else {
      {
      printk("<6>mtd_oobtest: error: read past end of device\n");
      errcnt = errcnt + 1;
      }
    }
    {
    __cil_tmp201 = ebcnt - 1;
    err = erase_eraseblock(__cil_tmp201);
    }
    if (err) {
      goto out;
    } else {
    }
    {
    __cil_tmp202 = & ops;
    *((unsigned int *)__cil_tmp202) = 1U;
    __cil_tmp203 = (unsigned long )(& ops) + 8;
    *((size_t *)__cil_tmp203) = (size_t )0;
    __cil_tmp204 = (unsigned long )(& ops) + 16;
    *((size_t *)__cil_tmp204) = (size_t )0;
    __cil_tmp205 = (unsigned long )(& ops) + 24;
    __cil_tmp206 = (unsigned long )mtd;
    __cil_tmp207 = __cil_tmp206 + 72;
    __cil_tmp208 = *((struct nand_ecclayout **)__cil_tmp207);
    __cil_tmp209 = (unsigned long )__cil_tmp208;
    __cil_tmp210 = __cil_tmp209 + 1796;
    __cil_tmp211 = *((__u32 *)__cil_tmp210);
    *((size_t *)__cil_tmp205) = (size_t )__cil_tmp211;
    __cil_tmp212 = (unsigned long )(& ops) + 32;
    *((size_t *)__cil_tmp212) = (size_t )0;
    __cil_tmp213 = (unsigned long )(& ops) + 40;
    *((uint32_t *)__cil_tmp213) = (uint32_t )1;
    __cil_tmp214 = (unsigned long )(& ops) + 48;
    __cil_tmp215 = (void *)0;
    *((uint8_t **)__cil_tmp214) = (uint8_t *)__cil_tmp215;
    __cil_tmp216 = (unsigned long )(& ops) + 56;
    *((uint8_t **)__cil_tmp216) = writebuf;
    printk("<6>mtd_oobtest: attempting to write past end of device\n");
    printk("<6>mtd_oobtest: an error is expected...\n");
    __cil_tmp217 = (unsigned long )mtd;
    __cil_tmp218 = __cil_tmp217 + 20;
    __cil_tmp219 = *((uint32_t *)__cil_tmp218);
    __cil_tmp220 = (uint64_t )__cil_tmp219;
    __cil_tmp221 = (unsigned long )mtd;
    __cil_tmp222 = __cil_tmp221 + 8;
    __cil_tmp223 = *((uint64_t *)__cil_tmp222);
    __cil_tmp224 = __cil_tmp223 - __cil_tmp220;
    __cil_tmp225 = (loff_t )__cil_tmp224;
    err = mtd_write_oob(mtd, __cil_tmp225, & ops);
    }
    if (err) {
      {
      printk("<6>mtd_oobtest: error occurred as expected\n");
      err = 0;
      }
    } else {
      {
      printk("<6>mtd_oobtest: error: wrote past end of device\n");
      errcnt = errcnt + 1;
      }
    }
    {
    __cil_tmp226 = & ops;
    *((unsigned int *)__cil_tmp226) = 1U;
    __cil_tmp227 = (unsigned long )(& ops) + 8;
    *((size_t *)__cil_tmp227) = (size_t )0;
    __cil_tmp228 = (unsigned long )(& ops) + 16;
    *((size_t *)__cil_tmp228) = (size_t )0;
    __cil_tmp229 = (unsigned long )(& ops) + 24;
    __cil_tmp230 = (unsigned long )mtd;
    __cil_tmp231 = __cil_tmp230 + 72;
    __cil_tmp232 = *((struct nand_ecclayout **)__cil_tmp231);
    __cil_tmp233 = (unsigned long )__cil_tmp232;
    __cil_tmp234 = __cil_tmp233 + 1796;
    __cil_tmp235 = *((__u32 *)__cil_tmp234);
    *((size_t *)__cil_tmp229) = (size_t )__cil_tmp235;
    __cil_tmp236 = (unsigned long )(& ops) + 32;
    *((size_t *)__cil_tmp236) = (size_t )0;
    __cil_tmp237 = (unsigned long )(& ops) + 40;
    *((uint32_t *)__cil_tmp237) = (uint32_t )1;
    __cil_tmp238 = (unsigned long )(& ops) + 48;
    __cil_tmp239 = (void *)0;
    *((uint8_t **)__cil_tmp238) = (uint8_t *)__cil_tmp239;
    __cil_tmp240 = (unsigned long )(& ops) + 56;
    *((uint8_t **)__cil_tmp240) = readbuf;
    printk("<6>mtd_oobtest: attempting to read past end of device\n");
    printk("<6>mtd_oobtest: an error is expected...\n");
    __cil_tmp241 = (unsigned long )mtd;
    __cil_tmp242 = __cil_tmp241 + 20;
    __cil_tmp243 = *((uint32_t *)__cil_tmp242);
    __cil_tmp244 = (uint64_t )__cil_tmp243;
    __cil_tmp245 = (unsigned long )mtd;
    __cil_tmp246 = __cil_tmp245 + 8;
    __cil_tmp247 = *((uint64_t *)__cil_tmp246);
    __cil_tmp248 = __cil_tmp247 - __cil_tmp244;
    __cil_tmp249 = (loff_t )__cil_tmp248;
    err = mtd_read_oob(mtd, __cil_tmp249, & ops);
    }
    if (err) {
      {
      printk("<6>mtd_oobtest: error occurred as expected\n");
      err = 0;
      }
    } else {
      {
      printk("<6>mtd_oobtest: error: read past end of device\n");
      errcnt = errcnt + 1;
      }
    }
  }
  }
  {
  printk("<6>mtd_oobtest: test 5 of 5\n");
  err = erase_whole_device();
  }
  if (err) {
    goto out;
  } else {
  }
  {
  simple_srand(11UL);
  printk("<6>mtd_oobtest: writing OOBs of whole device\n");
  i = 0U;
  }
  {
  while (1) {
    while_continue___1: ;
    {
    __cil_tmp250 = ebcnt - 1;
    __cil_tmp251 = (unsigned int )__cil_tmp250;
    if (i < __cil_tmp251) {
    } else {
      goto while_break___1;
    }
    }
    cnt = 2;
    __cil_tmp252 = (unsigned long )mtd;
    __cil_tmp253 = __cil_tmp252 + 72;
    __cil_tmp254 = *((struct nand_ecclayout **)__cil_tmp253);
    __cil_tmp255 = (unsigned long )__cil_tmp254;
    __cil_tmp256 = __cil_tmp255 + 1796;
    __cil_tmp257 = *((__u32 *)__cil_tmp256);
    sz = (size_t )__cil_tmp257;
    {
    __cil_tmp258 = bbt + i;
    if (*__cil_tmp258) {
      goto __Cont___0;
    } else {
      {
      __cil_tmp259 = i + 1U;
      __cil_tmp260 = bbt + __cil_tmp259;
      if (*__cil_tmp260) {
        goto __Cont___0;
      } else {
      }
      }
    }
    }
    __cil_tmp261 = (unsigned long )mtd;
    __cil_tmp262 = __cil_tmp261 + 20;
    __cil_tmp263 = *((uint32_t *)__cil_tmp262);
    __cil_tmp264 = (unsigned long )mtd;
    __cil_tmp265 = __cil_tmp264 + 16;
    __cil_tmp266 = *((uint32_t *)__cil_tmp265);
    __cil_tmp267 = i + 1U;
    __cil_tmp268 = __cil_tmp267 * __cil_tmp266;
    __cil_tmp269 = __cil_tmp268 - __cil_tmp263;
    addr = (loff_t )__cil_tmp269;
    pg = 0;
    {
    while (1) {
      while_continue___2: ;
      if (pg < cnt) {
      } else {
        goto while_break___2;
      }
      {
      set_random_data(writebuf, sz);
      __cil_tmp270 = & ops;
      *((unsigned int *)__cil_tmp270) = 1U;
      __cil_tmp271 = (unsigned long )(& ops) + 8;
      *((size_t *)__cil_tmp271) = (size_t )0;
      __cil_tmp272 = (unsigned long )(& ops) + 16;
      *((size_t *)__cil_tmp272) = (size_t )0;
      __cil_tmp273 = (unsigned long )(& ops) + 24;
      *((size_t *)__cil_tmp273) = sz;
      __cil_tmp274 = (unsigned long )(& ops) + 32;
      *((size_t *)__cil_tmp274) = (size_t )0;
      __cil_tmp275 = (unsigned long )(& ops) + 40;
      *((uint32_t *)__cil_tmp275) = (uint32_t )0;
      __cil_tmp276 = (unsigned long )(& ops) + 48;
      __cil_tmp277 = (void *)0;
      *((uint8_t **)__cil_tmp276) = (uint8_t *)__cil_tmp277;
      __cil_tmp278 = (unsigned long )(& ops) + 56;
      *((uint8_t **)__cil_tmp278) = writebuf;
      err = mtd_write_oob(mtd, addr, & ops);
      }
      if (err) {
        goto out;
      } else {
      }
      {
      __cil_tmp279 = i % 256U;
      if (__cil_tmp279 == 0U) {
        {
        printk("<6>mtd_oobtest: written up to eraseblock %u\n", i);
        }
      } else {
      }
      }
      {
      __might_sleep("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5472/dscv_tempdir/dscv/ri/32_1/drivers/mtd/tests/mtd_oobtest.c.common.c",
                    680, 0);
      _cond_resched();
      __cil_tmp280 = (unsigned long )mtd;
      __cil_tmp281 = __cil_tmp280 + 20;
      __cil_tmp282 = *((uint32_t *)__cil_tmp281);
      __cil_tmp283 = (loff_t )__cil_tmp282;
      addr = addr + __cil_tmp283;
      pg = pg + 1;
      }
    }
    while_break___2: ;
    }
    __Cont___0:
    i = i + 1U;
  }
  while_break___1: ;
  }
  {
  printk("<6>mtd_oobtest: written %u eraseblocks\n", i);
  simple_srand(11UL);
  printk("<6>mtd_oobtest: verifying all eraseblocks\n");
  i = 0U;
  }
  {
  while (1) {
    while_continue___3: ;
    {
    __cil_tmp284 = ebcnt - 1;
    __cil_tmp285 = (unsigned int )__cil_tmp284;
    if (i < __cil_tmp285) {
    } else {
      goto while_break___3;
    }
    }
    {
    __cil_tmp286 = bbt + i;
    if (*__cil_tmp286) {
      goto __Cont___1;
    } else {
      {
      __cil_tmp287 = i + 1U;
      __cil_tmp288 = bbt + __cil_tmp287;
      if (*__cil_tmp288) {
        goto __Cont___1;
      } else {
      }
      }
    }
    }
    {
    __cil_tmp289 = (unsigned long )mtd;
    __cil_tmp290 = __cil_tmp289 + 72;
    __cil_tmp291 = *((struct nand_ecclayout **)__cil_tmp290);
    __cil_tmp292 = (unsigned long )__cil_tmp291;
    __cil_tmp293 = __cil_tmp292 + 1796;
    __cil_tmp294 = *((__u32 *)__cil_tmp293);
    __cil_tmp295 = __cil_tmp294 * 2U;
    __cil_tmp296 = (size_t )__cil_tmp295;
    set_random_data(writebuf, __cil_tmp296);
    __cil_tmp297 = (unsigned long )mtd;
    __cil_tmp298 = __cil_tmp297 + 20;
    __cil_tmp299 = *((uint32_t *)__cil_tmp298);
    __cil_tmp300 = (unsigned long )mtd;
    __cil_tmp301 = __cil_tmp300 + 16;
    __cil_tmp302 = *((uint32_t *)__cil_tmp301);
    __cil_tmp303 = i + 1U;
    __cil_tmp304 = __cil_tmp303 * __cil_tmp302;
    __cil_tmp305 = __cil_tmp304 - __cil_tmp299;
    addr = (loff_t )__cil_tmp305;
    __cil_tmp306 = & ops;
    *((unsigned int *)__cil_tmp306) = 1U;
    __cil_tmp307 = (unsigned long )(& ops) + 8;
    *((size_t *)__cil_tmp307) = (size_t )0;
    __cil_tmp308 = (unsigned long )(& ops) + 16;
    *((size_t *)__cil_tmp308) = (size_t )0;
    __cil_tmp309 = (unsigned long )(& ops) + 24;
    __cil_tmp310 = (unsigned long )mtd;
    __cil_tmp311 = __cil_tmp310 + 72;
    __cil_tmp312 = *((struct nand_ecclayout **)__cil_tmp311);
    __cil_tmp313 = (unsigned long )__cil_tmp312;
    __cil_tmp314 = __cil_tmp313 + 1796;
    __cil_tmp315 = *((__u32 *)__cil_tmp314);
    __cil_tmp316 = __cil_tmp315 * 2U;
    *((size_t *)__cil_tmp309) = (size_t )__cil_tmp316;
    __cil_tmp317 = (unsigned long )(& ops) + 32;
    *((size_t *)__cil_tmp317) = (size_t )0;
    __cil_tmp318 = (unsigned long )(& ops) + 40;
    *((uint32_t *)__cil_tmp318) = (uint32_t )0;
    __cil_tmp319 = (unsigned long )(& ops) + 48;
    __cil_tmp320 = (void *)0;
    *((uint8_t **)__cil_tmp319) = (uint8_t *)__cil_tmp320;
    __cil_tmp321 = (unsigned long )(& ops) + 56;
    *((uint8_t **)__cil_tmp321) = readbuf;
    err = mtd_read_oob(mtd, addr, & ops);
    }
    if (err) {
      goto out;
    } else {
    }
    {
    __cil_tmp322 = (void const *)readbuf;
    __cil_tmp323 = (void const *)writebuf;
    __cil_tmp324 = (unsigned long )mtd;
    __cil_tmp325 = __cil_tmp324 + 72;
    __cil_tmp326 = *((struct nand_ecclayout **)__cil_tmp325);
    __cil_tmp327 = (unsigned long )__cil_tmp326;
    __cil_tmp328 = __cil_tmp327 + 1796;
    __cil_tmp329 = *((__u32 *)__cil_tmp328);
    __cil_tmp330 = __cil_tmp329 * 2U;
    __cil_tmp331 = (unsigned long )__cil_tmp330;
    tmp___12 = memcmp(__cil_tmp322, __cil_tmp323, __cil_tmp331);
    }
    if (tmp___12) {
      {
      printk("<6>mtd_oobtest: error: verify failed at %#llx\n", addr);
      errcnt = errcnt + 1;
      }
      if (errcnt > 1000) {
        {
        printk("<6>mtd_oobtest: error: too many errors\n");
        }
        goto out;
      } else {
      }
    } else {
    }
    {
    __cil_tmp332 = i % 256U;
    if (__cil_tmp332 == 0U) {
      {
      printk("<6>mtd_oobtest: verified up to eraseblock %u\n", i);
      }
    } else {
    }
    }
    {
    __might_sleep("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5472/dscv_tempdir/dscv/ri/32_1/drivers/mtd/tests/mtd_oobtest.c.common.c",
                  716, 0);
    _cond_resched();
    }
    __Cont___1:
    i = i + 1U;
  }
  while_break___3: ;
  }
  {
  printk("<6>mtd_oobtest: verified %u eraseblocks\n", i);
  printk("<6>mtd_oobtest: finished with %d errors\n", errcnt);
  }
  out:
  {
  __cil_tmp333 = (void const *)bbt;
  kfree(__cil_tmp333);
  __cil_tmp334 = (void const *)writebuf;
  kfree(__cil_tmp334);
  __cil_tmp335 = (void const *)readbuf;
  kfree(__cil_tmp335);
  put_mtd_device(mtd);
  }
  if (err) {
    {
    printk("<6>mtd_oobtest: error %d occurred\n", err);
    }
  } else {
  }
  {
  printk("<6>=================================================\n");
  }
  return (err);
}
}
int init_module(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = mtd_oobtest_init();
  }
  return (tmp___7);
}
}
static void mtd_oobtest_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void mtd_oobtest_exit(void)
{
  {
  return;
}
}
void cleanup_module(void)
{
  {
  {
  mtd_oobtest_exit();
  }
  return;
}
}
static char const __mod_description739[36] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'O', (char const )'u', (char const )'t', (char const )'-',
        (char const )'o', (char const )'f', (char const )'-', (char const )'b',
        (char const )'a', (char const )'n', (char const )'d', (char const )' ',
        (char const )'t', (char const )'e', (char const )'s', (char const )'t',
        (char const )' ', (char const )'m', (char const )'o', (char const )'d',
        (char const )'u', (char const )'l', (char const )'e', (char const )'\000'};
static char const __mod_author740[21] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'A',
        (char const )'d', (char const )'r', (char const )'i', (char const )'a',
        (char const )'n', (char const )' ', (char const )'H', (char const )'u',
        (char const )'n', (char const )'t', (char const )'e', (char const )'r',
        (char const )'\000'};
static char const __mod_license741[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp___7 = mtd_oobtest_init();
  }
  if (tmp___7) {
    goto ldv_final;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___9 = __VERIFIER_nondet_int();
    }
    if (tmp___9) {
    } else {
      goto while_break;
    }
    {
    tmp___8 = __VERIFIER_nondet_int();
    }
    {
    goto switch_default;
    if (0) {
      switch_default:
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  while_break: ;
  }
  {
  mtd_oobtest_exit();
  }
  ldv_final:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int _cond_resched() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct mtd_info *get_mtd_device(struct mtd_info *arg0, int arg1) {
  return (struct mtd_info *)external_alloc();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int mtd_block_isbad(struct mtd_info *arg0, loff_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mtd_erase(struct mtd_info *arg0, struct erase_info *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_mtd_device(struct mtd_info *arg0) {
  return;
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
