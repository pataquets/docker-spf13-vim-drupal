FROM pataquets/spf13-vim

ADD .vimrc.fork /root/
ADD .vimrc.bundles.fork /root/

RUN \
  vim "+set nomore" "+PluginInstall" "+PluginClean" "+qall"
