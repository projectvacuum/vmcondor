user_data: make_multipart_user_data \
                  HTCvcm_comments          \
                  HTCvcm_cloud-config      \
                  HTCvcm_ucernvm           \
                  HTCvcm_shellscript
	cat HTCvcm_cloud-config *.write_files > cloud-config ; \
	  ./make_multipart_user_data          \
             HTCvcm_comments:comment          \
             cloud-config:cloud-config        \
             HTCvcm_ucernvm:ucernvm           \
             HTCvcm_shellscript:x-shellscript \
             > user_data
