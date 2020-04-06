FROM gitpod/workspace-full
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# More information: https://www.gitpod.io/docs/config-docker/

RUN sudo apt-get update && \
    git clone https://github.com/flutter/flutter.git -b beta && \
    ./flutter/bin/flutter doctor && \
    ./flutter/bin/flutter config --enable-web && \
    echo "export PATH=\"\$PATH:$PWD/flutter/bin\"" >> $HOME/.bashrc && \
    sudo rm -rf /var/lib/apt/lists/*