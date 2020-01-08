echo "1. setup env"
cp -r .vim .vimrc .bashrc ~/
source ~/.bashrc

echo "2. install system requriments"
yum install -y gcc openssl-devel bzip2-devel libffi-devel sqlite-devel openssl-devel mysql-devel libcap-devel git vim

echo "3. install python"
wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
tar xzf Python-3.8.0.tgz && cd Python-3.8.0
./configure --enable-optimizations
make altinstall
cd -

echo "4. install python requirements"
/usr/local/bin/python3.8 -m pip install -U pip
/usr/local/bin/python3.8 -m pip install -r requirements.txt -i https://pypi.doubanio.com/simple/

echo "5. run supervisor service"
mkdir -p /conf/supervisor
mkdir -p /conf/supervisor/program
cp supervisord.conf /conf/supervisor/
cp supervisord.service /etc/systemd/system/
systemctl enable supervisord.service
systemctl daemon-reload
service supervisord start

