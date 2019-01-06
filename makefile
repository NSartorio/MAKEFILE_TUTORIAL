# Makefile for FORTRAN
# lines with a # are comment lines

FC = gfortran

sources = MAIN.F90 MOD.F90 FUNCTION.F90
objs    = MAIN.o MOD.o FUNCTION.o

#rule for executable 
program.exe: $(objs)
		$(FC) $(objs) -o program.exe # use tabs no spaces

#rules for compilation of object and module files
#note how we manage the dependencies

MOD.mod: MOD.o MOD.F90
		$(FC) -c MOD.F90
MOD.o: MOD.F90
		$(FC) -c MOD.F90
MAIN.o: MAIN.F90 MOD.mod
		$(FC) -c MAIN.F90
FUNCTION.o: FUNCTION.F90
		$(FC) -c FUNCTION.F90


#clean routine

clean:
		rm -rf $(objs) *.exe *.mod
