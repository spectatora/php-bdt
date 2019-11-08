dnl Tell PHP about the argument to enable the ot extension

PHP_ARG_ENABLE(ot, Whether to enable the ot extension, [ --enable-ot   Enable OT])

OT_CFLAGS="-O3 -Wall -Wextra -rdynamic"

LDFLAGS="-rdynamic"

if test "$PHP_OT" != "no"; then
    PHP_ADD_LIBRARY_WITH_PATH(libsimpleot, libsimpleot.a, SWF_SHARED_LIBADD)
    PHP_EXTENSION(libsimpleot, $ext_shared, , $OT_CFLAGS)
    PHP_ADD_MAKEFILE_FRAGMENT([Makefile.frag.deps])
fi
