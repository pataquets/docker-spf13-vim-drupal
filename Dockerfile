FROM pataquets/spf13-vim

ADD .vimrc.fork /root/
ADD .vimrc.bundles.fork /root/

RUN \
  mkdir -vp /src && \
  sed -i 's/amirh\/HTML-AutoCloseTag/vim-scripts\/HTML-AutoCloseTag/g' \
    /root/.vimrc.bundles && \
  grep "vim-scripts/HTML-AutoCloseTag" /root/.vimrc.bundles && \
  vim "+set nomore" "+BundleInstall" "+BundleClean" "+qall"

ENTRYPOINT [ "vim" ]
CMD [ "/src/" ]
