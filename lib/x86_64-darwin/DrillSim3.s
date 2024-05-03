# Begin asmlist al_begin

.section __DWARF,__debug_line,regular,debug
Ldebug_linesection0:
Ldebug_line0:

.section __DWARF,__debug_abbrev,regular,debug
Ldebug_abbrevsection0:
Ldebug_abbrev0:

.text
L_DEBUGSTART_$P$DRILLSIM3:
# End asmlist al_begin
# Begin asmlist al_procedures

.text
	.align 3
.globl	_main
_main:
	pushq	%rbp
	movq	%rsp,%rbp
	leaq	-32(%rsp),%rsp
	movl	%edi,-8(%rbp)
	movq	%rsi,-16(%rbp)
	movq	%rdx,-24(%rbp)
	movq	-24(%rbp),%rax
	movq	-16(%rbp),%rsi
	movl	-8(%rbp),%edi
	movq	%rax,%rdx
	call	_FPC_SYSTEMMAIN
	movq	%rbp,%rsp
	popq	%rbp
	ret
Lt1:
Ll1:

.text
	.align 3
.globl	_PASCALMAIN
_PASCALMAIN:
Ll2:
	pushq	%rbp
	movq	%rsp,%rbp
	leaq	-16(%rsp),%rsp
	movq	%rbx,-8(%rbp)
	call	fpc_initializeunits
Ll3:
	movq	_TC_$FORMS_$$_REQUIREDERIVEDFORMRESOURCE@GOTPCREL(%rip),%rax
	movb	$1,(%rax)
Ll4:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld1@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll5:
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rax
	movb	$1,568(%rax)
Ll6:
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rax
	movq	(%rax),%rax
	call	*488(%rax)
Ll7:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld2@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll8:
	movq	_U_$DRILLSIMGUI_$$_DRILLSIM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$DRILLSIMGUI_$$_TDRILLSIM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll9:
	movq	_U_$FORMGENERALDATA_$$_GENERALDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMGENERALDATA_$$_TGENERALDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll10:
	movq	_U_$FORMDISPLAYWELLDATA_$$_DISPLAYWELLDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMDISPLAYWELLDATA_$$_TDISPLAYWELLDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll11:
	movq	_U_$FORMCONFIGDEFAULTS_$$_SYSTEMDEFAULTSFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMCONFIGDEFAULTS_$$_TSYSTEMDEFAULTSFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll12:
	movq	_U_$FORMHOLEDATA_$$_HOLEDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMHOLEDATA_$$_THOLEDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll13:
	movq	_U_$FORMPIPEDATA_$$_PIPEDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMPIPEDATA_$$_TPIPEDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll14:
	movq	_U_$FORMMUDDATA_$$_MUDDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMMUDDATA_$$_TMUDDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll15:
	movq	_U_$FORMBITDATA_$$_BITDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMBITDATA_$$_TBITDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll16:
	movq	_U_$FORMPUMPDATA_$$_PUMPDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMPUMPDATA_$$_TPUMPDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll17:
	movq	_U_$FORMSURFACEEQUIPMENTDATA_$$_SURFACEEQUIPMENTDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMSURFACEEQUIPMENTDATA_$$_TSURFACEEQUIPMENTDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll18:
	movq	_U_$FORMWELLTESTDATA_$$_WELLTESTDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMWELLTESTDATA_$$_TWELLTESTDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll19:
	movq	_U_$FORMGEOLOGYDATA_$$_GEOLOGYDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMGEOLOGYDATA_$$_TGEOLOGYDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll20:
	movq	_U_$FORMGENERALDATA_$$_GENERALDATAFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMGENERALDATA_$$_TGENERALDATAFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll21:
	movq	_U_$FORMUNITSOFMEASURE_$$_UNITSOFMEASUREFORM@GOTPCREL(%rip),%rdx
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	_VMT_$FORMUNITSOFMEASURE_$$_TUNITSOFMEASUREFORM@GOTPCREL(%rip),%rsi
	call	_FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
Ll22:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld3@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll23:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld4@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll24:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld5@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll25:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld6@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll26:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld7@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll27:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld8@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll28:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld9@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll29:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld10@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll30:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld11@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll31:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld12@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll32:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld13@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll33:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld14@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll34:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld15@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll35:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld16@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll36:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld6@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll37:
	movq	_TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	call	_FORMS$_$TAPPLICATION_$__$$_RUN
Ll38:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld17@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll39:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld18@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll40:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	_$DRILLSIM3$_Ld17@GOTPCREL(%rip),%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
Ll41:
	call	fpc_do_exit
	movq	-8(%rbp),%rbx
	movq	%rbp,%rsp
	popq	%rbp
	ret
Lt2:
Ll42:
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 3
.globl	INITFINAL
INITFINAL:
	.quad	181,0
	.quad	_INIT$_$SYSTEM
	.quad	0
	.quad	_INIT$_$LNFODWRF
	.quad	_FINALIZE$_$LNFODWRF
	.quad	_INIT$_$FPINTRES
	.quad	0,0
	.quad	_FINALIZE$_$OBJPAS
	.quad	_INIT$_$UNIX
	.quad	_FINALIZE$_$UNIX
	.quad	_INIT$_$CTHREADS
	.quad	0
	.quad	_INIT$_$DL
	.quad	0
	.quad	_INIT$_$DYNLIBS
	.quad	0
	.quad	_INIT$_$UNIXCP
	.quad	_FINALIZE$_$UNIXCP
	.quad	_INIT$_$CWSTRING
	.quad	_FINALIZE$_$CWSTRING
	.quad	_INIT$_$SYSUTILS
	.quad	_FINALIZE$_$SYSUTILS
	.quad	_INIT$_$TYPINFO
	.quad	_FINALIZE$_$TYPINFO
	.quad	_INIT$_$CLASSES
	.quad	_FINALIZE$_$CLASSES
	.quad	_INIT$_$FPIMAGE
	.quad	_FINALIZE$_$FPIMAGE
	.quad	_INIT$_$FPCADDS
	.quad	0,0
	.quad	_FINALIZE$_$GETTEXT
	.quad	_INIT$_$MACPAS
	.quad	0
	.quad	_INIT$_$LAZUTF8
	.quad	_FINALIZE$_$LAZUTF8
	.quad	_INIT$_$LCLTYPE
	.quad	_FINALIZE$_$LCLTYPE
	.quad	_INIT$_$LAZ_AVL_TREE
	.quad	_FINALIZE$_$LAZ_AVL_TREE
	.quad	_INIT$_$LAZFILEUTILS
	.quad	_FINALIZE$_$LAZFILEUTILS
	.quad	0
	.quad	_FINALIZE$_$LAZLOGGERBASE
	.quad	0
	.quad	_FINALIZE$_$LAZTRACER
	.quad	_INIT$_$LCLPROC
	.quad	_FINALIZE$_$LCLPROC
	.quad	_INIT$_$GRAPHTYPE
	.quad	0
	.quad	_INIT$_$LCLPLATFORMDEF
	.quad	_FINALIZE$_$LCLPLATFORMDEF
	.quad	_INIT$_$FPIMGCMN
	.quad	0
	.quad	_INIT$_$FPREADBMP
	.quad	0
	.quad	_INIT$_$FPWRITEBMP
	.quad	0
	.quad	_INIT$_$FPREADPNG
	.quad	0
	.quad	_INIT$_$FPWRITEPNG
	.quad	0
	.quad	_INIT$_$FPREADTIFF
	.quad	0
	.quad	_INIT$_$FPWRITETIFF
	.quad	0
	.quad	_INIT$_$LCLVERSION
	.quad	0
	.quad	_INIT$_$FPCANVAS
	.quad	_FINALIZE$_$FPCANVAS
	.quad	_INIT$_$FPREADPNM
	.quad	0
	.quad	_INIT$_$FPWRITEPNM
	.quad	0
	.quad	_INIT$_$FPREADJPEG
	.quad	0
	.quad	_INIT$_$FPWRITEJPEG
	.quad	0
	.quad	_INIT$_$FPREADGIF
	.quad	0
	.quad	_INIT$_$VARIANTS
	.quad	_FINALIZE$_$VARIANTS
	.quad	_INIT$_$LRESOURCES
	.quad	_FINALIZE$_$LRESOURCES
	.quad	_INIT$_$FILEUTIL
	.quad	_FINALIZE$_$FILEUTIL
	.quad	_INIT$_$PROCESS
	.quad	_FINALIZE$_$PROCESS
	.quad	_INIT$_$THEMES
	.quad	_FINALIZE$_$THEMES
	.quad	_INIT$_$LCLINTF
	.quad	_FINALIZE$_$LCLINTF
	.quad	_INIT$_$GRAPHICS
	.quad	_FINALIZE$_$GRAPHICS
	.quad	_INIT$_$INTFGRAPHICS
	.quad	0,0
	.quad	_FINALIZE$_$WSLCLCLASSES
	.quad	_INIT$_$FPPIXLCANV
	.quad	_FINALIZE$_$FPPIXLCANV
	.quad	_INIT$_$RTTIUTILS
	.quad	_FINALIZE$_$RTTIUTILS
	.quad	_INIT$_$ACTNLIST
	.quad	0
	.quad	_INIT$_$LAZLOGGER
	.quad	0,0
	.quad	_FINALIZE$_$WSMENUS
	.quad	_INIT$_$CLIPBRD
	.quad	_FINALIZE$_$CLIPBRD
	.quad	_INIT$_$FORMS
	.quad	_FINALIZE$_$FORMS
	.quad	_INIT$_$MENUS
	.quad	_FINALIZE$_$MENUS
	.quad	_INIT$_$IMGLIST
	.quad	0
	.quad	_INIT$_$CONTROLS
	.quad	_FINALIZE$_$CONTROLS
	.quad	_INIT$_$STDCTRLS
	.quad	0
	.quad	_INIT$_$EXTCTRLS
	.quad	_FINALIZE$_$EXTCTRLS
	.quad	_INIT$_$BUTTONS
	.quad	_FINALIZE$_$BUTTONS
	.quad	_INIT$_$COMCTRLS
	.quad	_FINALIZE$_$COMCTRLS
	.quad	0
	.quad	_FINALIZE$_$CUSTOMDRAWNDRAWERS
	.quad	_INIT$_$CUSTOMDRAWN_COMMON
	.quad	0
	.quad	_INIT$_$CUSTOMDRAWN_MAC
	.quad	0,0
	.quad	_FINALIZE$_$COCOACARET
	.quad	_INIT$_$COCOAWSCLIPBOARD
	.quad	0
	.quad	_INIT$_$LCLTASKDIALOG
	.quad	_FINALIZE$_$LCLTASKDIALOG
	.quad	_INIT$_$DIALOGS
	.quad	_FINALIZE$_$DIALOGS
	.quad	_INIT$_$COCOAWSCOMMON
	.quad	_FINALIZE$_$COCOAWSCOMMON
	.quad	0
	.quad	_FINALIZE$_$COCOAINT
	.quad	_INIT$_$INTERFACES
	.quad	_FINALIZE$_$INTERFACES
	.quad	_INIT$_$TACHARTUTILS
	.quad	_FINALIZE$_$TACHARTUTILS
	.quad	_INIT$_$SPE
	.quad	0
	.quad	_INIT$_$HTMLDEFS
	.quad	_FINALIZE$_$HTMLDEFS
	.quad	_INIT$_$DATEUTILS
	.quad	_FINALIZE$_$DATEUTILS
	.quad	_INIT$_$TACHARTAXISUTILS
	.quad	0
	.quad	_INIT$_$MASKEDIT
	.quad	0
	.quad	_INIT$_$LAZFILECACHE
	.quad	0,0
	.quad	_FINALIZE$_$LAZ2_XMLUTILS
	.quad	_INIT$_$LAZ2_DOM
	.quad	_FINALIZE$_$LAZ2_DOM
	.quad	_INIT$_$LAZ2_XMLREAD
	.quad	_FINALIZE$_$LAZ2_XMLREAD
	.quad	_INIT$_$EDITORSYNTAXHIGHLIGHTERDEF
	.quad	_FINALIZE$_$EDITORSYNTAXHIGHLIGHTERDEF
	.quad	_INIT$_$IDEOPTEDITORINTF
	.quad	_FINALIZE$_$IDEOPTEDITORINTF
	.quad	_INIT$_$PROJECTINTF
	.quad	_FINALIZE$_$PROJECTINTF
	.quad	_INIT$_$IDEEXTERNTOOLINTF
	.quad	_FINALIZE$_$IDEEXTERNTOOLINTF
	.quad	_INIT$_$CALCFORM
	.quad	_FINALIZE$_$CALCFORM
	.quad	_INIT$_$GROUPEDEDIT
	.quad	0
	.quad	_INIT$_$EDITBTN
	.quad	0
	.quad	_INIT$_$STRINGHASHLIST
	.quad	0
	.quad	_INIT$_$PROPEDITUTILS
	.quad	_FINALIZE$_$PROPEDITUTILS
	.quad	_INIT$_$IDEIMAGESINTF
	.quad	_FINALIZE$_$IDEIMAGESINTF
	.quad	_INIT$_$PROPEDITS
	.quad	_FINALIZE$_$PROPEDITS
	.quad	_INIT$_$IDECOMMANDS
	.quad	_FINALIZE$_$IDECOMMANDS
	.quad	_INIT$_$LAZIDEINTF
	.quad	_FINALIZE$_$LAZIDEINTF
	.quad	_INIT$_$IDEWINDOWINTF
	.quad	_FINALIZE$_$IDEWINDOWINTF
	.quad	_INIT$_$COMPONENTEDITORS
	.quad	_FINALIZE$_$COMPONENTEDITORS
	.quad	_INIT$_$TATRANSFORMATIONS
	.quad	_FINALIZE$_$TATRANSFORMATIONS
	.quad	_INIT$_$TACHARTAXIS
	.quad	_FINALIZE$_$TACHARTAXIS
	.quad	_INIT$_$TADRAWERCANVAS
	.quad	0
	.quad	_INIT$_$TALEGEND
	.quad	0
	.quad	_INIT$_$TAGRAPH
	.quad	_FINALIZE$_$TAGRAPH
	.quad	_INIT$_$TACUSTOMSERIES
	.quad	0
	.quad	_INIT$_$FMTBCD
	.quad	_FINALIZE$_$FMTBCD
	.quad	_INIT$_$TADBSOURCE
	.quad	_FINALIZE$_$TADBSOURCE
	.quad	_INIT$_$TARADIALSERIES
	.quad	0
	.quad	_INIT$_$TASERIES
	.quad	0
	.quad	_INIT$_$TATOOLS
	.quad	_FINALIZE$_$TATOOLS
	.quad	_INIT$_$TAMULTISERIES
	.quad	0
	.quad	_INIT$_$TAFUNCSERIES
	.quad	0
	.quad	_INIT$_$EASYLAZFREETYPE
	.quad	_FINALIZE$_$EASYLAZFREETYPE
	.quad	_INIT$_$LAZFREETYPEFONTCOLLECTION
	.quad	_FINALIZE$_$LAZFREETYPEFONTCOLLECTION
	.quad	_INIT$_$TADRAWERSVG
	.quad	_FINALIZE$_$TADRAWERSVG
	.quad	_INIT$_$TACHARTLISTBOX
	.quad	_FINALIZE$_$TACHARTLISTBOX
	.quad	_INIT$_$TACHARTTEECHART
	.quad	_FINALIZE$_$TACHARTTEECHART
	.quad	_INIT$_$TADATATOOLS
	.quad	0
	.quad	_INIT$_$TADIAGRAMDRAWING
	.quad	0
	.quad	_INIT$_$FPEXPRPARS
	.quad	_FINALIZE$_$FPEXPRPARS
	.quad	_INIT$_$TAEXPRESSIONSERIES
	.quad	0
	.quad	_INIT$_$GL
	.quad	_FINALIZE$_$GL
	.quad	_INIT$_$LAZARUSPACKAGEINTF
	.quad	_FINALIZE$_$LAZARUSPACKAGEINTF
	.quad	_INIT$_$TACHARTLAZARUSPKG
	.quad	0
	.quad	_INIT$_$SPINEX
	.quad	_FINALIZE$_$SPINEX
	.quad	_INIT$_$LAZCONTROLS
	.quad	0
	.quad	_INIT$_$CRT
	.quad	_FINALIZE$_$CRT
	.quad	_INIT$_$FPREADXWD
	.quad	0
	.quad	_INIT$_$FPREADXPM
	.quad	0
	.quad	_INIT$_$FPWRITEPCX
	.quad	0
	.quad	_INIT$_$FPWRITETGA
	.quad	0
	.quad	_INIT$_$FPWRITEXPM
	.quad	0
	.quad	_INIT$_$BGRABITMAPTYPES
	.quad	_FINALIZE$_$BGRABITMAPTYPES
	.quad	_INIT$_$BGRAPATH
	.quad	0
	.quad	_INIT$_$BGRAPEN
	.quad	_FINALIZE$_$BGRAPEN
	.quad	_INIT$_$BGRAFILLINFO
	.quad	0
	.quad	_INIT$_$BGRAGRADIENTSCANNER
	.quad	0
	.quad	_INIT$_$BGRASSE
	.quad	0
	.quad	_INIT$_$BGRAREADBMP
	.quad	0
	.quad	_INIT$_$BGRAREADJPEG
	.quad	0
	.quad	_INIT$_$BGRAWRITEPNG
	.quad	0
	.quad	_INIT$_$BGRAWRITETIFF
	.quad	0
	.quad	_INIT$_$UNIVERSALDRAWER
	.quad	0
	.quad	_INIT$_$FPREADPCX
	.quad	0
	.quad	_INIT$_$AVL_TREE
	.quad	_FINALIZE$_$AVL_TREE
	.quad	_INIT$_$BGRAPALETTE
	.quad	_FINALIZE$_$BGRAPALETTE
	.quad	_INIT$_$BGRADEFAULTBITMAP
	.quad	0
	.quad	_INIT$_$BGRATEXT
	.quad	_FINALIZE$_$BGRATEXT
	.quad	_INIT$_$BGRAREADBMPMIOMAP
	.quad	0
	.quad	_INIT$_$BGRAREADGIF
	.quad	0
	.quad	_INIT$_$BGRAREADICO
	.quad	0
	.quad	_INIT$_$BGRAREADPNG
	.quad	0
	.quad	_INIT$_$BGRAREADLZP
	.quad	0
	.quad	_INIT$_$BGRAREADPCX
	.quad	0
	.quad	_INIT$_$FPREADPSD
	.quad	0
	.quad	_INIT$_$BGRAREADPSD
	.quad	0
	.quad	_INIT$_$FPREADTGA
	.quad	0
	.quad	_INIT$_$BGRAREADTGA
	.quad	0
	.quad	_INIT$_$BGRAREADXPM
	.quad	0
	.quad	_INIT$_$BGRAWRITELZP
	.quad	0
	.quad	_INIT$_$BGRAREADWEBP
	.quad	_FINALIZE$_$BGRAREADWEBP
	.quad	_INIT$_$BGRAWRITEWEBP
	.quad	_FINALIZE$_$BGRAWRITEWEBP
	.quad	_INIT$_$BGRABITMAP
	.quad	_FINALIZE$_$BGRABITMAP
	.quad	_INIT$_$FPJSON
	.quad	_FINALIZE$_$FPJSON
	.quad	_INIT$_$JSONSCANNER
	.quad	_FINALIZE$_$JSONSCANNER
	.quad	_INIT$_$JSONPARSER
	.quad	_FINALIZE$_$JSONPARSER
	.quad	_INIT$_$GRAPHPROPEDITS
	.quad	0
	.quad	_INIT$_$BGRASLICESCALING
	.quad	_FINALIZE$_$BGRASLICESCALING
	.quad	_INIT$_$BCLISTBOX
	.quad	0
	.quad	_INIT$_$NETDB
	.quad	_FINALIZE$_$NETDB
	.quad	_INIT$_$SYNSOCK
	.quad	_FINALIZE$_$SYNSOCK
	.quad	_INIT$_$SYNAUTIL
	.quad	_FINALIZE$_$SYNAUTIL
	.quad	_INIT$_$BLCKSOCK
	.quad	_FINALIZE$_$BLCKSOCK
	.quad	0
	.quad	_FINALIZE$_$RESFACTORY
	.quad	_INIT$_$STRINGTABLERESOURCE
	.quad	0
	.quad	_INIT$_$GROUPICONRESOURCE
	.quad	0
	.quad	_INIT$_$GROUPCURSORRESOURCE
	.quad	0,0
	.quad	_FINALIZE$_$RESOURCE
	.quad	_INIT$_$VERSIONRESOURCE
	.quad	0
	.quad	_INIT$_$UVERSION
	.quad	_FINALIZE$_$UVERSION
	.quad	0
	.quad	_FINALIZE$_$DOS
	.quad	_INIT$_$DRILLSIMGUI
	.quad	0

.data
	.align 3
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	5
	.quad	_THREADVARLIST_$SYSTEM$indirect
	.quad	_THREADVARLIST_$CWSTRING$indirect
	.quad	_THREADVARLIST_$CLASSES$indirect
	.quad	_THREADVARLIST_$SOCKETS$indirect
	.quad	_THREADVARLIST_$DOS$indirect

.const_data
	.align 3
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.quad	30
	.quad	_RESSTR_$MATH_$$_START$indirect
	.quad	_RESSTR_$MATH_$$_END$indirect
	.quad	_RESSTR_$SYSCONST_$$_START$indirect
	.quad	_RESSTR_$SYSCONST_$$_END$indirect
	.quad	_RESSTR_$TYPINFO_$$_START$indirect
	.quad	_RESSTR_$TYPINFO_$$_END$indirect
	.quad	_RESSTR_$RTLCONSTS_$$_START$indirect
	.quad	_RESSTR_$RTLCONSTS_$$_END$indirect
	.quad	_RESSTR_$STRUTILS_$$_START$indirect
	.quad	_RESSTR_$STRUTILS_$$_END$indirect
	.quad	_RESSTR_$LCLSTRCONSTS_$$_START$indirect
	.quad	_RESSTR_$LCLSTRCONSTS_$$_END$indirect
	.quad	_RESSTR_$LAZUTILSSTRCONSTS_$$_START$indirect
	.quad	_RESSTR_$LAZUTILSSTRCONSTS_$$_END$indirect
	.quad	_RESSTR_$ZSTREAM_$$_START$indirect
	.quad	_RESSTR_$ZSTREAM_$$_END$indirect
	.quad	_RESSTR_$ZBASE_$$_START$indirect
	.quad	_RESSTR_$ZBASE_$$_END$indirect
	.quad	_RESSTR_$CONTNRS_$$_START$indirect
	.quad	_RESSTR_$CONTNRS_$$_END$indirect
	.quad	_RESSTR_$VARIANTS_$$_START$indirect
	.quad	_RESSTR_$VARIANTS_$$_END$indirect
	.quad	_RESSTR_$SYNCOBJS_$$_START$indirect
	.quad	_RESSTR_$SYNCOBJS_$$_END$indirect
	.quad	_RESSTR_$PROCESS_$$_START$indirect
	.quad	_RESSTR_$PROCESS_$$_END$indirect
	.quad	_RESSTR_$CUSTAPP_$$_START$indirect
	.quad	_RESSTR_$CUSTAPP_$$_END$indirect
	.quad	_RESSTR_$TACHARTSTRCONSTS_$$_START$indirect
	.quad	_RESSTR_$TACHARTSTRCONSTS_$$_END$indirect
	.quad	_RESSTR_$OBJINSPSTRCONSTS_$$_START$indirect
	.quad	_RESSTR_$OBJINSPSTRCONSTS_$$_END$indirect
	.quad	_RESSTR_$MASKUTILS_$$_START$indirect
	.quad	_RESSTR_$MASKUTILS_$$_END$indirect
	.quad	_RESSTR_$DBCONST_$$_START$indirect
	.quad	_RESSTR_$DBCONST_$$_END$indirect
	.quad	_RESSTR_$FPEXPRPARS_$$_START$indirect
	.quad	_RESSTR_$FPEXPRPARS_$$_END$indirect
	.quad	_RESSTR_$FPJSONRTTI_$$_START$indirect
	.quad	_RESSTR_$FPJSONRTTI_$$_END$indirect
	.quad	_RESSTR_$FPJSON_$$_START$indirect
	.quad	_RESSTR_$FPJSON_$$_END$indirect
	.quad	_RESSTR_$BUFSTREAM_$$_START$indirect
	.quad	_RESSTR_$BUFSTREAM_$$_END$indirect
	.quad	_RESSTR_$JSONPARSER_$$_START$indirect
	.quad	_RESSTR_$JSONPARSER_$$_END$indirect
	.quad	_RESSTR_$JSONSCANNER_$$_START$indirect
	.quad	_RESSTR_$JSONSCANNER_$$_END$indirect
	.quad	_RESSTR_$JSONREADER_$$_START$indirect
	.quad	_RESSTR_$JSONREADER_$$_END$indirect
	.quad	_RESSTR_$INIFILES_$$_START$indirect
	.quad	_RESSTR_$INIFILES_$$_END$indirect
	.quad	_RESSTR_$RESOURCE_$$_START$indirect
	.quad	_RESSTR_$RESOURCE_$$_END$indirect
	.quad	_RESSTR_$VERSIONTYPES_$$_START$indirect
	.quad	_RESSTR_$VERSIONTYPES_$$_END$indirect
	.quad	_RESSTR_$RESFACTORY_$$_START$indirect
	.quad	_RESSTR_$RESFACTORY_$$_END$indirect
	.quad	_RESSTR_$STRINGTABLERESOURCE_$$_START$indirect
	.quad	_RESSTR_$STRINGTABLERESOURCE_$$_END$indirect

.data
	.align 3
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.quad	0

.data
	.align 3
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.quad	0

.section __TEXT, .fpc, regular, no_dead_strip
	.align 4
.reference __fpc_ident
__fpc_ident:
	.ascii	"FPC 3.2.0 [2020/05/31] for x86_64 - Darwin"

.data
	.align 3
.globl	__stklen
__stklen:
	.quad	262144

.data
	.align 3
.globl	__heapsize
__heapsize:
	.quad	0

.data
	.align 3
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0

.const_data
	.align 3
.globl	FPC_RESLOCATION
FPC_RESLOCATION:
	.quad	FPC_RESSYMBOL
# End asmlist al_globals
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$DRILLSIM3$_Ld1
_$DRILLSIM3$_Ld1:
	.ascii	"&DrillSim3.lpr : Application.Initialize\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld2
_$DRILLSIM3$_Ld2:
	.ascii	"EDrillSim3.lpr - call Application.CreateForm for ea"
	.ascii	"ch application form\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld3
_$DRILLSIM3$_Ld3:
	.ascii	")DrillSim3.lpr - Initialise Form: DrillSim\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld4
_$DRILLSIM3$_Ld4:
	.ascii	"2DrillSim3.lpr - Initialise Form: General Well Data"
	.ascii	"\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld5
_$DRILLSIM3$_Ld5:
	.ascii	"2DrillSim3.lpr - Initialise Form: Summary Well Data"
	.ascii	"\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld6
_$DRILLSIM3$_Ld6:
	.ascii	"1DrillSim3.lpr - Initialise Form: Units Of Measure\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld7
_$DRILLSIM3$_Ld7:
	.ascii	"0DrillSim3.lpr - Initialise Form: System Defaults\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld8
_$DRILLSIM3$_Ld8:
	.ascii	"2DrillSim3.lpr - Initialise Form: Well Hole Profile"
	.ascii	"\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld9
_$DRILLSIM3$_Ld9:
	.ascii	"2DrillSim3.lpr - Initialise Form: Well Pipe Profile"
	.ascii	"\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld10
_$DRILLSIM3$_Ld10:
	.ascii	"4DrillSim3.lpr - Initialise Form: Well Drill Bit Da"
	.ascii	"ta\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld11
_$DRILLSIM3$_Ld11:
	.ascii	"9DrillSim3.lpr - Initialise Form: Well Drilling Flu"
	.ascii	"id Data\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld12
_$DRILLSIM3$_Ld12:
	.ascii	".DrillSim3.lpr - Initialise Form: Rig Pump Data\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld13
_$DRILLSIM3$_Ld13:
	.ascii	";DrillSim3.lpr - Initialise Form: Rig Surface Equip"
	.ascii	"ment Data\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld14
_$DRILLSIM3$_Ld14:
	.ascii	"/DrillSim3.lpr - Initialise Form: Well Test Data\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld15
_$DRILLSIM3$_Ld15:
	.ascii	"2DrillSim3.lpr - Initialise Form: Well Geology Data"
	.ascii	"\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld16
_$DRILLSIM3$_Ld16:
	.ascii	"-DrillSim3.lpr - Initialise Form: General Data\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld17
_$DRILLSIM3$_Ld17:
	.ascii	"\037===============================\000"

.const
	.align 3
.globl	_$DRILLSIM3$_Ld18
_$DRILLSIM3$_Ld18:
	.ascii	"\037* DrillSim3 shutdown complete *\000"
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_info

.section __DWARF,__debug_info,regular,debug
Ldebug_info0:
	.long	L$set$1
	.set L$set$1,Ledebug_info0-Lf1
Lf1:
	.short	2
	.long	L$set$2
	.set L$set$2,Ldebug_abbrev0-Ldebug_abbrevsection0
	.byte	8
	.byte	1
	.ascii	"DrillSim3.lpr\000"
	.ascii	"Free Pascal 3.2.0 2020/05/31\000"
	.ascii	"/Users/simonambridge/Documents/MyProjects/DrillSim3"
	.ascii	"/\000"
	.byte	9
	.byte	3
	.long	L$set$3
	.set L$set$3,Ldebug_line0-Ldebug_linesection0
	.quad	L_DEBUGSTART_$P$DRILLSIM3
	.quad	L_DEBUGEND_$P$DRILLSIM3
# Syms - Begin Staticsymtable
# Symbol SYSTEM
# Symbol LNFODWRF
# Symbol FPINTRES
# Symbol OBJPAS
# Symbol CTHREADS
# Symbol INTERFACES
# Symbol FORMS
# Symbol TACHARTLAZARUSPKG
# Symbol LAZCONTROLS
# Symbol DRILLSIMGUI
# Symbol FORMGENERALDATA
# Symbol FORMHOLEDATA
# Symbol FORMCONFIGDEFAULTS
# Symbol FORMPIPEDATA
# Symbol FORMBITDATA
# Symbol FORMPUMPDATA
# Symbol FORMSURFACEEQUIPMENTDATA
# Symbol FORMWELLTESTDATA
# Symbol FORMGEOLOGYDATA
# Symbol FORMMUDDATA
# Symbol FORMDISPLAYWELLDATA
# Symbol FORMUNITSOFMEASURE
# Symbol UVERSION
# Symbol DRILLSIM3
# Symbol main
# Symbol __FPC_IMPL_EXTERNAL_REDIRECT__FPC_SYSTEMMAIN
# Symbol PASCALMAIN
# Symbol SYSINIT
# Syms - End Staticsymtable
# Procdef $main(const LongInt;const ^^Char;const ^^Char); CDecl;
	.byte	2
	.ascii	"main\000"
	.byte	1
	.byte	1
	.quad	_main
	.quad	Lt1
# Symbol ARGC
	.byte	3
	.ascii	"ARGC\000"
	.byte	2
	.byte	118
	.byte	120
	.long	L$set$4
	.set L$set$4,La1-Ldebug_info0
# Symbol ARGV
	.byte	3
	.ascii	"ARGV\000"
	.byte	2
	.byte	118
	.byte	112
	.long	L$set$5
	.set L$set$5,La3-Ldebug_info0
# Symbol ARGP
	.byte	3
	.ascii	"ARGP\000"
	.byte	2
	.byte	118
	.byte	104
	.long	L$set$6
	.set L$set$6,La3-Ldebug_info0
	.byte	0
# Procdef $PASCALMAIN; Register;
	.byte	4
	.ascii	"PASCALMAIN\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	_PASCALMAIN
	.quad	Lt2
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition LongInt
La1:
	.byte	5
	.ascii	"LONGINT\000"
	.long	L$set$7
	.set L$set$7,La5-Ldebug_info0
La5:
	.byte	6
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
La2:
	.byte	7
	.long	L$set$8
	.set L$set$8,La1-Ldebug_info0
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit STRINGS has index 4
# Defs - End unit STRINGS has index 4
# Defs - Begin unit EXEINFO has index 3
# Defs - End unit EXEINFO has index 3
# Defs - Begin unit LNFODWRF has index 2
# Defs - End unit LNFODWRF has index 2
# Defs - Begin unit FPINTRES has index 5
# Defs - End unit FPINTRES has index 5
# Defs - Begin unit OBJPAS has index 6
# Defs - End unit OBJPAS has index 6
# Defs - Begin unit UNIXTYPE has index 28
# Defs - End unit UNIXTYPE has index 28
# Defs - Begin unit SYSCTL has index 30
# Defs - End unit SYSCTL has index 30
# Defs - Begin unit BASEUNIX has index 26
# Defs - End unit BASEUNIX has index 26
# Defs - Begin unit UNIXUTIL has index 31
# Defs - End unit UNIXUTIL has index 31
# Defs - Begin unit UNIX has index 27
# Defs - End unit UNIX has index 27
# Defs - Begin unit CTYPES has index 32
# Defs - End unit CTYPES has index 32
# Defs - Begin unit INITC has index 29
# Defs - End unit INITC has index 29
# Defs - Begin unit CTHREADS has index 7
# Defs - End unit CTHREADS has index 7
# Defs - Begin unit DL has index 37
# Defs - End unit DL has index 37
# Defs - Begin unit DYNLIBS has index 35
# Defs - End unit DYNLIBS has index 35
# Defs - Begin unit UNIXCP has index 36
# Defs - End unit UNIXCP has index 36
# Defs - Begin unit CWSTRING has index 33
# Defs - End unit CWSTRING has index 33
# Defs - Begin unit ERRORS has index 53
# Defs - End unit ERRORS has index 53
# Defs - Begin unit SYSCONST has index 54
# Defs - End unit SYSCONST has index 54
# Defs - Begin unit SYSUTILS has index 40
# Defs - End unit SYSUTILS has index 40
# Defs - Begin unit MATH has index 41
# Defs - End unit MATH has index 41
# Defs - Begin unit TYPES has index 38
# Defs - End unit TYPES has index 38
# Defs - Begin unit RTLCONSTS has index 56
# Defs - End unit RTLCONSTS has index 56
# Defs - Begin unit TYPINFO has index 55
# Defs - End unit TYPINFO has index 55
# Defs - Begin unit CLASSES has index 39
# Defs - End unit CLASSES has index 39
# Defs - Begin unit FPIMAGE has index 42
# Defs - End unit FPIMAGE has index 42
# Defs - Begin unit FPCADDS has index 57
# Defs - End unit FPCADDS has index 57
# Defs - Begin unit STRUTILS has index 58
# Defs - End unit STRUTILS has index 58
# Defs - Begin unit GETTEXT has index 59
# Defs - End unit GETTEXT has index 59
# Defs - Begin unit MACPAS has index 61
# Defs - End unit MACPAS has index 61
# Defs - Begin unit BLOCKRTL has index 62
# Defs - End unit BLOCKRTL has index 62
# Defs - Begin unit CONDITIONALMACROS has index 65
# Defs - End unit CONDITIONALMACROS has index 65
# Defs - Begin unit MACTYPES has index 63
# Defs - End unit MACTYPES has index 63
# Defs - Begin unit COREAUDIOTYPES has index 64
# Defs - End unit COREAUDIOTYPES has index 64
# Defs - Begin unit MACOSALL has index 60
# Defs - End unit MACOSALL has index 60
# Defs - Begin unit LAZUTF8 has index 43
# Defs - End unit LAZUTF8 has index 43
# Defs - Begin unit FGL has index 66
# Defs - End unit FGL has index 66
# Defs - Begin unit INTEGERLIST has index 44
# Defs - End unit INTEGERLIST has index 44
# Defs - Begin unit LCLTYPE has index 45
# Defs - End unit LCLTYPE has index 45
# Defs - Begin unit LAZ_AVL_TREE has index 67
# Defs - End unit LAZ_AVL_TREE has index 67
# Defs - Begin unit LAZUTILSSTRCONSTS has index 75
# Defs - End unit LAZUTILSSTRCONSTS has index 75
# Defs - Begin unit LAZFILEUTILS has index 68
# Defs - End unit LAZFILEUTILS has index 68
# Defs - Begin unit LAZUTILITIES has index 69
# Defs - End unit LAZUTILITIES has index 69
# Defs - Begin unit LAZMETHODLIST has index 70
# Defs - End unit LAZMETHODLIST has index 70
# Defs - Begin unit LAZUTF8CLASSES has index 71
# Defs - End unit LAZUTF8CLASSES has index 71
# Defs - Begin unit LAZCLASSES has index 76
# Defs - End unit LAZCLASSES has index 76
# Defs - Begin unit LAZLOGGERBASE has index 72
# Defs - End unit LAZLOGGERBASE has index 72
# Defs - Begin unit LAZTRACER has index 73
# Defs - End unit LAZTRACER has index 73
# Defs - Begin unit LCLSTRCONSTS has index 74
# Defs - End unit LCLSTRCONSTS has index 74
# Defs - Begin unit LCLPROC has index 46
# Defs - End unit LCLPROC has index 46
# Defs - Begin unit GRAPHTYPE has index 49
# Defs - End unit GRAPHTYPE has index 49
# Defs - Begin unit LMESSAGES has index 47
# Defs - End unit LMESSAGES has index 47
# Defs - Begin unit LCLPLATFORMDEF has index 48
# Defs - End unit LCLPLATFORMDEF has index 48
# Defs - Begin unit GRAPHMATH has index 50
# Defs - End unit GRAPHMATH has index 50
# Defs - Begin unit FPIMGCMN has index 87
# Defs - End unit FPIMGCMN has index 87
# Defs - Begin unit BMPCOMN has index 79
# Defs - End unit BMPCOMN has index 79
# Defs - Begin unit FPREADBMP has index 77
# Defs - End unit FPREADBMP has index 77
# Defs - Begin unit FPWRITEBMP has index 78
# Defs - End unit FPWRITEBMP has index 78
# Defs - Begin unit PNGCOMN has index 88
# Defs - End unit PNGCOMN has index 88
# Defs - Begin unit ZBASE has index 90
# Defs - End unit ZBASE has index 90
# Defs - Begin unit CRC has index 92
# Defs - End unit CRC has index 92
# Defs - Begin unit TREES has index 95
# Defs - End unit TREES has index 95
# Defs - Begin unit ADLER has index 96
# Defs - End unit ADLER has index 96
# Defs - Begin unit ZDEFLATE has index 93
# Defs - End unit ZDEFLATE has index 93
# Defs - Begin unit INFUTIL has index 98
# Defs - End unit INFUTIL has index 98
# Defs - Begin unit INFFAST has index 101
# Defs - End unit INFFAST has index 101
# Defs - Begin unit INFCODES has index 99
# Defs - End unit INFCODES has index 99
# Defs - Begin unit INFTREES has index 100
# Defs - End unit INFTREES has index 100
# Defs - Begin unit INFBLOCK has index 97
# Defs - End unit INFBLOCK has index 97
# Defs - Begin unit ZINFLATE has index 94
# Defs - End unit ZINFLATE has index 94
# Defs - Begin unit GZIO has index 91
# Defs - End unit GZIO has index 91
# Defs - Begin unit ZSTREAM has index 89
# Defs - End unit ZSTREAM has index 89
# Defs - Begin unit FPREADPNG has index 80
# Defs - End unit FPREADPNG has index 80
# Defs - Begin unit FPWRITEPNG has index 81
# Defs - End unit FPWRITEPNG has index 81
# Defs - Begin unit FPTIFFCMN has index 84
# Defs - End unit FPTIFFCMN has index 84
# Defs - Begin unit FPREADTIFF has index 82
# Defs - End unit FPREADTIFF has index 82
# Defs - Begin unit FPWRITETIFF has index 83
# Defs - End unit FPWRITETIFF has index 83
# Defs - Begin unit LAZVERSION has index 102
# Defs - End unit LAZVERSION has index 102
# Defs - Begin unit LCLVERSION has index 85
# Defs - End unit LCLVERSION has index 85
# Defs - Begin unit ICNSTYPES has index 86
# Defs - End unit ICNSTYPES has index 86
# Defs - Begin unit CONTNRS has index 105
# Defs - End unit CONTNRS has index 105
# Defs - Begin unit CLIPPING has index 115
# Defs - End unit CLIPPING has index 115
# Defs - Begin unit FPCANVAS has index 106
# Defs - End unit FPCANVAS has index 106
# Defs - Begin unit FPREADPNM has index 107
# Defs - End unit FPREADPNM has index 107
# Defs - Begin unit FPWRITEPNM has index 108
# Defs - End unit FPWRITEPNM has index 108
# Defs - Begin unit JDEFERR has index 121
# Defs - End unit JDEFERR has index 121
# Defs - Begin unit JMORECFG has index 120
# Defs - End unit JMORECFG has index 120
# Defs - Begin unit JPEGLIB has index 116
# Defs - End unit JPEGLIB has index 116
# Defs - Begin unit JINCLUDE has index 122
# Defs - End unit JINCLUDE has index 122
# Defs - Begin unit JCOMAPI has index 127
# Defs - End unit JCOMAPI has index 127
# Defs - Begin unit JERROR has index 123
# Defs - End unit JERROR has index 123
# Defs - Begin unit JUTILS has index 128
# Defs - End unit JUTILS has index 128
# Defs - Begin unit JMEMNOBS has index 129
# Defs - End unit JMEMNOBS has index 129
# Defs - Begin unit JMEMMGR has index 124
# Defs - End unit JMEMMGR has index 124
# Defs - Begin unit JDMARKER has index 125
# Defs - End unit JDMARKER has index 125
# Defs - Begin unit JDINPUT has index 126
# Defs - End unit JDINPUT has index 126
# Defs - Begin unit JDAPIMIN has index 117
# Defs - End unit JDAPIMIN has index 117
# Defs - Begin unit JDATASRC has index 118
# Defs - End unit JDATASRC has index 118
# Defs - Begin unit JDCOLOR has index 131
# Defs - End unit JDCOLOR has index 131
# Defs - Begin unit JDSAMPLE has index 132
# Defs - End unit JDSAMPLE has index 132
# Defs - Begin unit JDPOSTCT has index 133
# Defs - End unit JDPOSTCT has index 133
# Defs - Begin unit JDCT has index 142
# Defs - End unit JDCT has index 142
# Defs - Begin unit JIDCTFST has index 143
# Defs - End unit JIDCTFST has index 143
# Defs - Begin unit JIDCTINT has index 144
# Defs - End unit JIDCTINT has index 144
# Defs - Begin unit JIDCTFLT has index 145
# Defs - End unit JIDCTFLT has index 145
# Defs - Begin unit JIDCTRED has index 146
# Defs - End unit JIDCTRED has index 146
# Defs - Begin unit JDDCTMGR has index 134
# Defs - End unit JDDCTMGR has index 134
# Defs - Begin unit JDHUFF has index 136
# Defs - End unit JDHUFF has index 136
# Defs - Begin unit JDPHUFF has index 135
# Defs - End unit JDPHUFF has index 135
# Defs - Begin unit JDCOEFCT has index 137
# Defs - End unit JDCOEFCT has index 137
# Defs - Begin unit JQUANT2 has index 140
# Defs - End unit JQUANT2 has index 140
# Defs - Begin unit JDMAINCT has index 138
# Defs - End unit JDMAINCT has index 138
# Defs - Begin unit JQUANT1 has index 139
# Defs - End unit JQUANT1 has index 139
# Defs - Begin unit JDMERGE has index 141
# Defs - End unit JDMERGE has index 141
# Defs - Begin unit JDMASTER has index 130
# Defs - End unit JDMASTER has index 130
# Defs - Begin unit JDAPISTD has index 119
# Defs - End unit JDAPISTD has index 119
# Defs - Begin unit FPREADJPEG has index 109
# Defs - End unit FPREADJPEG has index 109
# Defs - Begin unit JCMARKER has index 152
# Defs - End unit JCMARKER has index 152
# Defs - Begin unit JCAPIMIN has index 148
# Defs - End unit JCAPIMIN has index 148
# Defs - Begin unit JCHUFF has index 154
# Defs - End unit JCHUFF has index 154
# Defs - Begin unit JCPHUFF has index 153
# Defs - End unit JCPHUFF has index 153
# Defs - Begin unit JCMASTER has index 155
# Defs - End unit JCMASTER has index 155
# Defs - Begin unit JCCOLOR has index 156
# Defs - End unit JCCOLOR has index 156
# Defs - Begin unit JCSAMPLE has index 157
# Defs - End unit JCSAMPLE has index 157
# Defs - Begin unit JCPREPCT has index 158
# Defs - End unit JCPREPCT has index 158
# Defs - Begin unit JFDCTINT has index 162
# Defs - End unit JFDCTINT has index 162
# Defs - Begin unit JFDCTFST has index 163
# Defs - End unit JFDCTFST has index 163
# Defs - Begin unit JFDCTFLT has index 164
# Defs - End unit JFDCTFLT has index 164
# Defs - Begin unit JCDCTMGR has index 159
# Defs - End unit JCDCTMGR has index 159
# Defs - Begin unit JCCOEFCT has index 160
# Defs - End unit JCCOEFCT has index 160
# Defs - Begin unit JCMAINCT has index 161
# Defs - End unit JCMAINCT has index 161
# Defs - Begin unit JCINIT has index 151
# Defs - End unit JCINIT has index 151
# Defs - Begin unit JCAPISTD has index 147
# Defs - End unit JCAPISTD has index 147
# Defs - Begin unit JDATADST has index 149
# Defs - End unit JDATADST has index 149
# Defs - Begin unit JCPARAM has index 150
# Defs - End unit JCPARAM has index 150
# Defs - Begin unit FPWRITEJPEG has index 110
# Defs - End unit FPWRITEJPEG has index 110
# Defs - Begin unit FPREADGIF has index 111
# Defs - End unit FPREADGIF has index 111
# Defs - Begin unit VARUTILS has index 168
# Defs - End unit VARUTILS has index 168
# Defs - Begin unit VARIANTS has index 165
# Defs - End unit VARIANTS has index 165
# Defs - Begin unit LAZDBGLOG has index 170
# Defs - End unit LAZDBGLOG has index 170
# Defs - Begin unit AVGLVLTREE has index 169
# Defs - End unit AVGLVLTREE has index 169
# Defs - Begin unit LAZCONFIGSTORAGE has index 166
# Defs - End unit LAZCONFIGSTORAGE has index 166
# Defs - Begin unit DYNQUEUE has index 167
# Defs - End unit DYNQUEUE has index 167
# Defs - Begin unit LRESOURCES has index 112
# Defs - End unit LRESOURCES has index 112
# Defs - Begin unit WSREFERENCES has index 114
# Defs - End unit WSREFERENCES has index 114
# Defs - Begin unit SYNCOBJS has index 171
# Defs - End unit SYNCOBJS has index 171
# Defs - Begin unit LCLRESCACHE has index 113
# Defs - End unit LCLRESCACHE has index 113
# Defs - Begin unit OBJC has index 172
# Defs - End unit OBJC has index 172
# Defs - Begin unit OBJCBASE has index 173
# Defs - End unit OBJCBASE has index 173
# Defs - Begin unit DEFINEDCLASSESFOUNDATION has index 179
# Defs - End unit DEFINEDCLASSESFOUNDATION has index 179
# Defs - Begin unit DEFINEDCLASSESCOREIMAGE has index 180
# Defs - End unit DEFINEDCLASSESCOREIMAGE has index 180
# Defs - Begin unit DEFINEDCLASSESQUARTZCORE has index 181
# Defs - End unit DEFINEDCLASSESQUARTZCORE has index 181
# Defs - Begin unit DEFINEDCLASSESCOREDATA has index 182
# Defs - End unit DEFINEDCLASSESCOREDATA has index 182
# Defs - Begin unit DEFINEDCLASSESAPPKIT has index 183
# Defs - End unit DEFINEDCLASSESAPPKIT has index 183
# Defs - Begin unit COCOAALL has index 174
# Defs - End unit COCOAALL has index 174
# Defs - Begin unit MASKS has index 185
# Defs - End unit MASKS has index 185
# Defs - Begin unit FILEUTIL has index 175
# Defs - End unit FILEUTIL has index 175
# Defs - Begin unit TERMIO has index 188
# Defs - End unit TERMIO has index 188
# Defs - Begin unit PIPES has index 187
# Defs - End unit PIPES has index 187
# Defs - Begin unit PROCESS has index 186
# Defs - End unit PROCESS has index 186
# Defs - Begin unit UTF8PROCESS has index 176
# Defs - End unit UTF8PROCESS has index 176
# Defs - Begin unit LAZSYSUTILS has index 177
# Defs - End unit LAZSYSUTILS has index 177
# Defs - Begin unit MAPS has index 178
# Defs - End unit MAPS has index 178
# Defs - Begin unit LCLINTF has index 104
# Defs - End unit LCLINTF has index 104
# Defs - Begin unit GRAPHICS has index 103
# Defs - End unit GRAPHICS has index 103
# Defs - Begin unit INTFGRAPHICS has index 51
# Defs - End unit INTFGRAPHICS has index 51
# Defs - Begin unit TMSCHEMA has index 184
# Defs - End unit TMSCHEMA has index 184
# Defs - Begin unit THEMES has index 52
# Defs - End unit THEMES has index 52
# Defs - Begin unit INTERFACEBASE has index 34
# Defs - End unit INTERFACEBASE has index 34
# Defs - Begin unit CFBASE has index 206
# Defs - End unit CFBASE has index 206
# Defs - Begin unit CFDICTIONARY has index 207
# Defs - End unit CFDICTIONARY has index 207
# Defs - Begin unit CGBASE has index 208
# Defs - End unit CGBASE has index 208
# Defs - Begin unit CGGEOMETRY has index 205
# Defs - End unit CGGEOMETRY has index 205
# Defs - Begin unit COCOA_EXTRA has index 193
# Defs - End unit COCOA_EXTRA has index 193
# Defs - Begin unit WSLCLCLASSES has index 210
# Defs - End unit WSLCLCLASSES has index 210
# Defs - Begin unit LCLCLASSES has index 209
# Defs - End unit LCLCLASSES has index 209
# Defs - Begin unit COCOAUTILS has index 191
# Defs - End unit COCOAUTILS has index 191
# Defs - Begin unit PIXTOOLS has index 219
# Defs - End unit PIXTOOLS has index 219
# Defs - Begin unit ELLIPSES has index 220
# Defs - End unit ELLIPSES has index 220
# Defs - Begin unit FPPIXLCANV has index 218
# Defs - End unit FPPIXLCANV has index 218
# Defs - Begin unit FPIMGCANV has index 217
# Defs - End unit FPIMGCANV has index 217
# Defs - Begin unit ACTNLIST has index 215
# Defs - End unit ACTNLIST has index 215
# Defs - Begin unit WSFACTORY has index 223
# Defs - End unit WSFACTORY has index 223
# Defs - Begin unit LAZSTRINGUTILS has index 227
# Defs - End unit LAZSTRINGUTILS has index 227
# Defs - Begin unit LAZLOGGER has index 226
# Defs - End unit LAZLOGGER has index 226
# Defs - Begin unit WSMENUS has index 225
# Defs - End unit WSMENUS has index 225
# Defs - Begin unit SINGLEINSTANCE has index 232
# Defs - End unit SINGLEINSTANCE has index 232
# Defs - Begin unit CUSTAPP has index 228
# Defs - End unit CUSTAPP has index 228
# Defs - Begin unit CUSTOMTIMER has index 229
# Defs - End unit CUSTOMTIMER has index 229
# Defs - Begin unit FASTHTMLPARSER has index 233
# Defs - End unit FASTHTMLPARSER has index 233
# Defs - Begin unit CLIPBRD has index 230
# Defs - End unit CLIPBRD has index 230
# Defs - Begin unit HELPINTFS has index 231
# Defs - End unit HELPINTFS has index 231
# Defs - Begin unit UITYPES has index 216
# Defs - End unit UITYPES has index 216
# Defs - Begin unit WSCONTROLS has index 234
# Defs - End unit WSCONTROLS has index 234
# Defs - Begin unit WSFORMS has index 235
# Defs - End unit WSFORMS has index 235
# Defs - Begin unit FORMS has index 9
# Defs - End unit FORMS has index 9
# Defs - Begin unit MENUS has index 203
# Defs - End unit MENUS has index 203
# Defs - Begin unit WSPROC has index 222
# Defs - End unit WSPROC has index 222
# Defs - Begin unit WSIMGLIST has index 221
# Defs - End unit WSIMGLIST has index 221
# Defs - Begin unit IMGLIST has index 213
# Defs - End unit IMGLIST has index 213
# Defs - Begin unit RTTIUTILS has index 224
# Defs - End unit RTTIUTILS has index 224
# Defs - Begin unit PROPERTYSTORAGE has index 214
# Defs - End unit PROPERTYSTORAGE has index 214
# Defs - Begin unit CONTROLS has index 202
# Defs - End unit CONTROLS has index 202
# Defs - Begin unit TEXTSTRINGS has index 241
# Defs - End unit TEXTSTRINGS has index 241
# Defs - Begin unit EXTENDEDSTRINGS has index 242
# Defs - End unit EXTENDEDSTRINGS has index 242
# Defs - Begin unit WSSTDCTRLS has index 243
# Defs - End unit WSSTDCTRLS has index 243
# Defs - Begin unit STDCTRLS has index 238
# Defs - End unit STDCTRLS has index 238
# Defs - Begin unit POPUPNOTIFIER has index 244
# Defs - End unit POPUPNOTIFIER has index 244
# Defs - Begin unit WSEXTCTRLS has index 245
# Defs - End unit WSEXTCTRLS has index 245
# Defs - Begin unit EXTCTRLS has index 237
# Defs - End unit EXTCTRLS has index 237
# Defs - Begin unit TOOLWIN has index 239
# Defs - End unit TOOLWIN has index 239
# Defs - Begin unit IMAGELISTCACHE has index 246
# Defs - End unit IMAGELISTCACHE has index 246
# Defs - Begin unit WSBUTTONS has index 247
# Defs - End unit WSBUTTONS has index 247
# Defs - Begin unit BUTTONS has index 240
# Defs - End unit BUTTONS has index 240
# Defs - Begin unit WSTOOLWIN has index 249
# Defs - End unit WSTOOLWIN has index 249
# Defs - Begin unit WSCOMCTRLS has index 248
# Defs - End unit WSCOMCTRLS has index 248
# Defs - Begin unit COMCTRLS has index 236
# Defs - End unit COMCTRLS has index 236
# Defs - Begin unit CUSTOMDRAWNDRAWERS has index 211
# Defs - End unit CUSTOMDRAWNDRAWERS has index 211
# Defs - Begin unit CUSTOMDRAWN_COMMON has index 250
# Defs - End unit CUSTOMDRAWN_COMMON has index 250
# Defs - Begin unit CUSTOMDRAWN_MAC has index 212
# Defs - End unit CUSTOMDRAWN_MAC has index 212
# Defs - Begin unit COCOAGDIOBJECTS has index 192
# Defs - End unit COCOAGDIOBJECTS has index 192
# Defs - Begin unit COCOAPRIVATE has index 190
# Defs - End unit COCOAPRIVATE has index 190
# Defs - Begin unit MESSAGES has index 251
# Defs - End unit MESSAGES has index 251
# Defs - Begin unit LCLMESSAGEGLUE has index 201
# Defs - End unit LCLMESSAGEGLUE has index 201
# Defs - Begin unit COCOACARET has index 252
# Defs - End unit COCOACARET has index 252
# Defs - Begin unit COCOASCROLLERS has index 197
# Defs - End unit COCOASCROLLERS has index 197
# Defs - Begin unit COCOAWSCOMMON has index 200
# Defs - End unit COCOAWSCOMMON has index 200
# Defs - Begin unit COCOAWSMENUS has index 194
# Defs - End unit COCOAWSMENUS has index 194
# Defs - Begin unit COCOABUTTONS has index 254
# Defs - End unit COCOABUTTONS has index 254
# Defs - Begin unit COCOATHEMES has index 256
# Defs - End unit COCOATHEMES has index 256
# Defs - Begin unit COCOATABLES has index 255
# Defs - End unit COCOATABLES has index 255
# Defs - Begin unit COCOATEXTEDITS has index 199
# Defs - End unit COCOATEXTEDITS has index 199
# Defs - Begin unit COCOAWSSTDCTRLS has index 253
# Defs - End unit COCOAWSSTDCTRLS has index 253
# Defs - Begin unit COCOAWINDOWS has index 196
# Defs - End unit COCOAWINDOWS has index 196
# Defs - Begin unit COCOAWSFORMS has index 195
# Defs - End unit COCOAWSFORMS has index 195
# Defs - Begin unit COCOAWSCLIPBOARD has index 198
# Defs - End unit COCOAWSCLIPBOARD has index 198
# Defs - Begin unit WSSPIN has index 269
# Defs - End unit WSSPIN has index 269
# Defs - Begin unit SPIN has index 257
# Defs - End unit SPIN has index 257
# Defs - Begin unit WSPAIRSPLITTER has index 270
# Defs - End unit WSPAIRSPLITTER has index 270
# Defs - Begin unit PAIRSPLITTER has index 258
# Defs - End unit PAIRSPLITTER has index 258
# Defs - Begin unit BUTTONPANEL has index 271
# Defs - End unit BUTTONPANEL has index 271
# Defs - Begin unit LCLTASKDIALOG has index 272
# Defs - End unit LCLTASKDIALOG has index 272
# Defs - Begin unit WSDIALOGS has index 273
# Defs - End unit WSDIALOGS has index 273
# Defs - Begin unit DIALOGS has index 259
# Defs - End unit DIALOGS has index 259
# Defs - Begin unit WSCHECKLST has index 274
# Defs - End unit WSCHECKLST has index 274
# Defs - Begin unit CHECKLST has index 260
# Defs - End unit CHECKLST has index 260
# Defs - Begin unit WSCALENDAR has index 275
# Defs - End unit WSCALENDAR has index 275
# Defs - Begin unit CALENDAR has index 261
# Defs - End unit CALENDAR has index 261
# Defs - Begin unit COCOAWSBUTTONS has index 262
# Defs - End unit COCOAWSBUTTONS has index 262
# Defs - Begin unit COCOAWSEXTCTRLS has index 263
# Defs - End unit COCOAWSEXTCTRLS has index 263
# Defs - Begin unit COCOATABCONTROLS has index 276
# Defs - End unit COCOATABCONTROLS has index 276
# Defs - Begin unit COCOAWSCOMCTRLS has index 264
# Defs - End unit COCOAWSCOMCTRLS has index 264
# Defs - Begin unit COCOAWSDIALOGS has index 265
# Defs - End unit COCOAWSDIALOGS has index 265
# Defs - Begin unit COCOAWSSPIN has index 266
# Defs - End unit COCOAWSSPIN has index 266
# Defs - Begin unit COCOAWSCHECKLST has index 267
# Defs - End unit COCOAWSCHECKLST has index 267
# Defs - Begin unit COCOADATEPICKER has index 277
# Defs - End unit COCOADATEPICKER has index 277
# Defs - Begin unit COCOAWSDATEPICKER has index 268
# Defs - End unit COCOAWSDATEPICKER has index 268
# Defs - Begin unit COCOAWSFACTORY has index 204
# Defs - End unit COCOAWSFACTORY has index 204
# Defs - Begin unit COCOAINT has index 189
# Defs - End unit COCOAINT has index 189
# Defs - Begin unit INTERFACES has index 8
# Defs - End unit INTERFACES has index 8
# Defs - Begin unit TACHARTSTRCONSTS has index 323
# Defs - End unit TACHARTSTRCONSTS has index 323
# Defs - Begin unit TACHARTUTILS has index 280
# Defs - End unit TACHARTUTILS has index 280
# Defs - Begin unit TYP has index 332
# Defs - End unit TYP has index 332
# Defs - Begin unit ROO has index 333
# Defs - End unit ROO has index 333
# Defs - Begin unit SPE has index 331
# Defs - End unit SPE has index 331
# Defs - Begin unit TAMATH has index 309
# Defs - End unit TAMATH has index 309
# Defs - Begin unit TACUSTOMSOURCE has index 297
# Defs - End unit TACUSTOMSOURCE has index 297
# Defs - Begin unit HTMLUTIL has index 334
# Defs - End unit HTMLUTIL has index 334
# Defs - Begin unit TAGEOMETRY has index 298
# Defs - End unit TAGEOMETRY has index 298
# Defs - Begin unit HTMLDEFS has index 335
# Defs - End unit HTMLDEFS has index 335
# Defs - Begin unit TAHTML has index 325
# Defs - End unit TAHTML has index 325
# Defs - Begin unit TADRAWUTILS has index 290
# Defs - End unit TADRAWUTILS has index 290
# Defs - Begin unit DATEUTILS has index 336
# Defs - End unit DATEUTILS has index 336
# Defs - Begin unit TAINTERVALSOURCES has index 302
# Defs - End unit TAINTERVALSOURCES has index 302
# Defs - Begin unit TASTYLES has index 293
# Defs - End unit TASTYLES has index 293
# Defs - Begin unit TATYPES has index 289
# Defs - End unit TATYPES has index 289
# Defs - Begin unit TATEXTELEMENTS has index 314
# Defs - End unit TATEXTELEMENTS has index 314
# Defs - Begin unit TACHARTAXISUTILS has index 303
# Defs - End unit TACHARTAXISUTILS has index 303
# Defs - Begin unit MASKEDIT has index 346
# Defs - End unit MASKEDIT has index 346
# Defs - Begin unit DYNAMICARRAY has index 347
# Defs - End unit DYNAMICARRAY has index 347
# Defs - Begin unit LAZFILECACHE has index 350
# Defs - End unit LAZFILECACHE has index 350
# Defs - Begin unit LAZ2_XMLUTILS has index 354
# Defs - End unit LAZ2_XMLUTILS has index 354
# Defs - Begin unit LAZ2_DOM has index 351
# Defs - End unit LAZ2_DOM has index 351
# Defs - Begin unit URIPARSER has index 355
# Defs - End unit URIPARSER has index 355
# Defs - Begin unit LAZ2_XMLREAD has index 352
# Defs - End unit LAZ2_XMLREAD has index 352
# Defs - Begin unit LAZ2_XMLWRITE has index 353
# Defs - End unit LAZ2_XMLWRITE has index 353
# Defs - Begin unit LAZ2_XMLCFG has index 348
# Defs - End unit LAZ2_XMLCFG has index 348
# Defs - Begin unit LCSVUTILS has index 349
# Defs - End unit LCSVUTILS has index 349
# Defs - Begin unit WSGRIDS has index 356
# Defs - End unit WSGRIDS has index 356
# Defs - Begin unit GRIDS has index 339
# Defs - End unit GRIDS has index 339
# Defs - Begin unit INDUSTRIALBASE has index 359
# Defs - End unit INDUSTRIALBASE has index 359
# Defs - Begin unit ARROW has index 357
# Defs - End unit ARROW has index 357
# Defs - Begin unit OBJINSPSTRCONSTS has index 345
# Defs - End unit OBJINSPSTRCONSTS has index 345
# Defs - Begin unit IDEOPTIONSINTF has index 360
# Defs - End unit IDEOPTIONSINTF has index 360
# Defs - Begin unit LAZHELPINTF has index 369
# Defs - End unit LAZHELPINTF has index 369
# Defs - Begin unit LAZHELPHTML has index 362
# Defs - End unit LAZHELPHTML has index 362
# Defs - Begin unit MACRODEFINTF has index 371
# Defs - End unit MACRODEFINTF has index 371
# Defs - Begin unit MACROINTF has index 370
# Defs - End unit MACROINTF has index 370
# Defs - Begin unit BASEIDEINTF has index 363
# Defs - End unit BASEIDEINTF has index 363
# Defs - Begin unit EDITORSYNTAXHIGHLIGHTERDEF has index 372
# Defs - End unit EDITORSYNTAXHIGHLIGHTERDEF has index 372
# Defs - Begin unit IDEOPTEDITORINTF has index 364
# Defs - End unit IDEOPTEDITORINTF has index 364
# Defs - Begin unit COMPOPTSINTF has index 365
# Defs - End unit COMPOPTSINTF has index 365
# Defs - Begin unit NEWITEMINTF has index 373
# Defs - End unit NEWITEMINTF has index 373
# Defs - Begin unit PROJPACKINTF has index 374
# Defs - End unit PROJPACKINTF has index 374
# Defs - Begin unit PROJECTINTF has index 366
# Defs - End unit PROJECTINTF has index 366
# Defs - Begin unit IDEEXTERNTOOLINTF has index 367
# Defs - End unit IDEEXTERNTOOLINTF has index 367
# Defs - Begin unit WSEXTDLGS has index 394
# Defs - End unit WSEXTDLGS has index 394
# Defs - Begin unit CALCFORM has index 393
# Defs - End unit CALCFORM has index 393
# Defs - Begin unit EXTDLGS has index 389
# Defs - End unit EXTDLGS has index 389
# Defs - Begin unit GROUPEDEDIT has index 390
# Defs - End unit GROUPEDEDIT has index 390
# Defs - Begin unit CALENDARPOPUP has index 391
# Defs - End unit CALENDARPOPUP has index 391
# Defs - Begin unit TIMEPOPUP has index 392
# Defs - End unit TIMEPOPUP has index 392
# Defs - Begin unit EDITBTN has index 377
# Defs - End unit EDITBTN has index 377
# Defs - Begin unit VALEDIT has index 378
# Defs - End unit VALEDIT has index 378
# Defs - Begin unit SHELLCTRLS has index 395
# Defs - End unit SHELLCTRLS has index 395
# Defs - Begin unit FILECTRL has index 379
# Defs - End unit FILECTRL has index 379
# Defs - Begin unit CHECKBOXTHEMED has index 380
# Defs - End unit CHECKBOXTHEMED has index 380
# Defs - Begin unit STRINGHASHLIST has index 381
# Defs - End unit STRINGHASHLIST has index 381
# Defs - Begin unit PROPEDITUTILS has index 343
# Defs - End unit PROPEDITUTILS has index 343
# Defs - Begin unit PACKAGEDEPENDENCYINTF has index 382
# Defs - End unit PACKAGEDEPENDENCYINTF has index 382
# Defs - Begin unit IDEIMAGESINTF has index 376
# Defs - End unit IDEIMAGESINTF has index 376
# Defs - Begin unit FRMSELECTPROPS has index 383
# Defs - End unit FRMSELECTPROPS has index 383
# Defs - Begin unit TEXTTOOLS has index 396
# Defs - End unit TEXTTOOLS has index 396
# Defs - Begin unit STRINGSPROPEDITDLG has index 384
# Defs - End unit STRINGSPROPEDITDLG has index 384
# Defs - Begin unit KEYVALPROPEDITDLG has index 385
# Defs - End unit KEYVALPROPEDITDLG has index 385
# Defs - Begin unit COLLECTIONPROPEDITFORM has index 386
# Defs - End unit COLLECTIONPROPEDITFORM has index 386
# Defs - Begin unit FILEFILTERPROPEDITOR has index 387
# Defs - End unit FILEFILTERPROPEDITOR has index 387
# Defs - Begin unit LAZMSGDIALOGS has index 398
# Defs - End unit LAZMSGDIALOGS has index 398
# Defs - Begin unit IDEDIALOGS has index 397
# Defs - End unit IDEDIALOGS has index 397
# Defs - Begin unit PAGESPROPEDITDLG has index 388
# Defs - End unit PAGESPROPEDITDLG has index 388
# Defs - Begin unit PROPEDITS has index 338
# Defs - End unit PROPEDITS has index 338
# Defs - Begin unit IDECOMMANDS has index 375
# Defs - End unit IDECOMMANDS has index 375
# Defs - Begin unit SRCEDITORINTF has index 368
# Defs - End unit SRCEDITORINTF has index 368
# Defs - Begin unit LAZIDEINTF has index 361
# Defs - End unit LAZIDEINTF has index 361
# Defs - Begin unit IDEWINDOWINTF has index 358
# Defs - End unit IDEWINDOWINTF has index 358
# Defs - Begin unit LAZSTRINGGRIDEDIT has index 340
# Defs - End unit LAZSTRINGGRIDEDIT has index 340
# Defs - Begin unit CHECKLISTBOXEDITORDLG has index 341
# Defs - End unit CHECKLISTBOXEDITORDLG has index 341
# Defs - Begin unit CHECKGROUPEDITORDLG has index 342
# Defs - End unit CHECKGROUPEDITORDLG has index 342
# Defs - Begin unit COMPONENTREG has index 344
# Defs - End unit COMPONENTREG has index 344
# Defs - Begin unit COMPONENTEDITORS has index 337
# Defs - End unit COMPONENTEDITORS has index 337
# Defs - Begin unit TASUBCOMPONENTSEDITOR has index 286
# Defs - End unit TASUBCOMPONENTSEDITOR has index 286
# Defs - Begin unit TATRANSFORMATIONS has index 288
# Defs - End unit TATRANSFORMATIONS has index 288
# Defs - Begin unit TACHARTAXIS has index 279
# Defs - End unit TACHARTAXIS has index 279
# Defs - Begin unit TADRAWERCANVAS has index 300
# Defs - End unit TADRAWERCANVAS has index 300
# Defs - Begin unit TAGUICONNECTOR has index 319
# Defs - End unit TAGUICONNECTOR has index 319
# Defs - Begin unit TALEGEND has index 292
# Defs - End unit TALEGEND has index 292
# Defs - Begin unit TAGRAPH has index 278
# Defs - End unit TAGRAPH has index 278
# Defs - Begin unit TASOURCES has index 282
# Defs - End unit TASOURCES has index 282
# Defs - Begin unit TACUSTOMSERIES has index 281
# Defs - End unit TACUSTOMSERIES has index 281
# Defs - Begin unit FMTBCD has index 400
# Defs - End unit FMTBCD has index 400
# Defs - Begin unit MASKUTILS has index 401
# Defs - End unit MASKUTILS has index 401
# Defs - Begin unit DBCONST has index 402
# Defs - End unit DBCONST has index 402
# Defs - Begin unit DB has index 399
# Defs - End unit DB has index 399
# Defs - Begin unit TADBSOURCE has index 283
# Defs - End unit TADBSOURCE has index 283
# Defs - Begin unit TARADIALSERIES has index 296
# Defs - End unit TARADIALSERIES has index 296
# Defs - Begin unit TASERIES has index 284
# Defs - End unit TASERIES has index 284
# Defs - Begin unit TASERIESEDITOR has index 285
# Defs - End unit TASERIESEDITOR has index 285
# Defs - Begin unit TAENUMERATORS has index 305
# Defs - End unit TAENUMERATORS has index 305
# Defs - Begin unit TATOOLS has index 287
# Defs - End unit TATOOLS has index 287
# Defs - Begin unit TAMULTISERIES has index 291
# Defs - End unit TAMULTISERIES has index 291
# Defs - Begin unit TACUSTOMFUNCSERIES has index 317
# Defs - End unit TACUSTOMFUNCSERIES has index 317
# Defs - Begin unit OMV has index 405
# Defs - End unit OMV has index 405
# Defs - Begin unit DSL has index 406
# Defs - End unit DSL has index 406
# Defs - Begin unit MDT has index 407
# Defs - End unit MDT has index 407
# Defs - Begin unit SLE has index 403
# Defs - End unit SLE has index 403
# Defs - Begin unit INV has index 404
# Defs - End unit INV has index 404
# Defs - Begin unit TAFITLIB has index 329
# Defs - End unit TAFITLIB has index 329
# Defs - Begin unit TAFITUTILS has index 318
# Defs - End unit TAFITUTILS has index 318
# Defs - Begin unit IPF has index 408
# Defs - End unit IPF has index 408
# Defs - Begin unit GRAPHUTIL has index 409
# Defs - End unit GRAPHUTIL has index 409
# Defs - Begin unit TAFUNCSERIES has index 294
# Defs - End unit TAFUNCSERIES has index 294
# Defs - Begin unit TALEGENDPANEL has index 295
# Defs - End unit TALEGENDPANEL has index 295
# Defs - Begin unit TANAVIGATION has index 299
# Defs - End unit TANAVIGATION has index 299
# Defs - Begin unit TTTYPES has index 413
# Defs - End unit TTTYPES has index 413
# Defs - Begin unit TTERROR has index 414
# Defs - End unit TTERROR has index 414
# Defs - Begin unit TTCALC has index 415
# Defs - End unit TTCALC has index 415
# Defs - Begin unit TTMEMORY has index 416
# Defs - End unit TTMEMORY has index 416
# Defs - Begin unit TTTABLES has index 417
# Defs - End unit TTTABLES has index 417
# Defs - Begin unit TTCACHE has index 418
# Defs - End unit TTCACHE has index 418
# Defs - Begin unit TTFILE has index 419
# Defs - End unit TTFILE has index 419
# Defs - Begin unit TTCMAP has index 420
# Defs - End unit TTCMAP has index 420
# Defs - Begin unit TTLOAD has index 422
# Defs - End unit TTLOAD has index 422
# Defs - Begin unit TTINTERP has index 424
# Defs - End unit TTINTERP has index 424
# Defs - Begin unit TTOBJS has index 421
# Defs - End unit TTOBJS has index 421
# Defs - Begin unit TTGLOAD has index 423
# Defs - End unit TTGLOAD has index 423
# Defs - Begin unit TTPROFILE has index 425
# Defs - End unit TTPROFILE has index 425
# Defs - Begin unit TTRASTER has index 412
# Defs - End unit TTRASTER has index 412
# Defs - Begin unit LAZFREETYPE has index 411
# Defs - End unit LAZFREETYPE has index 411
# Defs - Begin unit EASYLAZFREETYPE has index 410
# Defs - End unit EASYLAZFREETYPE has index 410
# Defs - Begin unit LAZFREETYPEFONTCOLLECTION has index 426
# Defs - End unit LAZFREETYPEFONTCOLLECTION has index 426
# Defs - Begin unit TAFONTS has index 326
# Defs - End unit TAFONTS has index 326
# Defs - Begin unit BASE64 has index 427
# Defs - End unit BASE64 has index 427
# Defs - Begin unit TADRAWERSVG has index 301
# Defs - End unit TADRAWERSVG has index 301
# Defs - Begin unit TACHARTLISTBOX has index 304
# Defs - End unit TACHARTLISTBOX has index 304
# Defs - Begin unit TADATAPOINTSEDITOR has index 306
# Defs - End unit TADATAPOINTSEDITOR has index 306
# Defs - Begin unit TACHARTEXTENTLINK has index 307
# Defs - End unit TACHARTEXTENTLINK has index 307
# Defs - Begin unit TATOOLEDITORS has index 308
# Defs - End unit TATOOLEDITORS has index 308
# Defs - Begin unit TACHARTIMAGELIST has index 310
# Defs - End unit TACHARTIMAGELIST has index 310
# Defs - Begin unit TACHARTTEECHART has index 311
# Defs - End unit TACHARTTEECHART has index 311
# Defs - Begin unit TADATATOOLS has index 312
# Defs - End unit TADATATOOLS has index 312
# Defs - Begin unit TAANIMATEDSOURCE has index 313
# Defs - End unit TAANIMATEDSOURCE has index 313
# Defs - Begin unit TAAXISSOURCE has index 315
# Defs - End unit TAAXISSOURCE has index 315
# Defs - Begin unit TASERIESPROPEDITORS has index 316
# Defs - End unit TASERIESPROPEDITORS has index 316
# Defs - Begin unit TADIAGRAM has index 320
# Defs - End unit TADIAGRAM has index 320
# Defs - Begin unit TADIAGRAMDRAWING has index 321
# Defs - End unit TADIAGRAMDRAWING has index 321
# Defs - Begin unit TADIAGRAMLAYOUT has index 322
# Defs - End unit TADIAGRAMLAYOUT has index 322
# Defs - Begin unit TACHARTCOMBOS has index 324
# Defs - End unit TACHARTCOMBOS has index 324
# Defs - Begin unit FPEXPRPARS has index 428
# Defs - End unit FPEXPRPARS has index 428
# Defs - Begin unit TAEXPRESSIONSERIES has index 327
# Defs - End unit TAEXPRESSIONSERIES has index 327
# Defs - Begin unit GL has index 429
# Defs - End unit GL has index 429
# Defs - Begin unit LAZFREETYPEFPIMAGEDRAWER has index 430
# Defs - End unit LAZFREETYPEFPIMAGEDRAWER has index 430
# Defs - Begin unit TAOPENGL has index 328
# Defs - End unit TAOPENGL has index 328
# Defs - Begin unit LAZARUSPACKAGEINTF has index 330
# Defs - End unit LAZARUSPACKAGEINTF has index 330
# Defs - Begin unit TACHARTLAZARUSPKG has index 10
# Defs - End unit TACHARTLAZARUSPKG has index 10
# Defs - Begin unit DIVIDERBEVEL has index 431
# Defs - End unit DIVIDERBEVEL has index 431
# Defs - Begin unit EXTENDEDNOTEBOOK has index 432
# Defs - End unit EXTENDEDNOTEBOOK has index 432
# Defs - Begin unit LISTFILTEREDIT has index 433
# Defs - End unit LISTFILTEREDIT has index 433
# Defs - Begin unit LISTVIEWFILTEREDIT has index 434
# Defs - End unit LISTVIEWFILTEREDIT has index 434
# Defs - Begin unit TREEFILTEREDIT has index 435
# Defs - End unit TREEFILTEREDIT has index 435
# Defs - Begin unit SHORTPATHEDIT has index 436
# Defs - End unit SHORTPATHEDIT has index 436
# Defs - Begin unit LVLGRAPHCTRL has index 437
# Defs - End unit LVLGRAPHCTRL has index 437
# Defs - Begin unit EXTENDEDTABCONTROLS has index 438
# Defs - End unit EXTENDEDTABCONTROLS has index 438
# Defs - Begin unit SPINEX has index 439
# Defs - End unit SPINEX has index 439
# Defs - Begin unit SMALLORDEREDSETEDITOR has index 440
# Defs - End unit SMALLORDEREDSETEDITOR has index 440
# Defs - Begin unit LAZCONTROLS has index 11
# Defs - End unit LAZCONTROLS has index 11
# Defs - Begin unit CRT has index 441
# Defs - End unit CRT has index 441
# Defs - Begin unit BGRACLASSES has index 467
# Defs - End unit BGRACLASSES has index 467
# Defs - Begin unit BGRAGRAPHICS has index 469
# Defs - End unit BGRAGRAPHICS has index 469
# Defs - Begin unit BGRAUNICODE has index 470
# Defs - End unit BGRAUNICODE has index 470
# Defs - Begin unit BGRAUTF8 has index 472
# Defs - End unit BGRAUTF8 has index 472
# Defs - Begin unit BGRAMULTIFILETYPE has index 471
# Defs - End unit BGRAMULTIFILETYPE has index 471
# Defs - Begin unit XWDFILE has index 478
# Defs - End unit XWDFILE has index 478
# Defs - Begin unit FPREADXWD has index 473
# Defs - End unit FPREADXWD has index 473
# Defs - Begin unit FPREADXPM has index 474
# Defs - End unit FPREADXPM has index 474
# Defs - Begin unit PCXCOMN has index 479
# Defs - End unit PCXCOMN has index 479
# Defs - Begin unit FPWRITEPCX has index 475
# Defs - End unit FPWRITEPCX has index 475
# Defs - Begin unit TARGACMN has index 480
# Defs - End unit TARGACMN has index 480
# Defs - Begin unit FPWRITETGA has index 476
# Defs - End unit FPWRITETGA has index 476
# Defs - Begin unit FPWRITEXPM has index 477
# Defs - End unit FPWRITEXPM has index 477
# Defs - Begin unit BGRABITMAPTYPES has index 461
# Defs - End unit BGRABITMAPTYPES has index 461
# Defs - Begin unit BGRABLEND has index 493
# Defs - End unit BGRABLEND has index 493
# Defs - Begin unit BGRATRANSFORM has index 485
# Defs - End unit BGRATRANSFORM has index 485
# Defs - Begin unit BGRARESAMPLE has index 494
# Defs - End unit BGRARESAMPLE has index 494
# Defs - Begin unit BGRAPATH has index 490
# Defs - End unit BGRAPATH has index 490
# Defs - Begin unit BGRAPEN has index 489
# Defs - End unit BGRAPEN has index 489
# Defs - Begin unit BGRAFILLINFO has index 495
# Defs - End unit BGRAFILLINFO has index 495
# Defs - Begin unit BGRAGRADIENTSCANNER has index 496
# Defs - End unit BGRAGRADIENTSCANNER has index 496
# Defs - Begin unit BGRAPOLYGON has index 491
# Defs - End unit BGRAPOLYGON has index 491
# Defs - Begin unit BGRASSE has index 497
# Defs - End unit BGRASSE has index 497
# Defs - Begin unit BGRAPOLYGONALIASED has index 492
# Defs - End unit BGRAPOLYGONALIASED has index 492
# Defs - Begin unit BGRACANVAS has index 483
# Defs - End unit BGRACANVAS has index 483
# Defs - Begin unit BGRAARROW has index 498
# Defs - End unit BGRAARROW has index 498
# Defs - Begin unit BGRAREADBMP has index 499
# Defs - End unit BGRAREADBMP has index 499
# Defs - Begin unit BGRAREADJPEG has index 500
# Defs - End unit BGRAREADJPEG has index 500
# Defs - Begin unit BGRAWRITEPNG has index 501
# Defs - End unit BGRAWRITEPNG has index 501
# Defs - Begin unit BGRAWRITETIFF has index 502
# Defs - End unit BGRAWRITETIFF has index 502
# Defs - Begin unit BGRAFILTERTYPE has index 504
# Defs - End unit BGRAFILTERTYPE has index 504
# Defs - Begin unit BGRAFILTERBLUR has index 503
# Defs - End unit BGRAFILTERBLUR has index 503
# Defs - Begin unit UNIVERSALDRAWER has index 487
# Defs - End unit UNIVERSALDRAWER has index 487
# Defs - Begin unit BGRAGRAYSCALEMASK has index 488
# Defs - End unit BGRAGRAYSCALEMASK has index 488
# Defs - Begin unit BGRACANVAS2D has index 484
# Defs - End unit BGRACANVAS2D has index 484
# Defs - Begin unit BGRAUNICODETEXT has index 505
# Defs - End unit BGRAUNICODETEXT has index 505
# Defs - Begin unit BGRATEXTBIDI has index 486
# Defs - End unit BGRATEXTBIDI has index 486
# Defs - Begin unit BGRAFILTERSCANNER has index 509
# Defs - End unit BGRAFILTERSCANNER has index 509
# Defs - Begin unit BGRAFILTERS has index 506
# Defs - End unit BGRAFILTERS has index 506
# Defs - Begin unit FPREADPCX has index 507
# Defs - End unit FPREADPCX has index 507
# Defs - Begin unit AVL_TREE has index 511
# Defs - End unit AVL_TREE has index 511
# Defs - Begin unit BUFSTREAM has index 512
# Defs - End unit BUFSTREAM has index 512
# Defs - Begin unit BGRAPALETTE has index 510
# Defs - End unit BGRAPALETTE has index 510
# Defs - Begin unit BGRADITHERING has index 508
# Defs - End unit BGRADITHERING has index 508
# Defs - Begin unit BGRADEFAULTBITMAP has index 482
# Defs - End unit BGRADEFAULTBITMAP has index 482
# Defs - Begin unit BGRATEXT has index 513
# Defs - End unit BGRATEXT has index 513
# Defs - Begin unit BGRALCLBITMAP has index 481
# Defs - End unit BGRALCLBITMAP has index 481
# Defs - Begin unit BGRAMACBITMAP has index 468
# Defs - End unit BGRAMACBITMAP has index 468
# Defs - Begin unit BGRAREADBMPMIOMAP has index 514
# Defs - End unit BGRAREADBMPMIOMAP has index 514
# Defs - Begin unit BGRAREADGIF has index 515
# Defs - End unit BGRAREADGIF has index 515
# Defs - Begin unit BGRAREADICO has index 516
# Defs - End unit BGRAREADICO has index 516
# Defs - Begin unit BGRALZPCOMMON has index 526
# Defs - End unit BGRALZPCOMMON has index 526
# Defs - Begin unit BGRACOMPRESSABLEBITMAP has index 527
# Defs - End unit BGRACOMPRESSABLEBITMAP has index 527
# Defs - Begin unit BGRAREADPNG has index 519
# Defs - End unit BGRAREADPNG has index 519
# Defs - Begin unit BGRAREADLZP has index 517
# Defs - End unit BGRAREADLZP has index 517
# Defs - Begin unit BGRAREADPCX has index 518
# Defs - End unit BGRAREADPCX has index 518
# Defs - Begin unit FPREADPSD has index 528
# Defs - End unit FPREADPSD has index 528
# Defs - Begin unit BGRAREADPSD has index 520
# Defs - End unit BGRAREADPSD has index 520
# Defs - Begin unit FPREADTGA has index 529
# Defs - End unit FPREADTGA has index 529
# Defs - Begin unit BGRAREADTGA has index 521
# Defs - End unit BGRAREADTGA has index 521
# Defs - Begin unit BGRAREADXPM has index 522
# Defs - End unit BGRAREADXPM has index 522
# Defs - Begin unit BGRAWRITELZP has index 523
# Defs - End unit BGRAWRITELZP has index 523
# Defs - Begin unit LIBWEBP has index 530
# Defs - End unit LIBWEBP has index 530
# Defs - Begin unit BGRAREADWEBP has index 524
# Defs - End unit BGRAREADWEBP has index 524
# Defs - Begin unit BGRAWRITEWEBP has index 525
# Defs - End unit BGRAWRITEWEBP has index 525
# Defs - Begin unit BGRABITMAP has index 460
# Defs - End unit BGRABITMAP has index 460
# Defs - Begin unit BCTHEMEMANAGER has index 462
# Defs - End unit BCTHEMEMANAGER has index 462
# Defs - Begin unit BCBASECTRLS has index 464
# Defs - End unit BCBASECTRLS has index 464
# Defs - Begin unit BCTYPES has index 463
# Defs - End unit BCTYPES has index 463
# Defs - Begin unit FPJSON has index 466
# Defs - End unit FPJSON has index 466
# Defs - Begin unit JSONSCANNER has index 532
# Defs - End unit JSONSCANNER has index 532
# Defs - Begin unit JSONREADER has index 533
# Defs - End unit JSONREADER has index 533
# Defs - Begin unit JSONPARSER has index 531
# Defs - End unit JSONPARSER has index 531
# Defs - Begin unit FPJSONRTTI has index 465
# Defs - End unit FPJSONRTTI has index 465
# Defs - Begin unit STDACTNS has index 537
# Defs - End unit STDACTNS has index 537
# Defs - Begin unit GRAPHICPROPEDIT has index 536
# Defs - End unit GRAPHICPROPEDIT has index 536
# Defs - Begin unit GRAPHPROPEDITS has index 534
# Defs - End unit GRAPHPROPEDITS has index 534
# Defs - Begin unit BCTOOLS has index 535
# Defs - End unit BCTOOLS has index 535
# Defs - Begin unit BCBUTTON has index 442
# Defs - End unit BCBUTTON has index 442
# Defs - Begin unit BGRAVIRTUALSCREEN has index 538
# Defs - End unit BGRAVIRTUALSCREEN has index 538
# Defs - Begin unit INIFILES has index 540
# Defs - End unit INIFILES has index 540
# Defs - Begin unit BGRASLICESCALING has index 539
# Defs - End unit BGRASLICESCALING has index 539
# Defs - Begin unit BCLISTBOX has index 443
# Defs - End unit BCLISTBOX has index 443
# Defs - Begin unit SYNAFPC has index 541
# Defs - End unit SYNAFPC has index 541
# Defs - Begin unit SOCKETS has index 546
# Defs - End unit SOCKETS has index 546
# Defs - Begin unit NETDB has index 547
# Defs - End unit NETDB has index 547
# Defs - Begin unit SYNSOCK has index 542
# Defs - End unit SYNSOCK has index 542
# Defs - Begin unit SYNAUTIL has index 543
# Defs - End unit SYNAUTIL has index 543
# Defs - Begin unit SYNACODE has index 544
# Defs - End unit SYNACODE has index 544
# Defs - Begin unit SYNAIP has index 545
# Defs - End unit SYNAIP has index 545
# Defs - Begin unit BLCKSOCK has index 444
# Defs - End unit BLCKSOCK has index 444
# Defs - Begin unit RESDATASTREAM has index 551
# Defs - End unit RESDATASTREAM has index 551
# Defs - Begin unit RESFACTORY has index 554
# Defs - End unit RESFACTORY has index 554
# Defs - Begin unit RESOURCETREE has index 552
# Defs - End unit RESOURCETREE has index 552
# Defs - Begin unit STRINGTABLERESOURCE has index 555
# Defs - End unit STRINGTABLERESOURCE has index 555
# Defs - Begin unit ICOCURTYPES has index 559
# Defs - End unit ICOCURTYPES has index 559
# Defs - Begin unit GROUPRESOURCE has index 558
# Defs - End unit GROUPRESOURCE has index 558
# Defs - Begin unit GROUPICONRESOURCE has index 556
# Defs - End unit GROUPICONRESOURCE has index 556
# Defs - Begin unit GROUPCURSORRESOURCE has index 557
# Defs - End unit GROUPCURSORRESOURCE has index 557
# Defs - Begin unit RESMERGER has index 553
# Defs - End unit RESMERGER has index 553
# Defs - Begin unit RESOURCE has index 548
# Defs - End unit RESOURCE has index 548
# Defs - Begin unit VERSIONCONSTS has index 560
# Defs - End unit VERSIONCONSTS has index 560
# Defs - Begin unit VERSIONTYPES has index 549
# Defs - End unit VERSIONTYPES has index 549
# Defs - Begin unit VERSIONRESOURCE has index 550
# Defs - End unit VERSIONRESOURCE has index 550
# Defs - Begin unit UVERSION has index 25
# Defs - End unit UVERSION has index 25
# Defs - Begin unit USPLASHABOUT has index 445
# Defs - End unit USPLASHABOUT has index 445
# Defs - Begin unit DRILLSIMVARIABLES has index 446
# Defs - End unit DRILLSIMVARIABLES has index 446
# Defs - Begin unit DRILLSIMMESSAGETOMEMO has index 452
# Defs - End unit DRILLSIMMESSAGETOMEMO has index 452
# Defs - Begin unit DRILLSIMUNITSOFMEASURE has index 561
# Defs - End unit DRILLSIMUNITSOFMEASURE has index 561
# Defs - Begin unit SIMULATEVOLUMES has index 562
# Defs - End unit SIMULATEVOLUMES has index 562
# Defs - Begin unit SIMULATERAMS has index 455
# Defs - End unit SIMULATERAMS has index 455
# Defs - Begin unit SIMULATEHOLECALCS has index 456
# Defs - End unit SIMULATEHOLECALCS has index 456
# Defs - Begin unit DOS has index 563
# Defs - End unit DOS has index 563
# Defs - Begin unit DRILLSIMUTILITIES has index 450
# Defs - End unit DRILLSIMUTILITIES has index 450
# Defs - Begin unit SIMULATEUPDATE has index 454
# Defs - End unit SIMULATEUPDATE has index 454
# Defs - Begin unit DRILLSIMDATARESETS has index 449
# Defs - End unit DRILLSIMDATARESETS has index 449
# Defs - Begin unit DRILLSIMHOLECHECKS has index 451
# Defs - End unit DRILLSIMHOLECHECKS has index 451
# Defs - Begin unit DRILLSIMMATH has index 564
# Defs - End unit DRILLSIMMATH has index 564
# Defs - Begin unit SIMULATEDRILLINGCALCS has index 458
# Defs - End unit SIMULATEDRILLINGCALCS has index 458
# Defs - Begin unit DRILLSIMFILE has index 448
# Defs - End unit DRILLSIMFILE has index 448
# Defs - Begin unit DRILLSIMSTARTUP has index 447
# Defs - End unit DRILLSIMSTARTUP has index 447
# Defs - Begin unit FORMCONFIGDEFAULTS has index 15
# Defs - End unit FORMCONFIGDEFAULTS has index 15
# Defs - Begin unit FORMUNITSOFMEASURE has index 24
# Defs - End unit FORMUNITSOFMEASURE has index 24
# Defs - Begin unit FORMDISPLAYWELLDATA has index 23
# Defs - End unit FORMDISPLAYWELLDATA has index 23
# Defs - Begin unit FORMGENERALDATA has index 13
# Defs - End unit FORMGENERALDATA has index 13
# Defs - Begin unit FORMHOLEDATA has index 14
# Defs - End unit FORMHOLEDATA has index 14
# Defs - Begin unit FORMPIPEDATA has index 16
# Defs - End unit FORMPIPEDATA has index 16
# Defs - Begin unit FORMBITDATA has index 17
# Defs - End unit FORMBITDATA has index 17
# Defs - Begin unit FORMMUDDATA has index 22
# Defs - End unit FORMMUDDATA has index 22
# Defs - Begin unit FORMPUMPDATA has index 18
# Defs - End unit FORMPUMPDATA has index 18
# Defs - Begin unit FORMSURFACEEQUIPMENTDATA has index 19
# Defs - End unit FORMSURFACEEQUIPMENTDATA has index 19
# Defs - Begin unit FORMWELLTESTDATA has index 20
# Defs - End unit FORMWELLTESTDATA has index 20
# Defs - Begin unit FORMGEOLOGYDATA has index 21
# Defs - End unit FORMGEOLOGYDATA has index 21
# Defs - Begin unit SIMULATEHYDROSTATICCALCS has index 565
# Defs - End unit SIMULATEHYDROSTATICCALCS has index 565
# Defs - Begin unit SIMULATECOMMANDPROCESSOR has index 453
# Defs - End unit SIMULATECOMMANDPROCESSOR has index 453
# Defs - Begin unit SIMULATERHEOLOGY has index 566
# Defs - End unit SIMULATERHEOLOGY has index 566
# Defs - Begin unit SIMULATEHYDRAULICCALCS has index 457
# Defs - End unit SIMULATEHYDRAULICCALCS has index 457
# Defs - Begin unit SIMULATEKICK has index 459
# Defs - End unit SIMULATEKICK has index 459
# Defs - Begin unit DRILLSIMGUI has index 12
# Defs - End unit DRILLSIMGUI has index 12
# Defs - Begin unit SYSINIT has index 567
# Defs - End unit SYSINIT has index 567
# Defs - Begin Staticsymtable
# Definition ^^Char
La3:
	.byte	8
	.long	L$set$9
	.set L$set$9,La6-Ldebug_info0
La4:
	.byte	7
	.long	L$set$10
	.set L$set$10,La3-Ldebug_info0
# Defs - End Staticsymtable
# Definition ^Char
La6:
	.byte	5
	.ascii	"char_pointer\000"
	.long	L$set$11
	.set L$set$11,La8-Ldebug_info0
La8:
	.byte	8
	.long	L$set$12
	.set L$set$12,La9-Ldebug_info0
La7:
	.byte	7
	.long	L$set$13
	.set L$set$13,La6-Ldebug_info0
# Definition Char
La9:
	.byte	5
	.ascii	"CHAR\000"
	.long	L$set$14
	.set L$set$14,La11-Ldebug_info0
La11:
	.byte	6
	.ascii	"Char\000"
	.byte	8
	.byte	1
La10:
	.byte	7
	.long	L$set$15
	.set L$set$15,La9-Ldebug_info0
	.byte	0
Ledebug_info0:
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev

.section __DWARF,__debug_abbrev,regular,debug
# Abbrev 1
	.byte	1
	.byte	17
	.byte	1
	.byte	3
	.byte	8
	.byte	37
	.byte	8
	.byte	27
	.byte	8
	.byte	19
	.byte	11
	.byte	66
	.byte	11
	.byte	16
	.byte	6
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
# Abbrev 2
	.byte	2
	.byte	46
	.byte	1
	.byte	3
	.byte	8
	.byte	39
	.byte	12
	.byte	63
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
# Abbrev 3
	.byte	3
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	2
	.byte	10
	.byte	73
	.byte	19
	.byte	0
	.byte	0
# Abbrev 4
	.byte	4
	.byte	46
	.byte	1
	.byte	3
	.byte	8
	.byte	39
	.byte	12
	.byte	54
	.byte	11
	.byte	63
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
# Abbrev 5
	.byte	5
	.byte	22
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	0
	.byte	0
# Abbrev 6
	.byte	6
	.byte	36
	.byte	0
	.byte	3
	.byte	8
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
# Abbrev 7
	.byte	7
	.byte	16
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
# Abbrev 8
	.byte	8
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	0
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line

.section __DWARF,__debug_line,regular,debug
# === header start ===
	.long	L$set$16
	.set L$set$16,Ledebug_line0-Lf2
Lf2:
	.short	2
	.long	L$set$17
	.set L$set$17,Lehdebug_line0-Lf3
Lf3:
	.byte	1
	.byte	1
	.byte	1
	.byte	255
	.byte	13
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
# include_directories
	.byte	0
# file_names
	.ascii	"DrillSim3.lpr\000"
	.byte	0
	.byte	0
	.byte	0
	.byte	0
Lehdebug_line0:
# === header end ===
# function: _main
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll1
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: _PASCALMAIN
# [33:1]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll2
	.byte	5
	.byte	1
	.byte	44
# [35:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll3
	.byte	5
	.byte	3
	.byte	14
# [37:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll4
	.byte	14
# [38:21]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll5
	.byte	5
	.byte	21
	.byte	13
# [39:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll6
	.byte	5
	.byte	3
	.byte	13
# [42:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll7
	.byte	15
# [43:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll8
	.byte	13
# [44:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll9
	.byte	13
# [45:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll10
	.byte	13
# [46:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll11
	.byte	13
# [47:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll12
	.byte	13
# [48:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll13
	.byte	13
# [49:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll14
	.byte	13
# [50:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll15
	.byte	13
# [51:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll16
	.byte	13
# [52:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll17
	.byte	13
# [53:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll18
	.byte	13
# [54:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll19
	.byte	13
# [55:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll20
	.byte	13
# [56:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll21
	.byte	13
# [59:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll22
	.byte	15
# [60:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll23
	.byte	13
# [61:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll24
	.byte	13
# [62:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll25
	.byte	13
# [63:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll26
	.byte	13
# [64:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll27
	.byte	13
# [65:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll28
	.byte	13
# [66:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll29
	.byte	13
# [67:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll30
	.byte	13
# [68:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll31
	.byte	13
# [69:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll32
	.byte	13
# [70:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll33
	.byte	13
# [71:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll34
	.byte	13
# [72:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll35
	.byte	13
# [73:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll36
	.byte	13
# [75:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll37
	.byte	14
# [77:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll38
	.byte	14
# [78:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll39
	.byte	13
# [79:3]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll40
	.byte	13
# [83:1]
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll41
	.byte	5
	.byte	1
	.byte	16
	.byte	0
	.byte	9
	.byte	2
	.quad	Ll42
	.byte	0
	.byte	1
	.byte	1
# ###################
Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.text
L_DEBUGEND_$P$DRILLSIM3:
# End asmlist al_end
	.subsections_via_symbols

