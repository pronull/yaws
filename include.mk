AM_V_ERLC = $(am__v_ERLC_$(V))
am__v_ERLC_ = $(am__v_ERLC_$(AM_DEFAULT_VERBOSITY))
am__v_ERLC_0 = @echo "  ERLC    " $@;
am__v_ERLC_1 =

ERLC_GENERIC_FLAGS = -Werror  +debug_info $(DEBUG_ERLC_FLAGS)				\
		     -pa $(top_srcdir) -pa $(top_builddir) -pa $(top_builddir)/ebin	\
		     -I $(top_srcdir)/include -I $(srcdir)/../include 			\
		     -I $(top_builddir)/include -I $(builddir)/../include

ifeq ($(HAVE_SENDFILE),true)
  ERLC_GENERIC_FLAGS += -DHAVE_SENDFILE
endif

ifeq ($(HAVE_ERLANG_SENDFILE),true)
  ERLC_GENERIC_FLAGS += -DHAVE_ERLANG_SENDFILE
endif

ifeq ($(HAVE_CRYPTO_HASH),true)
  ERLC_GENERIC_FLAGS += -DHAVE_CRYPTO_HASH
endif

ifeq ($(HAVE_INET_PARSE_STRICT_ADDRESS),true)
  ERLC_GENERIC_FLAGS += -DHAVE_INET_PARSE_STRICT_ADDRESS
endif

ifeq ($(HAVE_BAD_UNICODE),true)
  ERLC_GENERIC_FLAGS += -DHAVE_BAD_UNICODE
endif

ifeq ($(HAVE_BAD_WILDCARD),true)
  ERLC_GENERIC_FLAGS += -DHAVE_BAD_WILDCARD
endif

ifeq ($(HAVE_SSL_HONOR_CIPHER_ORDER),true)
  ERLC_GENERIC_FLAGS += -DHAVE_SSL_HONOR_CIPHER_ORDER
endif
# Local Variables:
#    tab-width: 8
# End:
