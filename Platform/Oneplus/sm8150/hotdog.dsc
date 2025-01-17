[Defines]
  VENDOR_NAME                    = Oneplus
  PLATFORM_NAME                  = hotdog
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sm8150/sm8150.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Oneplus/sm8150/hotdog.fdf.inc

!include Platform/Qualcomm/sm8150/sm8150.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE

[PcdsFixedAtBuild.common]
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2400

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|402

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"OnePlus"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"7T"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"hotdogb"

  gsm8150PkgTokenSpaceGuid.PcdSmbiosProcessorModel|"Snapdragon (TM) 855 Plus @ 2.96 GHz"
