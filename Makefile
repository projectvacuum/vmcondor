user_data: make_multipart_user_data          \
                  VMCondor_comments          \
                  VMCondor_cloud-config      \
                  VMCondor_ucernvm           \
                  VMCondor_shellscript
	cat VMCondor_cloud-config *.write_files > tmp_cloud-config ; \
	  ./make_multipart_user_data            \
             VMCondor_comments:comment          \
             tmp_cloud-config:cloud-config      \
             VMCondor_ucernvm:ucernvm           \
             VMCondor_shellscript:x-shellscript \
             > user_data
