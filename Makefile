FC=ifort
FFLAGS=

ODIR=bin
SDIR=src

#LDIR=lib
#LIBS=-lm

_OBJ = skeaf_v1p3p0_r149 ELK_exciting_BXSFconverter_v04 simbxsf_barrel_v02 simbxsf_sphere_v02 skeaf_v1p3p0_r149 \
       memoryestimateskeaf_for_v1p3p0_r149 simbxsf_cylinder_v02 simbxsf_spheroid_v03
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%: $(SDIR)/%.F90
	if ! test -d $(ODIR); then \
	( mkdir $(ODIR) ) ; fi
	$(FC) -o $@ $< $(FFLAGS)

all: $(OBJ)

.PHONY: clean all

clean:
	rm -f $(ODIR)/* *~ core
