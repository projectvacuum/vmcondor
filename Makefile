
all: ATLAS.user_data ALICE.user_data \
     IRIS.user_data \
     vmcondor_cernvm3.user_data

VMCONDOR_FILES=make_multipart_user_data      \
                  VMCondor_comments          \
                  VMCondor_condor            \
                  VMCondor_cloud-config      \
                  VMCondor_ucernvm           \
                  VMCondor_shellscript

ATLAS.user_data: ATLAS.write_files ATLAS.condor $(VMCONDOR_FILES)
	./make_VMCondor_user_data ATLAS

ALICE.user_data: ALICE.condor $(VMCONDOR_FILES)
	./make_VMCondor_user_data ALICE

IRIS.user_data: IRIS.condor $(VMCONDOR_FILES)
	./make_VMCondor_user_data IRIS

vmcondor_cernvm3.user_data: vmcondor_cernvm3.condor $(VMCONDOR_FILES)
	./make_VMCondor_user_data vmcondor_cernvm3

