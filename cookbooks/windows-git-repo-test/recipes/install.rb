#
# Cookbook:: windows-git-repo-test
# Recipe:: install
#
# Copyright:: 2018, The Authors, All Rights Reserved.
batch 'git clone test repo' do
  code <<-EOH
    git clone https://github.com/conor123/ubuntuBootstrap.git
    echo %SYSTEMDRIVE%
    echo %PATH%
    echo %WINDIR%
    echo %TEMP%
    cd
  EOH
end