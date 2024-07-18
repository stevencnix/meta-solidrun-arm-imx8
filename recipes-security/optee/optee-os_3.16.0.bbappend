# i.MX8MP SolidRun Boards support optee-os like imx8mpevk
COMPATIBLE_MACHINE:imx8mpsolidrun = "imx8mpsolidrun"
OPTEEMACHINE:imx8mpsolidrun = "imx-mx8mpevk"

# i.MX8MP SolidRun Boards support RPMB on mmc2
# rpmb-fs access require avb TA
# ree-fs is disabled to avoid ftpm getting confused
EXTRA_OEMAKE:append:imx8mpsolidrun = " CFG_REE_FS=n CFG_RPMB_FS=y CFG_RPMB_FS_DEV_ID=2 IN_TREE_EARLY_TAS=avb/023f8f1a-292a-432b-8fc4-de8471358067 "
