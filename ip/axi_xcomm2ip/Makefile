####################################################################################
####################################################################################

M_DIR := $(shell pwd)

export ADI_HDL_DIR := $(M_DIR)/../../hdl
export ADI_PHDL_DIR := $(M_DIR)../../hdl

M_DEPS += $(ADI_HDL_DIR)/library/scripts/adi_env.tcl
M_DEPS += $(ADI_HDL_DIR)/library/scripts/adi_ip.tcl
M_DEPS += $(ADI_HDL_DIR)/library/common/ad_mem.v
M_DEPS += $(ADI_HDL_DIR)/library/common/ad_rst.v
M_DEPS += $(ADI_HDL_DIR)/library/common/up_axi.v
M_DEPS += axi_xcomm2ip_constr.xdc
M_DEPS := axi_xcomm2ip_ip.tcl
M_DEPS += axi_xcomm2ip.v

M_VIVADO := vivado -mode batch -source

M_FLIST := *.cache
M_FLIST := *.hw
M_FLIST := *.ip_user_files
M_FLIST += *.data
M_FLIST += *.xpr
M_FLIST += *.log
M_FLIST += component.xml
M_FLIST += *.jou
M_FLIST +=  xgui
M_FLIST += .Xil



.PHONY: all clean clean-all
all: axi_xcomm2ip.xpr


clean:clean-all


clean-all:
	rm -rf $(M_FLIST)


axi_xcomm2ip.xpr: $(M_DEPS)
	rm -rf $(M_FLIST)
	$(M_VIVADO) axi_xcomm2ip_ip.tcl  >> axi_xcomm2ip_ip.log 2>&1

####################################################################################
####################################################################################
