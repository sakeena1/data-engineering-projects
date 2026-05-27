echo -n itversity > /home/itv023283/passfile

sqoop import \
-Dmapreduce.job.user.classpath.first=true \
--connect jdbc:mysql://ms.itversity.com/nyse_export \
--username nyse_user \
--password-file file:///home/itv023283/passfile \
-m 1 \
--table customer_src_itv023283 \
--target-dir /user/itv023283/customer_stage_loc \
--incremental append \
--check-column id \
--last-value 0 \
--as-avrodatafile
