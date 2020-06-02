#Usage: patch.sh  <absolute_path_to_public_sources.tbz2> <name_of_working_directory> <absolute_path_to_patch_file>
#Example:  bash seeed-voicecard/patch.sh "/media/atalambedu/code2/public_sources.tbz2" "public_source_r32.4.2/" "/media/atalambedu/code2/seeed-voicecard/nano_tx1_BSP32.4.2.patch"
sources_pkg=$1
sources_dir=$2
patch=$3

mkdir $sources_dir

cp $sources_pkg $sources_dir

cd $sources_dir
tar xjf  public_sources.tbz2
cd Linux_for_Tegra/source/public
tar xjf kernel_src.tbz2

cd ../../../
patch -p1 < $patch
