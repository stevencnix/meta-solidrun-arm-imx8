# disable rpmb emulation as machine supports real rpmb
EXTRA_OECMAKE:append:imx8mpsolidrun = " -DRPMB_EMU=0 "
