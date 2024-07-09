# Makefile.in generated by automake 1.11.3 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011 Free Software
# Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.





pkgdatadir = $(datadir)/masa-cudalign
pkgincludedir = $(includedir)/masa-cudalign
pkglibdir = $(libdir)/masa-cudalign
pkglibexecdir = $(libexecdir)/masa-cudalign
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
bin_PROGRAMS = cudalign$(EXEEXT)
subdir = .
DIST_COMMON = README $(am__configure_deps) $(noinst_HEADERS) \
	$(srcdir)/Makefile.am $(srcdir)/Makefile.in \
	$(top_srcdir)/configure $(top_srcdir)/src/config.h.in AUTHORS \
	COPYING ChangeLog INSTALL NEWS TODO admin/depcomp \
	admin/install-sh admin/missing
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno config.status.lineno
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/src/config.h
CONFIG_CLEAN_FILES =
CONFIG_CLEAN_VPATH_FILES =
am__installdirs = "$(DESTDIR)$(bindir)"
PROGRAMS = $(bin_PROGRAMS)
am__dirstamp = $(am__leading_dot)dirstamp
am_cudalign_OBJECTS = ./src/cudalign-main.$(OBJEXT) \
	./src/cudalign-cuda_util.$(OBJEXT) \
	./src/cudalign-CUDAligner.$(OBJEXT) \
	./src/cudalign-CUDAlignerParameters.$(OBJEXT)
cudalign_OBJECTS = $(am_cudalign_OBJECTS)
am__DEPENDENCIES_1 =
cudalign_DEPENDENCIES = $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
	./src/CUDAligner.cu_o $(LIBMASA_PATH)/libmasa.a
cudalign_LINK = $(CXXLD) $(cudalign_CXXFLAGS) $(CXXFLAGS) \
	$(AM_LDFLAGS) $(LDFLAGS) -o $@
DEFAULT_INCLUDES = -I. -I$(top_builddir)/src
depcomp = $(SHELL) $(top_srcdir)/admin/depcomp
am__depfiles_maybe = depfiles
am__mv = mv -f
CXXCOMPILE = $(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) \
	$(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CXXFLAGS) $(CXXFLAGS)
CXXLD = $(CXX)
CXXLINK = $(CXXLD) $(AM_CXXFLAGS) $(CXXFLAGS) $(AM_LDFLAGS) $(LDFLAGS) \
	-o $@
SOURCES = $(cudalign_SOURCES)
DIST_SOURCES = $(cudalign_SOURCES)
RECURSIVE_TARGETS = all-recursive check-recursive dvi-recursive \
	html-recursive info-recursive install-data-recursive \
	install-dvi-recursive install-exec-recursive \
	install-html-recursive install-info-recursive \
	install-pdf-recursive install-ps-recursive install-recursive \
	installcheck-recursive installdirs-recursive pdf-recursive \
	ps-recursive uninstall-recursive
HEADERS = $(noinst_HEADERS)
RECURSIVE_CLEAN_TARGETS = mostlyclean-recursive clean-recursive	\
  distclean-recursive maintainer-clean-recursive
AM_RECURSIVE_TARGETS = $(RECURSIVE_TARGETS:-recursive=) \
	$(RECURSIVE_CLEAN_TARGETS:-recursive=) tags TAGS ctags CTAGS \
	distdir dist dist-all distcheck
ETAGS = etags
CTAGS = ctags
DIST_SUBDIRS = $(SUBDIRS)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)
am__remove_distdir = \
  if test -d "$(distdir)"; then \
    find "$(distdir)" -type d ! -perm -200 -exec chmod u+w {} ';' \
      && rm -rf "$(distdir)" \
      || { sleep 5 && rm -rf "$(distdir)"; }; \
  else :; fi
am__relativize = \
  dir0=`pwd`; \
  sed_first='s,^\([^/]*\)/.*$$,\1,'; \
  sed_rest='s,^[^/]*/*,,'; \
  sed_last='s,^.*/\([^/]*\)$$,\1,'; \
  sed_butlast='s,/*[^/]*$$,,'; \
  while test -n "$$dir1"; do \
    first=`echo "$$dir1" | sed -e "$$sed_first"`; \
    if test "$$first" != "."; then \
      if test "$$first" = ".."; then \
        dir2=`echo "$$dir0" | sed -e "$$sed_last"`/"$$dir2"; \
        dir0=`echo "$$dir0" | sed -e "$$sed_butlast"`; \
      else \
        first2=`echo "$$dir2" | sed -e "$$sed_first"`; \
        if test "$$first2" = "$$first"; then \
          dir2=`echo "$$dir2" | sed -e "$$sed_rest"`; \
        else \
          dir2="../$$dir2"; \
        fi; \
        dir0="$$dir0"/"$$first"; \
      fi; \
    fi; \
    dir1=`echo "$$dir1" | sed -e "$$sed_rest"`; \
  done; \
  reldir="$$dir2"
DIST_ARCHIVES = $(distdir).tar.gz
GZIP_ENV = --best
distuninstallcheck_listfiles = find . -type f -print
am__distuninstallcheck_listfiles = $(distuninstallcheck_listfiles) \
  | sed 's|^\./|$(prefix)/|' | grep -v '$(infodir)/dir$$'
distcleancheck_listfiles = find . -type f -print
ACLOCAL = ${SHELL} /home/laicoadm/Documentos/Filipe/dynbp_local/admin/missing --run aclocal-1.11
AMTAR = $${TAR-tar}
AUTOCONF = ${SHELL} /home/laicoadm/Documentos/Filipe/dynbp_local/admin/missing --run autoconf
AUTOHEADER = ${SHELL} /home/laicoadm/Documentos/Filipe/dynbp_local/admin/missing --run autoheader
AUTOMAKE = ${SHELL} /home/laicoadm/Documentos/Filipe/dynbp_local/admin/missing --run automake-1.11
AWK = mawk
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS = -g -O2
COMMONFLAGS = -DUNIX  -DTHREADS_COUNT=128  -m64 -O3 -Ilibs/masa-core/src
CPP = gcc -E
CPPFLAGS = 
CUDA_CFLAGS = -I/usr/lib/cuda/include
CUDA_LIBS = -L/usr/lib/cuda/lib64
CXX = g++
CXXDEPMODE = depmode=gcc3
CXXFLAGS = 
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = /usr/bin/grep -E
EXEEXT = 
GREP = /usr/bin/grep
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LDFLAGS = 
LIBMASA_PATH = libs/masa-core
LIBOBJS = 
LIBS = -lcuda -lcudart 
LTLIBOBJS = 
MAKEINFO = ${SHELL} /home/laicoadm/Documentos/Filipe/dynbp_local/admin/missing --run makeinfo
MKDIR_P = /usr/bin/mkdir -p
NVCC = /usr/lib/nvidia-cuda-toolkit/bin//nvcc
#NVCCFLAGS += -Xptxas -dlcm=cg #disable L1 cache
NVCCFLAGS = -I/usr/lib/cuda/include   --gpu-architecture=sm_75   -ftz=true -prec-sqrt=false -prec-div=false \
	--compiler-options -fno-strict-aliasing $(COMMONFLAGS)
OBJEXT = o
PACKAGE = masa-cudalign
PACKAGE_BUGREPORT = edans.sandes@gmail.com
PACKAGE_NAME = MASA-CUDAlign
PACKAGE_STRING = MASA-CUDAlign 3.9.1.1024
PACKAGE_TARNAME = masa-cudalign
PACKAGE_URL = https://github.com/edanssandes/masa-cudalign
PACKAGE_VERSION = 3.9.1.1024
PATH_SEPARATOR = :
RANLIB = ranlib
SET_MAKE = 
SHELL = /bin/bash
STRIP = 
VERSION = 3.9.1.1024
abs_builddir = /home/laicoadm/Documentos/Filipe/dynbp_local
abs_srcdir = /home/laicoadm/Documentos/Filipe/dynbp_local
abs_top_builddir = /home/laicoadm/Documentos/Filipe/dynbp_local
abs_top_srcdir = /home/laicoadm/Documentos/Filipe/dynbp_local
ac_ct_CC = gcc
ac_ct_CXX = g++
am__include = include
am__leading_dot = .
am__quote = 
am__tar = $${TAR-tar} chof - "$$tardir"
am__untar = $${TAR-tar} xf -
bindir = ${exec_prefix}/bin
build_alias = 
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host_alias = 
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /home/laicoadm/Documentos/Filipe/dynbp_local/admin/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mkdir_p = /usr/bin/mkdir -p
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
subdirs =  libs/masa-core
sysconfdir = ${prefix}/etc
target_alias = 
top_build_prefix = 
top_builddir = .
top_srcdir = .
AUTOMAKE_OPTIONS = subdir-objects
SUBDIRS = $(LIBMASA_PATH)
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS}
cudalign_CXXFLAGS = $(CUDA_CFLAGS) $(COMMONFLAGS) -malign-double -fno-strict-aliasing  
cudalign_LDADD = $(CUDA_LIBS) $(COMMONFLAGS) ./src/CUDAligner.cu_o $(LIBMASA_PATH)/libmasa.a -lcuda -lcudart -lpthread
cudalign_SOURCES = \
./src/main.cpp \
./src/cuda_util.cpp \
./src/CUDAligner.cpp \
./src/CUDAligner.cu \
./src/CUDAlignerParameters.cpp 

noinst_HEADERS = \
./src/cuda_util.h \
./src/CUDAligner.hpp \
./src/CUDAlignerParameters.hpp 

all: all-recursive

.SUFFIXES:
.SUFFIXES: .cpp .cu .cu_o .o .obj
am--refresh: Makefile
	@:
$(srcdir)/Makefile.in:  $(srcdir)/Makefile.am  $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      echo ' cd $(srcdir) && $(AUTOMAKE) --gnu'; \
	      $(am__cd) $(srcdir) && $(AUTOMAKE) --gnu \
		&& exit 0; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --gnu Makefile'; \
	$(am__cd) $(top_srcdir) && \
	  $(AUTOMAKE) --gnu Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    echo ' $(SHELL) ./config.status'; \
	    $(SHELL) ./config.status;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck

$(top_srcdir)/configure:  $(am__configure_deps)
	$(am__cd) $(srcdir) && $(AUTOCONF)
$(ACLOCAL_M4):  $(am__aclocal_m4_deps)
	$(am__cd) $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)
$(am__aclocal_m4_deps):

src/config.h: src/stamp-h1
	@if test ! -f $@; then rm -f src/stamp-h1; else :; fi
	@if test ! -f $@; then $(MAKE) $(AM_MAKEFLAGS) src/stamp-h1; else :; fi

src/stamp-h1: $(top_srcdir)/src/config.h.in $(top_builddir)/config.status
	@rm -f src/stamp-h1
	cd $(top_builddir) && $(SHELL) ./config.status src/config.h
$(top_srcdir)/src/config.h.in:  $(am__configure_deps) 
	($(am__cd) $(top_srcdir) && $(AUTOHEADER))
	rm -f src/stamp-h1
	touch $@

distclean-hdr:
	-rm -f src/config.h src/stamp-h1
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	test -z "$(bindir)" || $(MKDIR_P) "$(DESTDIR)$(bindir)"
	@list='$(bin_PROGRAMS)'; test -n "$(bindir)" || list=; \
	for p in $$list; do echo "$$p $$p"; done | \
	sed 's/$(EXEEXT)$$//' | \
	while read p p1; do if test -f $$p; \
	  then echo "$$p"; echo "$$p"; else :; fi; \
	done | \
	sed -e 'p;s,.*/,,;n;h' -e 's|.*|.|' \
	    -e 'p;x;s,.*/,,;s/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/' | \
	sed 'N;N;N;s,\n, ,g' | \
	$(AWK) 'BEGIN { files["."] = ""; dirs["."] = 1 } \
	  { d=$$3; if (dirs[d] != 1) { print "d", d; dirs[d] = 1 } \
	    if ($$2 == $$4) files[d] = files[d] " " $$1; \
	    else { print "f", $$3 "/" $$4, $$1; } } \
	  END { for (d in files) print "f", d, files[d] }' | \
	while read type dir files; do \
	    if test "$$dir" = .; then dir=; else dir=/$$dir; fi; \
	    test -z "$$files" || { \
	      echo " $(INSTALL_PROGRAM_ENV) $(INSTALL_PROGRAM) $$files '$(DESTDIR)$(bindir)$$dir'"; \
	      $(INSTALL_PROGRAM_ENV) $(INSTALL_PROGRAM) $$files "$(DESTDIR)$(bindir)$$dir" || exit $$?; \
	    } \
	; done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; test -n "$(bindir)" || list=; \
	files=`for p in $$list; do echo "$$p"; done | \
	  sed -e 'h;s,^.*/,,;s/$(EXEEXT)$$//;$(transform)' \
	      -e 's/$$/$(EXEEXT)/' `; \
	test -n "$$list" || exit 0; \
	echo " ( cd '$(DESTDIR)$(bindir)' && rm -f" $$files ")"; \
	cd "$(DESTDIR)$(bindir)" && rm -f $$files

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)
src/$(am__dirstamp):
	@$(MKDIR_P) ./src
	@: > src/$(am__dirstamp)
src/$(DEPDIR)/$(am__dirstamp):
	@$(MKDIR_P) ./src/$(DEPDIR)
	@: > src/$(DEPDIR)/$(am__dirstamp)
./src/cudalign-main.$(OBJEXT): src/$(am__dirstamp) \
	src/$(DEPDIR)/$(am__dirstamp)
./src/cudalign-cuda_util.$(OBJEXT): src/$(am__dirstamp) \
	src/$(DEPDIR)/$(am__dirstamp)
./src/cudalign-CUDAligner.$(OBJEXT): src/$(am__dirstamp) \
	src/$(DEPDIR)/$(am__dirstamp)
./src/cudalign-CUDAlignerParameters.$(OBJEXT): src/$(am__dirstamp) \
	src/$(DEPDIR)/$(am__dirstamp)
cudalign$(EXEEXT): $(cudalign_OBJECTS) $(cudalign_DEPENDENCIES) $(EXTRA_cudalign_DEPENDENCIES) 
	@rm -f cudalign$(EXEEXT)
	$(cudalign_LINK) $(cudalign_OBJECTS) $(cudalign_LDADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT)
	-rm -f ./src/cudalign-CUDAligner.$(OBJEXT)
	-rm -f ./src/cudalign-CUDAlignerParameters.$(OBJEXT)
	-rm -f ./src/cudalign-cuda_util.$(OBJEXT)
	-rm -f ./src/cudalign-main.$(OBJEXT)

distclean-compile:
	-rm -f *.tab.c

include ./src/$(DEPDIR)/cudalign-CUDAligner.Po
include ./src/$(DEPDIR)/cudalign-CUDAlignerParameters.Po
include ./src/$(DEPDIR)/cudalign-cuda_util.Po
include ./src/$(DEPDIR)/cudalign-main.Po

.cpp.o:
	depbase=`echo $@ | sed 's|[^/]*$$|$(DEPDIR)/&|;s|\.o$$||'`;\
	$(CXXCOMPILE) -MT $@ -MD -MP -MF $$depbase.Tpo -c -o $@ $< &&\
	$(am__mv) $$depbase.Tpo $$depbase.Po
#	source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXXCOMPILE) -c -o $@ $<

.cpp.obj:
	depbase=`echo $@ | sed 's|[^/]*$$|$(DEPDIR)/&|;s|\.obj$$||'`;\
	$(CXXCOMPILE) -MT $@ -MD -MP -MF $$depbase.Tpo -c -o $@ `$(CYGPATH_W) '$<'` &&\
	$(am__mv) $$depbase.Tpo $$depbase.Po
#	source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXXCOMPILE) -c -o $@ `$(CYGPATH_W) '$<'`

./src/cudalign-main.o: ./src/main.cpp
	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -MT ./src/cudalign-main.o -MD -MP -MF ./src/$(DEPDIR)/cudalign-main.Tpo -c -o ./src/cudalign-main.o `test -f './src/main.cpp' || echo '$(srcdir)/'`./src/main.cpp
	$(am__mv) ./src/$(DEPDIR)/cudalign-main.Tpo ./src/$(DEPDIR)/cudalign-main.Po
#	source='./src/main.cpp' object='./src/cudalign-main.o' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -c -o ./src/cudalign-main.o `test -f './src/main.cpp' || echo '$(srcdir)/'`./src/main.cpp

./src/cudalign-main.obj: ./src/main.cpp
	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -MT ./src/cudalign-main.obj -MD -MP -MF ./src/$(DEPDIR)/cudalign-main.Tpo -c -o ./src/cudalign-main.obj `if test -f './src/main.cpp'; then $(CYGPATH_W) './src/main.cpp'; else $(CYGPATH_W) '$(srcdir)/./src/main.cpp'; fi`
	$(am__mv) ./src/$(DEPDIR)/cudalign-main.Tpo ./src/$(DEPDIR)/cudalign-main.Po
#	source='./src/main.cpp' object='./src/cudalign-main.obj' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -c -o ./src/cudalign-main.obj `if test -f './src/main.cpp'; then $(CYGPATH_W) './src/main.cpp'; else $(CYGPATH_W) '$(srcdir)/./src/main.cpp'; fi`

./src/cudalign-cuda_util.o: ./src/cuda_util.cpp
	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -MT ./src/cudalign-cuda_util.o -MD -MP -MF ./src/$(DEPDIR)/cudalign-cuda_util.Tpo -c -o ./src/cudalign-cuda_util.o `test -f './src/cuda_util.cpp' || echo '$(srcdir)/'`./src/cuda_util.cpp
	$(am__mv) ./src/$(DEPDIR)/cudalign-cuda_util.Tpo ./src/$(DEPDIR)/cudalign-cuda_util.Po
#	source='./src/cuda_util.cpp' object='./src/cudalign-cuda_util.o' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -c -o ./src/cudalign-cuda_util.o `test -f './src/cuda_util.cpp' || echo '$(srcdir)/'`./src/cuda_util.cpp

./src/cudalign-cuda_util.obj: ./src/cuda_util.cpp
	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -MT ./src/cudalign-cuda_util.obj -MD -MP -MF ./src/$(DEPDIR)/cudalign-cuda_util.Tpo -c -o ./src/cudalign-cuda_util.obj `if test -f './src/cuda_util.cpp'; then $(CYGPATH_W) './src/cuda_util.cpp'; else $(CYGPATH_W) '$(srcdir)/./src/cuda_util.cpp'; fi`
	$(am__mv) ./src/$(DEPDIR)/cudalign-cuda_util.Tpo ./src/$(DEPDIR)/cudalign-cuda_util.Po
#	source='./src/cuda_util.cpp' object='./src/cudalign-cuda_util.obj' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -c -o ./src/cudalign-cuda_util.obj `if test -f './src/cuda_util.cpp'; then $(CYGPATH_W) './src/cuda_util.cpp'; else $(CYGPATH_W) '$(srcdir)/./src/cuda_util.cpp'; fi`

./src/cudalign-CUDAligner.o: ./src/CUDAligner.cpp
	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -MT ./src/cudalign-CUDAligner.o -MD -MP -MF ./src/$(DEPDIR)/cudalign-CUDAligner.Tpo -c -o ./src/cudalign-CUDAligner.o `test -f './src/CUDAligner.cpp' || echo '$(srcdir)/'`./src/CUDAligner.cpp
	$(am__mv) ./src/$(DEPDIR)/cudalign-CUDAligner.Tpo ./src/$(DEPDIR)/cudalign-CUDAligner.Po
#	source='./src/CUDAligner.cpp' object='./src/cudalign-CUDAligner.o' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -c -o ./src/cudalign-CUDAligner.o `test -f './src/CUDAligner.cpp' || echo '$(srcdir)/'`./src/CUDAligner.cpp

./src/cudalign-CUDAligner.obj: ./src/CUDAligner.cpp
	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -MT ./src/cudalign-CUDAligner.obj -MD -MP -MF ./src/$(DEPDIR)/cudalign-CUDAligner.Tpo -c -o ./src/cudalign-CUDAligner.obj `if test -f './src/CUDAligner.cpp'; then $(CYGPATH_W) './src/CUDAligner.cpp'; else $(CYGPATH_W) '$(srcdir)/./src/CUDAligner.cpp'; fi`
	$(am__mv) ./src/$(DEPDIR)/cudalign-CUDAligner.Tpo ./src/$(DEPDIR)/cudalign-CUDAligner.Po
#	source='./src/CUDAligner.cpp' object='./src/cudalign-CUDAligner.obj' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -c -o ./src/cudalign-CUDAligner.obj `if test -f './src/CUDAligner.cpp'; then $(CYGPATH_W) './src/CUDAligner.cpp'; else $(CYGPATH_W) '$(srcdir)/./src/CUDAligner.cpp'; fi`

./src/cudalign-CUDAlignerParameters.o: ./src/CUDAlignerParameters.cpp
	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -MT ./src/cudalign-CUDAlignerParameters.o -MD -MP -MF ./src/$(DEPDIR)/cudalign-CUDAlignerParameters.Tpo -c -o ./src/cudalign-CUDAlignerParameters.o `test -f './src/CUDAlignerParameters.cpp' || echo '$(srcdir)/'`./src/CUDAlignerParameters.cpp
	$(am__mv) ./src/$(DEPDIR)/cudalign-CUDAlignerParameters.Tpo ./src/$(DEPDIR)/cudalign-CUDAlignerParameters.Po
#	source='./src/CUDAlignerParameters.cpp' object='./src/cudalign-CUDAlignerParameters.o' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -c -o ./src/cudalign-CUDAlignerParameters.o `test -f './src/CUDAlignerParameters.cpp' || echo '$(srcdir)/'`./src/CUDAlignerParameters.cpp

./src/cudalign-CUDAlignerParameters.obj: ./src/CUDAlignerParameters.cpp
	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -MT ./src/cudalign-CUDAlignerParameters.obj -MD -MP -MF ./src/$(DEPDIR)/cudalign-CUDAlignerParameters.Tpo -c -o ./src/cudalign-CUDAlignerParameters.obj `if test -f './src/CUDAlignerParameters.cpp'; then $(CYGPATH_W) './src/CUDAlignerParameters.cpp'; else $(CYGPATH_W) '$(srcdir)/./src/CUDAlignerParameters.cpp'; fi`
	$(am__mv) ./src/$(DEPDIR)/cudalign-CUDAlignerParameters.Tpo ./src/$(DEPDIR)/cudalign-CUDAlignerParameters.Po
#	source='./src/CUDAlignerParameters.cpp' object='./src/cudalign-CUDAlignerParameters.obj' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(cudalign_CXXFLAGS) $(CXXFLAGS) -c -o ./src/cudalign-CUDAlignerParameters.obj `if test -f './src/CUDAlignerParameters.cpp'; then $(CYGPATH_W) './src/CUDAlignerParameters.cpp'; else $(CYGPATH_W) '$(srcdir)/./src/CUDAlignerParameters.cpp'; fi`

# This directory's subdirectories are mostly independent; you can cd
# into them and run `make' without going through this Makefile.
# To change the values of `make' variables: instead of editing Makefiles,
# (1) if the variable is set in `config.status', edit `config.status'
#     (which will cause the Makefiles to be regenerated when you run `make');
# (2) otherwise, pass the desired values on the `make' command line.
$(RECURSIVE_TARGETS):
	@fail= failcom='exit 1'; \
	for f in x $$MAKEFLAGS; do \
	  case $$f in \
	    *=* | --[!k]*);; \
	    *k*) failcom='fail=yes';; \
	  esac; \
	done; \
	dot_seen=no; \
	target=`echo $@ | sed s/-recursive//`; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    dot_seen=yes; \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  ($(am__cd) $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	  || eval $$failcom; \
	done; \
	if test "$$dot_seen" = "no"; then \
	  $(MAKE) $(AM_MAKEFLAGS) "$$target-am" || exit 1; \
	fi; test -z "$$fail"

$(RECURSIVE_CLEAN_TARGETS):
	@fail= failcom='exit 1'; \
	for f in x $$MAKEFLAGS; do \
	  case $$f in \
	    *=* | --[!k]*);; \
	    *k*) failcom='fail=yes';; \
	  esac; \
	done; \
	dot_seen=no; \
	case "$@" in \
	  distclean-* | maintainer-clean-*) list='$(DIST_SUBDIRS)' ;; \
	  *) list='$(SUBDIRS)' ;; \
	esac; \
	rev=''; for subdir in $$list; do \
	  if test "$$subdir" = "."; then :; else \
	    rev="$$subdir $$rev"; \
	  fi; \
	done; \
	rev="$$rev ."; \
	target=`echo $@ | sed s/-recursive//`; \
	for subdir in $$rev; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  ($(am__cd) $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	  || eval $$failcom; \
	done && test -z "$$fail"
tags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test "$$subdir" = . || ($(am__cd) $$subdir && $(MAKE) $(AM_MAKEFLAGS) tags); \
	done
ctags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test "$$subdir" = . || ($(am__cd) $$subdir && $(MAKE) $(AM_MAKEFLAGS) ctags); \
	done

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	mkid -fID $$unique
tags: TAGS

TAGS: tags-recursive $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	set x; \
	here=`pwd`; \
	if ($(ETAGS) --etags-include --version) >/dev/null 2>&1; then \
	  include_option=--etags-include; \
	  empty_fix=.; \
	else \
	  include_option=--include; \
	  empty_fix=; \
	fi; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test ! -f $$subdir/TAGS || \
	      set "$$@" "$$include_option=$$here/$$subdir/TAGS"; \
	  fi; \
	done; \
	list='$(SOURCES) $(HEADERS)  $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	shift; \
	if test -z "$(ETAGS_ARGS)$$*$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  if test $$# -gt 0; then \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      "$$@" $$unique; \
	  else \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      $$unique; \
	  fi; \
	fi
ctags: CTAGS
CTAGS: ctags-recursive $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	list='$(SOURCES) $(HEADERS)  $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	test -z "$(CTAGS_ARGS)$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && $(am__cd) $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) "$$here"

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(DISTFILES)
	$(am__remove_distdir)
	test -d "$(distdir)" || mkdir "$(distdir)"
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done
	@list='$(DIST_SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test -d "$(distdir)/$$subdir" \
	    || $(MKDIR_P) "$(distdir)/$$subdir" \
	    || exit 1; \
	  fi; \
	done
	@list='$(DIST_SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    dir1=$$subdir; dir2="$(distdir)/$$subdir"; \
	    $(am__relativize); \
	    new_distdir=$$reldir; \
	    dir1=$$subdir; dir2="$(top_distdir)"; \
	    $(am__relativize); \
	    new_top_distdir=$$reldir; \
	    echo " (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) top_distdir="$$new_top_distdir" distdir="$$new_distdir" \\"; \
	    echo "     am__remove_distdir=: am__skip_length_check=: am__skip_mode_fix=: distdir)"; \
	    ($(am__cd) $$subdir && \
	      $(MAKE) $(AM_MAKEFLAGS) \
	        top_distdir="$$new_top_distdir" \
	        distdir="$$new_distdir" \
		am__remove_distdir=: \
		am__skip_length_check=: \
		am__skip_mode_fix=: \
	        distdir) \
	      || exit 1; \
	  fi; \
	done
	-test -n "$(am__skip_mode_fix)" \
	|| find "$(distdir)" -type d ! -perm -755 \
		-exec chmod u+rwx,go+rx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r "$(distdir)"
dist-gzip: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

dist-bzip2: distdir
	tardir=$(distdir) && $(am__tar) | BZIP2=$${BZIP2--9} bzip2 -c >$(distdir).tar.bz2
	$(am__remove_distdir)

dist-lzip: distdir
	tardir=$(distdir) && $(am__tar) | lzip -c $${LZIP_OPT--9} >$(distdir).tar.lz
	$(am__remove_distdir)

dist-lzma: distdir
	tardir=$(distdir) && $(am__tar) | lzma -9 -c >$(distdir).tar.lzma
	$(am__remove_distdir)

dist-xz: distdir
	tardir=$(distdir) && $(am__tar) | XZ_OPT=$${XZ_OPT--e} xz -c >$(distdir).tar.xz
	$(am__remove_distdir)

dist-tarZ: distdir
	tardir=$(distdir) && $(am__tar) | compress -c >$(distdir).tar.Z
	$(am__remove_distdir)

dist-shar: distdir
	shar $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).shar.gz
	$(am__remove_distdir)

dist-zip: distdir
	-rm -f $(distdir).zip
	zip -rq $(distdir).zip $(distdir)
	$(am__remove_distdir)

dist dist-all: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	case '$(DIST_ARCHIVES)' in \
	*.tar.gz*) \
	  GZIP=$(GZIP_ENV) gzip -dc $(distdir).tar.gz | $(am__untar) ;;\
	*.tar.bz2*) \
	  bzip2 -dc $(distdir).tar.bz2 | $(am__untar) ;;\
	*.tar.lzma*) \
	  lzma -dc $(distdir).tar.lzma | $(am__untar) ;;\
	*.tar.lz*) \
	  lzip -dc $(distdir).tar.lz | $(am__untar) ;;\
	*.tar.xz*) \
	  xz -dc $(distdir).tar.xz | $(am__untar) ;;\
	*.tar.Z*) \
	  uncompress -c $(distdir).tar.Z | $(am__untar) ;;\
	*.shar.gz*) \
	  GZIP=$(GZIP_ENV) gzip -dc $(distdir).shar.gz | unshar ;;\
	*.zip*) \
	  unzip $(distdir).zip ;;\
	esac
	chmod -R a-w $(distdir); chmod a+w $(distdir)
	mkdir $(distdir)/_build
	mkdir $(distdir)/_inst
	chmod a-w $(distdir)
	test -d $(distdir)/_build || exit 0; \
	dc_install_base=`$(am__cd) $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && am__cwd=`pwd` \
	  && $(am__cd) $(distdir)/_build \
	  && ../configure --srcdir=.. --prefix="$$dc_install_base" \
	    $(AM_DISTCHECK_CONFIGURE_FLAGS) \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && $(MAKE) $(AM_MAKEFLAGS) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && umask 077 && mkdir "$$dc_destdir") \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) $(AM_MAKEFLAGS) dist \
	  && rm -rf $(DIST_ARCHIVES) \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck \
	  && cd "$$am__cwd" \
	  || exit 1
	$(am__remove_distdir)
	@(echo "$(distdir) archives ready for distribution: "; \
	  list='$(DIST_ARCHIVES)'; for i in $$list; do echo $$i; done) | \
	  sed -e 1h -e 1s/./=/g -e 1p -e 1x -e '$$p' -e '$$x'
distuninstallcheck:
	@test -n '$(distuninstallcheck_dir)' || { \
	  echo 'ERROR: trying to run $@ with an empty' \
	       '$$(distuninstallcheck_dir)' >&2; \
	  exit 1; \
	}; \
	$(am__cd) '$(distuninstallcheck_dir)' || { \
	  echo 'ERROR: cannot chdir into $(distuninstallcheck_dir)' >&2; \
	  exit 1; \
	}; \
	test `$(am__distuninstallcheck_listfiles) | wc -l` -eq 0 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
check: check-recursive
all-am: Makefile $(PROGRAMS) $(HEADERS)
installdirs: installdirs-recursive
installdirs-am:
	for dir in "$(DESTDIR)$(bindir)"; do \
	  test -z "$$dir" || $(MKDIR_P) "$$dir"; \
	done
install: install-recursive
install-exec: install-exec-recursive
install-data: install-data-recursive
uninstall: uninstall-recursive

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-recursive
install-strip:
	if test -z '$(STRIP)'; then \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'" install; \
	fi
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)
	-rm -f src/$(DEPDIR)/$(am__dirstamp)
	-rm -f src/$(am__dirstamp)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-recursive

clean-am: clean-binPROGRAMS clean-generic clean-local mostlyclean-am

distclean: distclean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf ./src/$(DEPDIR)
	-rm -f Makefile
distclean-am: clean-am distclean-compile distclean-generic \
	distclean-hdr distclean-tags

dvi: dvi-recursive

dvi-am:

html: html-recursive

html-am:

info: info-recursive

info-am:

install-data-am:

install-dvi: install-dvi-recursive

install-dvi-am:

install-exec-am: install-binPROGRAMS

install-html: install-html-recursive

install-html-am:

install-info: install-info-recursive

install-info-am:

install-man:

install-pdf: install-pdf-recursive

install-pdf-am:

install-ps: install-ps-recursive

install-ps-am:

installcheck-am:

maintainer-clean: maintainer-clean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(top_srcdir)/autom4te.cache
	-rm -rf ./src/$(DEPDIR)
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-recursive

mostlyclean-am: mostlyclean-compile mostlyclean-generic

pdf: pdf-recursive

pdf-am:

ps: ps-recursive

ps-am:

uninstall-am: uninstall-binPROGRAMS

.MAKE: $(RECURSIVE_CLEAN_TARGETS) $(RECURSIVE_TARGETS) ctags-recursive \
	install-am install-strip tags-recursive

.PHONY: $(RECURSIVE_CLEAN_TARGETS) $(RECURSIVE_TARGETS) CTAGS GTAGS \
	all all-am am--refresh check check-am clean clean-binPROGRAMS \
	clean-generic clean-local ctags ctags-recursive dist dist-all \
	dist-bzip2 dist-gzip dist-lzip dist-lzma dist-shar dist-tarZ \
	dist-xz dist-zip distcheck distclean distclean-compile \
	distclean-generic distclean-hdr distclean-tags distcleancheck \
	distdir distuninstallcheck dvi dvi-am html html-am info \
	info-am install install-am install-binPROGRAMS install-data \
	install-data-am install-dvi install-dvi-am install-exec \
	install-exec-am install-html install-html-am install-info \
	install-info-am install-man install-pdf install-pdf-am \
	install-ps install-ps-am install-strip installcheck \
	installcheck-am installdirs installdirs-am maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-compile \
	mostlyclean-generic pdf pdf-am ps ps-am tags tags-recursive \
	uninstall uninstall-am uninstall-binPROGRAMS


clean-local:
	rm -f ./src/*.cu_o

.cu.cu_o:
	$(NVCC) -o $@ -c $< $(NVCCFLAGS)

./src/CUDAligner.cu_o: ./src/CUDAligner.hpp
#./src/cuda_util.cu_o: ./src/cuda_util.h

dist-clone-link:
	@if test -L $(LIBMASA_PATH); then \
		mv $(LIBMASA_PATH) $(LIBMASA_PATH).link && \
		cp -r -L $(LIBMASA_PATH).link $(LIBMASA_PATH); \
	fi

dist-unclone-link:
	@if test -L $(LIBMASA_PATH).link; then \
		rm -rf $(LIBMASA_PATH) && \
		mv $(LIBMASA_PATH).link $(LIBMASA_PATH); \
	fi

dist-link: dist-clone-link dist dist-unclone-link

sw-regs:
	$(NVCC) --disable-warnings --ptxas-options=-v -o /tmp/gpu_sw.o -c $(srcdir)/src/CUDAligner.cu $(NVCCFLAGS)

sw-ptx:
	$(NVCC) --disable-warnings --ptx $(srcdir)/src/CUDAligner.cu $(NVCCFLAGS)

.PHONY: doxygen

doxygen:
	pushd . && cd doxygen && doxygen *.doxyfile && popd
	pushd . && cd $(LIBMASA_PATH)/doxygen && doxygen *.doxyfile && popd

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
