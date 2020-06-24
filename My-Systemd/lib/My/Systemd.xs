#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
 
#include <systemd/sd-daemon.h>
 
MODULE = My::Systemd PACKAGE = My::Systemd
 
PROTOTYPES: DISABLE
 
int
notify(const char *state)
    CODE:
        RETVAL = sd_notify( 0, state );
    OUTPUT:
        RETVAL
