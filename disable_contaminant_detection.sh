#!/vendor/bin/sh

for f in /sys/devices/platform/53f1000.spmi/spmi-*/*-04; do
  if [ -d $f ]; then
    echo 0 > $f/contaminant_detection;
  fi
done
