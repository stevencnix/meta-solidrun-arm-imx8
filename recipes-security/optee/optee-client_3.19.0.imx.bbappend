# disable rpmb emulation as machine supports real rpmb
EXTRA_OEMAKE:append:imx8mpsolidrun = " RPMB_EMU=0 "
