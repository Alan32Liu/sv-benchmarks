static struct utmp dummy_utmp;
struct utmp *getutent(void) {
  if (__VERIFIER_nondet_int())
    return (struct utmp *)NULL;
  dummy_utmp.ut_tv.tv_sec = __VERIFIER_nondet_int();
  dummy_utmp.ut_type = __VERIFIER_nondet_short();
  // these are 32-byte strings
  for (int i = 0; i < sizeof(dummy_utmp.ut_line); ++i)
    dummy_utmp.ut_line[i] = __VERIFIER_nondet_char();
  for (int i = 0; i < sizeof(dummy_utmp.ut_user); ++i)
    dummy_utmp.ut_user[i] = __VERIFIER_nondet_char();

  return &dummy_utmp;
}

ssize_t read(int fildes, void *buf, size_t nbyte)
{
  long ret=__VERIFIER_nondet_long();
  unsigned long offset=__VERIFIER_nondet_ulong();
  __VERIFIER_assume(ret>=-1 && ret<=nbyte);
  __VERIFIER_assume(offset<nbyte);
  /* assign some byte */
  *((char*)buf+offset)=__VERIFIER_nondet_char();
  return ret;
}

ssize_t write(int fildes, const void *buf, size_t nbyte)
{
  long ret=__VERIFIER_nondet_long();
  __VERIFIER_assume(ret>=-1 && ret<=nbyte);
  return ret;
}

int main()
{
  bb_errno_location = __VERIFIER_nondet_int();
  int argc = __VERIFIER_nondet_int();
  __VERIFIER_assume(argc >= 1 && argc <= 10000);

  char **argv=malloc((argc+1)*sizeof(char*));
  argv[argc]=0;

  for(int i=0; i<argc; ++i)
  {
    // let's limit the size of arguments to 10, which is an
    // underapproximation obviously
    argv[i]=malloc(11);
    argv[i][10] = 0;
    for(int j=0; j<10; ++j)
      argv[i][j]=__VERIFIER_nondet_char();
  }

  int res = __main(argc, argv);

  // Free argv
  for(int i=0; i<argc; ++i)
    free(argv[i]);
  free(argv);

  return res;
}
