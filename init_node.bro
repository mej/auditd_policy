# This policy should be loaded on to the cluster node
# which is responsable for processing the raw
# isshd data stream. If the policy is not loaded, the
# input framework will not open the file.
#
# To load, modify the etc/node.cfg so by adding the "aux_scripts"
# directive. For example:
#
# [auditd]
# type=worker
# host=sigma-n
# aux_scripts="auditd_policy/init_node"
#
redef AUDITD_IN_STREAM::DATANODE = T;
redef AUDITD_IN_STREAM::data_file = "/home/bro/logs/AUDIT/data";
