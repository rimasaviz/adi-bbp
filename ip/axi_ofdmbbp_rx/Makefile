####################################################################################
####################################################################################

M_DIR := $(shell pwd)

export ADI_HDL_DIR := $(M_DIR)/../../hdl
export ADI_PHDL_DIR := $(M_DIR)../../hdl
export ADI_IGNORE_VERSION_CHECK := 1

M_DEPS := axi_ofdmbbp_rx_ip.tcl
M_DEPS += $(ADI_HDL_DIR)/library/scripts/adi_env.tcl
M_DEPS += $(ADI_HDL_DIR)/library/scripts/adi_ip.tcl
#M_DEPS += $(ADI_HDL_DIR)/library/common/ad_mem.v
M_DEPS += $(ADI_HDL_DIR)/library/common/ad_rst.v
M_DEPS += $(ADI_HDL_DIR)/library/common/up_axi.v
M_DEPS += axi_ofdmbbp_rx_constr.xdc
M_DEPS += axi_ofdmbbp_rx.v
M_DEPS += FpgaRxWrapper.v
M_DEPS += ../../xilinx-ip/afifo_1024x24W/afifo_1024x24W.xci 
M_DEPS += ../../xilinx-ip/afifo_1024x32W/afifo_1024x32W.xci 
M_DEPS += ../../xilinx-ip/afifo_128x32W/afifo_128x32W.xci 

M_VIVADO := vivado -mode batch -source

M_FLIST := *.cache
M_FLIST += *.hw
M_FLIST += *.ip_user_files
M_FLIST += *.data
M_FLIST += *.xpr
M_FLIST += *.log
M_FLIST += component.xml
M_FLIST += *.jou
M_FLIST +=  xgui
M_FLIST += .Xil



.PHONY: all clean clean-all
all: axi_ofdmbbp_rx.xpr


clean:clean-all


clean-all:
	rm -rf $(M_FLIST)


axi_ofdmbbp_rx.xpr: $(M_DEPS)
	rm -rf $(M_FLIST)
	$(M_VIVADO) axi_ofdmbbp_rx_ip.tcl  >> axi_ofdmbbp_rx_ip.log 2>&1

####################################################################################
####################################################################################
