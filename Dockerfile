FROM minaprotocol/mina-daemon:1.3.0-9b0369c-bullseye-mainnet

RUN apt update -y && \
    apt install -y vim \
                   tmux \
                   htop \
			       mina-generate-keypair=1.3.0-9b0369c
				
RUN mkdir /mina
WORKDIR /mina

RUN mkdir /mina/keys
RUN chmod 700 /mina/keys

COPY .mina-env .mina-env
				
ENTRYPOINT ["bash"]