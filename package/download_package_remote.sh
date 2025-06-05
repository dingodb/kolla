#!/bin/bash
tarballs_base="https://tarballs.opendev.org/openstack"
openstack_branch="stable-2023.2"


package_list=(
  "$tarballs_base/neutron/neutron-${openstack_branch}.tar.gz"
  "$tarballs_base/networking-baremetal/networking-baremetal-${openstack_branch}.tar.gz"
  "$tarballs_base/networking-generic-switch/networking-generic-switch-${openstack_branch}.tar.gz"
  "$tarballs_base/networking-sfc/networking-sfc-${openstack_branch}.tar.gz"
  "$tarballs_base/neutron-vpnaas/neutron-vpnaas-${openstack_branch}.tar.gz"
  "$tarballs_base/neutron-dynamic-routing/neutron-dynamic-routing-${openstack_branch}.tar.gz"
)

for package in "${package_list[@]}"; do
  echo "Downloading package: $package"
  wget --no-check-certificate -c "$package"
done

