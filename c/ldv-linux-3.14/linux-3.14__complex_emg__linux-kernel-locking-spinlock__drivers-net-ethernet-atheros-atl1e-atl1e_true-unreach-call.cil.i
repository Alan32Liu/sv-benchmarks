struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
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
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u16 __sum16;
typedef __u32 __wsum;
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
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
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
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
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
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField6 ;
   struct __anonstruct____missing_field_name_13 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField8 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
struct net_device;
struct file_operations;
struct completion;
struct pid;
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
union __anonunion____missing_field_name_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_18 __annonCompField9 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_22 {
   struct __anonstruct____missing_field_name_23 __annonCompField13 ;
   struct __anonstruct____missing_field_name_24 __annonCompField14 ;
};
union __anonunion____missing_field_name_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_22 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_25 __annonCompField16 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
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
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
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
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_29 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_28 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_35 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
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
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_u_36 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_37 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   union __anonunion_u_36 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_37 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct user_namespace;
struct __anonstruct_kuid_t_38 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_38 kuid_t;
struct __anonstruct_kgid_t_39 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_39 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
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
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_40 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_40 nodemask_t;
struct path;
struct inode;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
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
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
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
   unsigned int memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct ctl_table;
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
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
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled : 1 ;
   bool offline : 1 ;
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
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_133 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_133 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_135 {
   struct __anonstruct____missing_field_name_136 __annonCompField34 ;
   struct __anonstruct____missing_field_name_137 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_135 __annonCompField36 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion____missing_field_name_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_144 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_143 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_144 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_141 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_142 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_139 {
   union __anonunion____missing_field_name_140 __annonCompField38 ;
   union __anonunion____missing_field_name_141 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_145 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_146 __annonCompField44 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_139 __annonCompField43 ;
   union __anonunion____missing_field_name_145 __annonCompField45 ;
   union __anonunion____missing_field_name_147 __annonCompField46 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_148 shared ;
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
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
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
   unsigned long def_flags ;
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
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
struct __anonstruct_sync_serial_settings_151 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_151 sync_serial_settings;
struct __anonstruct_te1_settings_152 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_152 te1_settings;
struct __anonstruct_raw_hdlc_proto_153 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_153 raw_hdlc_proto;
struct __anonstruct_fr_proto_154 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_154 fr_proto;
struct __anonstruct_fr_proto_pvc_155 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_155 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_156 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_156 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_157 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_157 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_158 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_158 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_159 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_160 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_159 ifr_ifrn ;
   union __anonunion_ifr_ifru_160 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_163 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_162 {
   struct __anonstruct____missing_field_name_163 __annonCompField47 ;
};
struct lockref {
   union __anonunion____missing_field_name_162 __annonCompField48 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_165 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_164 {
   struct __anonstruct____missing_field_name_165 __annonCompField49 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_164 __annonCompField50 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_166 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_166 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct export_operations;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_168 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_168 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_169 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_169 __annonCompField51 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
union __anonunion_arg_171 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_170 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_171 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_170 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_172 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_173 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_174 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_172 __annonCompField52 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_173 __annonCompField53 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_174 __annonCompField54 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_175 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_175 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct net;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_177 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_176 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_177 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_176 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_178 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_178 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_180 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_181 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_183 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_184 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_185 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_186 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_179 {
   int _pad[28U] ;
   struct __anonstruct__kill_180 _kill ;
   struct __anonstruct__timer_181 _timer ;
   struct __anonstruct__rt_182 _rt ;
   struct __anonstruct__sigchld_183 _sigchld ;
   struct __anonstruct__sigfault_184 _sigfault ;
   struct __anonstruct__sigpoll_185 _sigpoll ;
   struct __anonstruct__sigsys_186 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_179 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
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
   char start_comm[16U] ;
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
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
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
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct____missing_field_name_190 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_189 {
   struct __anonstruct____missing_field_name_190 __annonCompField55 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_189 __annonCompField56 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_191 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_192 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_194 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_193 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_194 __annonCompField59 ;
};
union __anonunion_type_data_195 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_197 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_196 {
   union __anonunion_payload_197 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_191 __annonCompField57 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_192 __annonCompField58 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_193 __annonCompField60 ;
   union __anonunion_type_data_195 type_data ;
   union __anonunion____missing_field_name_196 __annonCompField61 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
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
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
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
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
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
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
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
   struct cputime prev_cputime ;
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
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
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
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
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
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
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
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   struct hrtimer dl_timer ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned int may_oom : 1 ;
};
struct sched_class;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
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
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
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
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
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
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
enum ldv_22036 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22036 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
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
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct____missing_field_name_214 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_215 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_213 {
   struct __anonstruct____missing_field_name_214 __annonCompField63 ;
   struct __anonstruct____missing_field_name_215 __annonCompField64 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_213 __annonCompField65 ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_217 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_217 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct____missing_field_name_219 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_218 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_219 __annonCompField67 ;
};
union __anonunion____missing_field_name_220 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_221 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_218 __annonCompField68 ;
   __u32 priority ;
   __u8 local_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_rxhash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   union __anonunion____missing_field_name_220 __annonCompField69 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_221 __annonCompField70 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[97U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports sysctl_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   kgid_t sysctl_ping_group_range[2U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
union __anonunion_in6_u_224 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_224 in6_u ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   spinlock_t xfrm_policy_sk_bundle_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   unsigned long flags ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup_name {
   struct callback_head callback_head ;
   char name[] ;
};
struct cgroup {
   unsigned long flags ;
   int id ;
   int nr_css ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   u64 serial_nr ;
   struct cgroup_name *name ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct list_head cset_links ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct cgroup_subsys_state dummy_css ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
   struct simple_xattrs xattrs ;
};
struct cgroupfs_root {
   struct super_block *sb ;
   unsigned long subsys_mask ;
   int hierarchy_id ;
   struct cgroup top_cgroup ;
   int number_of_cgroups ;
   struct list_head root_list ;
   unsigned long flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cgrp_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup_subsys_state * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup_subsys_state * , unsigned int ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int subsys_id ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
   __u32 linkstate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
};
enum ldv_28394 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28395 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_235 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_236 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_237 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_235 adj_list ;
   struct __anonstruct_all_adj_list_236 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   enum ldv_28394 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28395 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_237 __annonCompField74 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct pci_driver;
union __anonunion____missing_field_name_241 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int no_d3cold : 1 ;
   unsigned int d3cold_allowed : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned int transparent : 1 ;
   unsigned int multifunction : 1 ;
   unsigned int is_added : 1 ;
   unsigned int is_busmaster : 1 ;
   unsigned int no_msi : 1 ;
   unsigned int block_cfg_access : 1 ;
   unsigned int broken_parity_status : 1 ;
   unsigned int irq_reroute_variant : 2 ;
   unsigned int msi_enabled : 1 ;
   unsigned int msix_enabled : 1 ;
   unsigned int ari_enabled : 1 ;
   unsigned int is_managed : 1 ;
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   unsigned int broken_intx_masking : 1 ;
   unsigned int io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_241 __annonCompField75 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned int is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_246 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_246 __annonCompField76 ;
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
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
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
   bool sig_ok ;
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
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct iphdr {
   __u8 ihl : 4 ;
   __u8 version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 optimistic_dad ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   void *sysctl ;
};
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_248 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_248 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
union __anonunion____missing_field_name_249 {
   struct sock_filter insns[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   union __anonunion____missing_field_name_249 __annonCompField77 ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion____missing_field_name_254 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion____missing_field_name_254 __annonCompField78 ;
};
struct __anonstruct_socket_lock_t_255 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_255 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_257 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_256 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_257 __annonCompField79 ;
};
union __anonunion____missing_field_name_258 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_260 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_259 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_260 __annonCompField82 ;
};
union __anonunion____missing_field_name_261 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_262 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_256 __annonCompField80 ;
   union __anonunion____missing_field_name_258 __annonCompField81 ;
   union __anonunion____missing_field_name_259 __annonCompField83 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_261 __annonCompField84 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_262 __annonCompField85 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_263 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_263 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned int sk_shutdown : 2 ;
   unsigned int sk_no_check : 2 ;
   unsigned int sk_userlocks : 4 ;
   unsigned int sk_protocol : 8 ;
   unsigned int sk_type : 16 ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * , int ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_264 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_264 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct res_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   u8 cookie_ts : 1 ;
   u8 num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   __u16 res1 : 4 ;
   __u16 doff : 4 ;
   __u16 fin : 1 ;
   __u16 syn : 1 ;
   __u16 rst : 1 ;
   __u16 psh : 1 ;
   __u16 ack : 1 ;
   __u16 urg : 1 ;
   __u16 ece : 1 ;
   __u16 cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
};
struct mii_if_info {
   int phy_id ;
   int advertising ;
   int phy_id_mask ;
   int reg_num_mask ;
   unsigned int full_duplex : 1 ;
   unsigned int force_media : 1 ;
   unsigned int supports_gmii : 1 ;
   struct net_device *dev ;
   int (*mdio_read)(struct net_device * , int , int ) ;
   void (*mdio_write)(struct net_device * , int , int , int ) ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   spinlock_t aca_lock ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6[1U] ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion____missing_field_name_276 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_276 __annonCompField86 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_277 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_279 {
   atomic_t rid ;
   atomic_t ip_id_count ;
};
union __anonunion____missing_field_name_278 {
   struct __anonstruct____missing_field_name_279 __annonCompField88 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[15U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion____missing_field_name_277 __annonCompField87 ;
   union __anonunion____missing_field_name_278 __annonCompField89 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   u32 flush_seq ;
   int total ;
};
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
};
struct atl1e_adapter;
struct atl1e_hw;
struct atl1e_tpd_desc {
   __le64 buffer_addr ;
   __le32 word2 ;
   __le32 word3 ;
};
struct atl1e_recv_ret_status {
   u16 seq_num ;
   u16 hash_lo ;
   __le32 word1 ;
   u16 pkt_flag ;
   u16 err_flag ;
   u16 hash_hi ;
   u16 vtag ;
};
enum atl1e_dma_req_block {
    atl1e_dma_req_128 = 0,
    atl1e_dma_req_256 = 1,
    atl1e_dma_req_512 = 2,
    atl1e_dma_req_1024 = 3,
    atl1e_dma_req_2048 = 4,
    atl1e_dma_req_4096 = 5
} ;
enum atl1e_rrs_type {
    atl1e_rrs_disable = 0,
    atl1e_rrs_ipv4 = 1,
    atl1e_rrs_ipv4_tcp = 2,
    atl1e_rrs_ipv6 = 4,
    atl1e_rrs_ipv6_tcp = 8
} ;
enum atl1e_nic_type {
    athr_l1e = 0,
    athr_l2e_revA = 1,
    athr_l2e_revB = 2
} ;
struct atl1e_hw_stats {
   unsigned long rx_ok ;
   unsigned long rx_bcast ;
   unsigned long rx_mcast ;
   unsigned long rx_pause ;
   unsigned long rx_ctrl ;
   unsigned long rx_fcs_err ;
   unsigned long rx_len_err ;
   unsigned long rx_byte_cnt ;
   unsigned long rx_runt ;
   unsigned long rx_frag ;
   unsigned long rx_sz_64 ;
   unsigned long rx_sz_65_127 ;
   unsigned long rx_sz_128_255 ;
   unsigned long rx_sz_256_511 ;
   unsigned long rx_sz_512_1023 ;
   unsigned long rx_sz_1024_1518 ;
   unsigned long rx_sz_1519_max ;
   unsigned long rx_sz_ov ;
   unsigned long rx_rxf_ov ;
   unsigned long rx_rrd_ov ;
   unsigned long rx_align_err ;
   unsigned long rx_bcast_byte_cnt ;
   unsigned long rx_mcast_byte_cnt ;
   unsigned long rx_err_addr ;
   unsigned long tx_ok ;
   unsigned long tx_bcast ;
   unsigned long tx_mcast ;
   unsigned long tx_pause ;
   unsigned long tx_exc_defer ;
   unsigned long tx_ctrl ;
   unsigned long tx_defer ;
   unsigned long tx_byte_cnt ;
   unsigned long tx_sz_64 ;
   unsigned long tx_sz_65_127 ;
   unsigned long tx_sz_128_255 ;
   unsigned long tx_sz_256_511 ;
   unsigned long tx_sz_512_1023 ;
   unsigned long tx_sz_1024_1518 ;
   unsigned long tx_sz_1519_max ;
   unsigned long tx_1_col ;
   unsigned long tx_2_col ;
   unsigned long tx_late_col ;
   unsigned long tx_abort_col ;
   unsigned long tx_underrun ;
   unsigned long tx_rd_eop ;
   unsigned long tx_len_err ;
   unsigned long tx_trunc ;
   unsigned long tx_bcast_byte ;
   unsigned long tx_mcast_byte ;
};
struct atl1e_hw {
   u8 *hw_addr ;
   resource_size_t mem_rang ;
   struct atl1e_adapter *adapter ;
   enum atl1e_nic_type nic_type ;
   u16 device_id ;
   u16 vendor_id ;
   u16 subsystem_id ;
   u16 subsystem_vendor_id ;
   u8 revision_id ;
   u16 pci_cmd_word ;
   u8 mac_addr[6U] ;
   u8 perm_mac_addr[6U] ;
   u8 preamble_len ;
   u16 max_frame_size ;
   u16 rx_jumbo_th ;
   u16 tx_jumbo_th ;
   u16 media_type ;
   u16 autoneg_advertised ;
   u16 mii_autoneg_adv_reg ;
   u16 mii_1000t_ctrl_reg ;
   u16 imt ;
   u16 ict ;
   u32 smb_timer ;
   u16 rrd_thresh ;
   u16 tpd_thresh ;
   u16 rx_count_down ;
   u16 tx_count_down ;
   u8 tpd_burst ;
   enum atl1e_rrs_type rrs_type ;
   u32 base_cpu ;
   u32 indirect_tab ;
   enum atl1e_dma_req_block dmar_block ;
   enum atl1e_dma_req_block dmaw_block ;
   u8 dmaw_dly_cnt ;
   u8 dmar_dly_cnt ;
   bool phy_configured ;
   bool re_autoneg ;
   bool emi_ca ;
};
struct atl1e_tx_buffer {
   struct sk_buff *skb ;
   u16 flags ;
   u16 length ;
   dma_addr_t dma ;
};
struct atl1e_rx_page {
   dma_addr_t dma ;
   u8 *addr ;
   dma_addr_t write_offset_dma ;
   u32 *write_offset_addr ;
   u32 read_offset ;
};
struct atl1e_rx_page_desc {
   struct atl1e_rx_page rx_page[2U] ;
   u8 rx_using ;
   u16 rx_nxseq ;
};
struct atl1e_tx_ring {
   struct atl1e_tpd_desc *desc ;
   dma_addr_t dma ;
   u16 count ;
   rwlock_t tx_lock ;
   u16 next_to_use ;
   atomic_t next_to_clean ;
   struct atl1e_tx_buffer *tx_buffer ;
   dma_addr_t cmb_dma ;
   u32 *cmb ;
};
struct atl1e_rx_ring {
   void *desc ;
   dma_addr_t dma ;
   int size ;
   u32 page_size ;
   u32 real_page_size ;
   struct atl1e_rx_page_desc rx_page_desc[4U] ;
};
struct atl1e_adapter {
   struct net_device *netdev ;
   struct pci_dev *pdev ;
   struct napi_struct napi ;
   struct mii_if_info mii ;
   struct atl1e_hw hw ;
   struct atl1e_hw_stats hw_stats ;
   u32 wol ;
   u16 link_speed ;
   u16 link_duplex ;
   spinlock_t mdio_lock ;
   spinlock_t tx_lock ;
   atomic_t irq_sem ;
   struct work_struct reset_task ;
   struct work_struct link_chg_task ;
   struct timer_list watchdog_timer ;
   struct timer_list phy_config_timer ;
   dma_addr_t ring_dma ;
   void *ring_vir_addr ;
   u32 ring_size ;
   struct atl1e_tx_ring tx_ring ;
   struct atl1e_rx_ring rx_ring ;
   int num_rx_queues ;
   unsigned long flags ;
   u32 bd_number ;
   u32 pci_state[16U] ;
   u32 *config_space ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef struct net_device *ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum ldv_34898 {
    enable_option = 0,
    range_option = 1,
    list_option = 2
} ;
struct atl1e_opt_list {
   int i ;
   char *str ;
};
struct __anonstruct_r_282 {
   int min ;
   int max ;
};
struct __anonstruct_l_283 {
   int nr ;
   struct atl1e_opt_list *p ;
};
union __anonunion_arg_281 {
   struct __anonstruct_r_282 r ;
   struct __anonstruct_l_283 l ;
};
struct atl1e_option {
   enum ldv_34898 type ;
   char *name ;
   char *err ;
   int def ;
   union __anonunion_arg_281 arg ;
};
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct ldv_thread;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * , char const *
                                , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void __bad_percpu_size(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/f860c18/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_77(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_79(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_84(spinlock_t *ldv_func_arg1 ) ;
extern int __ldv_spin_trylock(spinlock_t * ) ;
static int ldv___ldv_spin_trylock_88(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_mdio_lock_of_atl1e_adapter(void) ;
void ldv_spin_unlock_mdio_lock_of_atl1e_adapter(void) ;
void ldv_spin_unlock_tx_lock_of_atl1e_adapter(void) ;
int ldv_spin_trylock_tx_lock_of_atl1e_adapter(void) ;
extern void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_pre_register_netdev(void) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6572;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6572;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6572;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6572;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6572: ;
  return (pfo_ret__ & 2147483647);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void __rwlock_init(rwlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_81(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_81(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_82(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_82(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_78(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_78(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_78(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_89(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_89(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_89(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_83(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work_on(8192, wq, work);
  }
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work(system_wq, work);
  }
  return (tmp);
}
}
__inline static unsigned short readw(void const volatile *addr )
{
  unsigned short ret ;
  {
  __asm__ volatile ("movw %1,%0": "=r" (ret): "m" (*((unsigned short volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
__inline static void writew(unsigned short val , void volatile *addr )
{
  {
  __asm__ volatile ("movw %0,%1": : "r" (val), "m" (*((unsigned short volatile *)addr)): "memory");
  return;
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
static void *ldv_dev_get_drvdata_58(struct device const *dev ) ;
static int ldv_dev_set_drvdata_59(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern void msleep(unsigned int ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static __sum16 csum_fold(__wsum sum )
{
  {
  __asm__ ("  addl %1,%0\n  adcl $0xffff,%0": "=r" (sum): "r" (sum << 16), "0" (sum & 4294901760U));
  return ((__sum16 )(~ sum >> 16));
}
}
__inline static __wsum csum_tcpudp_nofold(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  {
  __asm__ ("  addl %1, %0\n  adcl %2, %0\n  adcl %3, %0\n  adcl $0, %0\n": "=r" (sum): "g" (daddr),
            "g" (saddr), "g" (((int )len + (int )proto) << 8), "0" (sum));
  return (sum);
}
}
__inline static __sum16 csum_tcpudp_magic(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  __wsum tmp ;
  __sum16 tmp___0 ;
  {
  {
  tmp = csum_tcpudp_nofold(saddr, daddr, (int )len, (int )proto, sum);
  tmp___0 = csum_fold(tmp);
  }
  return (tmp___0);
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  }
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  }
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  }
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  }
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (91), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  }
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  }
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    }
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  }
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  }
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  {
  tmp___0 = is_device_dma_capable(dev);
  }
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  {
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  }
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/f860c18/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/dma-mapping.h",
                       166);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  }
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
    }
  } else {
  }
  return;
}
}
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_supported(dev, mask);
  }
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static int skb_header_cloned(struct sk_buff const *skb )
{
  int dataref ;
  unsigned char *tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 0U) {
    return (0);
  } else {
  }
  {
  tmp = skb_end_pointer(skb);
  dataref = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
  dataref = (dataref & 65535) - (dataref >> 16);
  }
  return (dataref != 1);
}
}
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
__inline static void skb_reset_tail_pointer(struct sk_buff *skb )
{
  {
  skb->tail = (sk_buff_data_t )((long )skb->data) - (sk_buff_data_t )((long )skb->head);
  return;
}
}
__inline static void skb_set_tail_pointer(struct sk_buff *skb , int const offset )
{
  {
  {
  skb_reset_tail_pointer(skb);
  skb->tail = skb->tail + (sk_buff_data_t )offset;
  }
  return;
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static int skb_checksum_start_offset(struct sk_buff const *skb )
{
  unsigned int tmp ;
  {
  {
  tmp = skb_headroom(skb);
  }
  return ((int )((unsigned int )skb->__annonCompField68.__annonCompField67.csum_start - tmp));
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
__inline static int skb_network_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
extern int ___pskb_trim(struct sk_buff * , unsigned int ) ;
__inline static void __skb_trim(struct sk_buff *skb , unsigned int len )
{
  int __ret_warn_on ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp___0 = skb_is_nonlinear((struct sk_buff const *)skb);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("include/linux/skbuff.h", 1839);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    return;
  } else {
  }
  {
  skb->len = len;
  skb_set_tail_pointer(skb, (int const )len);
  }
  return;
}
}
__inline static int __pskb_trim(struct sk_buff *skb , unsigned int len )
{
  int tmp ;
  {
  if (skb->data_len != 0U) {
    {
    tmp = ___pskb_trim(skb, len);
    }
    return (tmp);
  } else {
  }
  {
  __skb_trim(skb, len);
  }
  return (0);
}
}
__inline static int pskb_trim(struct sk_buff *skb , unsigned int len )
{
  int tmp ;
  int tmp___0 ;
  {
  if (len < skb->len) {
    {
    tmp = __pskb_trim(skb, len);
    tmp___0 = tmp;
    }
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb(dev, length, gfp);
  skb = tmp;
  }
  return (skb);
}
}
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb_ip_align(dev, length, 32U);
  }
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  }
  return (tmp___0);
}
}
__inline static bool skb_is_gso(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_end_pointer(skb);
  }
  return ((unsigned int )((struct skb_shared_info *)tmp)->gso_size != 0U);
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
extern void synchronize_irq(unsigned int ) ;
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  }
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = napi_disable_pending(n);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    }
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  {
  __might_sleep("include/linux/netdevice.h", 486, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  }
  goto ldv_38317;
  ldv_38316:
  {
  msleep(1U);
  }
  ldv_38317:
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  }
  if (tmp != 0) {
    goto ldv_38316;
  } else {
  }
  {
  clear_bit(1L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (502), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3200U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_96(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_98(struct net_device *ldv_func_arg1 ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = netpoll_trap();
  }
  if (tmp != 0) {
    {
    netif_tx_start_queue(dev_queue);
    }
    return;
  } else {
  }
  {
  tmp___0 = test_and_set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  if (tmp___0 != 0) {
    {
    __netif_schedule(dev_queue->qdisc);
    }
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  }
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/netdevice.h", 2128);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    }
    return;
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  }
  return;
}
}
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  }
  return (tmp != 0);
}
}
__inline static bool netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  }
  return (tmp___0);
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp != 0);
}
}
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_irq(skb, 1);
  }
  return;
}
}
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_any(skb, 1);
  }
  return;
}
}
extern int netif_receive_skb(struct sk_buff * ) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp == 0);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_95(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_97(struct net_device *ldv_func_arg1 ) ;
__inline static void netif_set_gso_max_size(struct net_device *dev , unsigned int size )
{
  {
  dev->gso_max_size = size;
  return;
}
}
extern int netdev_err(struct net_device const * , char const * , ...) ;
extern int netdev_warn(struct net_device const * , char const * , ...) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  }
  return (tmp);
}
}
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern pci_power_t pci_choose_state(struct pci_dev * , pm_message_t ) ;
extern int __pci_enable_wake(struct pci_dev * , pci_power_t , bool , bool ) ;
__inline static int pci_enable_wake(struct pci_dev *dev , pci_power_t state , bool enable )
{
  int tmp ;
  {
  {
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  }
  return (tmp);
}
}
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_99(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_100(struct pci_driver *ldv_func_arg1 ) ;
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  }
  return;
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return;
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 dma_address, size, (enum dma_data_direction )direction);
  }
  return;
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_58((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_59(& pdev->dev, data);
  }
  return;
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_93(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_92(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_94(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = is_multicast_ether_addr(addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = is_zero_ether_addr(addr);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((struct iphdr *)tmp);
}
}
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_hdrlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  {
  tmp = tcp_hdr(skb);
  }
  return ((unsigned int )((int )tmp->doff * 4));
}
}
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
s32 atl1e_reset_hw(struct atl1e_hw *hw ) ;
s32 atl1e_read_mac_addr(struct atl1e_hw *hw ) ;
s32 atl1e_init_hw(struct atl1e_hw *hw ) ;
s32 atl1e_phy_commit(struct atl1e_hw *hw ) ;
s32 atl1e_get_speed_and_duplex(struct atl1e_hw *hw , u16 *speed , u16 *duplex ) ;
u32 atl1e_hash_mc_addr(struct atl1e_hw *hw , u8 *mc_addr ) ;
void atl1e_hash_set(struct atl1e_hw *hw , u32 hash_value ) ;
s32 atl1e_read_phy_reg(struct atl1e_hw *hw , u16 reg_addr , u16 *phy_data ) ;
s32 atl1e_write_phy_reg(struct atl1e_hw *hw , u32 reg_addr , u16 phy_data ) ;
void atl1e_hw_set_mac_addr(struct atl1e_hw *hw ) ;
s32 atl1e_phy_init(struct atl1e_hw *hw ) ;
void atl1e_force_ps(struct atl1e_hw *hw ) ;
s32 atl1e_restart_autoneg(struct atl1e_hw *hw ) ;
char atl1e_driver_name[6U] ;
char atl1e_driver_version[13U] ;
void atl1e_check_options(struct atl1e_adapter *adapter ) ;
int atl1e_up(struct atl1e_adapter *adapter ) ;
void atl1e_down(struct atl1e_adapter *adapter ) ;
void atl1e_reinit_locked(struct atl1e_adapter *adapter ) ;
void atl1e_set_ethtool_ops(struct net_device *netdev ) ;
char atl1e_driver_name[6U] = { 'A', 'T', 'L', '1',
        'E', '\000'};
char atl1e_driver_version[13U] =
  { '1', '.', '0', '.',
        '0', '.', '7', '-',
        'N', 'A', 'P', 'I',
        '\000'};
static struct pci_device_id const atl1e_pci_tbl[3U] = { {6505U, 4134U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6505U, 4198U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static void atl1e_setup_mac_ctrl(struct atl1e_adapter *adapter ) ;
static u16 const atl1e_rx_page_vld_regs[4U][2U] = { { 5620U, 5621U},
   { 5622U, 5623U},
   { 5624U, 5625U},
   { 5626U, 5627U}};
static u16 const atl1e_rx_page_hi_addr_regs[4U] = { 5440U, 5456U, 5460U, 5436U};
static u16 const atl1e_rx_page_lo_addr_regs[4U][2U] = { { 5444U, 5448U},
   { 5584U, 5588U},
   { 5592U, 5596U},
   { 5600U, 5604U}};
static u16 const atl1e_rx_page_write_offset_regs[4U][2U] = { { 6176U, 6180U},
   { 6184U, 6188U},
   { 6192U, 6196U},
   { 6200U, 6204U}};
static u16 const atl1e_pay_load_size[6U] = { 128U, 256U, 512U, 1024U,
        2048U, 4096U};
__inline static void atl1e_irq_enable(struct atl1e_adapter *adapter )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = atomic_dec_and_test(& adapter->irq_sem);
  tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
  }
  if (tmp___0 != 0L) {
    {
    writel(0U, (void volatile *)adapter->hw.hw_addr + 5632U);
    writel(268655901U, (void volatile *)adapter->hw.hw_addr + 5636U);
    readl((void const volatile *)adapter->hw.hw_addr);
    }
  } else {
  }
  return;
}
}
__inline static void atl1e_irq_disable(struct atl1e_adapter *adapter )
{
  {
  {
  atomic_inc(& adapter->irq_sem);
  writel(0U, (void volatile *)adapter->hw.hw_addr + 5636U);
  readl((void const volatile *)adapter->hw.hw_addr);
  synchronize_irq((adapter->pdev)->irq);
  }
  return;
}
}
__inline static void atl1e_irq_reset(struct atl1e_adapter *adapter )
{
  {
  {
  atomic_set(& adapter->irq_sem, 0);
  writel(0U, (void volatile *)adapter->hw.hw_addr + 5632U);
  writel(0U, (void volatile *)adapter->hw.hw_addr + 5636U);
  readl((void const volatile *)adapter->hw.hw_addr);
  }
  return;
}
}
static void atl1e_phy_config(unsigned long data )
{
  struct atl1e_adapter *adapter ;
  struct atl1e_hw *hw ;
  unsigned long flags ;
  {
  {
  adapter = (struct atl1e_adapter *)data;
  hw = & adapter->hw;
  ldv___ldv_spin_lock_77(& adapter->mdio_lock);
  atl1e_restart_autoneg(hw);
  ldv_spin_unlock_irqrestore_78(& adapter->mdio_lock, flags);
  }
  return;
}
}
void atl1e_reinit_locked(struct atl1e_adapter *adapter )
{
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = preempt_count();
  __ret_warn_on = ((unsigned long )tmp & 2096896UL) != 0UL;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    warn_slowpath_null("drivers/net/ethernet/atheros/atl1e/atl1e_main.c", 147);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  goto ldv_50746;
  ldv_50745:
  {
  msleep(1U);
  }
  ldv_50746:
  {
  tmp___1 = test_and_set_bit(2L, (unsigned long volatile *)(& adapter->flags));
  }
  if (tmp___1 != 0) {
    goto ldv_50745;
  } else {
  }
  {
  atl1e_down(adapter);
  atl1e_up(adapter);
  clear_bit(2L, (unsigned long volatile *)(& adapter->flags));
  }
  return;
}
}
static void atl1e_reset_task(struct work_struct *work )
{
  struct atl1e_adapter *adapter ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct atl1e_adapter *)__mptr + 0xfffffffffffffc68UL;
  atl1e_reinit_locked(adapter);
  }
  return;
}
}
static int atl1e_check_link(struct atl1e_adapter *adapter )
{
  struct atl1e_hw *hw ;
  struct net_device *netdev ;
  int err ;
  u16 speed ;
  u16 duplex ;
  u16 phy_data ;
  u32 value ;
  bool tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  hw = & adapter->hw;
  netdev = adapter->netdev;
  err = 0;
  atl1e_read_phy_reg(hw, 1, & phy_data);
  atl1e_read_phy_reg(hw, 1, & phy_data);
  }
  if (((int )phy_data & 4) == 0) {
    {
    tmp = netif_carrier_ok((struct net_device const *)netdev);
    }
    if ((int )tmp) {
      {
      value = readl((void const volatile *)hw->hw_addr + 5248U);
      value = value & 4294967293U;
      writel(value, (void volatile *)hw->hw_addr + 5248U);
      adapter->link_speed = 65535U;
      netif_carrier_off(netdev);
      netif_stop_queue(netdev);
      }
    } else {
    }
  } else {
    {
    err = atl1e_get_speed_and_duplex(hw, & speed, & duplex);
    tmp___0 = ldv__builtin_expect(err != 0, 0L);
    }
    if (tmp___0 != 0L) {
      return (err);
    } else {
    }
    if ((int )adapter->link_speed != (int )speed || (int )adapter->link_duplex != (int )duplex) {
      {
      adapter->link_speed = speed;
      adapter->link_duplex = duplex;
      atl1e_setup_mac_ctrl(adapter);
      netdev_info((struct net_device const *)netdev, "NIC Link is Up <%d Mbps %s Duplex>\n",
                  (int )adapter->link_speed, (unsigned int )adapter->link_duplex == 2U ? (char *)"Full" : (char *)"Half");
      }
    } else {
    }
    {
    tmp___1 = netif_carrier_ok((struct net_device const *)netdev);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      {
      netif_carrier_on(netdev);
      netif_wake_queue(netdev);
      }
    } else {
    }
  }
  return (0);
}
}
static void atl1e_link_chg_task(struct work_struct *work )
{
  struct atl1e_adapter *adapter ;
  unsigned long flags ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct atl1e_adapter *)__mptr + 0xfffffffffffffc18UL;
  ldv___ldv_spin_lock_79(& adapter->mdio_lock);
  atl1e_check_link(adapter);
  ldv_spin_unlock_irqrestore_78(& adapter->mdio_lock, flags);
  }
  return;
}
}
static void atl1e_link_chg_event(struct atl1e_adapter *adapter )
{
  struct net_device *netdev ;
  u16 phy_data ;
  u16 link_up ;
  bool tmp ;
  {
  {
  netdev = adapter->netdev;
  phy_data = 0U;
  link_up = 0U;
  ldv_spin_lock_81(& adapter->mdio_lock);
  atl1e_read_phy_reg(& adapter->hw, 1, & phy_data);
  atl1e_read_phy_reg(& adapter->hw, 1, & phy_data);
  ldv_spin_unlock_82(& adapter->mdio_lock);
  link_up = (unsigned int )phy_data & 4U;
  }
  if ((unsigned int )link_up == 0U) {
    {
    tmp = netif_carrier_ok((struct net_device const *)netdev);
    }
    if ((int )tmp) {
      {
      netdev_info((struct net_device const *)netdev, "NIC Link is Down\n");
      adapter->link_speed = 65535U;
      netif_stop_queue(netdev);
      }
    } else {
    }
  } else {
  }
  {
  schedule_work(& adapter->link_chg_task);
  }
  return;
}
}
static void atl1e_del_timer(struct atl1e_adapter *adapter )
{
  {
  {
  ldv_del_timer_sync_83(& adapter->phy_config_timer);
  }
  return;
}
}
static void atl1e_cancel_work(struct atl1e_adapter *adapter )
{
  {
  {
  cancel_work_sync(& adapter->reset_task);
  cancel_work_sync(& adapter->link_chg_task);
  }
  return;
}
}
static void atl1e_tx_timeout(struct net_device *netdev )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  schedule_work(& adapter->reset_task);
  }
  return;
}
}
static void atl1e_set_multi(struct net_device *netdev )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct atl1e_hw *hw ;
  struct netdev_hw_addr *ha ;
  u32 mac_ctrl_data ;
  u32 hash_value ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  hw = & adapter->hw;
  mac_ctrl_data = 0U;
  mac_ctrl_data = readl((void const volatile *)hw->hw_addr + 5248U);
  }
  if ((netdev->flags & 256U) != 0U) {
    mac_ctrl_data = mac_ctrl_data | 32768U;
  } else
  if ((netdev->flags & 512U) != 0U) {
    mac_ctrl_data = mac_ctrl_data | 33554432U;
    mac_ctrl_data = mac_ctrl_data & 4294934527U;
  } else {
    mac_ctrl_data = mac_ctrl_data & 4261380095U;
  }
  {
  writel(mac_ctrl_data, (void volatile *)hw->hw_addr + 5248U);
  writel(0U, (void volatile *)hw->hw_addr + 5264U);
  writel(0U, (void volatile *)hw->hw_addr + 5268U);
  __mptr = (struct list_head const *)netdev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  }
  goto ldv_50800;
  ldv_50799:
  {
  hash_value = atl1e_hash_mc_addr(hw, (u8 *)(& ha->addr));
  atl1e_hash_set(hw, hash_value);
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  }
  ldv_50800: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
    goto ldv_50799;
  } else {
  }
  return;
}
}
static void __atl1e_rx_mode(netdev_features_t features , u32 *mac_ctrl_data )
{
  {
  if ((features & 68719476736ULL) != 0ULL) {
    *mac_ctrl_data = *mac_ctrl_data | 134217728U;
  } else {
    *mac_ctrl_data = *mac_ctrl_data & 4160749567U;
  }
  return;
}
}
static void atl1e_rx_mode(struct net_device *netdev , netdev_features_t features )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  u32 mac_ctrl_data ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  mac_ctrl_data = 0U;
  descriptor.modname = "atl1e";
  descriptor.function = "atl1e_rx_mode";
  descriptor.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 334U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)adapter->netdev,
                         "%s\n", "atl1e_rx_mode");
    }
  } else {
  }
  {
  atl1e_irq_disable(adapter);
  mac_ctrl_data = readl((void const volatile *)adapter->hw.hw_addr + 5248U);
  __atl1e_rx_mode(features, & mac_ctrl_data);
  writel(mac_ctrl_data, (void volatile *)adapter->hw.hw_addr + 5248U);
  atl1e_irq_enable(adapter);
  }
  return;
}
}
static void __atl1e_vlan_mode(netdev_features_t features , u32 *mac_ctrl_data )
{
  {
  if ((features & 256ULL) != 0ULL) {
    *mac_ctrl_data = *mac_ctrl_data | 16384U;
  } else {
    *mac_ctrl_data = *mac_ctrl_data & 4294950911U;
  }
  return;
}
}
static void atl1e_vlan_mode(struct net_device *netdev , netdev_features_t features )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  u32 mac_ctrl_data ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  mac_ctrl_data = 0U;
  descriptor.modname = "atl1e";
  descriptor.function = "atl1e_vlan_mode";
  descriptor.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 361U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)adapter->netdev,
                         "%s\n", "atl1e_vlan_mode");
    }
  } else {
  }
  {
  atl1e_irq_disable(adapter);
  mac_ctrl_data = readl((void const volatile *)adapter->hw.hw_addr + 5248U);
  __atl1e_vlan_mode(features, & mac_ctrl_data);
  writel(mac_ctrl_data, (void volatile *)adapter->hw.hw_addr + 5248U);
  atl1e_irq_enable(adapter);
  }
  return;
}
}
static void atl1e_restore_vlan(struct atl1e_adapter *adapter )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "atl1e";
  descriptor.function = "atl1e_restore_vlan";
  descriptor.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 372U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)adapter->netdev,
                         "%s\n", "atl1e_restore_vlan");
    }
  } else {
  }
  {
  atl1e_vlan_mode(adapter->netdev, (adapter->netdev)->features);
  }
  return;
}
}
static int atl1e_set_mac_addr(struct net_device *netdev , void *p )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  addr = (struct sockaddr *)p;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
  }
  {
  tmp___2 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___2) {
    return (-16);
  } else {
  }
  {
  memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  memcpy((void *)(& adapter->hw.mac_addr), (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  atl1e_hw_set_mac_addr(& adapter->hw);
  }
  return (0);
}
}
static netdev_features_t atl1e_fix_features(struct net_device *netdev , netdev_features_t features )
{
  {
  if ((features & 256ULL) != 0ULL) {
    features = features | 128ULL;
  } else {
    features = features & 0xffffffffffffff7fULL;
  }
  return (features);
}
}
static int atl1e_set_features(struct net_device *netdev , netdev_features_t features )
{
  netdev_features_t changed ;
  {
  changed = netdev->features ^ features;
  if ((changed & 256ULL) != 0ULL) {
    {
    atl1e_vlan_mode(netdev, features);
    }
  } else {
  }
  if ((changed & 68719476736ULL) != 0ULL) {
    {
    atl1e_rx_mode(netdev, features);
    }
  } else {
  }
  return (0);
}
}
static int atl1e_change_mtu(struct net_device *netdev , int new_mtu )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  int old_mtu ;
  int max_frame ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  old_mtu = (int )netdev->mtu;
  max_frame = new_mtu + 22;
  }
  if ((unsigned int )max_frame - 64U > 8128U) {
    {
    netdev_warn((struct net_device const *)adapter->netdev, "invalid MTU setting\n");
    }
    return (-22);
  } else {
  }
  if (old_mtu != new_mtu) {
    {
    tmp___1 = netif_running((struct net_device const *)netdev);
    }
    if ((int )tmp___1) {
      goto ldv_50854;
      ldv_50853:
      {
      msleep(1U);
      }
      ldv_50854:
      {
      tmp___0 = test_and_set_bit(2L, (unsigned long volatile *)(& adapter->flags));
      }
      if (tmp___0 != 0) {
        goto ldv_50853;
      } else {
      }
      {
      netdev->mtu = (unsigned int )new_mtu;
      adapter->hw.max_frame_size = (u16 )new_mtu;
      adapter->hw.rx_jumbo_th = (u16 )((max_frame + 7) >> 3);
      atl1e_down(adapter);
      atl1e_up(adapter);
      clear_bit(2L, (unsigned long volatile *)(& adapter->flags));
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int atl1e_mdio_read(struct net_device *netdev , int phy_id , int reg_num )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  u16 result ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  atl1e_read_phy_reg(& adapter->hw, (int )((u16 )reg_num) & 31, & result);
  }
  return ((int )result);
}
}
static void atl1e_mdio_write(struct net_device *netdev , int phy_id , int reg_num ,
                             int val )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  atl1e_write_phy_reg(& adapter->hw, (u32 )reg_num & 31U, (int )((u16 )val));
  }
  return;
}
}
static int atl1e_mii_ioctl(struct net_device *netdev , struct ifreq *ifr , int cmd )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp___0 ;
  unsigned long flags ;
  int retval ;
  bool tmp___1 ;
  int tmp___2 ;
  s32 tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  s32 tmp___5 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  tmp___0 = if_mii(ifr);
  data = tmp___0;
  retval = 0;
  tmp___1 = netif_running((struct net_device const *)netdev);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (-22);
  } else {
  }
  {
  ldv___ldv_spin_lock_84(& adapter->mdio_lock);
  }
  {
  if (cmd == 35143) {
    goto case_35143;
  } else {
  }
  if (cmd == 35144) {
    goto case_35144;
  } else {
  }
  if (cmd == 35145) {
    goto case_35145;
  } else {
  }
  goto switch_default;
  case_35143:
  data->phy_id = 0U;
  goto ldv_50880;
  case_35144:
  {
  tmp___3 = atl1e_read_phy_reg(& adapter->hw, (int )data->reg_num & 31, & data->val_out);
  }
  if (tmp___3 != 0) {
    retval = -5;
    goto out;
  } else {
  }
  goto ldv_50880;
  case_35145: ;
  if (((int )data->reg_num & -32) != 0) {
    retval = -14;
    goto out;
  } else {
  }
  {
  descriptor.modname = "atl1e";
  descriptor.function = "atl1e_mii_ioctl";
  descriptor.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
  descriptor.format = "<atl1e_mii_ioctl> write %x %x\n";
  descriptor.lineno = 516U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)adapter->netdev,
                         "<atl1e_mii_ioctl> write %x %x\n", (int )data->reg_num, (int )data->val_in);
    }
  } else {
  }
  {
  tmp___5 = atl1e_write_phy_reg(& adapter->hw, (u32 )data->reg_num, (int )data->val_in);
  }
  if (tmp___5 != 0) {
    retval = -5;
    goto out;
  } else {
  }
  goto ldv_50880;
  switch_default:
  retval = -95;
  goto ldv_50880;
  switch_break: ;
  }
  ldv_50880: ;
  out:
  {
  ldv_spin_unlock_irqrestore_78(& adapter->mdio_lock, flags);
  }
  return (retval);
}
}
static int atl1e_ioctl(struct net_device *netdev , struct ifreq *ifr , int cmd )
{
  int tmp ;
  {
  {
  if (cmd == 35143) {
    goto case_35143;
  } else {
  }
  if (cmd == 35144) {
    goto case_35144;
  } else {
  }
  if (cmd == 35145) {
    goto case_35145;
  } else {
  }
  goto switch_default;
  case_35143: ;
  case_35144: ;
  case_35145:
  {
  tmp = atl1e_mii_ioctl(netdev, ifr, cmd);
  }
  return (tmp);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static void atl1e_setup_pcicmd(struct pci_dev *pdev )
{
  u16 cmd ;
  {
  {
  pci_read_config_word((struct pci_dev const *)pdev, 4, & cmd);
  cmd = (unsigned int )cmd & 64510U;
  cmd = (u16 )((unsigned int )cmd | 6U);
  pci_write_config_word((struct pci_dev const *)pdev, 4, (int )cmd);
  pci_write_config_dword((struct pci_dev const *)pdev, 68, 0U);
  msleep(1U);
  }
  return;
}
}
static int atl1e_alloc_queues(struct atl1e_adapter *adapter )
{
  {
  return (0);
}
}
static int atl1e_sw_init(struct atl1e_adapter *adapter )
{
  struct atl1e_hw *hw ;
  struct pci_dev *pdev ;
  u32 phy_status_data ;
  int tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  {
  hw = & adapter->hw;
  pdev = adapter->pdev;
  phy_status_data = 0U;
  adapter->wol = 0U;
  adapter->link_speed = 65535U;
  adapter->link_duplex = 2U;
  adapter->num_rx_queues = 1;
  hw->vendor_id = pdev->vendor;
  hw->device_id = pdev->device;
  hw->subsystem_vendor_id = pdev->subsystem_vendor;
  hw->subsystem_id = pdev->subsystem_device;
  hw->revision_id = pdev->revision;
  pci_read_config_word((struct pci_dev const *)pdev, 4, & hw->pci_cmd_word);
  phy_status_data = readl((void const volatile *)hw->hw_addr + 5144U);
  }
  if ((unsigned int )hw->revision_id > 239U) {
    hw->nic_type = 2;
  } else
  if ((phy_status_data & 131072U) != 0U) {
    hw->nic_type = 0;
  } else {
    hw->nic_type = 1;
  }
  {
  phy_status_data = readl((void const volatile *)hw->hw_addr + 5144U);
  }
  if ((phy_status_data & 262144U) != 0U) {
    hw->emi_ca = 1;
  } else {
    hw->emi_ca = 0;
  }
  {
  hw->phy_configured = 0;
  hw->preamble_len = 7U;
  hw->max_frame_size = (u16 )(adapter->netdev)->mtu;
  hw->rx_jumbo_th = (u16 )(((int )hw->max_frame_size + 29) >> 3);
  hw->rrs_type = 0;
  hw->indirect_tab = 0U;
  hw->base_cpu = 0U;
  hw->ict = 50000U;
  hw->smb_timer = 200000U;
  hw->tpd_burst = 5U;
  hw->rrd_thresh = 1U;
  hw->tpd_thresh = (u16 )((unsigned int )adapter->tx_ring.count / 2U);
  hw->rx_count_down = 4U;
  hw->tx_count_down = (u16 )(((int )hw->imt * 4) / 3);
  hw->dmar_block = 3;
  hw->dmaw_block = 3;
  hw->dmar_dly_cnt = 15U;
  hw->dmaw_dly_cnt = 4U;
  tmp = atl1e_alloc_queues(adapter);
  }
  if (tmp != 0) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "Unable to allocate memory for queues\n");
    }
    return (-12);
  } else {
  }
  {
  atomic_set(& adapter->irq_sem, 1);
  spinlock_check(& adapter->mdio_lock);
  __raw_spin_lock_init(& adapter->mdio_lock.__annonCompField19.rlock, "&(&adapter->mdio_lock)->rlock",
                       & __key);
  spinlock_check(& adapter->tx_lock);
  __raw_spin_lock_init(& adapter->tx_lock.__annonCompField19.rlock, "&(&adapter->tx_lock)->rlock",
                       & __key___0);
  set_bit(3L, (unsigned long volatile *)(& adapter->flags));
  }
  return (0);
}
}
static void atl1e_clean_tx_ring(struct atl1e_adapter *adapter )
{
  struct atl1e_tx_ring *tx_ring ;
  struct atl1e_tx_buffer *tx_buffer ;
  struct pci_dev *pdev ;
  u16 index ;
  u16 ring_count ;
  {
  tx_ring = & adapter->tx_ring;
  tx_buffer = (struct atl1e_tx_buffer *)0;
  pdev = adapter->pdev;
  if ((unsigned long )tx_ring->desc == (unsigned long )((struct atl1e_tpd_desc *)0) || (unsigned long )tx_ring->tx_buffer == (unsigned long )((struct atl1e_tx_buffer *)0)) {
    return;
  } else {
  }
  ring_count = tx_ring->count;
  index = 0U;
  goto ldv_50920;
  ldv_50919:
  tx_buffer = tx_ring->tx_buffer + (unsigned long )index;
  if (tx_buffer->dma != 0ULL) {
    if ((int )tx_buffer->flags & 1) {
      {
      pci_unmap_single(pdev, tx_buffer->dma, (size_t )tx_buffer->length, 1);
      }
    } else
    if (((int )tx_buffer->flags & 2) != 0) {
      {
      pci_unmap_page(pdev, tx_buffer->dma, (size_t )tx_buffer->length, 1);
      }
    } else {
    }
    tx_buffer->dma = 0ULL;
  } else {
  }
  index = (u16 )((int )index + 1);
  ldv_50920: ;
  if ((int )index < (int )ring_count) {
    goto ldv_50919;
  } else {
  }
  index = 0U;
  goto ldv_50923;
  ldv_50922:
  tx_buffer = tx_ring->tx_buffer + (unsigned long )index;
  if ((unsigned long )tx_buffer->skb != (unsigned long )((struct sk_buff *)0)) {
    {
    dev_kfree_skb_any(tx_buffer->skb);
    tx_buffer->skb = (struct sk_buff *)0;
    }
  } else {
  }
  index = (u16 )((int )index + 1);
  ldv_50923: ;
  if ((int )index < (int )ring_count) {
    goto ldv_50922;
  } else {
  }
  {
  memset((void *)tx_ring->desc, 0, (unsigned long )ring_count * 16UL);
  memset((void *)tx_ring->tx_buffer, 0, (unsigned long )ring_count * 24UL);
  }
  return;
}
}
static void atl1e_clean_rx_ring(struct atl1e_adapter *adapter )
{
  struct atl1e_rx_ring *rx_ring ;
  struct atl1e_rx_page_desc *rx_page_desc ;
  u16 i ;
  u16 j ;
  {
  rx_ring = & adapter->rx_ring;
  rx_page_desc = (struct atl1e_rx_page_desc *)(& rx_ring->rx_page_desc);
  if ((unsigned long )adapter->ring_vir_addr == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_50936;
  ldv_50935:
  j = 0U;
  goto ldv_50933;
  ldv_50932: ;
  if ((unsigned long )(rx_page_desc + (unsigned long )i)->rx_page[(int )j].addr != (unsigned long )((u8 *)0U)) {
    {
    memset((void *)(rx_page_desc + (unsigned long )i)->rx_page[(int )j].addr, 0, (size_t )rx_ring->real_page_size);
    }
  } else {
  }
  j = (u16 )((int )j + 1);
  ldv_50933: ;
  if ((unsigned int )j <= 1U) {
    goto ldv_50932;
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_50936: ;
  if ((int )i < adapter->num_rx_queues) {
    goto ldv_50935;
  } else {
  }
  return;
}
}
static void atl1e_cal_ring_size(struct atl1e_adapter *adapter , u32 *ring_size )
{
  {
  *ring_size = (((unsigned int )adapter->tx_ring.count * 8U + adapter->rx_ring.real_page_size * (u32 )adapter->num_rx_queues) + (unsigned int )((unsigned long )(adapter->num_rx_queues * 2 + 1)) * 2U) * 2U + 41U;
  return;
}
}
static void atl1e_init_ring_resources(struct atl1e_adapter *adapter )
{
  struct atl1e_rx_ring *rx_ring ;
  int __y ;
  struct lock_class_key __key ;
  {
  {
  rx_ring = (struct atl1e_rx_ring *)0;
  rx_ring = & adapter->rx_ring;
  rx_ring->real_page_size = (adapter->rx_ring.page_size + (u32 )adapter->hw.max_frame_size) + 22U;
  __y = 32;
  rx_ring->real_page_size = ((rx_ring->real_page_size + 31U) / 32U) * 32U;
  atl1e_cal_ring_size(adapter, & adapter->ring_size);
  adapter->ring_vir_addr = (void *)0;
  adapter->rx_ring.desc = (void *)0;
  __rwlock_init(& adapter->tx_ring.tx_lock, "&adapter->tx_ring.tx_lock", & __key);
  }
  return;
}
}
static void atl1e_init_ring_ptrs(struct atl1e_adapter *adapter )
{
  struct atl1e_tx_ring *tx_ring ;
  struct atl1e_rx_ring *rx_ring ;
  struct atl1e_rx_page_desc *rx_page_desc ;
  int i ;
  int j ;
  {
  {
  tx_ring = (struct atl1e_tx_ring *)0;
  rx_ring = (struct atl1e_rx_ring *)0;
  rx_page_desc = (struct atl1e_rx_page_desc *)0;
  tx_ring = & adapter->tx_ring;
  rx_ring = & adapter->rx_ring;
  rx_page_desc = (struct atl1e_rx_page_desc *)(& rx_ring->rx_page_desc);
  tx_ring->next_to_use = 0U;
  atomic_set(& tx_ring->next_to_clean, 0);
  i = 0;
  }
  goto ldv_50961;
  ldv_50960:
  (rx_page_desc + (unsigned long )i)->rx_using = 0U;
  (rx_page_desc + (unsigned long )i)->rx_nxseq = 0U;
  j = 0;
  goto ldv_50958;
  ldv_50957:
  *((rx_page_desc + (unsigned long )i)->rx_page[j].write_offset_addr) = 0U;
  (rx_page_desc + (unsigned long )i)->rx_page[j].read_offset = 0U;
  j = j + 1;
  ldv_50958: ;
  if (j <= 1) {
    goto ldv_50957;
  } else {
  }
  i = i + 1;
  ldv_50961: ;
  if (i < adapter->num_rx_queues) {
    goto ldv_50960;
  } else {
  }
  return;
}
}
static void atl1e_free_ring_resources(struct atl1e_adapter *adapter )
{
  struct pci_dev *pdev ;
  {
  {
  pdev = adapter->pdev;
  atl1e_clean_tx_ring(adapter);
  atl1e_clean_rx_ring(adapter);
  }
  if ((unsigned long )adapter->ring_vir_addr != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(pdev, (size_t )adapter->ring_size, adapter->ring_vir_addr,
                        adapter->ring_dma);
    adapter->ring_vir_addr = (void *)0;
    }
  } else {
  }
  if ((unsigned long )adapter->tx_ring.tx_buffer != (unsigned long )((struct atl1e_tx_buffer *)0)) {
    {
    kfree((void const *)adapter->tx_ring.tx_buffer);
    adapter->tx_ring.tx_buffer = (struct atl1e_tx_buffer *)0;
    }
  } else {
  }
  return;
}
}
static int atl1e_setup_ring_resources(struct atl1e_adapter *adapter )
{
  struct pci_dev *pdev ;
  struct atl1e_tx_ring *tx_ring ;
  struct atl1e_rx_ring *rx_ring ;
  struct atl1e_rx_page_desc *rx_page_desc ;
  int size ;
  int i ;
  int j ;
  u32 offset ;
  int err ;
  int __y ;
  void *tmp ;
  int __y___0 ;
  long tmp___0 ;
  {
  pdev = adapter->pdev;
  offset = 0U;
  err = 0;
  if ((unsigned long )adapter->ring_vir_addr != (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  {
  tx_ring = & adapter->tx_ring;
  rx_ring = & adapter->rx_ring;
  size = (int )adapter->ring_size;
  adapter->ring_vir_addr = pci_alloc_consistent(pdev, (size_t )adapter->ring_size,
                                                & adapter->ring_dma);
  }
  if ((unsigned long )adapter->ring_vir_addr == (unsigned long )((void *)0)) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "pci_alloc_consistent failed, size = D%d\n",
               size);
    }
    return (-12);
  } else {
  }
  {
  memset(adapter->ring_vir_addr, 0, (size_t )adapter->ring_size);
  rx_page_desc = (struct atl1e_rx_page_desc *)(& rx_ring->rx_page_desc);
  __y = 8;
  tx_ring->dma = ((adapter->ring_dma + 7ULL) / 8ULL) * 8ULL;
  offset = (u32 )tx_ring->dma - (u32 )adapter->ring_dma;
  tx_ring->desc = (struct atl1e_tpd_desc *)adapter->ring_vir_addr + (unsigned long )offset;
  size = (int )((unsigned int )tx_ring->count * 24U);
  tmp = kzalloc((size_t )size, 208U);
  tx_ring->tx_buffer = (struct atl1e_tx_buffer *)tmp;
  }
  if ((unsigned long )tx_ring->tx_buffer == (unsigned long )((struct atl1e_tx_buffer *)0)) {
    err = -12;
    goto failed;
  } else {
  }
  offset = offset + (u32 )tx_ring->count * 16U;
  __y___0 = 32;
  offset = ((offset + 31U) / 32U) * 32U;
  i = 0;
  goto ldv_50988;
  ldv_50987:
  j = 0;
  goto ldv_50985;
  ldv_50984:
  (rx_page_desc + (unsigned long )i)->rx_page[j].dma = adapter->ring_dma + (dma_addr_t )offset;
  (rx_page_desc + (unsigned long )i)->rx_page[j].addr = (u8 *)adapter->ring_vir_addr + (unsigned long )offset;
  offset = offset + rx_ring->real_page_size;
  j = j + 1;
  ldv_50985: ;
  if (j <= 1) {
    goto ldv_50984;
  } else {
  }
  i = i + 1;
  ldv_50988: ;
  if (i < adapter->num_rx_queues) {
    goto ldv_50987;
  } else {
  }
  tx_ring->cmb_dma = adapter->ring_dma + (dma_addr_t )offset;
  tx_ring->cmb = (u32 *)adapter->ring_vir_addr + (unsigned long )offset;
  offset = offset + 4U;
  i = 0;
  goto ldv_50994;
  ldv_50993:
  j = 0;
  goto ldv_50991;
  ldv_50990:
  (rx_page_desc + (unsigned long )i)->rx_page[j].write_offset_dma = adapter->ring_dma + (dma_addr_t )offset;
  (rx_page_desc + (unsigned long )i)->rx_page[j].write_offset_addr = (u32 *)adapter->ring_vir_addr + (unsigned long )offset;
  offset = offset + 4U;
  j = j + 1;
  ldv_50991: ;
  if (j <= 1) {
    goto ldv_50990;
  } else {
  }
  i = i + 1;
  ldv_50994: ;
  if (i < adapter->num_rx_queues) {
    goto ldv_50993;
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(offset > adapter->ring_size, 0L);
  }
  if (tmp___0 != 0L) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "offset(%d) > ring size(%d) !!\n",
               offset, adapter->ring_size);
    err = -1;
    }
    goto failed;
  } else {
  }
  return (0);
  failed: ;
  if ((unsigned long )adapter->ring_vir_addr != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(pdev, (size_t )adapter->ring_size, adapter->ring_vir_addr,
                        adapter->ring_dma);
    adapter->ring_vir_addr = (void *)0;
    }
  } else {
  }
  return (err);
}
}
__inline static void atl1e_configure_des_ring(struct atl1e_adapter *adapter )
{
  struct atl1e_hw *hw ;
  struct atl1e_rx_ring *rx_ring ;
  struct atl1e_tx_ring *tx_ring ;
  struct atl1e_rx_page_desc *rx_page_desc ;
  int i ;
  int j ;
  u32 page_phy_addr ;
  u32 offset_phy_addr ;
  {
  {
  hw = & adapter->hw;
  rx_ring = & adapter->rx_ring;
  tx_ring = & adapter->tx_ring;
  rx_page_desc = (struct atl1e_rx_page_desc *)0;
  writel((unsigned int )(adapter->ring_dma >> 32), (void volatile *)hw->hw_addr + 5440U);
  writel((unsigned int )tx_ring->dma, (void volatile *)hw->hw_addr + 5452U);
  writel((unsigned int )tx_ring->count, (void volatile *)hw->hw_addr + 5468U);
  writel((unsigned int )tx_ring->cmb_dma, (void volatile *)hw->hw_addr + 6208U);
  rx_page_desc = (struct atl1e_rx_page_desc *)(& rx_ring->rx_page_desc);
  i = 0;
  }
  goto ldv_51011;
  ldv_51010:
  {
  writel((unsigned int )(adapter->ring_dma >> 32), (void volatile *)hw->hw_addr + (unsigned long )atl1e_rx_page_hi_addr_regs[i]);
  j = 0;
  }
  goto ldv_51008;
  ldv_51007:
  {
  page_phy_addr = (u32 )(rx_page_desc + (unsigned long )i)->rx_page[j].dma;
  offset_phy_addr = (u32 )(rx_page_desc + (unsigned long )i)->rx_page[j].write_offset_dma;
  writel(page_phy_addr, (void volatile *)hw->hw_addr + (unsigned long )atl1e_rx_page_lo_addr_regs[i][j]);
  writel(offset_phy_addr, (void volatile *)hw->hw_addr + (unsigned long )atl1e_rx_page_write_offset_regs[i][j]);
  writeb(1, (void volatile *)hw->hw_addr + (unsigned long )atl1e_rx_page_vld_regs[i][j]);
  j = j + 1;
  }
  ldv_51008: ;
  if (j <= 1) {
    goto ldv_51007;
  } else {
  }
  i = i + 1;
  ldv_51011: ;
  if (i <= 3) {
    goto ldv_51010;
  } else {
  }
  {
  writel(rx_ring->page_size, (void volatile *)hw->hw_addr + 5464U);
  writel(1U, (void volatile *)hw->hw_addr + 5428U);
  }
  return;
}
}
__inline static void atl1e_configure_tx(struct atl1e_adapter *adapter )
{
  struct atl1e_hw *hw ;
  u32 dev_ctrl_data ;
  u32 max_pay_load ;
  u32 jumbo_thresh ;
  u32 extra_size ;
  u32 __min1 ;
  u32 __min2 ;
  u32 __min1___0 ;
  u32 __min2___0 ;
  {
  hw = & adapter->hw;
  dev_ctrl_data = 0U;
  max_pay_load = 0U;
  jumbo_thresh = 0U;
  extra_size = 0U;
  if ((unsigned int )hw->nic_type != 2U) {
    extra_size = 22U;
    if ((unsigned int )hw->max_frame_size <= 1500U) {
      jumbo_thresh = (u32 )hw->max_frame_size + extra_size;
    } else
    if ((unsigned int )hw->max_frame_size <= 6143U) {
      jumbo_thresh = (((u32 )hw->max_frame_size + extra_size) * 2U) / 3U;
    } else {
      jumbo_thresh = ((u32 )hw->max_frame_size + extra_size) / 2U;
    }
    {
    writel((jumbo_thresh + 7U) >> 3, (void volatile *)hw->hw_addr + 5508U);
    }
  } else {
  }
  {
  dev_ctrl_data = readl((void const volatile *)hw->hw_addr + 96U);
  max_pay_load = (dev_ctrl_data >> 5) & 7U;
  __min1 = max_pay_load;
  __min2 = hw->dmaw_block;
  hw->dmaw_block = (enum atl1e_dma_req_block )(__min1 < __min2 ? __min1 : __min2);
  max_pay_load = (dev_ctrl_data >> 12) & 7U;
  __min1___0 = max_pay_load;
  __min2___0 = hw->dmar_block;
  hw->dmar_block = (enum atl1e_dma_req_block )(__min1___0 < __min2___0 ? __min1___0 : __min2___0);
  }
  if ((unsigned int )hw->nic_type != 2U) {
    {
    writew((int )atl1e_pay_load_size[(unsigned int )hw->dmar_block], (void volatile *)hw->hw_addr + 5506U);
    }
  } else {
  }
  {
  writew((int )((unsigned short )(((int )((short )hw->tpd_burst) & 15) | 96)), (void volatile *)hw->hw_addr + 5504U);
  }
  return;
}
}
__inline static void atl1e_configure_rx(struct atl1e_adapter *adapter )
{
  struct atl1e_hw *hw ;
  u32 rxf_len ;
  u32 rxf_low ;
  u32 rxf_high ;
  u32 rxf_thresh_data ;
  u32 rxq_ctrl_data ;
  {
  hw = & adapter->hw;
  rxf_len = 0U;
  rxf_low = 0U;
  rxf_high = 0U;
  rxf_thresh_data = 0U;
  rxq_ctrl_data = 0U;
  if ((unsigned int )hw->nic_type != 2U) {
    {
    writew((int )((unsigned short )(((int )((short )hw->rx_jumbo_th) & 2047) | 2048)),
           (void volatile *)hw->hw_addr + 5540U);
    rxf_len = readl((void const volatile *)hw->hw_addr + 5412U);
    rxf_high = (rxf_len * 4U) / 5U;
    rxf_low = rxf_len / 5U;
    rxf_thresh_data = (rxf_high & 4095U) | ((rxf_low & 4095U) << 16);
    writel(rxf_thresh_data, (void volatile *)hw->hw_addr + 5544U);
    }
  } else {
  }
  {
  writel(hw->indirect_tab, (void volatile *)hw->hw_addr + 5472U);
  writel(hw->base_cpu, (void volatile *)hw->hw_addr + 5500U);
  }
  if ((int )hw->rrs_type & 1) {
    rxq_ctrl_data = rxq_ctrl_data | 65536U;
  } else {
  }
  if (((unsigned int )hw->rrs_type & 2U) != 0U) {
    rxq_ctrl_data = rxq_ctrl_data | 131072U;
  } else {
  }
  if (((unsigned int )hw->rrs_type & 4U) != 0U) {
    rxq_ctrl_data = rxq_ctrl_data | 262144U;
  } else {
  }
  if (((unsigned int )hw->rrs_type & 8U) != 0U) {
    rxq_ctrl_data = rxq_ctrl_data | 524288U;
  } else {
  }
  if ((unsigned int )hw->rrs_type != 0U) {
    rxq_ctrl_data = rxq_ctrl_data | 671088640U;
  } else {
  }
  {
  rxq_ctrl_data = rxq_ctrl_data | 3221225600U;
  writel(rxq_ctrl_data, (void volatile *)hw->hw_addr + 5536U);
  }
  return;
}
}
__inline static void atl1e_configure_dma(struct atl1e_adapter *adapter )
{
  struct atl1e_hw *hw ;
  u32 dma_ctrl_data ;
  {
  {
  hw = & adapter->hw;
  dma_ctrl_data = 0U;
  dma_ctrl_data = 2097152U;
  dma_ctrl_data = dma_ctrl_data | (((unsigned int )hw->dmar_block & 7U) << 4);
  dma_ctrl_data = dma_ctrl_data | (((unsigned int )hw->dmaw_block & 7U) << 7);
  dma_ctrl_data = dma_ctrl_data | 1028U;
  dma_ctrl_data = dma_ctrl_data | (((unsigned int )hw->dmar_dly_cnt << 11) & 65535U);
  dma_ctrl_data = dma_ctrl_data | (((unsigned int )hw->dmaw_dly_cnt & 15U) << 16);
  writel(dma_ctrl_data, (void volatile *)hw->hw_addr + 5568U);
  }
  return;
}
}
static void atl1e_setup_mac_ctrl(struct atl1e_adapter *adapter )
{
  u32 value ;
  struct atl1e_hw *hw ;
  struct net_device *netdev ;
  {
  hw = & adapter->hw;
  netdev = adapter->netdev;
  value = 3U;
  if ((unsigned int )adapter->link_duplex == 2U) {
    value = value | 32U;
  } else {
  }
  {
  value = value | ((unsigned int )adapter->link_speed == 1000U ? 2097152U : 1048576U);
  value = value | 12U;
  value = value | 192U;
  value = value | (((unsigned int )adapter->hw.preamble_len & 15U) << 10);
  __atl1e_vlan_mode(netdev->features, & value);
  value = value | 67108864U;
  }
  if ((netdev->flags & 256U) != 0U) {
    value = value | 32768U;
  } else {
  }
  if ((netdev->flags & 512U) != 0U) {
    value = value | 33554432U;
  } else {
  }
  if ((netdev->features & 68719476736ULL) != 0ULL) {
    value = value | 134217728U;
  } else {
  }
  {
  writel(value, (void volatile *)hw->hw_addr + 5248U);
  }
  return;
}
}
static int atl1e_configure(struct atl1e_adapter *adapter )
{
  struct atl1e_hw *hw ;
  u32 intr_status_data ;
  long tmp ;
  {
  {
  hw = & adapter->hw;
  intr_status_data = 0U;
  writel(4294967295U, (void volatile *)hw->hw_addr + 5632U);
  atl1e_hw_set_mac_addr(hw);
  writel(0U, (void volatile *)hw->hw_addr + 5280U);
  atl1e_configure_des_ring(adapter);
  writew((int )hw->imt, (void volatile *)hw->hw_addr + 5128U);
  writew((int )hw->imt, (void volatile *)hw->hw_addr + 5130U);
  writel(548U, (void volatile *)hw->hw_addr + 5120U);
  writew((int )hw->rrd_thresh, (void volatile *)hw->hw_addr + 5578U);
  writew((int )hw->tpd_thresh, (void volatile *)hw->hw_addr + 5576U);
  writew((int )hw->rx_count_down, (void volatile *)hw->hw_addr + 5582U);
  writew((int )hw->tx_count_down, (void volatile *)hw->hw_addr + 5580U);
  writew((int )hw->ict, (void volatile *)hw->hw_addr + 5134U);
  writel((unsigned int )((int )hw->max_frame_size + 22), (void volatile *)hw->hw_addr + 5276U);
  atl1e_configure_tx(adapter);
  atl1e_configure_rx(adapter);
  atl1e_configure_dma(adapter);
  writel(hw->smb_timer, (void volatile *)hw->hw_addr + 5572U);
  intr_status_data = readl((void const volatile *)hw->hw_addr + 5632U);
  tmp = ldv__builtin_expect((intr_status_data & 268435456U) != 0U, 0L);
  }
  if (tmp != 0L) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "atl1e_configure failed, PCIE phy link down\n");
    }
    return (-1);
  } else {
  }
  {
  writel(2147483647U, (void volatile *)hw->hw_addr + 5632U);
  }
  return (0);
}
}
static struct net_device_stats *atl1e_get_stats(struct net_device *netdev )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct atl1e_hw_stats *hw_stats ;
  struct net_device_stats *net_stats ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  hw_stats = & adapter->hw_stats;
  net_stats = & netdev->stats;
  net_stats->rx_bytes = hw_stats->rx_byte_cnt;
  net_stats->tx_bytes = hw_stats->tx_byte_cnt;
  net_stats->multicast = hw_stats->rx_mcast;
  net_stats->collisions = ((hw_stats->tx_1_col + hw_stats->tx_2_col) + hw_stats->tx_late_col) + hw_stats->tx_abort_col;
  net_stats->rx_errors = (((((hw_stats->rx_frag + hw_stats->rx_fcs_err) + hw_stats->rx_len_err) + hw_stats->rx_sz_ov) + hw_stats->rx_rrd_ov) + hw_stats->rx_align_err) + hw_stats->rx_rxf_ov;
  net_stats->rx_fifo_errors = hw_stats->rx_rxf_ov;
  net_stats->rx_length_errors = hw_stats->rx_len_err;
  net_stats->rx_crc_errors = hw_stats->rx_fcs_err;
  net_stats->rx_frame_errors = hw_stats->rx_align_err;
  net_stats->rx_dropped = hw_stats->rx_rrd_ov;
  net_stats->tx_errors = ((hw_stats->tx_late_col + hw_stats->tx_abort_col) + hw_stats->tx_underrun) + hw_stats->tx_trunc;
  net_stats->tx_fifo_errors = hw_stats->tx_underrun;
  net_stats->tx_aborted_errors = hw_stats->tx_abort_col;
  net_stats->tx_window_errors = hw_stats->tx_late_col;
  net_stats->rx_packets = hw_stats->rx_ok + net_stats->rx_errors;
  net_stats->tx_packets = hw_stats->tx_ok + net_stats->tx_errors;
  }
  return (net_stats);
}
}
static void atl1e_update_hw_stats(struct atl1e_adapter *adapter )
{
  u16 hw_reg_addr ;
  unsigned long *stats_item ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  hw_reg_addr = 0U;
  stats_item = (unsigned long *)0UL;
  hw_reg_addr = 5888U;
  stats_item = & adapter->hw_stats.rx_ok;
  goto ldv_51064;
  ldv_51063:
  {
  tmp = readl((void const volatile *)adapter->hw.hw_addr + (unsigned long )hw_reg_addr);
  *stats_item = *stats_item + (unsigned long )tmp;
  stats_item = stats_item + 1;
  hw_reg_addr = (unsigned int )hw_reg_addr + 4U;
  }
  ldv_51064: ;
  if ((unsigned int )hw_reg_addr <= 5980U) {
    goto ldv_51063;
  } else {
  }
  hw_reg_addr = 5984U;
  stats_item = & adapter->hw_stats.tx_ok;
  goto ldv_51067;
  ldv_51066:
  {
  tmp___0 = readl((void const volatile *)adapter->hw.hw_addr + (unsigned long )hw_reg_addr);
  *stats_item = *stats_item + (unsigned long )tmp___0;
  stats_item = stats_item + 1;
  hw_reg_addr = (unsigned int )hw_reg_addr + 4U;
  }
  ldv_51067: ;
  if ((unsigned int )hw_reg_addr <= 6080U) {
    goto ldv_51066;
  } else {
  }
  return;
}
}
__inline static void atl1e_clear_phy_int(struct atl1e_adapter *adapter )
{
  u16 phy_data ;
  {
  {
  ldv_spin_lock_81(& adapter->mdio_lock);
  atl1e_read_phy_reg(& adapter->hw, 19, & phy_data);
  ldv_spin_unlock_82(& adapter->mdio_lock);
  }
  return;
}
}
static bool atl1e_clean_tx_irq(struct atl1e_adapter *adapter )
{
  struct atl1e_tx_ring *tx_ring ;
  struct atl1e_tx_buffer *tx_buffer ;
  u16 hw_next_to_clean ;
  unsigned short tmp ;
  u16 next_to_clean ;
  int tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  {
  tx_ring = & adapter->tx_ring;
  tx_buffer = (struct atl1e_tx_buffer *)0;
  tmp = readw((void const volatile *)adapter->hw.hw_addr + 6148U);
  hw_next_to_clean = tmp;
  tmp___0 = atomic_read((atomic_t const *)(& tx_ring->next_to_clean));
  next_to_clean = (u16 )tmp___0;
  }
  goto ldv_51081;
  ldv_51080:
  tx_buffer = tx_ring->tx_buffer + (unsigned long )next_to_clean;
  if (tx_buffer->dma != 0ULL) {
    if ((int )tx_buffer->flags & 1) {
      {
      pci_unmap_single(adapter->pdev, tx_buffer->dma, (size_t )tx_buffer->length,
                       1);
      }
    } else
    if (((int )tx_buffer->flags & 2) != 0) {
      {
      pci_unmap_page(adapter->pdev, tx_buffer->dma, (size_t )tx_buffer->length, 1);
      }
    } else {
    }
    tx_buffer->dma = 0ULL;
  } else {
  }
  if ((unsigned long )tx_buffer->skb != (unsigned long )((struct sk_buff *)0)) {
    {
    dev_kfree_skb_irq(tx_buffer->skb);
    tx_buffer->skb = (struct sk_buff *)0;
    }
  } else {
  }
  next_to_clean = (u16 )((int )next_to_clean + 1);
  if ((int )next_to_clean == (int )tx_ring->count) {
    next_to_clean = 0U;
  } else {
  }
  ldv_51081: ;
  if ((int )next_to_clean != (int )hw_next_to_clean) {
    goto ldv_51080;
  } else {
  }
  {
  atomic_set(& tx_ring->next_to_clean, (int )next_to_clean);
  tmp___1 = netif_queue_stopped((struct net_device const *)adapter->netdev);
  }
  if ((int )tmp___1) {
    {
    tmp___2 = netif_carrier_ok((struct net_device const *)adapter->netdev);
    }
    if ((int )tmp___2) {
      {
      netif_wake_queue(adapter->netdev);
      }
    } else {
    }
  } else {
  }
  return (1);
}
}
static irqreturn_t atl1e_intr(int irq , void *data )
{
  struct net_device *netdev ;
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct atl1e_hw *hw ;
  int max_ints ;
  int handled ;
  u32 status ;
  bool tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  {
  {
  netdev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  hw = & adapter->hw;
  max_ints = 10;
  handled = 0;
  }
  ldv_51094:
  {
  status = readl((void const volatile *)hw->hw_addr + 5632U);
  }
  if ((status & 268655901U) == 0U || (int )status < 0) {
    if (max_ints != 10) {
      handled = 1;
    } else {
    }
    goto ldv_51093;
  } else {
  }
  if ((status & 4096U) != 0U) {
    {
    atl1e_clear_phy_int(adapter);
    }
  } else {
  }
  {
  writel(status | 2147483648U, (void volatile *)hw->hw_addr + 5632U);
  handled = 1;
  }
  if ((status & 268435456U) != 0U) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "pcie phy linkdown %x\n",
               status);
    tmp___0 = netif_running((struct net_device const *)adapter->netdev);
    }
    if ((int )tmp___0) {
      {
      atl1e_irq_reset(adapter);
      schedule_work(& adapter->reset_task);
      }
      goto ldv_51093;
    } else {
    }
  } else {
  }
  if ((status & 3072U) != 0U) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "PCIE DMA RW error (status = 0x%x)\n",
               status);
    atl1e_irq_reset(adapter);
    schedule_work(& adapter->reset_task);
    }
    goto ldv_51093;
  } else {
  }
  if ((int )status & 1) {
    {
    atl1e_update_hw_stats(adapter);
    }
  } else {
  }
  if ((status & 4100U) != 0U) {
    {
    netdev->stats.tx_carrier_errors = netdev->stats.tx_carrier_errors + 1UL;
    atl1e_link_chg_event(adapter);
    }
    goto ldv_51093;
  } else {
  }
  if ((status & 131328U) != 0U) {
    {
    atl1e_clean_tx_irq(adapter);
    }
  } else {
  }
  if ((status & 65560U) != 0U) {
    {
    writel(268590341U, (void volatile *)hw->hw_addr + 5636U);
    readl((void const volatile *)hw->hw_addr);
    tmp___1 = napi_schedule_prep(& adapter->napi);
    tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
    }
    if (tmp___2 != 0L) {
      {
      __napi_schedule(& adapter->napi);
      }
    } else {
    }
  } else {
  }
  max_ints = max_ints - 1;
  if (max_ints > 0) {
    goto ldv_51094;
  } else {
  }
  ldv_51093:
  {
  writel(0U, (void volatile *)adapter->hw.hw_addr + 5632U);
  }
  return ((irqreturn_t )handled);
}
}
__inline static void atl1e_rx_checksum(struct atl1e_adapter *adapter , struct sk_buff *skb ,
                                       struct atl1e_recv_ret_status *prrs )
{
  u8 *packet ;
  struct iphdr *iph ;
  u16 head_len ;
  u16 pkt_flags ;
  u16 err_flags ;
  {
  {
  packet = (u8 *)prrs + 1U;
  head_len = 14U;
  skb_checksum_none_assert((struct sk_buff const *)skb);
  pkt_flags = prrs->pkt_flag;
  err_flags = prrs->err_flag;
  }
  if (((unsigned int )pkt_flags & 1040U) != 0U && ((unsigned int )pkt_flags & 6144U) != 0U) {
    if (((int )pkt_flags & 1024) != 0) {
      if (((int )pkt_flags & 128) != 0) {
        head_len = (unsigned int )head_len + 8U;
      } else {
      }
      iph = (struct iphdr *)packet + (unsigned long )head_len;
      if ((unsigned int )iph->frag_off != 0U && ((int )pkt_flags & 64) == 0) {
        goto hw_xsum;
      } else {
      }
    } else {
    }
    if (((int )err_flags & 192) == 0) {
      skb->ip_summed = 1U;
      return;
    } else {
    }
  } else {
  }
  hw_xsum: ;
  return;
}
}
static struct atl1e_rx_page *atl1e_get_rx_page(struct atl1e_adapter *adapter , u8 que )
{
  struct atl1e_rx_page_desc *rx_page_desc ;
  u8 rx_using ;
  {
  rx_page_desc = (struct atl1e_rx_page_desc *)(& adapter->rx_ring.rx_page_desc);
  rx_using = (rx_page_desc + (unsigned long )que)->rx_using;
  return ((struct atl1e_rx_page *)(& (rx_page_desc + (unsigned long )que)->rx_page) + (unsigned long )rx_using);
}
}
static void atl1e_clean_rx_irq(struct atl1e_adapter *adapter , u8 que , int *work_done ,
                               int work_to_do )
{
  struct net_device *netdev ;
  struct atl1e_rx_ring *rx_ring ;
  struct atl1e_rx_page_desc *rx_page_desc ;
  struct sk_buff *skb ;
  struct atl1e_rx_page *rx_page ;
  struct atl1e_rx_page *tmp ;
  u32 packet_size ;
  u32 write_offset ;
  struct atl1e_recv_ret_status *prrs ;
  long tmp___0 ;
  u16 vlan_tag ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  u16 reg_addr ;
  u8 rx_using ;
  u32 tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  {
  netdev = adapter->netdev;
  rx_ring = & adapter->rx_ring;
  rx_page_desc = (struct atl1e_rx_page_desc *)(& rx_ring->rx_page_desc);
  skb = (struct sk_buff *)0;
  tmp = atl1e_get_rx_page(adapter, (int )que);
  rx_page = tmp;
  write_offset = *(rx_page->write_offset_addr);
  tmp___3 = ldv__builtin_expect(rx_page->read_offset < write_offset, 1L);
  }
  if (tmp___3 != 0L) {
    ldv_51134: ;
    if (*work_done >= work_to_do) {
      goto ldv_51126;
    } else {
    }
    *work_done = *work_done + 1;
    prrs = (struct atl1e_recv_ret_status *)rx_page->addr + (unsigned long )rx_page->read_offset;
    if ((int )prrs->seq_num != (int )(rx_page_desc + (unsigned long )que)->rx_nxseq) {
      {
      netdev_err((struct net_device const *)netdev, "rx sequence number error (rx=%d) (expect=%d)\n",
                 (int )prrs->seq_num, (int )(rx_page_desc + (unsigned long )que)->rx_nxseq);
      (rx_page_desc + (unsigned long )que)->rx_nxseq = (u16 )((int )(rx_page_desc + (unsigned long )que)->rx_nxseq + 1);
      writel(((unsigned int )prrs->seq_num << 16) | (unsigned int )(rx_page_desc + (unsigned long )que)->rx_nxseq,
             (void volatile *)adapter->hw.hw_addr + 6400U);
      }
      goto fatal_err;
    } else {
    }
    (rx_page_desc + (unsigned long )que)->rx_nxseq = (u16 )((int )(rx_page_desc + (unsigned long )que)->rx_nxseq + 1);
    if (((int )prrs->pkt_flag & 512) != 0 && (netdev->features & 68719476736ULL) == 0ULL) {
      if (((int )prrs->err_flag & 39) != 0) {
        {
        netdev_err((struct net_device const *)netdev, "rx packet desc error %x\n",
                   *((u32 *)prrs + 1UL));
        }
        goto skip_pkt;
      } else {
      }
    } else {
    }
    {
    packet_size = (prrs->word1 >> 16) & 16383U;
    tmp___0 = ldv__builtin_expect((netdev->features & 34359738368ULL) == 0ULL, 1L);
    }
    if (tmp___0 != 0L) {
      packet_size = packet_size - 4U;
    } else {
    }
    {
    skb = netdev_alloc_skb_ip_align(netdev, packet_size);
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      goto skip_pkt;
    } else {
    }
    {
    memcpy((void *)skb->data, (void const *)prrs + 1U, (size_t )packet_size);
    skb_put(skb, packet_size);
    skb->protocol = eth_type_trans(skb, netdev);
    atl1e_rx_checksum(adapter, skb, prrs);
    }
    if (((int )prrs->pkt_flag & 256) != 0) {
      {
      vlan_tag = (u16 )(((int )((short )((int )prrs->vtag >> 4)) | (int )((short )((int )prrs->vtag << 13))) | (int )((short )(((int )prrs->vtag & 8) << 9)));
      descriptor.modname = "atl1e";
      descriptor.function = "atl1e_clean_rx_irq";
      descriptor.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
      descriptor.format = "RXD VLAN TAG<RRD>=0x%04x\n";
      descriptor.lineno = 1482U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)netdev, "RXD VLAN TAG<RRD>=0x%04x\n",
                             (int )prrs->vtag);
        }
      } else {
      }
      {
      __vlan_hwaccel_put_tag(skb, 129, (int )vlan_tag);
      }
    } else {
    }
    {
    netif_receive_skb(skb);
    }
    skip_pkt:
    rx_page->read_offset = rx_page->read_offset + ((((prrs->word1 >> 16) & 16383U) + 47U) & 4294967264U);
    if (rx_page->read_offset >= rx_ring->page_size) {
      {
      tmp___2 = 0U;
      *(rx_page->write_offset_addr) = tmp___2;
      rx_page->read_offset = tmp___2;
      rx_using = (rx_page_desc + (unsigned long )que)->rx_using;
      reg_addr = atl1e_rx_page_vld_regs[(int )que][(int )rx_using];
      writeb(1, (void volatile *)adapter->hw.hw_addr + (unsigned long )reg_addr);
      (rx_page_desc + (unsigned long )que)->rx_using = (u8 )((unsigned int )(rx_page_desc + (unsigned long )que)->rx_using ^ 1U);
      rx_page = atl1e_get_rx_page(adapter, (int )que);
      }
    } else {
    }
    write_offset = *(rx_page->write_offset_addr);
    if (rx_page->read_offset < write_offset) {
      goto ldv_51134;
    } else {
    }
    ldv_51126: ;
  } else {
  }
  return;
  fatal_err:
  {
  tmp___4 = constant_test_bit(3L, (unsigned long const volatile *)(& adapter->flags));
  }
  if (tmp___4 == 0) {
    {
    schedule_work(& adapter->reset_task);
    }
  } else {
  }
  return;
}
}
static int atl1e_clean(struct napi_struct *napi , int budget )
{
  struct atl1e_adapter *adapter ;
  struct napi_struct const *__mptr ;
  u32 imr_data ;
  int work_done ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  __mptr = (struct napi_struct const *)napi;
  adapter = (struct atl1e_adapter *)__mptr + 0xfffffffffffffff0UL;
  work_done = 0;
  tmp = netif_carrier_ok((struct net_device const *)adapter->netdev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto quit_polling;
  } else {
  }
  {
  atl1e_clean_rx_irq(adapter, 0, & work_done, budget);
  }
  if (work_done < budget) {
    quit_polling:
    {
    napi_complete(napi);
    imr_data = readl((void const volatile *)adapter->hw.hw_addr + 5636U);
    writel(imr_data | 65560U, (void volatile *)adapter->hw.hw_addr + 5636U);
    tmp___1 = constant_test_bit(3L, (unsigned long const volatile *)(& adapter->flags));
    }
    if (tmp___1 != 0) {
      {
      atomic_dec(& adapter->irq_sem);
      netdev_err((struct net_device const *)adapter->netdev, "atl1e_clean is called when AT_DOWN\n");
      }
    } else {
    }
  } else {
  }
  return (work_done);
}
}
static void atl1e_netpoll(struct net_device *netdev )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  disable_irq((adapter->pdev)->irq);
  atl1e_intr((int )(adapter->pdev)->irq, (void *)netdev);
  enable_irq((adapter->pdev)->irq);
  }
  return;
}
}
__inline static u16 atl1e_tpd_avail(struct atl1e_adapter *adapter )
{
  struct atl1e_tx_ring *tx_ring ;
  u16 next_to_use ;
  u16 next_to_clean ;
  int tmp ;
  {
  {
  tx_ring = & adapter->tx_ring;
  next_to_use = 0U;
  next_to_clean = 0U;
  tmp = atomic_read((atomic_t const *)(& tx_ring->next_to_clean));
  next_to_clean = (u16 )tmp;
  next_to_use = tx_ring->next_to_use;
  }
  return ((int )next_to_clean > (int )next_to_use ? (unsigned int )((int )next_to_clean - (int )next_to_use) + 65535U : (unsigned int )(((int )tx_ring->count + (int )next_to_clean) - (int )next_to_use) + 65535U);
}
}
static struct atl1e_tpd_desc *atl1e_get_tpd(struct atl1e_adapter *adapter )
{
  struct atl1e_tx_ring *tx_ring ;
  u16 next_to_use ;
  {
  tx_ring = & adapter->tx_ring;
  next_to_use = 0U;
  next_to_use = tx_ring->next_to_use;
  tx_ring->next_to_use = (u16 )((int )tx_ring->next_to_use + 1);
  if ((int )tx_ring->next_to_use == (int )tx_ring->count) {
    tx_ring->next_to_use = 0U;
  } else {
  }
  {
  memset((void *)tx_ring->desc + (unsigned long )next_to_use, 0, 16UL);
  }
  return (tx_ring->desc + (unsigned long )next_to_use);
}
}
static struct atl1e_tx_buffer *atl1e_get_tx_buffer(struct atl1e_adapter *adapter ,
                                                   struct atl1e_tpd_desc *tpd )
{
  struct atl1e_tx_ring *tx_ring ;
  {
  tx_ring = & adapter->tx_ring;
  return (tx_ring->tx_buffer + (unsigned long )(((long )tpd - (long )tx_ring->desc) / 16L));
}
}
static u16 atl1e_cal_tdp_req(struct sk_buff const *skb )
{
  int i ;
  u16 tpd_req ;
  u16 fg_size ;
  u16 proto_hdr_len ;
  unsigned char *tmp ;
  unsigned int tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned char *tmp___6 ;
  bool tmp___7 ;
  {
  i = 0;
  tpd_req = 1U;
  fg_size = 0U;
  proto_hdr_len = 0U;
  i = 0;
  goto ldv_51173;
  ldv_51172:
  {
  tmp = skb_end_pointer(skb);
  tmp___0 = skb_frag_size((skb_frag_t const *)(& ((struct skb_shared_info *)tmp)->frags) + (unsigned long )i);
  fg_size = (u16 )tmp___0;
  tpd_req = (int )tpd_req + (int )((u16 )(((int )fg_size + 8191) >> 13));
  i = i + 1;
  }
  ldv_51173:
  {
  tmp___1 = skb_end_pointer(skb);
  }
  if (i < (int )((struct skb_shared_info *)tmp___1)->nr_frags) {
    goto ldv_51172;
  } else {
  }
  {
  tmp___7 = skb_is_gso(skb);
  }
  if ((int )tmp___7) {
    if ((unsigned int )((unsigned short )skb->protocol) == 8U) {
      goto _L;
    } else {
      {
      tmp___6 = skb_end_pointer(skb);
      }
      if ((unsigned int )((struct skb_shared_info *)tmp___6)->gso_type == 16U) {
        _L:
        {
        tmp___2 = skb_transport_offset(skb);
        tmp___3 = tcp_hdrlen(skb);
        proto_hdr_len = (int )((u16 )tmp___2) + (int )((u16 )tmp___3);
        tmp___5 = skb_headlen(skb);
        }
        if ((unsigned int )proto_hdr_len < tmp___5) {
          {
          tmp___4 = skb_headlen(skb);
          tpd_req = (int )tpd_req + (int )((u16 )(((tmp___4 - (unsigned int )proto_hdr_len) + 8191U) >> 13));
          }
        } else {
        }
      } else {
      }
    }
  } else {
  }
  return (tpd_req);
}
}
static int atl1e_tso_csum(struct atl1e_adapter *adapter , struct sk_buff *skb , struct atl1e_tpd_desc *tpd )
{
  u8 hdr_len ;
  u32 real_len ;
  unsigned short offload_type ;
  int err ;
  long tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  struct iphdr *tmp___2 ;
  struct iphdr *tmp___3 ;
  __u16 tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  struct iphdr *tmp___7 ;
  struct iphdr *tmp___8 ;
  struct tcphdr *tmp___9 ;
  struct iphdr *tmp___10 ;
  struct iphdr *tmp___11 ;
  __sum16 tmp___12 ;
  struct iphdr *tmp___13 ;
  unsigned int tmp___14 ;
  unsigned char *tmp___15 ;
  long tmp___16 ;
  bool tmp___17 ;
  u8 css ;
  u8 cso ;
  int tmp___18 ;
  long tmp___19 ;
  long tmp___20 ;
  {
  {
  tmp___17 = skb_is_gso((struct sk_buff const *)skb);
  }
  if ((int )tmp___17) {
    {
    tmp___0 = skb_header_cloned((struct sk_buff const *)skb);
    }
    if (tmp___0 != 0) {
      {
      err = pskb_expand_head(skb, 0, 0, 32U);
      tmp = ldv__builtin_expect(err != 0, 0L);
      }
      if (tmp != 0L) {
        return (-1);
      } else {
      }
    } else {
    }
    {
    tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
    offload_type = ((struct skb_shared_info *)tmp___1)->gso_type;
    }
    if ((int )offload_type & 1) {
      {
      tmp___2 = ip_hdr((struct sk_buff const *)skb);
      tmp___3 = ip_hdr((struct sk_buff const *)skb);
      tmp___4 = __fswab16((int )tmp___3->tot_len);
      real_len = ((u32 )((long )tmp___2) - (u32 )((long )skb->data)) + (u32 )tmp___4;
      }
      if (real_len < skb->len) {
        {
        pskb_trim(skb, real_len);
        }
      } else {
      }
      {
      tmp___5 = skb_transport_offset((struct sk_buff const *)skb);
      tmp___6 = tcp_hdrlen((struct sk_buff const *)skb);
      hdr_len = (int )((u8 )tmp___5) + (int )((u8 )tmp___6);
      tmp___16 = ldv__builtin_expect(skb->len == (unsigned int )hdr_len, 0L);
      }
      if (tmp___16 != 0L) {
        {
        netdev_warn((struct net_device const *)adapter->netdev, "IPV4 tso with zero data??\n");
        }
        goto check_sum;
      } else {
        {
        tmp___7 = ip_hdr((struct sk_buff const *)skb);
        tmp___7->check = 0U;
        tmp___8 = ip_hdr((struct sk_buff const *)skb);
        tmp___8->tot_len = 0U;
        tmp___9 = tcp_hdr((struct sk_buff const *)skb);
        tmp___10 = ip_hdr((struct sk_buff const *)skb);
        tmp___11 = ip_hdr((struct sk_buff const *)skb);
        tmp___12 = csum_tcpudp_magic(tmp___11->saddr, tmp___10->daddr, 0, 6, 0U);
        tmp___9->check = ~ ((int )tmp___12);
        tmp___13 = ip_hdr((struct sk_buff const *)skb);
        tpd->word3 = tpd->word3 | (__le32 )(((int )tmp___13->ihl & 15) << 10);
        tmp___14 = tcp_hdrlen((struct sk_buff const *)skb);
        tpd->word3 = tpd->word3 | (((tmp___14 >> 2) & 15U) << 14);
        tmp___15 = skb_end_pointer((struct sk_buff const *)skb);
        tpd->word3 = tpd->word3 | (__le32 )((int )((struct skb_shared_info *)tmp___15)->gso_size << 19);
        tpd->word3 = tpd->word3 | 16U;
        }
      }
      return (0);
    } else {
    }
  } else {
  }
  check_sum:
  {
  tmp___20 = ldv__builtin_expect((unsigned int )*((unsigned char *)skb + 124UL) == 12U,
                              1L);
  }
  if (tmp___20 != 0L) {
    {
    tmp___18 = skb_checksum_start_offset((struct sk_buff const *)skb);
    cso = (u8 )tmp___18;
    tmp___19 = ldv__builtin_expect((long )cso & 1L, 0L);
    }
    if (tmp___19 != 0L) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "payload offset should not ant event number\n");
      }
      return (-1);
    } else {
      css = (int )cso + (int )((u8 )skb->__annonCompField68.__annonCompField67.csum_offset);
      tpd->word3 = tpd->word3 | (__le32 )((int )cso << 16);
      tpd->word3 = tpd->word3 | (__le32 )((int )css << 24);
      tpd->word3 = tpd->word3 | 8U;
    }
  } else {
  }
  return (0);
}
}
static int atl1e_tx_map(struct atl1e_adapter *adapter , struct sk_buff *skb , struct atl1e_tpd_desc *tpd )
{
  struct atl1e_tpd_desc *use_tpd ;
  struct atl1e_tx_buffer *tx_buffer ;
  u16 buf_len ;
  unsigned int tmp ;
  u16 map_len ;
  u16 mapped_len ;
  u16 hdr_len ;
  u16 nr_frags ;
  u16 f ;
  int segment ;
  int ring_start ;
  int ring_end ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct skb_frag_struct const *frag ;
  u16 i ;
  u16 seg_num ;
  unsigned char *tmp___5 ;
  unsigned int tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  {
  {
  use_tpd = (struct atl1e_tpd_desc *)0;
  tx_buffer = (struct atl1e_tx_buffer *)0;
  tmp = skb_headlen((struct sk_buff const *)skb);
  buf_len = (u16 )tmp;
  map_len = 0U;
  mapped_len = 0U;
  hdr_len = 0U;
  ring_start = (int )adapter->tx_ring.next_to_use;
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  nr_frags = (u16 )((struct skb_shared_info *)tmp___0)->nr_frags;
  segment = (int )(tpd->word3 >> 4) & 1;
  }
  if (segment != 0) {
    {
    tmp___1 = skb_transport_offset((struct sk_buff const *)skb);
    tmp___2 = tcp_hdrlen((struct sk_buff const *)skb);
    hdr_len = (int )((u16 )tmp___1) + (int )((u16 )tmp___2);
    map_len = hdr_len;
    use_tpd = tpd;
    tx_buffer = atl1e_get_tx_buffer(adapter, use_tpd);
    tx_buffer->length = map_len;
    tx_buffer->dma = pci_map_single(adapter->pdev, (void *)skb->data, (size_t )hdr_len,
                                    1);
    tmp___3 = dma_mapping_error(& (adapter->pdev)->dev, tx_buffer->dma);
    }
    if (tmp___3 != 0) {
      return (-28);
    } else {
    }
    tx_buffer->flags = (unsigned int )tx_buffer->flags & 65532U;
    tx_buffer->flags = (u16 )((unsigned int )tx_buffer->flags | 1U);
    mapped_len = (int )mapped_len + (int )map_len;
    use_tpd->buffer_addr = tx_buffer->dma;
    use_tpd->word2 = (use_tpd->word2 & 4294950912U) | ((__le32 )tx_buffer->length & 16383U);
  } else {
  }
  goto ldv_51207;
  ldv_51206: ;
  if ((unsigned int )mapped_len == 0U) {
    use_tpd = tpd;
  } else {
    {
    use_tpd = atl1e_get_tpd(adapter);
    memcpy((void *)use_tpd, (void const *)tpd, 16UL);
    }
  }
  {
  tx_buffer = atl1e_get_tx_buffer(adapter, use_tpd);
  tx_buffer->skb = (struct sk_buff *)0;
  map_len = (u16 )(8192 < (int )buf_len - (int )mapped_len ? 8192 : (int )buf_len - (int )mapped_len);
  tx_buffer->length = map_len;
  tx_buffer->dma = pci_map_single(adapter->pdev, (void *)skb->data + (unsigned long )mapped_len,
                                  (size_t )map_len, 1);
  tmp___4 = dma_mapping_error(& (adapter->pdev)->dev, tx_buffer->dma);
  }
  if (tmp___4 != 0) {
    ring_end = (int )adapter->tx_ring.next_to_use;
    adapter->tx_ring.next_to_use = (u16 )ring_start;
    goto ldv_51204;
    ldv_51203:
    {
    tpd = atl1e_get_tpd(adapter);
    tx_buffer = atl1e_get_tx_buffer(adapter, tpd);
    pci_unmap_single(adapter->pdev, tx_buffer->dma, (size_t )tx_buffer->length, 1);
    }
    ldv_51204: ;
    if ((int )adapter->tx_ring.next_to_use != ring_end) {
      goto ldv_51203;
    } else {
    }
    adapter->tx_ring.next_to_use = (u16 )ring_start;
    return (-28);
  } else {
  }
  tx_buffer->flags = (unsigned int )tx_buffer->flags & 65532U;
  tx_buffer->flags = (u16 )((unsigned int )tx_buffer->flags | 1U);
  mapped_len = (int )mapped_len + (int )map_len;
  use_tpd->buffer_addr = tx_buffer->dma;
  use_tpd->word2 = (use_tpd->word2 & 4294950912U) | ((__le32 )tx_buffer->length & 16383U);
  ldv_51207: ;
  if ((int )mapped_len < (int )buf_len) {
    goto ldv_51206;
  } else {
  }
  f = 0U;
  goto ldv_51219;
  ldv_51218:
  {
  tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct const *)(& ((struct skb_shared_info *)tmp___5)->frags) + (unsigned long )f;
  tmp___6 = skb_frag_size(frag);
  buf_len = (u16 )tmp___6;
  seg_num = (u16 )(((int )buf_len + 8191) / 8192);
  i = 0U;
  }
  goto ldv_51216;
  ldv_51215:
  {
  use_tpd = atl1e_get_tpd(adapter);
  memcpy((void *)use_tpd, (void const *)tpd, 16UL);
  tx_buffer = atl1e_get_tx_buffer(adapter, use_tpd);
  tmp___7 = ldv__builtin_expect((unsigned long )tx_buffer->skb != (unsigned long )((struct sk_buff *)0),
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/atheros/atl1e/atl1e_main.c"),
                         "i" (1806), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tx_buffer->skb = (struct sk_buff *)0;
  tx_buffer->length = 8192U < (unsigned int )buf_len ? 8192U : buf_len;
  buf_len = (int )buf_len - (int )tx_buffer->length;
  tx_buffer->dma = skb_frag_dma_map(& (adapter->pdev)->dev, frag, (size_t )((int )i * 8192),
                                    (size_t )tx_buffer->length, 1);
  tmp___8 = dma_mapping_error(& (adapter->pdev)->dev, tx_buffer->dma);
  }
  if (tmp___8 != 0) {
    ring_end = (int )adapter->tx_ring.next_to_use;
    adapter->tx_ring.next_to_use = (u16 )ring_start;
    goto ldv_51213;
    ldv_51212:
    {
    tpd = atl1e_get_tpd(adapter);
    tx_buffer = atl1e_get_tx_buffer(adapter, tpd);
    dma_unmap_page(& (adapter->pdev)->dev, tx_buffer->dma, (size_t )tx_buffer->length,
                   1);
    }
    ldv_51213: ;
    if ((int )adapter->tx_ring.next_to_use != ring_end) {
      goto ldv_51212;
    } else {
    }
    adapter->tx_ring.next_to_use = (u16 )ring_start;
    return (-28);
  } else {
  }
  tx_buffer->flags = (unsigned int )tx_buffer->flags & 65532U;
  tx_buffer->flags = (u16 )((unsigned int )tx_buffer->flags | 2U);
  use_tpd->buffer_addr = tx_buffer->dma;
  use_tpd->word2 = (use_tpd->word2 & 4294950912U) | ((__le32 )tx_buffer->length & 16383U);
  i = (u16 )((int )i + 1);
  ldv_51216: ;
  if ((int )i < (int )seg_num) {
    goto ldv_51215;
  } else {
  }
  f = (u16 )((int )f + 1);
  ldv_51219: ;
  if ((int )f < (int )nr_frags) {
    goto ldv_51218;
  } else {
  }
  if ((tpd->word3 & 16U) != 0U) {
    tpd->word3 = tpd->word3 | 262144U;
  } else {
  }
  use_tpd->word3 = use_tpd->word3 | 1U;
  tx_buffer->skb = skb;
  return (0);
}
}
static void atl1e_tx_queue(struct atl1e_adapter *adapter , u16 count , struct atl1e_tpd_desc *tpd )
{
  struct atl1e_tx_ring *tx_ring ;
  {
  {
  tx_ring = & adapter->tx_ring;
  __asm__ volatile ("sfence": : : "memory");
  writel((unsigned int )tx_ring->next_to_use, (void volatile *)adapter->hw.hw_addr + 5616U);
  }
  return;
}
}
static netdev_tx_t atl1e_xmit_frame(struct sk_buff *skb , struct net_device *netdev )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  unsigned long flags ;
  u16 tpd_req ;
  struct atl1e_tpd_desc *tpd ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u16 tmp___3 ;
  u16 vlan_tag ;
  u16 atl1e_vlan_tag ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  tpd_req = 1U;
  tmp___0 = constant_test_bit(3L, (unsigned long const volatile *)(& adapter->flags));
  }
  if (tmp___0 != 0) {
    {
    dev_kfree_skb_any(skb);
    }
    return (0);
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(skb->len == 0U, 0L);
  }
  if (tmp___1 != 0L) {
    {
    dev_kfree_skb_any(skb);
    }
    return (0);
  } else {
  }
  {
  tpd_req = atl1e_cal_tdp_req((struct sk_buff const *)skb);
  tmp___2 = ldv___ldv_spin_trylock_88(& adapter->tx_lock);
  }
  if (tmp___2 == 0) {
    return (32);
  } else {
  }
  {
  tmp___3 = atl1e_tpd_avail(adapter);
  }
  if ((int )tmp___3 < (int )tpd_req) {
    {
    netif_stop_queue(netdev);
    ldv_spin_unlock_irqrestore_89(& adapter->tx_lock, flags);
    }
    return (16);
  } else {
  }
  {
  tpd = atl1e_get_tpd(adapter);
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    vlan_tag = (unsigned int )skb->vlan_tci & 61439U;
    tpd->word3 = tpd->word3 | 4U;
    atl1e_vlan_tag = (u16 )(((int )((short )((int )vlan_tag << 4)) | (int )((short )((int )vlan_tag >> 13))) | ((int )((short )((int )vlan_tag >> 9)) & 8));
    tpd->word2 = tpd->word2 | (__le32 )((int )atl1e_vlan_tag << 16);
  } else {
  }
  if ((unsigned int )skb->protocol == 129U) {
    tpd->word3 = tpd->word3 | 256U;
  } else {
  }
  {
  tmp___4 = skb_network_offset((struct sk_buff const *)skb);
  }
  if (tmp___4 != 14) {
    tpd->word3 = tpd->word3 | 512U;
  } else {
  }
  {
  tmp___5 = atl1e_tso_csum(adapter, skb, tpd);
  }
  if (tmp___5 != 0) {
    {
    ldv_spin_unlock_irqrestore_89(& adapter->tx_lock, flags);
    dev_kfree_skb_any(skb);
    }
    return (0);
  } else {
  }
  {
  tmp___6 = atl1e_tx_map(adapter, skb, tpd);
  }
  if (tmp___6 != 0) {
    {
    dev_kfree_skb_any(skb);
    }
    goto out;
  } else {
  }
  {
  atl1e_tx_queue(adapter, (int )tpd_req, tpd);
  netdev->trans_start = jiffies;
  }
  out:
  {
  ldv_spin_unlock_irqrestore_89(& adapter->tx_lock, flags);
  }
  return (0);
}
}
static void atl1e_free_irq(struct atl1e_adapter *adapter )
{
  struct net_device *netdev ;
  {
  {
  netdev = adapter->netdev;
  ldv_free_irq_92((adapter->pdev)->irq, (void *)netdev);
  }
  return;
}
}
static int atl1e_request_irq(struct atl1e_adapter *adapter )
{
  struct pci_dev *pdev ;
  struct net_device *netdev ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  {
  pdev = adapter->pdev;
  netdev = adapter->netdev;
  err = 0;
  err = ldv_request_irq_93(pdev->irq, & atl1e_intr, 128UL, (char const *)(& netdev->name),
                           (void *)netdev);
  }
  if (err != 0) {
    {
    descriptor.modname = "atl1e";
    descriptor.function = "atl1e_request_irq";
    descriptor.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
    descriptor.format = "Unable to allocate interrupt Error: %d\n";
    descriptor.lineno = 1951U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)adapter->netdev,
                           "Unable to allocate interrupt Error: %d\n", err);
      }
    } else {
    }
    return (err);
  } else {
  }
  {
  descriptor___0.modname = "atl1e";
  descriptor___0.function = "atl1e_request_irq";
  descriptor___0.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
  descriptor___0.format = "atl1e_request_irq OK\n";
  descriptor___0.lineno = 1954U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)netdev, "atl1e_request_irq OK\n");
    }
  } else {
  }
  return (err);
}
}
int atl1e_up(struct atl1e_adapter *adapter )
{
  struct net_device *netdev ;
  int err ;
  u32 val ;
  int tmp ;
  {
  {
  netdev = adapter->netdev;
  err = 0;
  err = atl1e_init_hw(& adapter->hw);
  }
  if (err != 0) {
    err = -5;
    return (err);
  } else {
  }
  {
  atl1e_init_ring_ptrs(adapter);
  atl1e_set_multi(netdev);
  atl1e_restore_vlan(adapter);
  tmp = atl1e_configure(adapter);
  }
  if (tmp != 0) {
    err = -5;
    goto err_up;
  } else {
  }
  {
  clear_bit(3L, (unsigned long volatile *)(& adapter->flags));
  napi_enable(& adapter->napi);
  atl1e_irq_enable(adapter);
  val = readl((void const volatile *)adapter->hw.hw_addr + 5120U);
  writel(val | 8U, (void volatile *)adapter->hw.hw_addr + 5120U);
  }
  err_up: ;
  return (err);
}
}
void atl1e_down(struct atl1e_adapter *adapter )
{
  struct net_device *netdev ;
  {
  {
  netdev = adapter->netdev;
  set_bit(3L, (unsigned long volatile *)(& adapter->flags));
  netif_stop_queue(netdev);
  atl1e_reset_hw(& adapter->hw);
  msleep(1U);
  napi_disable(& adapter->napi);
  atl1e_del_timer(adapter);
  atl1e_irq_disable(adapter);
  netif_carrier_off(netdev);
  adapter->link_speed = 65535U;
  adapter->link_duplex = 65535U;
  atl1e_clean_tx_ring(adapter);
  atl1e_clean_rx_ring(adapter);
  }
  return;
}
}
static int atl1e_open(struct net_device *netdev )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  int err ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& adapter->flags));
  }
  if (tmp___0 != 0) {
    return (-16);
  } else {
  }
  {
  atl1e_init_ring_resources(adapter);
  err = atl1e_setup_ring_resources(adapter);
  tmp___1 = ldv__builtin_expect(err != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (err);
  } else {
  }
  {
  err = atl1e_request_irq(adapter);
  tmp___2 = ldv__builtin_expect(err != 0, 0L);
  }
  if (tmp___2 != 0L) {
    goto err_req_irq;
  } else {
  }
  {
  err = atl1e_up(adapter);
  tmp___3 = ldv__builtin_expect(err != 0, 0L);
  }
  if (tmp___3 != 0L) {
    goto err_up;
  } else {
  }
  return (0);
  err_up:
  {
  atl1e_free_irq(adapter);
  }
  err_req_irq:
  {
  atl1e_free_ring_resources(adapter);
  atl1e_reset_hw(& adapter->hw);
  }
  return (err);
}
}
static int atl1e_close(struct net_device *netdev )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->flags));
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("drivers/net/ethernet/atheros/atl1e/atl1e_main.c", 2076);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  atl1e_down(adapter);
  atl1e_free_irq(adapter);
  atl1e_free_ring_resources(adapter);
  }
  return (0);
}
}
static int atl1e_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct net_device *netdev ;
  void *tmp ;
  struct atl1e_adapter *adapter ;
  void *tmp___0 ;
  struct atl1e_hw *hw ;
  u32 ctrl ;
  u32 mac_ctrl_data ;
  u32 wol_ctrl_data ;
  u16 mii_advertise_data ;
  u16 mii_bmsr_data ;
  u16 mii_intr_status_data ;
  u32 wufc ;
  u32 i ;
  int retval ;
  int __ret_warn_on ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  s32 tmp___5 ;
  s32 tmp___6 ;
  s32 tmp___7 ;
  struct _ddebug descriptor___0 ;
  long tmp___8 ;
  struct _ddebug descriptor___1 ;
  long tmp___9 ;
  s32 tmp___10 ;
  struct _ddebug descriptor___2 ;
  long tmp___11 ;
  pci_power_t tmp___12 ;
  pci_power_t tmp___13 ;
  bool tmp___14 ;
  pci_power_t tmp___15 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp___0;
  hw = & adapter->hw;
  ctrl = 0U;
  mac_ctrl_data = 0U;
  wol_ctrl_data = 0U;
  mii_advertise_data = 0U;
  mii_bmsr_data = 0U;
  mii_intr_status_data = 0U;
  wufc = adapter->wol;
  retval = 0;
  tmp___3 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___3) {
    {
    tmp___1 = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->flags));
    __ret_warn_on = tmp___1 != 0;
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___2 != 0L) {
      {
      warn_slowpath_null("drivers/net/ethernet/atheros/atl1e/atl1e_main.c", 2102);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    atl1e_down(adapter);
    }
  } else {
  }
  {
  netif_device_detach(netdev);
  retval = pci_save_state(pdev);
  }
  if (retval != 0) {
    return (retval);
  } else {
  }
  if (wufc != 0U) {
    {
    atl1e_read_phy_reg(hw, 1, & mii_bmsr_data);
    atl1e_read_phy_reg(hw, 1, & mii_bmsr_data);
    mii_advertise_data = 32U;
    tmp___5 = atl1e_write_phy_reg(hw, 9U, 0);
    }
    if (tmp___5 != 0) {
      goto _L;
    } else {
      {
      tmp___6 = atl1e_write_phy_reg(hw, 4U, (int )mii_advertise_data);
      }
      if (tmp___6 != 0) {
        goto _L;
      } else {
        {
        tmp___7 = atl1e_phy_commit(hw);
        }
        if (tmp___7 != 0) {
          _L:
          {
          descriptor.modname = "atl1e";
          descriptor.function = "atl1e_suspend";
          descriptor.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
          descriptor.format = "set phy register failed\n";
          descriptor.lineno = 2124U;
          descriptor.flags = 0U;
          tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
          }
          if (tmp___4 != 0L) {
            {
            __dynamic_netdev_dbg(& descriptor, (struct net_device const *)adapter->netdev,
                                 "set phy register failed\n");
            }
          } else {
          }
          goto wol_dis;
        } else {
        }
      }
    }
    hw->phy_configured = 0;
    if ((wufc & 2U) != 0U) {
      wol_ctrl_data = wol_ctrl_data | 12U;
    } else {
    }
    if ((int )wufc & 1) {
      if (((int )mii_bmsr_data & 4) != 0) {
        i = 0U;
        goto ldv_51298;
        ldv_51297:
        {
        msleep(100U);
        atl1e_read_phy_reg(hw, 1, & mii_bmsr_data);
        }
        if (((int )mii_bmsr_data & 4) != 0) {
          goto ldv_51296;
        } else {
        }
        i = i + 1U;
        ldv_51298: ;
        if (i <= 27U) {
          goto ldv_51297;
        } else {
        }
        ldv_51296: ;
        if (((int )mii_bmsr_data & 4) == 0) {
          {
          descriptor___0.modname = "atl1e";
          descriptor___0.function = "atl1e_suspend";
          descriptor___0.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
          descriptor___0.format = "Link may change when suspend\n";
          descriptor___0.lineno = 2147U;
          descriptor___0.flags = 0U;
          tmp___8 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
          }
          if (tmp___8 != 0L) {
            {
            __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)adapter->netdev,
                                 "Link may change when suspend\n");
            }
          } else {
          }
        } else {
        }
      } else {
      }
      {
      wol_ctrl_data = wol_ctrl_data | 48U;
      tmp___10 = atl1e_write_phy_reg(hw, 18U, 1024);
      }
      if (tmp___10 != 0) {
        {
        descriptor___1.modname = "atl1e";
        descriptor___1.function = "atl1e_suspend";
        descriptor___1.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
        descriptor___1.format = "read write phy register failed\n";
        descriptor___1.lineno = 2153U;
        descriptor___1.flags = 0U;
        tmp___9 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        }
        if (tmp___9 != 0L) {
          {
          __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)adapter->netdev,
                               "read write phy register failed\n");
          }
        } else {
        }
        goto wol_dis;
      } else {
      }
    } else {
    }
    {
    atl1e_read_phy_reg(hw, 19, & mii_intr_status_data);
    mac_ctrl_data = 2U;
    mac_ctrl_data = mac_ctrl_data | 1048576U;
    mac_ctrl_data = mac_ctrl_data | (((unsigned int )adapter->hw.preamble_len & 15U) << 10);
    __atl1e_vlan_mode(netdev->features, & mac_ctrl_data);
    }
    if ((wufc & 2U) != 0U) {
      mac_ctrl_data = mac_ctrl_data | 67108864U;
    } else {
    }
    {
    descriptor___2.modname = "atl1e";
    descriptor___2.function = "atl1e_suspend";
    descriptor___2.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
    descriptor___2.format = "suspend MAC=0x%x\n";
    descriptor___2.lineno = 2174U;
    descriptor___2.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___11 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)adapter->netdev,
                           "suspend MAC=0x%x\n", mac_ctrl_data);
      }
    } else {
    }
    {
    writel(wol_ctrl_data, (void volatile *)hw->hw_addr + 5280U);
    writel(mac_ctrl_data, (void volatile *)hw->hw_addr + 5248U);
    ctrl = readl((void const volatile *)hw->hw_addr + 4096U);
    ctrl = ctrl | 4U;
    writel(ctrl, (void volatile *)hw->hw_addr + 4096U);
    tmp___12 = pci_choose_state(pdev, state);
    pci_enable_wake(pdev, tmp___12, 1);
    }
    goto suspend_exit;
  } else {
  }
  wol_dis:
  {
  writel(0U, (void volatile *)hw->hw_addr + 5280U);
  ctrl = readl((void const volatile *)hw->hw_addr + 4096U);
  ctrl = ctrl | 4U;
  writel(ctrl, (void volatile *)hw->hw_addr + 4096U);
  atl1e_force_ps(hw);
  hw->phy_configured = 0;
  tmp___13 = pci_choose_state(pdev, state);
  pci_enable_wake(pdev, tmp___13, 0);
  }
  suspend_exit:
  {
  tmp___14 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___14) {
    {
    atl1e_free_irq(adapter);
    }
  } else {
  }
  {
  pci_disable_device(pdev);
  tmp___15 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___15);
  }
  return (0);
}
}
static int atl1e_resume(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct atl1e_adapter *adapter ;
  void *tmp___0 ;
  u32 err ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp___0;
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  tmp___1 = pci_enable_device(pdev);
  err = (u32 )tmp___1;
  }
  if (err != 0U) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "Cannot enable PCI device from suspend\n");
    }
    return ((int )err);
  } else {
  }
  {
  pci_set_master(pdev);
  readl((void const volatile *)adapter->hw.hw_addr + 5280U);
  pci_enable_wake(pdev, 3, 0);
  pci_enable_wake(pdev, 4, 0);
  writel(0U, (void volatile *)adapter->hw.hw_addr + 5280U);
  tmp___3 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___3) {
    {
    tmp___2 = atl1e_request_irq(adapter);
    err = (u32 )tmp___2;
    }
    if (err != 0U) {
      return ((int )err);
    } else {
    }
  } else {
  }
  {
  atl1e_reset_hw(& adapter->hw);
  tmp___4 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___4) {
    {
    atl1e_up(adapter);
    }
  } else {
  }
  {
  netif_device_attach(netdev);
  }
  return (0);
}
}
static void atl1e_shutdown(struct pci_dev *pdev )
{
  struct pm_message __constr_expr_0 ;
  {
  {
  __constr_expr_0.event = 2;
  atl1e_suspend(pdev, __constr_expr_0);
  }
  return;
}
}
static struct net_device_ops const atl1e_netdev_ops =
     {0, 0, & atl1e_open, & atl1e_close, & atl1e_xmit_frame, 0, 0, & atl1e_set_multi,
    & atl1e_set_mac_addr, & eth_validate_addr, & atl1e_ioctl, 0, & atl1e_change_mtu,
    0, & atl1e_tx_timeout, 0, & atl1e_get_stats, 0, 0, & atl1e_netpoll, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & atl1e_fix_features, & atl1e_set_features,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int atl1e_init_netdev(struct net_device *netdev , struct pci_dev *pdev )
{
  {
  {
  netdev->dev.parent = & pdev->dev;
  pci_set_drvdata(pdev, (void *)netdev);
  netdev->netdev_ops = & atl1e_netdev_ops;
  netdev->watchdog_timeo = 1250;
  atl1e_set_ethtool_ops(netdev);
  netdev->hw_features = 65801ULL;
  netdev->features = netdev->hw_features | 4224ULL;
  netdev->hw_features = netdev->hw_features | 103079215104ULL;
  }
  return (0);
}
}
static int atl1e_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct net_device *netdev ;
  struct atl1e_adapter *adapter ;
  int cards_found ;
  int err ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct lock_class_key __key ;
  s32 tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_1 ;
  {
  {
  adapter = (struct atl1e_adapter *)0;
  err = 0;
  err = pci_enable_device(pdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "cannot enable PCI device\n");
    }
    return (err);
  } else {
  }
  {
  tmp = pci_set_dma_mask(pdev, 4294967295ULL);
  }
  if (tmp != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "No usable DMA configuration,aborting\n");
    }
    goto err_dma;
  } else {
    {
    tmp___0 = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    }
    if (tmp___0 != 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "No usable DMA configuration,aborting\n");
      }
      goto err_dma;
    } else {
    }
  }
  {
  err = pci_request_regions(pdev, (char const *)(& atl1e_driver_name));
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "cannot obtain PCI resources\n");
    }
    goto err_pci_reg;
  } else {
  }
  {
  pci_set_master(pdev);
  netdev = ldv_alloc_etherdev_mqs_94(1968, 1U, 1U);
  }
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto err_alloc_etherdev;
  } else {
  }
  {
  err = atl1e_init_netdev(netdev, pdev);
  }
  if (err != 0) {
    {
    netdev_err((struct net_device const *)netdev, "init netdevice failed\n");
    }
    goto err_init_netdev;
  } else {
  }
  {
  tmp___1 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp___1;
  adapter->bd_number = (u32 )cards_found;
  adapter->netdev = netdev;
  adapter->pdev = pdev;
  adapter->hw.adapter = adapter;
  tmp___2 = pci_iomap(pdev, 0, 0UL);
  adapter->hw.hw_addr = (u8 *)tmp___2;
  }
  if ((unsigned long )adapter->hw.hw_addr == (unsigned long )((u8 *)0U)) {
    {
    err = -5;
    netdev_err((struct net_device const *)netdev, "cannot map device registers\n");
    }
    goto err_ioremap;
  } else {
  }
  {
  adapter->mii.dev = netdev;
  adapter->mii.mdio_read = & atl1e_mdio_read;
  adapter->mii.mdio_write = & atl1e_mdio_write;
  adapter->mii.phy_id_mask = 31;
  adapter->mii.reg_num_mask = 31;
  netif_napi_add(netdev, & adapter->napi, & atl1e_clean, 64);
  init_timer_key(& adapter->phy_config_timer, 0U, "(&adapter->phy_config_timer)",
                 & __key);
  adapter->phy_config_timer.function = & atl1e_phy_config;
  adapter->phy_config_timer.data = (unsigned long )adapter;
  atl1e_check_options(adapter);
  atl1e_setup_pcicmd(pdev);
  err = atl1e_sw_init(adapter);
  }
  if (err != 0) {
    {
    netdev_err((struct net_device const *)netdev, "net device private data init failed\n");
    }
    goto err_sw_init;
  } else {
  }
  {
  atl1e_phy_init(& adapter->hw);
  err = atl1e_reset_hw(& adapter->hw);
  }
  if (err != 0) {
    err = -5;
    goto err_reset;
  } else {
  }
  {
  tmp___3 = atl1e_read_mac_addr(& adapter->hw);
  }
  if (tmp___3 != 0) {
    {
    err = -5;
    netdev_err((struct net_device const *)netdev, "get mac address failed\n");
    }
    goto err_eeprom;
  } else {
  }
  {
  memcpy((void *)netdev->dev_addr, (void const *)(& adapter->hw.mac_addr), (size_t )netdev->addr_len);
  descriptor.modname = "atl1e";
  descriptor.function = "atl1e_probe";
  descriptor.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_main.c";
  descriptor.format = "mac address : %pM\n";
  descriptor.lineno = 2416U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)netdev, "mac address : %pM\n",
                         (u8 *)(& adapter->hw.mac_addr));
    }
  } else {
  }
  {
  __init_work(& adapter->reset_task, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->reset_task.data = __constr_expr_0;
  lockdep_init_map(& adapter->reset_task.lockdep_map, "(&adapter->reset_task)", & __key___0,
                   0);
  INIT_LIST_HEAD(& adapter->reset_task.entry);
  adapter->reset_task.func = & atl1e_reset_task;
  __init_work(& adapter->link_chg_task, 0);
  __constr_expr_1.counter = 137438953408L;
  adapter->link_chg_task.data = __constr_expr_1;
  lockdep_init_map(& adapter->link_chg_task.lockdep_map, "(&adapter->link_chg_task)",
                   & __key___1, 0);
  INIT_LIST_HEAD(& adapter->link_chg_task.entry);
  adapter->link_chg_task.func = & atl1e_link_chg_task;
  netif_set_gso_max_size(netdev, 15360U);
  err = ldv_register_netdev_95(netdev);
  }
  if (err != 0) {
    {
    netdev_err((struct net_device const *)netdev, "register netdevice failed\n");
    }
    goto err_register;
  } else {
  }
  {
  netif_stop_queue(netdev);
  netif_carrier_off(netdev);
  cards_found = cards_found + 1;
  }
  return (0);
  err_reset: ;
  err_register: ;
  err_sw_init: ;
  err_eeprom:
  {
  pci_iounmap(pdev, (void *)adapter->hw.hw_addr);
  }
  err_init_netdev: ;
  err_ioremap:
  {
  ldv_free_netdev_96(netdev);
  }
  err_alloc_etherdev:
  {
  pci_release_regions(pdev);
  }
  err_pci_reg: ;
  err_dma:
  {
  pci_disable_device(pdev);
  }
  return (err);
}
}
static void atl1e_remove(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct atl1e_adapter *adapter ;
  void *tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp___0;
  set_bit(3L, (unsigned long volatile *)(& adapter->flags));
  atl1e_del_timer(adapter);
  atl1e_cancel_work(adapter);
  ldv_unregister_netdev_97(netdev);
  atl1e_free_ring_resources(adapter);
  atl1e_force_ps(& adapter->hw);
  pci_iounmap(pdev, (void *)adapter->hw.hw_addr);
  pci_release_regions(pdev);
  ldv_free_netdev_98(netdev);
  pci_disable_device(pdev);
  }
  return;
}
}
static pci_ers_result_t atl1e_io_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct net_device *netdev ;
  void *tmp ;
  struct atl1e_adapter *adapter ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp___0;
  netif_device_detach(netdev);
  }
  if (state == 3U) {
    return (4U);
  } else {
  }
  {
  tmp___1 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___1) {
    {
    atl1e_down(adapter);
    }
  } else {
  }
  {
  pci_disable_device(pdev);
  }
  return (3U);
}
}
static pci_ers_result_t atl1e_io_slot_reset(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct atl1e_adapter *adapter ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp___0;
  tmp___1 = pci_enable_device(pdev);
  }
  if (tmp___1 != 0) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "Cannot re-enable PCI device after reset\n");
    }
    return (4U);
  } else {
  }
  {
  pci_set_master(pdev);
  pci_enable_wake(pdev, 3, 0);
  pci_enable_wake(pdev, 4, 0);
  atl1e_reset_hw(& adapter->hw);
  }
  return (5U);
}
}
static void atl1e_io_resume(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct atl1e_adapter *adapter ;
  void *tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp___0;
  tmp___2 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = atl1e_up(adapter);
    }
    if (tmp___1 != 0) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "can\'t bring device back up after reset\n");
      }
      return;
    } else {
    }
  } else {
  }
  {
  netif_device_attach(netdev);
  }
  return;
}
}
static struct pci_error_handlers const atl1e_err_handler = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& atl1e_io_error_detected),
    0, 0, & atl1e_io_slot_reset, & atl1e_io_resume};
static struct pci_driver atl1e_driver =
     {{0, 0}, (char const *)(& atl1e_driver_name), (struct pci_device_id const *)(& atl1e_pci_tbl),
    & atl1e_probe, & atl1e_remove, & atl1e_suspend, 0, 0, & atl1e_resume, & atl1e_shutdown,
    0, & atl1e_err_handler, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static int atl1e_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___pci_register_driver_99(& atl1e_driver, & __this_module, "atl1e");
  }
  return (tmp);
}
}
static void atl1e_driver_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_100(& atl1e_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_atl1e_driver_exit_14_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_atl1e_driver_init_14_9(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
void ldv_allocate_external_0(void) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_11_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_12_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_factory_14_14_4(void) ;
void ldv_dispatch_instance_deregister_6_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_4_3(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_7_1(int arg0 ) ;
void ldv_dispatch_irq_register_10_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_13_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_9_4(struct net_device *arg0 ) ;
void ldv_dispatch_register_dummy_factory_14_14_5(void) ;
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_14(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_16(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_17(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_20(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_23(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_26(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_27(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_28(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_31(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_32(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_33(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_36(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_37(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_40(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_41(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 ) ;
void ldv_entry_EMGentry_14(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_net_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_pci_instance_callback_2_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 ) ;
void ldv_pci_instance_callback_2_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_callback_2_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_2(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_9_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_switch_automaton_state_2_11(void) ;
void ldv_switch_automaton_state_2_20(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_3(void) ;
void ldv_switch_automaton_state_4_1(void) ;
void ldv_switch_automaton_state_4_4(void) ;
void ldv_timer_dummy_factory_4(void *arg0 ) ;
void ldv_timer_instance_callback_3_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_3(void *arg0 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_11_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
void (*ldv_14_exit_atl1e_driver_exit_default)(void) ;
int (*ldv_14_init_atl1e_driver_init_default)(void) ;
int ldv_14_ret_default ;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
int (*ldv_1_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) ;
int (*ldv_1_callback_get_eeprom_len)(struct net_device * ) ;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) ;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) ;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) ;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
unsigned long long (*ldv_1_callback_ndo_fix_features)(struct net_device * , unsigned long long ) ;
struct net_device_stats *(*ldv_1_callback_ndo_get_stats)(struct net_device * ) ;
void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) ;
int (*ldv_1_callback_ndo_set_features)(struct net_device * , unsigned long long ) ;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) ;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) ;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) ;
int (*ldv_1_callback_nway_reset)(struct net_device * ) ;
int (*ldv_1_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) ;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
struct net_device *ldv_1_container_net_device ;
struct ethtool_cmd *ldv_1_container_struct_ethtool_cmd_ptr ;
struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
struct ethtool_eeprom *ldv_1_container_struct_ethtool_eeprom_ptr ;
struct ethtool_regs *ldv_1_container_struct_ethtool_regs_ptr ;
struct ethtool_wolinfo *ldv_1_container_struct_ethtool_wolinfo_ptr ;
struct ifreq *ldv_1_container_struct_ifreq_ptr ;
struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
int ldv_1_ldv_param_17_1_default ;
int ldv_1_ldv_param_20_2_default ;
unsigned long long ldv_1_ldv_param_23_1_default ;
unsigned long long ldv_1_ldv_param_28_1_default ;
unsigned char *ldv_1_ldv_param_37_2_default ;
unsigned char *ldv_1_ldv_param_7_2_default ;
unsigned int (*ldv_2_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) ;
void (*ldv_2_callback_func_1_ptr)(struct pci_dev * ) ;
unsigned int (*ldv_2_callback_slot_reset)(struct pci_dev * ) ;
struct pci_driver *ldv_2_container_pci_driver ;
struct pci_dev *ldv_2_resource_dev ;
enum pci_channel_state ldv_2_resource_enum_pci_channel_state ;
struct pm_message ldv_2_resource_pm_message ;
struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
int ldv_2_ret_default ;
struct timer_list *ldv_3_container_timer_list ;
struct timer_list *ldv_4_container_timer_list ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_14 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) = & atl1e_intr;
void (*ldv_14_exit_atl1e_driver_exit_default)(void) = & atl1e_driver_exit;
int (*ldv_14_init_atl1e_driver_init_default)(void) = & atl1e_driver_init;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) = & atl1e_change_mtu;
int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) = & atl1e_ioctl;
unsigned long long (*ldv_1_callback_ndo_fix_features)(struct net_device * , unsigned long long ) = & atl1e_fix_features;
struct net_device_stats *(*ldv_1_callback_ndo_get_stats)(struct net_device * ) = & atl1e_get_stats;
void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) = & atl1e_netpoll;
int (*ldv_1_callback_ndo_set_features)(struct net_device * , unsigned long long ) = & atl1e_set_features;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) = & atl1e_set_mac_addr;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) = & atl1e_set_multi;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & atl1e_xmit_frame;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) = & atl1e_tx_timeout;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
unsigned int (*ldv_2_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) = (unsigned int (*)(struct pci_dev * ,
                     enum pci_channel_state ))(& atl1e_io_error_detected);
void (*ldv_2_callback_func_1_ptr)(struct pci_dev * ) = & atl1e_io_resume;
unsigned int (*ldv_2_callback_slot_reset)(struct pci_dev * ) = & atl1e_io_slot_reset;
void ldv_EMGentry_exit_atl1e_driver_exit_14_2(void (*arg0)(void) )
{
  {
  {
  atl1e_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_atl1e_driver_init_14_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = atl1e_driver_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_13_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_13_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_2 == 20);
    ldv_dispatch_register_13_2(ldv_13_pci_driver_pci_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 )
{
  struct net_device *ldv_5_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3200UL);
    ldv_5_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_5_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_allocate_external_0(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  {
  {
  ldv_0_data_data = external_allocated_data();
  tmp = external_allocated_data();
  ldv_0_thread_thread = (enum irqreturn (*)(int , void * ))tmp;
  tmp___0 = external_allocated_data();
  ldv_1_container_net_device = (struct net_device *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_1_container_struct_ethtool_cmd_ptr = (struct ethtool_cmd *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_1_container_struct_ethtool_drvinfo_ptr = (struct ethtool_drvinfo *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_1_container_struct_ethtool_eeprom_ptr = (struct ethtool_eeprom *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_1_container_struct_ethtool_regs_ptr = (struct ethtool_regs *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_1_container_struct_ethtool_wolinfo_ptr = (struct ethtool_wolinfo *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_1_container_struct_ifreq_ptr = (struct ifreq *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_1_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_1_ldv_param_37_2_default = (unsigned char *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_1_ldv_param_7_2_default = (unsigned char *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_2_resource_dev = (struct pci_dev *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_3_container_timer_list = (struct timer_list *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_4_container_timer_list = (struct timer_list *)tmp___12;
  }
  return;
}
}
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_6_timer_list_timer_list ;
  {
  {
  ldv_6_timer_list_timer_list = arg1;
  ldv_assume(ldv_statevar_3 == 2);
  ldv_dispatch_instance_deregister_6_1(ldv_6_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_11_1(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_deregister_12_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_11();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_factory_14_14_4(void)
{
  {
  {
  ldv_switch_automaton_state_4_1();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_6_1(struct timer_list *arg0 )
{
  {
  {
  ldv_3_container_timer_list = arg0;
  ldv_switch_automaton_state_3_1();
  }
  return;
}
}
void ldv_dispatch_instance_register_4_3(struct timer_list *arg0 )
{
  {
  {
  ldv_3_container_timer_list = arg0;
  ldv_switch_automaton_state_3_3();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_7_1(int arg0 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_irq_register_10_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_register_13_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_20();
  }
  return;
}
}
void ldv_dispatch_register_9_4(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_factory_14_14_5(void)
{
  {
  {
  ldv_switch_automaton_state_4_4();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_17(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  atl1e_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_20(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  atl1e_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_23(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  atl1e_fix_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_26(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  atl1e_get_stats(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_27(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  atl1e_netpoll(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_28(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  atl1e_set_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_31(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  atl1e_set_mac_addr(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_32(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  atl1e_set_multi(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_33(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  atl1e_xmit_frame(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  atl1e_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_14(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_14 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_14 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_14 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_14 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_14 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_14 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_14 == 9) {
    goto case_9;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_2 == 12);
  ldv_EMGentry_exit_atl1e_driver_exit_14_2(ldv_14_exit_atl1e_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_14 = 9;
  }
  goto ldv_52003;
  case_3:
  {
  ldv_assume(ldv_statevar_2 == 12);
  ldv_EMGentry_exit_atl1e_driver_exit_14_2(ldv_14_exit_atl1e_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_14 = 9;
  }
  goto ldv_52003;
  case_4:
  {
  ldv_assume(ldv_statevar_4 == 2);
  ldv_dispatch_deregister_dummy_factory_14_14_4();
  ldv_statevar_14 = 2;
  }
  goto ldv_52003;
  case_5:
  {
  ldv_assume(ldv_statevar_4 == 4);
  ldv_dispatch_register_dummy_factory_14_14_5();
  ldv_statevar_14 = 4;
  }
  goto ldv_52003;
  case_6:
  {
  ldv_assume(ldv_14_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_14 = 3;
  } else {
    ldv_statevar_14 = 5;
  }
  goto ldv_52003;
  case_8:
  {
  ldv_assume(ldv_14_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_14 = 9;
  }
  goto ldv_52003;
  case_9:
  {
  ldv_assume(ldv_statevar_2 == 20);
  ldv_14_ret_default = ldv_EMGentry_init_atl1e_driver_init_14_9(ldv_14_init_atl1e_driver_init_default);
  ldv_14_ret_default = ldv_post_init(ldv_14_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_14 = 6;
  } else {
    ldv_statevar_14 = 8;
  }
  goto ldv_52003;
  switch_default: ;
  switch_break: ;
  }
  ldv_52003: ;
  return;
}
}
int main(void)
{
  int tmp ;
  {
  {
  ldv_initialize();
  ldv_initialize_external_data();
  ldv_statevar_14 = 9;
  ldv_statevar_0 = 6;
  ldv_statevar_1 = 5;
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  ldv_statevar_3 = 3;
  ldv_statevar_4 = 4;
  }
  ldv_52021:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_14((void *)0);
  }
  goto ldv_52014;
  case_1:
  {
  ldv_interrupt_interrupt_instance_0((void *)0);
  }
  goto ldv_52014;
  case_2:
  {
  ldv_net_dummy_resourceless_instance_1((void *)0);
  }
  goto ldv_52014;
  case_3:
  {
  ldv_pci_pci_instance_2((void *)0);
  }
  goto ldv_52014;
  case_4:
  {
  ldv_timer_timer_instance_3((void *)0);
  }
  goto ldv_52014;
  case_5:
  {
  ldv_timer_dummy_factory_4((void *)0);
  }
  goto ldv_52014;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_52014: ;
  goto ldv_52021;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_7_line_line ;
  {
  {
  ldv_7_line_line = arg1;
  ldv_assume(ldv_statevar_0 == 2);
  ldv_dispatch_irq_deregister_7_1(ldv_7_line_line);
  }
  return;
  return;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_8_netdev_net_device ;
  {
  {
  ldv_8_netdev_net_device = arg1;
  ldv_free((void *)ldv_8_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_initialize_external_data(void)
{
  {
  {
  ldv_allocate_external_0();
  }
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = atl1e_intr(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_0(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
  ldv_statevar_0 = 6;
  }
  goto ldv_52053;
  case_4:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default == 2U);
  }
  if ((unsigned long )ldv_0_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                  void * ))0)) {
    {
    ldv_interrupt_instance_thread_0_3(ldv_0_thread_thread, ldv_0_line_line, ldv_0_data_data);
    }
  } else {
  }
  ldv_statevar_0 = 6;
  goto ldv_52053;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                             ldv_0_line_line, ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 2;
  } else {
    ldv_statevar_0 = 4;
  }
  goto ldv_52053;
  case_6: ;
  goto ldv_52053;
  switch_default: ;
  switch_break: ;
  }
  ldv_52053: ;
  return;
}
}
void ldv_net_dummy_resourceless_instance_1(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  if (ldv_statevar_1 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_1 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_1 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_1 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_1 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_1 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_1 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_1 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_1 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_1 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_1 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_1 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_1 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_1 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_1 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_1 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_1 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_1 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_1 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_1 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_1 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_1 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_1 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_1 == 41) {
    goto case_41;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_52062;
  case_2:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_52062;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_52062;
  case_5: ;
  goto ldv_52062;
  case_8:
  {
  tmp = ldv_xmalloc(1UL);
  ldv_1_ldv_param_7_2_default = (unsigned char *)tmp;
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_get_eeprom, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_eeprom_ptr,
                                               ldv_1_ldv_param_7_2_default);
  ldv_free((void *)ldv_1_ldv_param_7_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_1_10(ldv_1_callback_get_eeprom_len, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_1_11(ldv_1_callback_get_link, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_1_12(ldv_1_callback_get_msglevel, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_get_regs, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_get_regs_len, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_1_15(ldv_1_callback_get_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_1_16(ldv_1_callback_get_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_18:
  {
  ldv_assume(ldv_statevar_3 == 2);
  ldv_dummy_resourceless_instance_callback_1_17(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                                ldv_1_ldv_param_17_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_1_20(ldv_1_callback_ndo_do_ioctl, ldv_1_container_net_device,
                                                ldv_1_container_struct_ifreq_ptr,
                                                ldv_1_ldv_param_20_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_24:
  {
  ldv_dummy_resourceless_instance_callback_1_23(ldv_1_callback_ndo_fix_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_23_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_26:
  {
  ldv_dummy_resourceless_instance_callback_1_26(ldv_1_callback_ndo_get_stats, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_27:
  {
  ldv_dummy_resourceless_instance_callback_1_27(ldv_1_callback_ndo_poll_controller,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_29:
  {
  ldv_dummy_resourceless_instance_callback_1_28(ldv_1_callback_ndo_set_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_28_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_1_31(ldv_1_callback_ndo_set_mac_address,
                                                ldv_1_container_net_device, (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_32:
  {
  ldv_dummy_resourceless_instance_callback_1_32(ldv_1_callback_ndo_set_rx_mode, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_33:
  {
  ldv_dummy_resourceless_instance_callback_1_33(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_34:
  {
  ldv_dummy_resourceless_instance_callback_1_34(ldv_1_callback_ndo_tx_timeout, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_35:
  {
  ldv_dummy_resourceless_instance_callback_1_35(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_1_36(ldv_1_callback_nway_reset, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_38:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_37_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_37(ldv_1_callback_set_eeprom, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_eeprom_ptr,
                                                ldv_1_ldv_param_37_2_default);
  ldv_free((void *)ldv_1_ldv_param_37_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_40:
  {
  ldv_assume(ldv_statevar_3 == 2);
  ldv_dummy_resourceless_instance_callback_1_40(ldv_1_callback_set_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  case_41:
  {
  ldv_dummy_resourceless_instance_callback_1_41(ldv_1_callback_set_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52062;
  switch_default: ;
  switch_break: ;
  }
  ldv_52062: ;
  return;
}
}
void ldv_pci_instance_callback_2_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 )
{
  {
  {
  atl1e_io_error_detected(arg1, (pci_channel_state_t )arg2);
  }
  return;
}
}
void ldv_pci_instance_callback_2_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  atl1e_io_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_callback_2_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  atl1e_io_slot_reset(arg1);
  }
  return;
}
}
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = atl1e_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  atl1e_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  atl1e_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  atl1e_shutdown(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = atl1e_suspend(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_pci_pci_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  {
  if (ldv_statevar_2 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_2 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_2 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_2 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_2 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_2 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_2 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_2 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_2 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_2 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_2 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_2 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_2 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_2 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_2 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_2 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_2 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_2 == 24) {
    goto case_24;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_52153;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 1 || ldv_statevar_3 == 2);
  ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
  ldv_statevar_2 = 1;
  }
  goto ldv_52153;
  case_3:
  {
  ldv_assume(ldv_statevar_0 == 2);
  ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
  ldv_statevar_2 = 2;
  }
  goto ldv_52153;
  case_4:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_52153;
  case_5:
  {
  ldv_assume(ldv_statevar_0 == 6);
  ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
  ldv_statevar_2 = 4;
  }
  goto ldv_52153;
  case_6: ;
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 5;
  goto ldv_52153;
  case_7: ;
  if ((unsigned long )ldv_2_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_2_ret_default = ldv_pci_instance_suspend_late_2_7(ldv_2_container_pci_driver->suspend_late,
                                                          ldv_2_resource_dev, ldv_2_resource_pm_message);
    }
  } else {
  }
  {
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  ldv_statevar_2 = 6;
  }
  goto ldv_52153;
  case_8:
  {
  ldv_assume(ldv_statevar_0 == 2 || ldv_statevar_3 == 2);
  ldv_2_ret_default = ldv_pci_instance_suspend_2_8(ldv_2_container_pci_driver->suspend,
                                                   ldv_2_resource_dev, ldv_2_resource_pm_message);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  ldv_statevar_2 = 7;
  }
  goto ldv_52153;
  case_9:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_52153;
  case_10:
  {
  ldv_assume(ldv_statevar_3 == 2);
  ldv_pci_instance_callback_2_10(ldv_2_callback_error_detected, ldv_2_resource_dev,
                                 ldv_2_resource_enum_pci_channel_state);
  ldv_statevar_2 = 9;
  }
  goto ldv_52153;
  case_12:
  {
  ldv_free((void *)ldv_2_resource_dev);
  ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  }
  goto ldv_52153;
  case_14:
  {
  ldv_assume(ldv_2_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_52153;
  case_16:
  {
  ldv_assume(ldv_2_ret_default == 0);
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_52153;
  case_17:
  {
  ldv_assume(ldv_statevar_1 == 5);
  ldv_pre_probe();
  ldv_2_ret_default = ldv_pci_instance_probe_2_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_2_container_pci_driver->probe,
                                                  ldv_2_resource_dev, ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = ldv_post_probe(ldv_2_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 14;
  } else {
    ldv_statevar_2 = 16;
  }
  goto ldv_52153;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_2_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_2_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_52153;
  case_20: ;
  goto ldv_52153;
  case_23:
  {
  ldv_pci_instance_callback_2_23(ldv_2_callback_func_1_ptr, ldv_2_resource_dev);
  ldv_statevar_2 = 9;
  }
  goto ldv_52153;
  case_24:
  {
  ldv_pci_instance_callback_2_24(ldv_2_callback_slot_reset, ldv_2_resource_dev);
  ldv_statevar_2 = 9;
  }
  goto ldv_52153;
  switch_default: ;
  switch_break: ;
  }
  ldv_52153: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_12_pci_driver_pci_driver ;
  {
  {
  ldv_12_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_2 == 12);
  ldv_dispatch_deregister_12_1(ldv_12_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_9_netdev_net_device ;
  int ldv_9_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_9_ret_default = 1;
  ldv_9_ret_default = ldv_pre_register_netdev();
  ldv_9_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_9_ret_default == 0);
    ldv_assume(ldv_statevar_0 == 2 || ldv_statevar_0 == 6);
    ldv_9_ret_default = ldv_register_netdev_open_9_6((ldv_9_netdev_net_device->netdev_ops)->ndo_open,
                                                     ldv_9_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_9_ret_default == 0);
      ldv_assume(ldv_statevar_1 == 5);
      ldv_dispatch_register_9_4(ldv_9_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_9_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_9_ret_default != 0);
    }
  }
  return (ldv_9_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_9_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = atl1e_open(arg1);
  }
  return (tmp);
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_10_callback_handler)(int , void * ) ;
  void *ldv_10_data_data ;
  int ldv_10_line_line ;
  enum irqreturn (*ldv_10_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_10_line_line = (int )arg1;
    ldv_10_callback_handler = arg2;
    ldv_10_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_10_data_data = arg5;
    ldv_assume(ldv_statevar_0 == 6);
    ldv_dispatch_irq_register_10_2(ldv_10_line_line, ldv_10_callback_handler, ldv_10_thread_thread,
                                   ldv_10_data_data);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
int ldv_switch_0(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  if (tmp == 23) {
    goto case_23;
  } else {
  }
  if (tmp == 24) {
    goto case_24;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (8);
  case_3: ;
  return (10);
  case_4: ;
  return (11);
  case_5: ;
  return (12);
  case_6: ;
  return (13);
  case_7: ;
  return (14);
  case_8: ;
  return (15);
  case_9: ;
  return (16);
  case_10: ;
  return (18);
  case_11: ;
  return (21);
  case_12: ;
  return (24);
  case_13: ;
  return (26);
  case_14: ;
  return (27);
  case_15: ;
  return (29);
  case_16: ;
  return (31);
  case_17: ;
  return (32);
  case_18: ;
  return (33);
  case_19: ;
  return (34);
  case_20: ;
  return (35);
  case_21: ;
  return (36);
  case_22: ;
  return (38);
  case_23: ;
  return (40);
  case_24: ;
  return (41);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_1(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (8);
  case_2: ;
  return (10);
  case_3: ;
  return (23);
  case_4: ;
  return (24);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_1(void)
{
  {
  ldv_statevar_0 = 6;
  return;
}
}
void ldv_switch_automaton_state_0_6(void)
{
  {
  ldv_statevar_0 = 5;
  return;
}
}
void ldv_switch_automaton_state_1_1(void)
{
  {
  ldv_statevar_1 = 5;
  return;
}
}
void ldv_switch_automaton_state_1_5(void)
{
  {
  ldv_statevar_1 = 4;
  return;
}
}
void ldv_switch_automaton_state_2_11(void)
{
  {
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  return;
}
}
void ldv_switch_automaton_state_2_20(void)
{
  {
  ldv_statevar_2 = 19;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 3;
  return;
}
}
void ldv_switch_automaton_state_3_3(void)
{
  {
  ldv_statevar_3 = 2;
  return;
}
}
void ldv_switch_automaton_state_4_1(void)
{
  {
  ldv_statevar_4 = 4;
  return;
}
}
void ldv_switch_automaton_state_4_4(void)
{
  {
  ldv_statevar_4 = 3;
  return;
}
}
void ldv_timer_dummy_factory_4(void *arg0 )
{
  {
  {
  if (ldv_statevar_4 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_4 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_4 == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_2:
  ldv_statevar_4 = 4;
  goto ldv_52266;
  case_3:
  {
  ldv_assume(ldv_statevar_3 == 3);
  ldv_dispatch_instance_register_4_3(ldv_4_container_timer_list);
  ldv_statevar_4 = 2;
  }
  goto ldv_52266;
  case_4: ;
  goto ldv_52266;
  switch_default: ;
  switch_break: ;
  }
  ldv_52266: ;
  return;
}
}
void ldv_timer_instance_callback_3_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_3(void *arg0 )
{
  {
  {
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_3_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_3_2(ldv_3_container_timer_list->function, ldv_3_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_statevar_3 = 3;
  }
  goto ldv_52279;
  case_3: ;
  goto ldv_52279;
  switch_default: ;
  switch_break: ;
  }
  ldv_52279: ;
  return;
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_11_netdev_net_device ;
  {
  {
  ldv_11_netdev_net_device = arg1;
  ldv_assume(ldv_statevar_0 == 2 || ldv_statevar_3 == 2);
  ldv_unregister_netdev_stop_11_2((ldv_11_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_11_netdev_net_device);
  ldv_assume(ldv_statevar_1 == 1);
  ldv_dispatch_deregister_11_1(ldv_11_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_unregister_netdev_stop_11_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  atl1e_close(arg1);
  }
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_58(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_59(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv___ldv_spin_lock_77(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_mdio_lock_of_atl1e_adapter();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_78(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_mdio_lock_of_atl1e_adapter();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_79(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_mdio_lock_of_atl1e_adapter();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_81(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_mdio_lock_of_atl1e_adapter();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_82(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_mdio_lock_of_atl1e_adapter();
  spin_unlock(lock);
  }
  return;
}
}
static int ldv_del_timer_sync_83(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv___ldv_spin_lock_84(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_mdio_lock_of_atl1e_adapter();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv___ldv_spin_trylock_88(spinlock_t *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __ldv_spin_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_spin_trylock_tx_lock_of_atl1e_adapter();
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static void ldv_spin_unlock_irqrestore_89(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_tx_lock_of_atl1e_adapter();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv_free_irq_92(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_93(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static struct net_device *ldv_alloc_etherdev_mqs_94(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  struct net_device *tmp ;
  struct net_device *tmp___0 ;
  {
  {
  tmp = alloc_etherdev_mqs(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_alloc_etherdev_mqs(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_register_netdev_95(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netdev(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netdev(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_netdev_96(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_netdev_97(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_98(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_99(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv___pci_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                      (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_pci_unregister_driver_100(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
__inline static __u32 __fswab32(__u32 val )
{
  int tmp ;
  {
  {
  tmp = __builtin_bswap32(val);
  }
  return ((__u32 )tmp);
}
}
__inline static void rep_nop(void)
{
  {
  __asm__ volatile ("rep; nop": : : "memory");
  return;
}
}
__inline static void cpu_relax(void)
{
  {
  {
  rep_nop();
  }
  return;
}
}
extern void __const_udelay(unsigned long ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
bool atl1e_read_eeprom(struct atl1e_hw *hw , u32 offset , u32 *p_value ) ;
bool atl1e_write_eeprom(struct atl1e_hw *hw , u32 offset , u32 value ) ;
int atl1e_check_eeprom_exist(struct atl1e_hw *hw ) ;
int atl1e_check_eeprom_exist(struct atl1e_hw *hw )
{
  u32 value ;
  unsigned short tmp ;
  {
  {
  value = readl((void const volatile *)hw->hw_addr + 512U);
  }
  if ((value & 8192U) != 0U) {
    {
    value = value & 4294959103U;
    writel(value, (void volatile *)hw->hw_addr + 512U);
    }
  } else {
  }
  {
  tmp = readw((void const volatile *)hw->hw_addr + 88U);
  value = (u32 )tmp;
  }
  return ((value & 65280U) != 27648U);
}
}
void atl1e_hw_set_mac_addr(struct atl1e_hw *hw )
{
  u32 value ;
  {
  {
  value = ((((unsigned int )hw->mac_addr[2] << 24) | ((unsigned int )hw->mac_addr[3] << 16)) | ((unsigned int )hw->mac_addr[4] << 8)) | (unsigned int )hw->mac_addr[5];
  writel(value, (void volatile *)hw->hw_addr + 5256U);
  value = ((unsigned int )hw->mac_addr[0] << 8) | (unsigned int )hw->mac_addr[1];
  writel(value, (void volatile *)hw->hw_addr + 5260U);
  }
  return;
}
}
static int atl1e_get_permanent_address(struct atl1e_hw *hw )
{
  u32 addr[2U] ;
  u32 i ;
  u32 twsi_ctrl_data ;
  u8 eth_addr[6U] ;
  bool tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  bool tmp___3 ;
  {
  {
  tmp = is_valid_ether_addr((u8 const *)(& hw->perm_mac_addr));
  }
  if ((int )tmp) {
    return (0);
  } else {
  }
  {
  addr[1] = 0U;
  addr[0] = addr[1];
  tmp___0 = atl1e_check_eeprom_exist(hw);
  }
  if (tmp___0 == 0) {
    {
    twsi_ctrl_data = readl((void const volatile *)hw->hw_addr + 536U);
    twsi_ctrl_data = twsi_ctrl_data | 2048U;
    writel(twsi_ctrl_data, (void volatile *)hw->hw_addr + 536U);
    i = 0U;
    }
    goto ldv_50604;
    ldv_50603:
    {
    msleep(10U);
    twsi_ctrl_data = readl((void const volatile *)hw->hw_addr + 536U);
    }
    if ((twsi_ctrl_data & 2048U) == 0U) {
      goto ldv_50602;
    } else {
    }
    i = i + 1U;
    ldv_50604: ;
    if (i <= 99U) {
      goto ldv_50603;
    } else {
    }
    ldv_50602: ;
    if (i > 99U) {
      return (9);
    } else {
    }
  } else {
  }
  {
  addr[0] = readl((void const volatile *)hw->hw_addr + 5256U);
  addr[1] = readl((void const volatile *)hw->hw_addr + 5260U);
  tmp___1 = __fswab32(addr[0]);
  *((u32 *)(& eth_addr) + 2U) = tmp___1;
  tmp___2 = __fswab16((int )*((u16 *)(& addr) + 1U));
  *((u16 *)(& eth_addr)) = tmp___2;
  tmp___3 = is_valid_ether_addr((u8 const *)(& eth_addr));
  }
  if ((int )tmp___3) {
    {
    memcpy((void *)(& hw->perm_mac_addr), (void const *)(& eth_addr), 6UL);
    }
    return (0);
  } else {
  }
  return (1);
}
}
bool atl1e_write_eeprom(struct atl1e_hw *hw , u32 offset , u32 value )
{
  {
  return (1);
}
}
bool atl1e_read_eeprom(struct atl1e_hw *hw , u32 offset , u32 *p_value )
{
  int i ;
  u32 control ;
  {
  if ((offset & 3U) != 0U) {
    return (0);
  } else {
  }
  {
  writel(0U, (void volatile *)hw->hw_addr + 112U);
  control = (offset & 32767U) << 16;
  writel(control, (void volatile *)hw->hw_addr + 108U);
  i = 0;
  }
  goto ldv_50619;
  ldv_50618:
  {
  msleep(2U);
  control = readl((void const volatile *)hw->hw_addr + 108U);
  }
  if ((int )control < 0) {
    goto ldv_50617;
  } else {
  }
  i = i + 1;
  ldv_50619: ;
  if (i <= 9) {
    goto ldv_50618;
  } else {
  }
  ldv_50617: ;
  if ((int )control < 0) {
    {
    *p_value = readl((void const volatile *)hw->hw_addr + 112U);
    }
    return (1);
  } else {
  }
  return (0);
}
}
void atl1e_force_ps(struct atl1e_hw *hw )
{
  {
  {
  writew(32385, (void volatile *)hw->hw_addr + 5132U);
  }
  return;
}
}
s32 atl1e_read_mac_addr(struct atl1e_hw *hw )
{
  int err ;
  {
  {
  err = 0;
  err = atl1e_get_permanent_address(hw);
  }
  if (err != 0) {
    return (1);
  } else {
  }
  {
  memcpy((void *)(& hw->mac_addr), (void const *)(& hw->perm_mac_addr), 6UL);
  }
  return (0);
}
}
u32 atl1e_hash_mc_addr(struct atl1e_hw *hw , u8 *mc_addr )
{
  u32 crc32 ;
  u32 value ;
  int i ;
  {
  {
  value = 0U;
  crc32 = crc32_le(4294967295U, (unsigned char const *)mc_addr, 6UL);
  i = 0;
  }
  goto ldv_50635;
  ldv_50634:
  value = value | (((crc32 >> i) & 1U) << (31 - i));
  i = i + 1;
  ldv_50635: ;
  if (i <= 31) {
    goto ldv_50634;
  } else {
  }
  return (value);
}
}
void atl1e_hash_set(struct atl1e_hw *hw , u32 hash_value )
{
  u32 hash_bit ;
  u32 hash_reg ;
  u32 mta ;
  {
  {
  hash_reg = hash_value >> 31;
  hash_bit = (hash_value >> 26) & 31U;
  mta = readl((void const volatile *)(hw->hw_addr + ((unsigned long )(hash_reg << 2) + 5264UL)));
  mta = mta | (u32 )(1 << (int )hash_bit);
  writel(mta, (void volatile *)(hw->hw_addr + ((unsigned long )(hash_reg << 2) + 5264UL)));
  }
  return;
}
}
s32 atl1e_read_phy_reg(struct atl1e_hw *hw , u16 reg_addr , u16 *phy_data )
{
  u32 val ;
  int i ;
  {
  {
  val = (((unsigned int )reg_addr & 31U) << 16) | 14680064U;
  writel(val, (void volatile *)hw->hw_addr + 5140U);
  __asm__ volatile ("sfence": : : "memory");
  i = 0;
  }
  goto ldv_50653;
  ldv_50652:
  {
  __const_udelay(8590UL);
  val = readl((void const volatile *)hw->hw_addr + 5140U);
  }
  if ((val & 142606336U) == 0U) {
    goto ldv_50651;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  i = i + 1;
  ldv_50653: ;
  if (i <= 9) {
    goto ldv_50652;
  } else {
  }
  ldv_50651: ;
  if ((val & 142606336U) == 0U) {
    *phy_data = (unsigned short )val;
    return (0);
  } else {
  }
  return (2);
}
}
s32 atl1e_write_phy_reg(struct atl1e_hw *hw , u32 reg_addr , u16 phy_data )
{
  int i ;
  u32 val ;
  {
  {
  val = ((unsigned int )phy_data | ((reg_addr & 31U) << 16)) | 12582912U;
  writel(val, (void volatile *)hw->hw_addr + 5140U);
  __asm__ volatile ("sfence": : : "memory");
  i = 0;
  }
  goto ldv_50663;
  ldv_50662:
  {
  __const_udelay(8590UL);
  val = readl((void const volatile *)hw->hw_addr + 5140U);
  }
  if ((val & 142606336U) == 0U) {
    goto ldv_50661;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  i = i + 1;
  ldv_50663: ;
  if (i <= 9) {
    goto ldv_50662;
  } else {
  }
  ldv_50661: ;
  if ((val & 142606336U) == 0U) {
    return (0);
  } else {
  }
  return (2);
}
}
static void atl1e_init_pcie(struct atl1e_hw *hw )
{
  u32 value ;
  {
  {
  value = readl((void const volatile *)hw->hw_addr + 4104U);
  value = value | 32768U;
  writel(value, (void volatile *)hw->hw_addr + 4104U);
  }
  return;
}
}
static int atl1e_phy_setup_autoneg_adv(struct atl1e_hw *hw )
{
  s32 ret_val ;
  u16 mii_autoneg_adv_reg ;
  u16 mii_1000t_ctrl_reg ;
  {
  if ((unsigned int )hw->mii_autoneg_adv_reg != 0U) {
    return (0);
  } else {
  }
  mii_autoneg_adv_reg = 0U;
  mii_1000t_ctrl_reg = 768U;
  mii_autoneg_adv_reg = (unsigned int )mii_autoneg_adv_reg & 65055U;
  mii_1000t_ctrl_reg = (unsigned int )mii_1000t_ctrl_reg & 64767U;
  {
  if ((int )hw->media_type == 0) {
    goto case_0;
  } else {
  }
  if ((int )hw->media_type == 1) {
    goto case_1;
  } else {
  }
  if ((int )hw->media_type == 2) {
    goto case_2;
  } else {
  }
  if ((int )hw->media_type == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  mii_autoneg_adv_reg = (u16 )((unsigned int )mii_autoneg_adv_reg | 480U);
  hw->autoneg_advertised = 480U;
  if ((unsigned int )hw->nic_type == 0U) {
    mii_1000t_ctrl_reg = (u16 )((unsigned int )mii_1000t_ctrl_reg | 512U);
    hw->autoneg_advertised = (u16 )((unsigned int )hw->autoneg_advertised | 32U);
  } else {
  }
  goto ldv_50675;
  case_1:
  mii_autoneg_adv_reg = (u16 )((unsigned int )mii_autoneg_adv_reg | 256U);
  hw->autoneg_advertised = 8U;
  goto ldv_50675;
  case_2:
  mii_autoneg_adv_reg = (u16 )((unsigned int )mii_autoneg_adv_reg | 4U);
  hw->autoneg_advertised = 4U;
  goto ldv_50675;
  case_3:
  mii_autoneg_adv_reg = (u16 )((unsigned int )mii_autoneg_adv_reg | 2U);
  hw->autoneg_advertised = 2U;
  goto ldv_50675;
  switch_default:
  mii_autoneg_adv_reg = (u16 )((unsigned int )mii_autoneg_adv_reg | 1U);
  hw->autoneg_advertised = 1U;
  goto ldv_50675;
  switch_break: ;
  }
  ldv_50675:
  {
  mii_autoneg_adv_reg = (u16 )((unsigned int )mii_autoneg_adv_reg | 3072U);
  hw->mii_autoneg_adv_reg = mii_autoneg_adv_reg;
  hw->mii_1000t_ctrl_reg = mii_1000t_ctrl_reg;
  ret_val = atl1e_write_phy_reg(hw, 4U, (int )mii_autoneg_adv_reg);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  if ((unsigned int )hw->nic_type <= 1U) {
    {
    ret_val = atl1e_write_phy_reg(hw, 9U, (int )mii_1000t_ctrl_reg);
    }
    if (ret_val != 0) {
      return (ret_val);
    } else {
    }
  } else {
  }
  return (0);
}
}
s32 atl1e_phy_commit(struct atl1e_hw *hw )
{
  struct atl1e_adapter *adapter ;
  int ret_val ;
  u16 phy_data ;
  u32 val ;
  int i ;
  {
  {
  adapter = hw->adapter;
  phy_data = 37376U;
  ret_val = atl1e_write_phy_reg(hw, 0U, (int )phy_data);
  }
  if (ret_val != 0) {
    i = 0;
    goto ldv_50690;
    ldv_50689:
    {
    msleep(1U);
    val = readl((void const volatile *)hw->hw_addr + 5140U);
    }
    if ((val & 142606336U) == 0U) {
      goto ldv_50688;
    } else {
    }
    i = i + 1;
    ldv_50690: ;
    if (i <= 24) {
      goto ldv_50689;
    } else {
    }
    ldv_50688: ;
    if ((val & 142606336U) != 0U) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "pcie linkdown at least for 25ms\n");
      }
      return (ret_val);
    } else {
    }
    {
    netdev_err((struct net_device const *)adapter->netdev, "pcie linkup after %d ms\n",
               i);
    }
  } else {
  }
  return (0);
}
}
s32 atl1e_phy_init(struct atl1e_hw *hw )
{
  struct atl1e_adapter *adapter ;
  s32 ret_val ;
  u16 phy_val ;
  s32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  adapter = hw->adapter;
  if ((int )hw->phy_configured) {
    if ((int )hw->re_autoneg) {
      {
      hw->re_autoneg = 0;
      tmp = atl1e_restart_autoneg(hw);
      }
      return (tmp);
    } else {
    }
    return (0);
  } else {
  }
  {
  writew(15360, (void volatile *)hw->hw_addr + 5132U);
  msleep(2U);
  writew(15361, (void volatile *)hw->hw_addr + 5132U);
  msleep(2U);
  ret_val = atl1e_write_phy_reg(hw, 29U, 11);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  ret_val = atl1e_write_phy_reg(hw, 30U, 48128);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  ret_val = atl1e_write_phy_reg(hw, 29U, 0);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  phy_val = 751U;
  ret_val = atl1e_write_phy_reg(hw, 30U, (int )phy_val);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  ret_val = atl1e_write_phy_reg(hw, 29U, 18);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  ret_val = atl1e_write_phy_reg(hw, 30U, 19460);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  ret_val = atl1e_write_phy_reg(hw, 29U, 4);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  ret_val = atl1e_write_phy_reg(hw, 30U, 35771);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  ret_val = atl1e_write_phy_reg(hw, 29U, 5);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  ret_val = atl1e_write_phy_reg(hw, 30U, 11334);
  }
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  {
  msleep(1U);
  ret_val = atl1e_write_phy_reg(hw, 18U, 3072);
  }
  if (ret_val != 0) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "Error enable PHY linkChange Interrupt\n");
    }
    return (ret_val);
  } else {
  }
  {
  ret_val = atl1e_phy_setup_autoneg_adv(hw);
  }
  if (ret_val != 0) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "Error Setting up Auto-Negotiation\n");
    }
    return (ret_val);
  } else {
  }
  {
  descriptor.modname = "atl1e";
  descriptor.function = "atl1e_phy_init";
  descriptor.filename = "drivers/net/ethernet/atheros/atl1e/atl1e_hw.c";
  descriptor.format = "Restarting Auto-Negotiation\n";
  descriptor.lineno = 498U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)adapter->netdev,
                         "Restarting Auto-Negotiation\n");
    }
  } else {
  }
  {
  ret_val = atl1e_phy_commit(hw);
  }
  if (ret_val != 0) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "Error resetting the phy\n");
    }
    return (ret_val);
  } else {
  }
  hw->phy_configured = 1;
  return (0);
}
}
s32 atl1e_reset_hw(struct atl1e_hw *hw )
{
  struct atl1e_adapter *adapter ;
  struct pci_dev *pdev ;
  u32 idle_status_data ;
  u16 pci_cfg_cmd_word ;
  int timeout ;
  {
  {
  adapter = hw->adapter;
  pdev = adapter->pdev;
  idle_status_data = 0U;
  pci_cfg_cmd_word = 0U;
  timeout = 0;
  pci_read_config_word((struct pci_dev const *)pdev, 4, & pci_cfg_cmd_word);
  }
  if (((int )pci_cfg_cmd_word & 7) != 7) {
    {
    pci_cfg_cmd_word = (u16 )((unsigned int )pci_cfg_cmd_word | 7U);
    pci_write_config_word((struct pci_dev const *)pdev, 4, (int )pci_cfg_cmd_word);
    }
  } else {
  }
  {
  writel(513U, (void volatile *)hw->hw_addr + 5120U);
  __asm__ volatile ("sfence": : : "memory");
  msleep(1U);
  timeout = 0;
  }
  goto ldv_50709;
  ldv_50708:
  {
  idle_status_data = readl((void const volatile *)hw->hw_addr + 5136U);
  }
  if (idle_status_data == 0U) {
    goto ldv_50707;
  } else {
  }
  {
  msleep(1U);
  cpu_relax();
  timeout = timeout + 1;
  }
  ldv_50709: ;
  if (timeout <= 9) {
    goto ldv_50708;
  } else {
  }
  ldv_50707: ;
  if (timeout > 9) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "MAC state machine can\'t be idle since disabled for 10ms second\n");
    }
    return (9);
  } else {
  }
  return (0);
}
}
s32 atl1e_init_hw(struct atl1e_hw *hw )
{
  s32 ret_val ;
  {
  {
  ret_val = 0;
  atl1e_init_pcie(hw);
  writel(0U, (void volatile *)hw->hw_addr + 5264U);
  writel(0U, (void volatile *)hw->hw_addr + 5268U);
  ret_val = atl1e_phy_init(hw);
  }
  return (ret_val);
}
}
s32 atl1e_get_speed_and_duplex(struct atl1e_hw *hw , u16 *speed , u16 *duplex )
{
  int err ;
  u16 phy_data ;
  {
  {
  err = atl1e_read_phy_reg(hw, 17, & phy_data);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if (((int )phy_data & 2048) == 0) {
    return (8);
  } else {
  }
  {
  if (((int )phy_data & 49152) == 32768) {
    goto case_32768;
  } else {
  }
  if (((int )phy_data & 49152) == 16384) {
    goto case_16384;
  } else {
  }
  if (((int )phy_data & 49152) == 0) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_32768:
  *speed = 1000U;
  goto ldv_50722;
  case_16384:
  *speed = 100U;
  goto ldv_50722;
  case_0:
  *speed = 10U;
  goto ldv_50722;
  switch_default: ;
  return (7);
  switch_break: ;
  }
  ldv_50722: ;
  if (((int )phy_data & 8192) != 0) {
    *duplex = 2U;
  } else {
    *duplex = 1U;
  }
  return (0);
}
}
s32 atl1e_restart_autoneg(struct atl1e_hw *hw )
{
  int err ;
  {
  {
  err = 0;
  err = atl1e_write_phy_reg(hw, 4U, (int )hw->mii_autoneg_adv_reg);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )hw->nic_type <= 1U) {
    {
    err = atl1e_write_phy_reg(hw, 9U, (int )hw->mii_1000t_ctrl_reg);
    }
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  err = atl1e_write_phy_reg(hw, 0U, 37376);
  }
  return (err);
}
}
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern int device_set_wakeup_enable(struct device * , bool ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name(& pdev->dev);
  }
  return (tmp);
}
}
static int atl1e_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct atl1e_hw *hw ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  hw = & adapter->hw;
  ecmd->supported = 207U;
  }
  if ((unsigned int )hw->nic_type == 0U) {
    ecmd->supported = ecmd->supported | 32U;
  } else {
  }
  ecmd->advertising = 128U;
  ecmd->advertising = ecmd->advertising | 64U;
  ecmd->advertising = ecmd->advertising | (__u32 )hw->autoneg_advertised;
  ecmd->port = 0U;
  ecmd->phy_address = 0U;
  ecmd->transceiver = 0U;
  if ((unsigned int )adapter->link_speed != 65535U) {
    {
    ethtool_cmd_speed_set(ecmd, (__u32 )adapter->link_speed);
    }
    if ((unsigned int )adapter->link_duplex == 2U) {
      ecmd->duplex = 1U;
    } else {
      ecmd->duplex = 0U;
    }
  } else {
    {
    ethtool_cmd_speed_set(ecmd, 4294967295U);
    ecmd->duplex = 255U;
    }
  }
  ecmd->autoneg = 1U;
  return (0);
}
}
static int atl1e_set_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct atl1e_hw *hw ;
  int tmp___0 ;
  u16 adv4 ;
  u16 adv9 ;
  bool tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  hw = & adapter->hw;
  }
  goto ldv_50572;
  ldv_50571:
  {
  msleep(1U);
  }
  ldv_50572:
  {
  tmp___0 = test_and_set_bit(2L, (unsigned long volatile *)(& adapter->flags));
  }
  if (tmp___0 != 0) {
    goto ldv_50571;
  } else {
  }
  if ((unsigned int )ecmd->autoneg == 1U) {
    if ((ecmd->advertising & 32U) != 0U) {
      if ((unsigned int )hw->nic_type == 0U) {
        hw->autoneg_advertised = (unsigned int )((u16 )ecmd->advertising) & 47U;
      } else {
        {
        clear_bit(2L, (unsigned long volatile *)(& adapter->flags));
        }
        return (-22);
      }
    } else
    if ((ecmd->advertising & 16U) != 0U) {
      {
      clear_bit(2L, (unsigned long volatile *)(& adapter->flags));
      }
      return (-22);
    } else {
      hw->autoneg_advertised = (unsigned int )((u16 )ecmd->advertising) & 47U;
    }
    ecmd->advertising = (unsigned int )hw->autoneg_advertised | 192U;
    adv4 = (unsigned int )hw->mii_autoneg_adv_reg & 65055U;
    adv9 = (unsigned int )hw->mii_1000t_ctrl_reg & 64767U;
    if ((int )hw->autoneg_advertised & 1) {
      adv4 = (u16 )((unsigned int )adv4 | 32U);
    } else {
    }
    if (((int )hw->autoneg_advertised & 2) != 0) {
      adv4 = (u16 )((unsigned int )adv4 | 64U);
    } else {
    }
    if (((int )hw->autoneg_advertised & 4) != 0) {
      adv4 = (u16 )((unsigned int )adv4 | 128U);
    } else {
    }
    if (((int )hw->autoneg_advertised & 8) != 0) {
      adv4 = (u16 )((unsigned int )adv4 | 256U);
    } else {
    }
    if (((int )hw->autoneg_advertised & 32) != 0) {
      adv9 = (u16 )((unsigned int )adv9 | 512U);
    } else {
    }
    if ((int )adv4 != (int )hw->mii_autoneg_adv_reg || (int )adv9 != (int )hw->mii_1000t_ctrl_reg) {
      hw->mii_autoneg_adv_reg = adv4;
      hw->mii_1000t_ctrl_reg = adv9;
      hw->re_autoneg = 1;
    } else {
    }
  } else {
    {
    clear_bit(2L, (unsigned long volatile *)(& adapter->flags));
    }
    return (-22);
  }
  {
  tmp___1 = netif_running((struct net_device const *)adapter->netdev);
  }
  if ((int )tmp___1) {
    {
    atl1e_down(adapter);
    atl1e_up(adapter);
    }
  } else {
    {
    atl1e_reset_hw(& adapter->hw);
    }
  }
  {
  clear_bit(2L, (unsigned long volatile *)(& adapter->flags));
  }
  return (0);
}
}
static u32 atl1e_get_msglevel(struct net_device *netdev )
{
  {
  return (0U);
}
}
static int atl1e_get_regs_len(struct net_device *netdev )
{
  {
  return (300);
}
}
static void atl1e_get_regs(struct net_device *netdev , struct ethtool_regs *regs ,
                           void *p )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct atl1e_hw *hw ;
  u32 *regs_buff ;
  u16 phy_data ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  hw = & adapter->hw;
  regs_buff = (u32 *)p;
  memset(p, 0, 300UL);
  regs->version = (__u32 )((((int )hw->revision_id << 16) | 16777216) | (int )hw->device_id);
  *regs_buff = readl((void const volatile *)hw->hw_addr + 108U);
  *(regs_buff + 1UL) = readl((void const volatile *)hw->hw_addr + 512U);
  *(regs_buff + 2UL) = readl((void const volatile *)hw->hw_addr + 524U);
  *(regs_buff + 3UL) = readl((void const volatile *)hw->hw_addr + 536U);
  *(regs_buff + 4UL) = readl((void const volatile *)hw->hw_addr + 540U);
  *(regs_buff + 5UL) = readl((void const volatile *)hw->hw_addr + 5120U);
  *(regs_buff + 6UL) = readl((void const volatile *)hw->hw_addr + 5124U);
  *(regs_buff + 7UL) = readl((void const volatile *)hw->hw_addr + 5128U);
  *(regs_buff + 8UL) = readl((void const volatile *)hw->hw_addr + 5132U);
  *(regs_buff + 9UL) = readl((void const volatile *)hw->hw_addr + 5134U);
  *(regs_buff + 10UL) = readl((void const volatile *)hw->hw_addr + 5136U);
  *(regs_buff + 11UL) = readl((void const volatile *)hw->hw_addr + 5140U);
  *(regs_buff + 12UL) = readl((void const volatile *)hw->hw_addr + 5156U);
  *(regs_buff + 13UL) = readl((void const volatile *)hw->hw_addr + 5248U);
  *(regs_buff + 14UL) = readl((void const volatile *)hw->hw_addr + 5252U);
  *(regs_buff + 15UL) = readl((void const volatile *)hw->hw_addr + 5256U);
  *(regs_buff + 16UL) = readl((void const volatile *)hw->hw_addr + 5260U);
  *(regs_buff + 17UL) = readl((void const volatile *)hw->hw_addr + 5264U);
  *(regs_buff + 18UL) = readl((void const volatile *)hw->hw_addr + 5268U);
  *(regs_buff + 19UL) = readl((void const volatile *)hw->hw_addr + 5272U);
  *(regs_buff + 20UL) = readl((void const volatile *)hw->hw_addr + 5276U);
  *(regs_buff + 21UL) = readl((void const volatile *)hw->hw_addr + 5280U);
  *(regs_buff + 22UL) = readl((void const volatile *)hw->hw_addr + 5400U);
  *(regs_buff + 23UL) = readl((void const volatile *)hw->hw_addr + 5404U);
  *(regs_buff + 24UL) = readl((void const volatile *)hw->hw_addr + 5408U);
  *(regs_buff + 25UL) = readl((void const volatile *)hw->hw_addr + 5412U);
  *(regs_buff + 26UL) = readl((void const volatile *)hw->hw_addr + 5416U);
  *(regs_buff + 27UL) = readl((void const volatile *)hw->hw_addr + 5420U);
  *(regs_buff + 28UL) = readl((void const volatile *)hw->hw_addr + 5424U);
  *(regs_buff + 29UL) = readl((void const volatile *)hw->hw_addr + 5426U);
  atl1e_read_phy_reg(hw, 0, & phy_data);
  *(regs_buff + 73UL) = (unsigned int )phy_data;
  atl1e_read_phy_reg(hw, 1, & phy_data);
  *(regs_buff + 74UL) = (unsigned int )phy_data;
  }
  return;
}
}
static int atl1e_get_eeprom_len(struct net_device *netdev )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  tmp___0 = atl1e_check_eeprom_exist(& adapter->hw);
  }
  if (tmp___0 == 0) {
    return (512);
  } else {
    return (0);
  }
}
}
static int atl1e_get_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                            u8 *bytes )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct atl1e_hw *hw ;
  u32 *eeprom_buff ;
  int first_dword ;
  int last_dword ;
  int ret_val ;
  int i ;
  int tmp___0 ;
  void *tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  hw = & adapter->hw;
  ret_val = 0;
  }
  if (eeprom->len == 0U) {
    return (-22);
  } else {
  }
  {
  tmp___0 = atl1e_check_eeprom_exist(hw);
  }
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  {
  eeprom->magic = (__u32 )((int )hw->vendor_id | ((int )hw->device_id << 16));
  first_dword = (int )(eeprom->offset >> 2);
  last_dword = (int )(((eeprom->offset + eeprom->len) - 1U) >> 2);
  tmp___1 = kmalloc((unsigned long )((last_dword - first_dword) + 1) * 4UL, 208U);
  eeprom_buff = (u32 *)tmp___1;
  }
  if ((unsigned long )eeprom_buff == (unsigned long )((u32 *)0U)) {
    return (-12);
  } else {
  }
  i = first_dword;
  goto ldv_50608;
  ldv_50607:
  {
  tmp___2 = atl1e_read_eeprom(hw, (u32 )(i * 4), eeprom_buff + (unsigned long )(i - first_dword));
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    {
    kfree((void const *)eeprom_buff);
    }
    return (-5);
  } else {
  }
  i = i + 1;
  ldv_50608: ;
  if (i < last_dword) {
    goto ldv_50607;
  } else {
  }
  {
  memcpy((void *)bytes, (void const *)eeprom_buff + ((unsigned long )eeprom->offset & 3UL),
         (size_t )eeprom->len);
  kfree((void const *)eeprom_buff);
  }
  return (ret_val);
}
}
static int atl1e_set_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                            u8 *bytes )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  struct atl1e_hw *hw ;
  u32 *eeprom_buff ;
  u32 *ptr ;
  int first_dword ;
  int last_dword ;
  int ret_val ;
  int i ;
  void *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  hw = & adapter->hw;
  ret_val = 0;
  }
  if (eeprom->len == 0U) {
    return (-95);
  } else {
  }
  if (eeprom->magic != (__u32 )((int )hw->vendor_id | ((int )hw->device_id << 16))) {
    return (-22);
  } else {
  }
  {
  first_dword = (int )(eeprom->offset >> 2);
  last_dword = (int )(((eeprom->offset + eeprom->len) - 1U) >> 2);
  tmp___0 = kmalloc(512UL, 208U);
  eeprom_buff = (u32 *)tmp___0;
  }
  if ((unsigned long )eeprom_buff == (unsigned long )((u32 *)0U)) {
    return (-12);
  } else {
  }
  ptr = eeprom_buff;
  if ((eeprom->offset & 3U) != 0U) {
    {
    tmp___1 = atl1e_read_eeprom(hw, (u32 )(first_dword * 4), eeprom_buff);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      ret_val = -5;
      goto out;
    } else {
    }
    ptr = ptr + 1;
  } else {
  }
  if (((eeprom->offset + eeprom->len) & 3U) != 0U) {
    {
    tmp___3 = atl1e_read_eeprom(hw, (u32 )(last_dword * 4), eeprom_buff + (unsigned long )(last_dword - first_dword));
    }
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    if (tmp___4) {
      ret_val = -5;
      goto out;
    } else {
    }
  } else {
  }
  {
  memcpy((void *)ptr, (void const *)bytes, (size_t )eeprom->len);
  i = 0;
  }
  goto ldv_50625;
  ldv_50624:
  {
  tmp___5 = atl1e_write_eeprom(hw, (u32 )((first_dword + i) * 4), *(eeprom_buff + (unsigned long )i));
  }
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    ret_val = -5;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_50625: ;
  if (i < (last_dword - first_dword) + 1) {
    goto ldv_50624;
  } else {
  }
  out:
  {
  kfree((void const *)eeprom_buff);
  }
  return (ret_val);
}
}
static void atl1e_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  strlcpy((char *)(& drvinfo->driver), (char const *)(& atl1e_driver_name), 32UL);
  strlcpy((char *)(& drvinfo->version), (char const *)(& atl1e_driver_version),
          32UL);
  strlcpy((char *)(& drvinfo->fw_version), "L1e", 32UL);
  tmp___0 = pci_name((struct pci_dev const *)adapter->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  drvinfo->n_stats = 0U;
  drvinfo->testinfo_len = 0U;
  tmp___1 = atl1e_get_regs_len(netdev);
  drvinfo->regdump_len = (__u32 )tmp___1;
  tmp___2 = atl1e_get_eeprom_len(netdev);
  drvinfo->eedump_len = (__u32 )tmp___2;
  }
  return;
}
}
static void atl1e_get_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  wol->supported = 33U;
  wol->wolopts = 0U;
  }
  if ((adapter->wol & 4U) != 0U) {
    wol->wolopts = wol->wolopts | 2U;
  } else {
  }
  if ((adapter->wol & 8U) != 0U) {
    wol->wolopts = wol->wolopts | 4U;
  } else {
  }
  if ((adapter->wol & 16U) != 0U) {
    wol->wolopts = wol->wolopts | 8U;
  } else {
  }
  if ((adapter->wol & 2U) != 0U) {
    wol->wolopts = wol->wolopts | 32U;
  } else {
  }
  if ((int )adapter->wol & 1) {
    wol->wolopts = wol->wolopts | 1U;
  } else {
  }
  return;
}
}
static int atl1e_set_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  }
  if ((wol->wolopts & 94U) != 0U) {
    return (-95);
  } else {
  }
  adapter->wol = 0U;
  if ((wol->wolopts & 32U) != 0U) {
    adapter->wol = adapter->wol | 2U;
  } else {
  }
  if ((int )wol->wolopts & 1) {
    adapter->wol = adapter->wol | 1U;
  } else {
  }
  {
  device_set_wakeup_enable(& (adapter->pdev)->dev, adapter->wol != 0U);
  }
  return (0);
}
}
static int atl1e_nway_reset(struct net_device *netdev )
{
  struct atl1e_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1e_adapter *)tmp;
  tmp___0 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___0) {
    {
    atl1e_reinit_locked(adapter);
    }
  } else {
  }
  return (0);
}
}
static struct ethtool_ops const atl1e_ethtool_ops =
     {& atl1e_get_settings, & atl1e_set_settings, & atl1e_get_drvinfo, & atl1e_get_regs_len,
    & atl1e_get_regs, & atl1e_get_wol, & atl1e_set_wol, & atl1e_get_msglevel, 0, & atl1e_nway_reset,
    & ethtool_op_get_link, & atl1e_get_eeprom_len, & atl1e_get_eeprom, & atl1e_set_eeprom,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
void atl1e_set_ethtool_ops(struct net_device *netdev )
{
  {
  netdev->ethtool_ops = & atl1e_ethtool_ops;
  return;
}
}
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & atl1e_get_drvinfo;
int (*ldv_1_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) = & atl1e_get_eeprom;
int (*ldv_1_callback_get_eeprom_len)(struct net_device * ) = & atl1e_get_eeprom_len;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) = & ethtool_op_get_link;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) = & atl1e_get_msglevel;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) = & atl1e_get_regs;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) = & atl1e_get_regs_len;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) = & atl1e_get_settings;
void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) = & atl1e_get_wol;
int (*ldv_1_callback_nway_reset)(struct net_device * ) = & atl1e_nway_reset;
int (*ldv_1_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) = & atl1e_set_eeprom;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) = & atl1e_set_settings;
int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) = & atl1e_set_wol;
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  atl1e_get_eeprom_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ethtool_op_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  atl1e_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  atl1e_get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  atl1e_get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  atl1e_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_16(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  atl1e_get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  atl1e_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_36(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  atl1e_nway_reset(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_37(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  atl1e_set_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_40(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  atl1e_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_41(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  atl1e_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 )
{
  {
  {
  atl1e_get_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
extern int netdev_notice(struct net_device const * , char const * , ...) ;
static int tx_desc_cnt[33U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_tx_desc_cnt ;
static int rx_mem_size[33U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_rx_mem_size ;
static int media_type[33U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_media_type ;
static int int_mod_timer[33U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_int_mod_timer ;
static int atl1e_validate_option(int *value , struct atl1e_option *opt , struct atl1e_adapter *adapter )
{
  int i ;
  struct atl1e_opt_list *ent ;
  {
  if (*value == -1) {
    *value = opt->def;
    return (0);
  } else {
  }
  {
  if ((unsigned int )opt->type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )opt->type == 1U) {
    goto case_1___0;
  } else {
  }
  if ((unsigned int )opt->type == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  {
  if (*value == 1) {
    goto case_1;
  } else {
  }
  if (*value == 0) {
    goto case_0___0;
  } else {
  }
  goto switch_break___0;
  case_1:
  {
  netdev_info((struct net_device const *)adapter->netdev, "%s Enabled\n", opt->name);
  }
  return (0);
  case_0___0:
  {
  netdev_info((struct net_device const *)adapter->netdev, "%s Disabled\n", opt->name);
  }
  return (0);
  switch_break___0: ;
  }
  goto ldv_50657;
  case_1___0: ;
  if (*value >= opt->arg.r.min && *value <= opt->arg.r.max) {
    {
    netdev_info((struct net_device const *)adapter->netdev, "%s set to %i\n", opt->name,
                *value);
    }
    return (0);
  } else {
  }
  goto ldv_50657;
  case_2:
  i = 0;
  goto ldv_50663;
  ldv_50662:
  ent = opt->arg.l.p + (unsigned long )i;
  if (*value == ent->i) {
    if ((int )((signed char )*(ent->str)) != 0) {
      {
      netdev_info((struct net_device const *)adapter->netdev, "%s\n", ent->str);
      }
    } else {
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_50663: ;
  if (i < opt->arg.l.nr) {
    goto ldv_50662;
  } else {
  }
  goto ldv_50657;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/atheros/atl1e/atl1e_param.c"),
                       "i" (163), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_50657:
  {
  netdev_info((struct net_device const *)adapter->netdev, "Invalid %s specified (%i) %s\n",
              opt->name, *value, opt->err);
  *value = opt->def;
  }
  return (-1);
}
}
void atl1e_check_options(struct atl1e_adapter *adapter )
{
  int bd ;
  struct atl1e_option opt ;
  int val ;
  struct atl1e_option opt___0 ;
  int val___0 ;
  struct atl1e_option opt___1 ;
  int val___1 ;
  struct atl1e_option opt___2 ;
  int val___2 ;
  {
  bd = (int )adapter->bd_number;
  if (bd > 31) {
    {
    netdev_notice((struct net_device const *)adapter->netdev, "no configuration for board #%i\n",
                  bd);
    netdev_notice((struct net_device const *)adapter->netdev, "Using defaults for all values\n");
    }
  } else {
  }
  opt.type = 1;
  opt.name = (char *)"Transmit Ddescription Count";
  opt.err = (char *)"using default of 128";
  opt.def = 128;
  opt.arg.r.min = 32;
  opt.arg.r.max = 1020;
  if (num_tx_desc_cnt > (unsigned int )bd) {
    {
    val = tx_desc_cnt[bd];
    atl1e_validate_option(& val, & opt, adapter);
    adapter->tx_ring.count = (unsigned int )((u16 )val) & 65532U;
    }
  } else {
    adapter->tx_ring.count = (unsigned short )opt.def;
  }
  opt___0.type = 1;
  opt___0.name = (char *)"Memory size of rx buffer(KB)";
  opt___0.err = (char *)"using default of 256";
  opt___0.def = 256;
  opt___0.arg.r.min = 8;
  opt___0.arg.r.max = 1024;
  if (num_rx_mem_size > (unsigned int )bd) {
    {
    val___0 = rx_mem_size[bd];
    atl1e_validate_option(& val___0, & opt___0, adapter);
    adapter->rx_ring.page_size = (unsigned int )val___0 * 1024U;
    }
  } else {
    adapter->rx_ring.page_size = (unsigned int )opt___0.def * 1024U;
  }
  opt___1.type = 1;
  opt___1.name = (char *)"Interrupt Moderate Timer";
  opt___1.err = (char *)"using default of 100";
  opt___1.def = 100;
  opt___1.arg.r.min = 50;
  opt___1.arg.r.max = 65000;
  if (num_int_mod_timer > (unsigned int )bd) {
    {
    val___1 = int_mod_timer[bd];
    atl1e_validate_option(& val___1, & opt___1, adapter);
    adapter->hw.imt = (unsigned short )val___1;
    }
  } else {
    adapter->hw.imt = (unsigned short )opt___1.def;
  }
  opt___2.type = 1;
  opt___2.name = (char *)"Speed/Duplex Selection";
  opt___2.err = (char *)"using default of 0";
  opt___2.def = 0;
  opt___2.arg.r.min = 0;
  opt___2.arg.r.max = 4;
  if (num_media_type > (unsigned int )bd) {
    {
    val___2 = media_type[bd];
    atl1e_validate_option(& val___2, & opt___2, adapter);
    adapter->hw.media_type = (unsigned short )val___2;
    }
  } else {
    adapter->hw.media_type = (unsigned short )opt___2.def;
  }
  return;
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
void *ldv_calloc_unknown_size(void) ;
void *ldv_zalloc_unknown_size(void) ;
void *ldv_xmalloc_unknown_size(size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_malloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    memset(res, 0, 8UL);
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc_unknown_size(void)
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc_unknown_size();
  }
  return (tmp);
}
}
void *ldv_xmalloc_unknown_size(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = external_allocated_data();
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_undef_ptr(void) ;
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_negative(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  {
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_spin__xmit_lock_of_netdev_queue = 1;
void ldv_spin_lock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_spin__xmit_lock_of_netdev_queue = 2;
  }
  return;
}
}
void ldv_spin_unlock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin__xmit_lock_of_netdev_queue == 2);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 2);
  ldv_spin__xmit_lock_of_netdev_queue = 1;
  }
  return;
}
}
int ldv_spin_trylock__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  }
  return;
}
}
int ldv_spin_is_locked__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin__xmit_lock_of_netdev_queue == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked__xmit_lock_of_netdev_queue();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended__xmit_lock_of_netdev_queue(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock__xmit_lock_of_netdev_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_addr_list_lock_of_net_device = 1;
void ldv_spin_lock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_spin_addr_list_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_spin_unlock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_addr_list_lock_of_net_device == 2);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 2);
  ldv_spin_addr_list_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_spin_trylock_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_addr_list_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_spin_is_locked_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_addr_list_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_addr_list_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_addr_list_lock_of_net_device(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_addr_list_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_addr_list_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_alloc_lock_of_task_struct = 1;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_i_lock_of_inode = 1;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  ldv_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_spin_i_lock_of_inode == 2);
  ldv_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock = 1;
void ldv_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  ldv_spin_lock = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock == 2);
  ldv_assume(ldv_spin_lock == 2);
  ldv_spin_lock = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_res_counter = 1;
void ldv_spin_lock_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  ldv_spin_lock_of_res_counter = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_res_counter == 2);
  ldv_assume(ldv_spin_lock_of_res_counter == 2);
  ldv_spin_lock_of_res_counter = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_res_counter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_res_counter = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_res_counter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_res_counter == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_res_counter(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_res_counter();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_res_counter(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_res_counter(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_res_counter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lru_lock_of_netns_frags = 1;
void ldv_spin_lock_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_spin_lru_lock_of_netns_frags = 2;
  }
  return;
}
}
void ldv_spin_unlock_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lru_lock_of_netns_frags == 2);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 2);
  ldv_spin_lru_lock_of_netns_frags = 1;
  }
  return;
}
}
int ldv_spin_trylock_lru_lock_of_netns_frags(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lru_lock_of_netns_frags = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lru_lock_of_netns_frags(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lru_lock_of_netns_frags == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lru_lock_of_netns_frags(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lru_lock_of_netns_frags();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lru_lock_of_netns_frags(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lru_lock_of_netns_frags(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lru_lock_of_netns_frags = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_mdio_lock_of_atl1e_adapter = 1;
void ldv_spin_lock_mdio_lock_of_atl1e_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_mdio_lock_of_atl1e_adapter == 1);
  ldv_assume(ldv_spin_mdio_lock_of_atl1e_adapter == 1);
  ldv_spin_mdio_lock_of_atl1e_adapter = 2;
  }
  return;
}
}
void ldv_spin_unlock_mdio_lock_of_atl1e_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_mdio_lock_of_atl1e_adapter == 2);
  ldv_assume(ldv_spin_mdio_lock_of_atl1e_adapter == 2);
  ldv_spin_mdio_lock_of_atl1e_adapter = 1;
  }
  return;
}
}
int ldv_spin_trylock_mdio_lock_of_atl1e_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_mdio_lock_of_atl1e_adapter == 1);
  ldv_assume(ldv_spin_mdio_lock_of_atl1e_adapter == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_mdio_lock_of_atl1e_adapter = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_mdio_lock_of_atl1e_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_mdio_lock_of_atl1e_adapter == 1);
  ldv_assume(ldv_spin_mdio_lock_of_atl1e_adapter == 1);
  }
  return;
}
}
int ldv_spin_is_locked_mdio_lock_of_atl1e_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_mdio_lock_of_atl1e_adapter == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_mdio_lock_of_atl1e_adapter(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_mdio_lock_of_atl1e_adapter();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_mdio_lock_of_atl1e_adapter(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_mdio_lock_of_atl1e_adapter(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_mdio_lock_of_atl1e_adapter == 1);
  ldv_assume(ldv_spin_mdio_lock_of_atl1e_adapter == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_mdio_lock_of_atl1e_adapter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_node_size_lock_of_pglist_data = 1;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_ptl = 1;
void ldv_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  ldv_spin_ptl = 2;
  }
  return;
}
}
void ldv_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_ptl == 2);
  ldv_assume(ldv_spin_ptl == 2);
  ldv_spin_ptl = 1;
  }
  return;
}
}
int ldv_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  }
  return;
}
}
int ldv_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_siglock_of_sighand_struct = 1;
void ldv_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_sk_dst_lock_of_sock = 1;
void ldv_spin_lock_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_spin_sk_dst_lock_of_sock = 2;
  }
  return;
}
}
void ldv_spin_unlock_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_sk_dst_lock_of_sock == 2);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 2);
  ldv_spin_sk_dst_lock_of_sock = 1;
  }
  return;
}
}
int ldv_spin_trylock_sk_dst_lock_of_sock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_sk_dst_lock_of_sock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_sk_dst_lock_of_sock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_sk_dst_lock_of_sock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_sk_dst_lock_of_sock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_sk_dst_lock_of_sock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_sk_dst_lock_of_sock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_sk_dst_lock_of_sock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_sk_dst_lock_of_sock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_slock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_spin_slock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_spin_slock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_slock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_slock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_slock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_slock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_tx_global_lock_of_net_device = 1;
void ldv_spin_lock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_spin_tx_global_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_spin_unlock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_tx_global_lock_of_net_device == 2);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 2);
  ldv_spin_tx_global_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_spin_trylock_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_tx_global_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_spin_is_locked_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_tx_global_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_tx_global_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_tx_global_lock_of_net_device(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_tx_global_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_tx_global_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_tx_lock_of_atl1e_adapter = 1;
void ldv_spin_lock_tx_lock_of_atl1e_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_tx_lock_of_atl1e_adapter == 1);
  ldv_assume(ldv_spin_tx_lock_of_atl1e_adapter == 1);
  ldv_spin_tx_lock_of_atl1e_adapter = 2;
  }
  return;
}
}
void ldv_spin_unlock_tx_lock_of_atl1e_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_tx_lock_of_atl1e_adapter == 2);
  ldv_assume(ldv_spin_tx_lock_of_atl1e_adapter == 2);
  ldv_spin_tx_lock_of_atl1e_adapter = 1;
  }
  return;
}
}
int ldv_spin_trylock_tx_lock_of_atl1e_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_lock_of_atl1e_adapter == 1);
  ldv_assume(ldv_spin_tx_lock_of_atl1e_adapter == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_tx_lock_of_atl1e_adapter = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_tx_lock_of_atl1e_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_lock_of_atl1e_adapter == 1);
  ldv_assume(ldv_spin_tx_lock_of_atl1e_adapter == 1);
  }
  return;
}
}
int ldv_spin_is_locked_tx_lock_of_atl1e_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_tx_lock_of_atl1e_adapter == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_tx_lock_of_atl1e_adapter(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_tx_lock_of_atl1e_adapter();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_tx_lock_of_atl1e_adapter(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_tx_lock_of_atl1e_adapter(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_lock_of_atl1e_adapter == 1);
  ldv_assume(ldv_spin_tx_lock_of_atl1e_adapter == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_tx_lock_of_atl1e_adapter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_res_counter == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_mdio_lock_of_atl1e_adapter == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_tx_lock_of_atl1e_adapter == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_spin__xmit_lock_of_netdev_queue == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_addr_list_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_res_counter == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lru_lock_of_netns_frags == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_mdio_lock_of_atl1e_adapter == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_sk_dst_lock_of_sock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_slock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_tx_global_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_tx_lock_of_atl1e_adapter == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int ___pskb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __ldv_spin_lock(spinlock_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __ldv_spin_trylock(spinlock_t *arg0) {
  return __VERIFIER_nondet_int();
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __rwlock_init(rwlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_set_wakeup_enable(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void enable_irq(unsigned int arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_initialize() {
  return;
}
void ldv_pre_probe() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_pre_register_netdev() {
  return __VERIFIER_nondet_int();
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_notice(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return (void *)external_alloc();
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
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
