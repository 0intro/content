#!/bin/bash
# packages = authselect,pam
# platform = Oracle Linux 8,Oracle Linux 9,Red Hat Enterprise Linux 8,Red Hat Enterprise Linux 9

source common.sh

for file in ${pam_files[@]}; do
    echo "auth required pam_faillock.so preauth  audit" >> "$CUSTOM_PROFILE_DIR/$file"
done

authselect apply-changes
