
URL_PREFIX="https://d37ci6vzurychx.cloudfront.net/trip-data"
SERVICE_TYPE=$1 #"yellow"
YEAR=$2 #2020
LOCAL_DIR="tmp-data/raw"
mkdir -p ${LOCAL_DIR}
for MONTH in {1..12}; do
    S_MONTH=`printf "%02d" ${MONTH}`
    URL=${URL_PREFIX}/${SERVICE_TYPE}_tripdata_${YEAR}-${S_MONTH}.parquet
    LOCAL_FILE=${LOCAL_DIR}/${SERVICE_TYPE}_tripdata_${YEAR}-${S_MONTH}.parquet    
    echo downloading ${YEAR} ${S_MONTH}
    wget ${URL} -O ${LOCAL_FILE}
done
