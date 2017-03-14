if test ! $(which mpf)
then
    if test "$(uname)" = "Darwin"
    then
        echo "  Installing MPF for you."
        curl -s -O https://mpf.kantert.net/mpf_mac_frameworks.zip
        unzip -a mpf_mac_frameworks.zip
        sudo mv Frameworks/* /Library/Frameworks
        rm Frameworks
        curl -s -O https://www.python.org/ftp/python/3.5.2/python-3.5.2-macosx10.6.pkg
        open python-3.5.2-macosx10.6.pkg
        pip3.5 install pip setuptools cython==0.24.1 --upgrade
        pip3.5 install mpf-mc
    fi
fi

exit 0