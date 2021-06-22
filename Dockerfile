FROM alpine

ENV UID="1000" \
    UNAME="developer" \
    GID="1000" \
    GNAME="developer" \
    SHELL="/bin/bash" \
    UHOME=/home/developer


ARG DEBIAN_FRONTEND=noninteractive

RUN apk update && apk upgrade && \
		apk add --upgrade neovim git curl editorconfig ctags sudo bash fzf && \
		apk --no-cache --update add build-base && \
		apk add --upgrade nodejs npm && \
		npm install --global yarn && \
		apk add --upgrade ripgrep

# Create HOME dir
RUN mkdir -p "${UHOME}" \
    && chown "${UID}":"${GID}" "${UHOME}" \
# Create user
    && echo "${UNAME}:x:${UID}:${GID}:${UNAME},,,:${UHOME}:${SHELL}" \
    >> /etc/passwd \
    && echo "${UNAME}::17032:0:99999:7:::" \
    >> /etc/shadow \
# No password sudo
    && echo "${UNAME} ALL=(ALL) NOPASSWD: ALL" \
    > "/etc/sudoers.d/${UNAME}" \
    && chmod 0440 "/etc/sudoers.d/${UNAME}" \
# Create group
    && echo "${GNAME}:x:${GID}:${UNAME}" \
    >> /etc/group


USER $UNAME
		
		#create nvim directories
RUN mkdir -p $UHOME/.config/nvim/autoload $UHOME/workspace && \
    #installation vim plug
		sudo curl -fLo $UHOME/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

			#copy local files to container
COPY	plugins.vim $UHOME/.config/nvim/vim-plug/plugins.vim


COPY	init.vim $UHOME/.config/nvim/init.vim
COPY	entrypoint.sh /usr/local/bin


RUN nvim +PlugInstall +qall

ENTRYPOINT ["bash", "/usr/local/bin/entrypoint.sh"]

