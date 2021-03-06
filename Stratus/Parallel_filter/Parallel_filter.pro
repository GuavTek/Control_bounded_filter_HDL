#################################################
# Stratus IDE project file generated;
#################################################
QT       += core

QT       -= gui

CONFIG   += console
CONFIG   -= app_bundle

STRATUSHOME = $$(STRATUS_HOME)
SYSTEMCHOME = $$(SYSTEMC)

TEMPLATE = app
INCLUDEPATH += $${SYSTEMCHOME}/include
INCLUDEPATH += $${SYSTEMCHOME}/include/tlm
INCLUDEPATH += $${STRATUSHOME}/share/stratus/include
INCLUDEPATH += ./bdw_work/wrappers
INCLUDEPATH += ./

SOURCES += \ 
		main.cpp \ 
		Parallel_filter.cpp \ 
		system.cpp \ 
		tb.cpp \ 

HEADERS += \ 
		Coefficients.h \ 
		FloatType.h \ 
		Parallel_filter.h \ 
		Parallel_filter_input_type.h \ 
		Parallel_filter_output_type.h \ 
		system.h \ 
		tb.h \ 

OTHER_FILES += \ 
		Makefile \ 
		project.tcl \ 

