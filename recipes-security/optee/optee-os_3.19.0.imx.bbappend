# i.MX8MP SolidRun Boards support RPMB on mmc2
# rpmb-fs access require avb TA
EXTRA_OEMAKE:append:imx8mpsolidrun = " CFG_RPMB_FS=y CFG_RPMB_FS_DEV_ID=2 IN_TREE_EARLY_TAS=avb/023f8f1a-292a-432b-8fc4-de8471358067 "
