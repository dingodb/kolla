NEXUS_URL="https://nexus.dev01.zetyun.cn"
NEXUS_REPO="raw/dingostack/ovs-dpkg/ovs-dpkg-2023.2"
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
  echo "Downloading package: $package"
  curl -u ${NEXUS_USER}:${NEXUS_PASSWORD} -O ${NEXUS_URL}/repository/${NEXUS_REPO}/${package}
done
