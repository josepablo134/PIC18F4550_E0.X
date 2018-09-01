#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4550_E0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4550_E0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main_code.asm TIMER0_driver.asm UART.asm SYSTEM.asm

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main_code.o ${OBJECTDIR}/TIMER0_driver.o ${OBJECTDIR}/UART.o ${OBJECTDIR}/SYSTEM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main_code.o.d ${OBJECTDIR}/TIMER0_driver.o.d ${OBJECTDIR}/UART.o.d ${OBJECTDIR}/SYSTEM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main_code.o ${OBJECTDIR}/TIMER0_driver.o ${OBJECTDIR}/UART.o ${OBJECTDIR}/SYSTEM.o

# Source Files
SOURCEFILES=main_code.asm TIMER0_driver.asm UART.asm SYSTEM.asm


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4550_E0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18f4550
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x3F4:0x3FF
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main_code.o: main_code.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_code.o.d 
	@${RM} ${OBJECTDIR}/main_code.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/main_code.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_PK3=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/main_code.lst\" -e\"${OBJECTDIR}/main_code.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/main_code.o\" \"main_code.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/main_code.o"
	@${FIXDEPS} "${OBJECTDIR}/main_code.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/TIMER0_driver.o: TIMER0_driver.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TIMER0_driver.o.d 
	@${RM} ${OBJECTDIR}/TIMER0_driver.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/TIMER0_driver.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_PK3=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/TIMER0_driver.lst\" -e\"${OBJECTDIR}/TIMER0_driver.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/TIMER0_driver.o\" \"TIMER0_driver.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/TIMER0_driver.o"
	@${FIXDEPS} "${OBJECTDIR}/TIMER0_driver.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/UART.o: UART.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.o.d 
	@${RM} ${OBJECTDIR}/UART.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/UART.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_PK3=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/UART.lst\" -e\"${OBJECTDIR}/UART.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/UART.o\" \"UART.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/UART.o"
	@${FIXDEPS} "${OBJECTDIR}/UART.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/SYSTEM.o: SYSTEM.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SYSTEM.o.d 
	@${RM} ${OBJECTDIR}/SYSTEM.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/SYSTEM.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_PK3=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/SYSTEM.lst\" -e\"${OBJECTDIR}/SYSTEM.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/SYSTEM.o\" \"SYSTEM.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/SYSTEM.o"
	@${FIXDEPS} "${OBJECTDIR}/SYSTEM.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
else
${OBJECTDIR}/main_code.o: main_code.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_code.o.d 
	@${RM} ${OBJECTDIR}/main_code.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/main_code.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/main_code.lst\" -e\"${OBJECTDIR}/main_code.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/main_code.o\" \"main_code.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/main_code.o"
	@${FIXDEPS} "${OBJECTDIR}/main_code.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/TIMER0_driver.o: TIMER0_driver.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TIMER0_driver.o.d 
	@${RM} ${OBJECTDIR}/TIMER0_driver.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/TIMER0_driver.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/TIMER0_driver.lst\" -e\"${OBJECTDIR}/TIMER0_driver.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/TIMER0_driver.o\" \"TIMER0_driver.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/TIMER0_driver.o"
	@${FIXDEPS} "${OBJECTDIR}/TIMER0_driver.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/UART.o: UART.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.o.d 
	@${RM} ${OBJECTDIR}/UART.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/UART.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/UART.lst\" -e\"${OBJECTDIR}/UART.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/UART.o\" \"UART.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/UART.o"
	@${FIXDEPS} "${OBJECTDIR}/UART.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/SYSTEM.o: SYSTEM.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SYSTEM.o.d 
	@${RM} ${OBJECTDIR}/SYSTEM.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/SYSTEM.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/SYSTEM.lst\" -e\"${OBJECTDIR}/SYSTEM.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/SYSTEM.o\" \"SYSTEM.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/SYSTEM.o"
	@${FIXDEPS} "${OBJECTDIR}/SYSTEM.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4550_E0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION)  -w -x -u_DEBUG -z__ICD2RAM=1 -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"   -z__MPLAB_BUILD=1  -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -odist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4550_E0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4550_E0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"   -z__MPLAB_BUILD=1  -odist/${CND_CONF}/${IMAGE_TYPE}/PIC18F4550_E0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
