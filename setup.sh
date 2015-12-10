#curl -L http://git.io/vB5Sa | bash
curl -L https://github.com/raghavgautam/init/archive/master.zip -o /tmp/`whoami`.zip
unzip -o -d /tmp/`whoami`/ /tmp/`whoami`.zip
chmod -R 777 /tmp/`whoami`/
mkdir ~/.emacs.d/
rm -rf ~/.emacs.d/lisp
mv /tmp/`whoami`/init-master/* /tmp/`whoami`/init-master/.[^.]* ~/.emacs.d/
~/.emacs.d/setup.sh

#install packages
ME=`whoami`
PKGS="emacs screen tree git tmux"
if [ "$ME" == "root" ]; then
    if hash yum 2>/dev/null; then
        yum -y install $PKGS
    elif hash apt-get 2>/dev/null; then
        apt-get -y install $PKGS
    elif hash zypper 2>/dev/null; then
        if [ -f "/etc/SuSE-release" ]; then
            zypper addrepo -n -f http://download.opensuse.org/distribution/11.4/repo/oss/ oss
        fi
        zypper --no-gpg-checks -n install $PKGS
    else
        echo "unknown package manager"
    fi
else
    echo "not installing anything"
fi
