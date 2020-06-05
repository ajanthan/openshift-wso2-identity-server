thisdir=$(dirname ${BASH_SOURCE[0]})
init_data_file=$(readlink -f ${thisdir}/../data/init.sql)

psql -U $POSTGRESQL_USER -d $POSTGRESQL_DATABASE -f $init_data_file
