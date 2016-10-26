user_data: make_multipart_user_data \
                  VMCondor_comments          \
                  VMCondor_cloud-config      \
                  VMCondor_ucernvm           \
                  VMCondor_shellscript
	cat VMCondor_cloud-config *.write_files > cloud-config ; \
	  ./make_multipart_user_data          \
             VMCondor_comments:comment          \
             cloud-config:cloud-config        \
             VMCondor_ucernvm:ucernvm           \
             VMCondor_shellscript:x-shellscript \
             > user_data
