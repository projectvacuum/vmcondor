vacuum_user_data: make_multipart_user_data \
                  vacuum_comments          \
                  vacuum_cloud-config      \
                  vacuum_ucernvm           \
                  vacuum_shellscript
	./make_multipart_user_data           \
            vacuum_comments:comment          \
            vacuum_cloud-config:cloud-config \
            vacuum_ucernvm:ucernvm           \
            vacuum_shellscript:x-shellscript \
            > vacuum_user_data
