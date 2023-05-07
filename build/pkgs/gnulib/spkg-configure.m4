SAGE_SPKG_CONFIGURE([gnulib], [
    # Check whether gnulib works by executing "gnulib-tool --version"
        AC_CACHE_CHECK([for gnulib], [ac_cv_path_GNULIB], [
                AC_PATH_PROGS_FEATURE_CHECK([GNULIB], [gnulib-tool],
                [${ac_path_GNULIB} --version >/dev/null 2>/dev/null &&
                      ac_cv_path_GNULIB=${ac_path_GNULIB} &&
                      ac_path_GNULIB_found=:
                ],
                [sage_spkg_install_gnulib=yes; ac_cv_path_GNULIB=no])])
])
