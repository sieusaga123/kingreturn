wget https://us.download.nvidia.com/tesla/450.51.06/nvidia-driver-local-repo-ubuntu1804-450.51.06_1.0-1_amd64.deb
sudo dpkg -i nvidia-driver-local-repo-ubuntu1804-450.51.06_1.0-1_amd64.deb
sudo apt-key add /var/nvidia-driver-local-repo-450.51.06/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda-drivers --allow-unauthenticated
sudo apt-get install gcc g++ build-essential libssl-dev automake linux-headers-$(uname -r) git gawk libcurl4-openssl-dev libjansson-dev xorg libc++-dev libgmp-dev python-dev -y
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda-repo-ubuntu1804-11-0-local_11.0.3-450.51.06-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-11-0-local_11.0.3-450.51.06-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu1804-11-0-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
sudo apt-get install libcurl3 -y
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.16.1/ethminer-0.16.1-linux-x86_64.tar.gz
tar xvzf ethminer-0.16.1-linux-x86_64.tar.gz
cd  bin
./ethminer -U -P stratum://0xBAC4787497Ac1fcf37510EB2362F91FDc87f3519.aws@us2.ethermine.org:4444
