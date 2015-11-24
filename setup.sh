#https://tr.im/rgarD
#https://goo.gl/5EgzWd
#http://bit.ly/1XniIfV
curl -L https://github.com/raghavgautam/init/archive/master.zip -o /tmp/`whoami`.zip
unzip -o -d /tmp/`whoami`/ /tmp/`whoami`.zip
chmod -R 777 /tmp/`whoami`/
mkdir ~/.emacs.d/
rm -rf ~/.emacs.d/lisp
mv /tmp/`whoami`/init-master/* /tmp/`whoami`/init-master/.[^.]* ~/.emacs.d/
~/.emacs.d/setup.sh
