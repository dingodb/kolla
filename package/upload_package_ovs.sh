#!/bin/bash
NEXUS_URL="https://nexus.dev01.zetyun.cn"
NEXUS_REPO="raw/dingostack/ovs-dpkg/ovs-dpkg-2025.1"
source .env
NEXUS_USER=${NEXUS_USER}
NEXUS_PASSWORD=${NEXUS_PASSWORD}

package_list=(
  "dpdk.tar.gz"
  "infiniband.tar.gz"
  "mlx-ofe-so.tar.gz"
  "ovs.tar.gz"
)

for package in "${package_list[@]}"; do
  echo "Uploading package: $package"
  #   echo curl -u ${NEXUS_USER}:${NEXUS_PASSWORD} -X PUT "${NEXUS_URL}/repository/${NEXUS_REPO}/${package}" -T ${package}
  curl -u ${NEXUS_USER}:${NEXUS_PASSWORD} -X PUT "${NEXUS_URL}/repository/${NEXUS_REPO}/${package}" -T ${package}
done
