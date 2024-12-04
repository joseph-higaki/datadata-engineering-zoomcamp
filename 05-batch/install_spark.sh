#!/bin/bash

# Update the package list and install necessary packages
sudo apt-get update

# I should copy the gcp credentials 

# Download and install Anaconda in batch mode
wget https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh -O anaconda.sh
bash anaconda.sh -b -p $HOME/anaconda3
rm anaconda.sh

# Initialize Anaconda
eval "$($HOME/anaconda3/bin/conda shell.bash hook)"
conda init
source ~/.bashrc

# Install Python 3.11
conda install -y python=3.11

# Download and install Java
cd $HOME
wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
tar xzfv openjdk-11.0.2_linux-x64_bin.tar.gz
rm openjdk-11.0.2_linux-x64_bin.tar.gz

# Create the spark directory and navigate into it
mkdir -p $HOME/spark
cd $HOME/spark

# Download and extract Spark
wget https://dlcdn.apache.org/spark/spark-3.4.4/spark-3.4.4-bin-hadoop3.tgz
tar xzfv spark-3.4.4-bin-hadoop3.tgz
rm spark-3.4.4-bin-hadoop3.tgz

# Create the lib directory for Spark and download the GCS Hadoop connector
mkdir -p $HOME/spark/lib
gsutil cp gs://hadoop-lib/gcs/gcs-connector-3.0.4.jar $HOME/spark/lib/

# Set Spark and PySpark environment variables
echo '# Set Spark and PySpark environment variables' >> ~/.bashrc
echo 'export JAVA_HOME="${HOME}/jdk-11.0.2"' >> ~/.bashrc
echo 'export SPARK_HOME="${HOME}/spark/spark-3.4.4-bin-hadoop3"' >> ~/.bashrc
echo 'export PATH="${JAVA_HOME}/bin:${SPARK_HOME}/bin:${PATH}"' >> ~/.bashrc
echo 'export PYTHONPATH="${SPARK_HOME}/python/lib/py4j-0.10.9.7-src.zip:${SPARK_HOME}/python/:$PYTHONPATH"' >> ~/.bashrc
#echo 'export SPARK_JARS="${HOME}/spark/lib/gcs-connector-3.0.4.jar"' >> ~/.bashrc


# Source the updated .bashrc to apply the changes
source ~/.bashrc

echo "PySpark and Java setup is complete!"
