# Copyright © 2020, Oracle and/or its affiliates.
# The Universal Permissive License (UPL), Version 1.0

### Authentication details
$env:TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaax7tm7jtfarexna447cmubjxwou6lug42jss2ddyis63wqo3lrpda"
$env:TF_VAR_user_ocid="ocid1.user.oc1..aaaaaaaa7mxobrpfxmarv2co6c673yvdglqzbnxaymxjz3itvtxoqcxadnzq"
$env:TF_VAR_fingerprint="b4:d0:21:fc:e7:74:61:fd:16:5d:75:ed:d0:f6:67:78"
$env:TF_VAR_private_key_path="C:\Users\sreejith_b\.oci\key_name.pem"
#
#### Region
# export TF_VAR_region="<region in which to operate, example: us-ashburn-1, us-phoenix-1, ap-seoul-1, ap-tokyo-1, ca-toronto-1>"
$env:TF_VAR_region="us-sanjose-1"
#
#### Compartment
$env:TF_VAR_compartment_ocid="ocid1.compartment.oc1..aaaaaaaauiq74grhbq2n7pcjuvrkad5alaaj63dsrtcudefa7uvdwoo3kqpa"
#
#### Public key used on the bastion host
#$env:TF_VAR_ssh_public_key=$(cat C:\Users\sreejith_b\.oci\key_name_public.pem)
$env:TF_VAR_ssh_public_key=$(Get-Content C:\Users\sreejith_b\.oci\key_name_public.pem)
#
#### Private key used on the compute and database instance
#$env:TF_VAR_ssh_private_key=$(cat C:\Users\sreejith_b\.oci\key_name.pem)
$env:TF_VAR_ssh_private_key=$(Get-Content C:\Users\sreejith_b\.oci\key_name.pem)

$env:TF_LOG=DEBUG OCI_GO_SDK_DEBUG=v terraform plan