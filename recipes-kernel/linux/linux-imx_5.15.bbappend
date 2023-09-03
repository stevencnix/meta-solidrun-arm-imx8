FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
PATCHTOOL = "git"
KBUILD_DEFCONFIG_mx8 = ""
SRC_URI += " \
	file://sr_imx_v8_defconfig \
	file://0001-gpio-vf610-Fix-missing-include-for-pinctrl_.patch \
	file://0002-drm-bridge-it6161-Build-fix-for-a10ae796.patch \
	file://0003-ASoC-SOF-Add-missing-include-for-arm_smccc_smc.patch \
	file://0004-regulator-pca9450-Add-dt-property-pca-i2c-lt-en.patch \
	file://0005-net-rfkill-gpio-add-device-tree-support.patch \
	file://0006-regulator-userspace-consumer-add-DT-support.patch \
	file://0007-ARM64-dts-imx8mp-Add-SolidRun-iMX8MP-SOM-based-platf.patch \
	file://0008-Move-M.2-PCIe-reset-from-M.2-rfkill-to-PCIe-node.patch \
	file://0009-arm64-dts-imx8mp-hummingboard-pulse-add-separate-dtb.patch \
	file://0010-arm64-dts-imx8mp-hummingboard-pulse-swap-m.2-reset-a.patch \
	file://0011-arm64-dts-imx8mp-sr-som-add-second-ethernet-phy.patch \
	file://0012-arm64-dts-add-support-for-imx8mp-hummingboard-extend.patch \
	file://0013-arm64-dts-split-pcie-reset-signals-for-hb-pulse-and-.patch \
"

KERNEL_MODULE_AUTOLOAD += "imx-sdma"
FILES_${PN} += " \
	${sysconfdir}/modules-load.d/imx-sdma.conf \
	file://sr_imx_v8_defconfig \
"
DELTA_KERNEL_DEFCONFIG:append:mx8-nxp-bsp = " imx_v8_defconfig sr_imx_v8_defconfig"
