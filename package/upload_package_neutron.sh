#!/bin/bash
NEXUS_URL="https://nexus.dev01.zetyun.cn"
NEXUS_REPO="raw/dingostack/neutron/neutron-2025.1"
source .env
NEXUS_USER=${NEXUS_USER}
NEXUS_PASSWORD=${NEXUS_PASSWORD}

package_list=(
  "neutron-vpnaas-stable-2025.1.tar.gz"
   "networking-generic-switch-stable-2025.1.tar.gz"
   "neutron-dynamic-routing-stable-2025.1.tar.gz"
   "networking-sfc-stable-2025.1.tar.gz"
   "networking-baremetal-stable-2025.1.tar.gz"
   "neutron-stable-2025.1.tar.gz"
   "requirements-stable-2025.1.tar.gz"
)

for package in "${package_list[@]}"; do
  echo "Uploading package: $package"
  #   echo curl -u ${NEXUS_USER}:${NEXUS_PASSWORD} -X PUT "${NEXUS_URL}/repository/${NEXUS_REPO}/${package}" -T ${package}
  curl -u ${NEXUS_USER}:${NEXUS_PASSWORD} -X PUT "${NEXUS_URL}/repository/${NEXUS_REPO}/${package}" -T ${package}
done

