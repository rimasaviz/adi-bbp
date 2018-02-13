####################################################################################
####################################################################################

M_DIR := $(shell pwd)

export ADI_HDL_DIR := $(M_DIR)/../hdl
export ADI_PHDL_DIR := $(M_DIR)/../hdl
export ADI_IGNORE_VERSION_CHECK := 1

M_DEPS += $(ADI_HDL_DIR)/projects/scripts/adi_env.tcl
M_DEPS += $(ADI_HDL_DIR)/projects/scripts/adi_board.tcl
M_DEPS += $(ADI_HDL_DIR)/projects/scripts/adi_project.tcl
M_DEPS += $(ADI_HDL_DIR)/library/axi_clkgen/axi_clkgen.xpr
M_DEPS += $(ADI_HDL_DIR)/library/axi_hdmi_tx/axi_hdmi_tx.xpr
M_DEPS += $(ADI_HDL_DIR)/library/axi_spdif_tx/axi_spdif_tx.xpr
M_DEPS += $(ADI_HDL_DIR)/library/axi_dmac/axi_dmac.xpr
M_DEPS += $(ADI_HDL_DIR)/library/util_clkdiv/util_clkdiv.xpr
M_DEPS += $(ADI_HDL_DIR)/library/util_cpack/util_cpack.xpr
M_DEPS += $(ADI_HDL_DIR)/library/util_upack/util_upack.xpr
M_DEPS += $(ADI_HDL_DIR)/library/util_rfifo/util_rfifo.xpr
M_DEPS += $(ADI_HDL_DIR)/library/util_wfifo/util_wfifo.xpr
M_DEPS += $(ADI_HDL_DIR)/library/util_tdd_sync/util_tdd_sync.xpr
M_DEPS += $(ADI_HDL_DIR)/library/axi_ad9361/axi_ad9361.xpr
M_DEPS += ../ip/axi_ofdmbbp_tx/axi_ofdmbbp_tx.xpr

M_DEPS += $(ADI_HDL_DIR)/library/xilinx/common/ad_iobuf.v
M_DEPS += $(ADI_HDL_DIR)/projects/fmcomms2/zc706/system_top.v
M_DEPS += $(ADI_HDL_DIR)/projects/fmcomms2/zc706/system_constr.xdc
M_DEPS += $(ADI_HDL_DIR)/projects/fmcomms2/zc706/system_bd.tcl
M_DEPS += $(ADI_HDL_DIR)/projects/fmcomms2/common/fmcomms2_bd.tcl
M_DEPS += $(ADI_HDL_DIR)/projects/common/zc706/zc706_system_constr.xdc
M_DEPS += $(ADI_HDL_DIR)/projects/common/zc706/zc706_system_bd.tcl
M_DEPS += zc706.tcl

M_VIVADO := vivado -mode batch -source
#M_VIVADO := vivado -mode tcl -source

M_FLIST := *.cache
M_FLIST += *.hw
M_FLIST += *.ip_user_files
M_FLIST += *.data
M_FLIST += *.xpr
M_FLIST += *.log
M_FLIST += *.jou
M_FLIST +=  xgui
M_FLIST += *.runs
M_FLIST += *.srcs
M_FLIST += *.sdk
M_FLIST += *.sim
M_FLIST += *.str
M_FLIST += .Xil



.PHONY: all lib clean clean-all
all: lib xcomm2ip_zc706.sdk/system_top.hdf


clean: 
	rm -rf $(M_FLIST)


clean-all:clean
	make -C $(ADI_HDL_DIR)/library/axi_clkgen clean
	make -C $(ADI_HDL_DIR)/library/axi_hdmi_tx clean
	make -C $(ADI_HDL_DIR)/library/axi_spdif_tx clean
	make -C $(ADI_HDL_DIR)/library/axi_dmac clean
	make -C $(ADI_HDL_DIR)/library/util_clkdiv clean
	make -C $(ADI_HDL_DIR)/library/util_cpack clean
	make -C $(ADI_HDL_DIR)/library/util_upack clean
	make -C $(ADI_HDL_DIR)/library/util_rfifo clean
	make -C $(ADI_HDL_DIR)/library/util_wfifo clean
	make -C $(ADI_HDL_DIR)/library/util_tdd_sync clean
	make -C $(ADI_HDL_DIR)/library/axi_ad9361 clean
	make -C ../ip/axi_ofdmbbp_tx clean


xcomm2ip_zc706.sdk/system_top.hdf: $(M_DEPS)
	rm -rf $(M_FLIST)
	$(M_VIVADO) zc706.tcl

#	$(M_VIVADO) zc706.tcl >> zc706_vivado.log 2>&1


lib:
	make -C $(ADI_HDL_DIR)/library/axi_clkgen
	make -C $(ADI_HDL_DIR)/library/axi_hdmi_tx
	make -C $(ADI_HDL_DIR)/library/axi_spdif_tx
	make -C $(ADI_HDL_DIR)/library/axi_dmac
	make -C $(ADI_HDL_DIR)/library/util_clkdiv
	make -C $(ADI_HDL_DIR)/library/util_cpack
	make -C $(ADI_HDL_DIR)/library/util_upack
	make -C $(ADI_HDL_DIR)/library/util_wfifo
	make -C $(ADI_HDL_DIR)/library/util_rfifo
	make -C $(ADI_HDL_DIR)/library/util_tdd_sync
	make -C $(ADI_HDL_DIR)/library/axi_ad9361
	make -C ../ip/axi_ofdmbbp_tx

####################################################################################
####################################################################################
