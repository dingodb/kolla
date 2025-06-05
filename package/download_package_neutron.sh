NEXUS_URL="https://nexus.dev01.zetyun.cn"
NEXUS_REPO="raw/dingostack/neutron/neutron-2023.2"
source .env
NEXUS_USER=${NEXUS_USER}
NEXUS_PASSWORD=${NEXUS_PASSWORD}

package_list=(
  "neutron-vpnaas-stable-2023.2.tar.gz"
   "networking-generic-switch-stable-2023.2.tar.gz"
   "neutron-dynamic-routing-stable-2023.2.tar.gz"
   "networking-sfc-stable-2023.2.tar.gz"
   "networking-baremetal-stable-2023.2.tar.gz"
   "neutron-stable-2023.2.tar.gz"
)

for package in "${package_list[@]}"; do
  echo "Downloading package: $package"
  curl -u ${NEXUS_USER}:${NEXUS_PASSWORD} -O ${NEXUS_URL}/repository/${NEXUS_REPO}/${package}
done
