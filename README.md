NOTE: Only Respeaker 4-Mic Array (one codec instance at a time) is verified on Jetson platform with the help of this driver


Steps for compiling the codec driver with JEtson kernel

1. Add following lines to sound/soc/codecs/Kconfig

config SND_SOC_AC108_CODEC
       tristate
       default y


2. Add following lines to sound/soc/codecs/Makefile

snd-soc-ac108-objs := ac101.o ac108.o
obj-$(CONFIG_SND_SOC_AC108_CODEC)       += snd-soc-ac108.o


3. Copy following files from this repo to sound/soc/codecs

ac108.h
ac108.c
ac101.c
ac101_regs.h
ac10x.h
sound-compatible-4.18.h

Recompile kernel and update
(Links from Internet: https://developer.ridgerun.com/wiki/index.php?title=Jetson_Nano/Development/Building_the_Kernel_from_Source)
