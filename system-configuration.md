---
---

sudo apt install tasksel

sudo tasksel

sudo reboot

sudo apt update && sudo apt upgrade

sudo apt install open-vm-tools

sudo wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null

sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftkey-desktop.list'
sudo apt update
sudo apt install github-desktop

sudo apt install software-properties-common apt-transport-https

sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

ls /etc/apt/sources.list.d
   18  sudo apt-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
   19  sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

   21  sudo apt install code
   22  sudo apt update
   23  sudo apt upgrade


   26  ls ./host:
   27  /usr/bin/vmware-hgfsclient 
   28  /usr/bin/vmware-hgfsclient --help
   29  /usr/bin/vmhgfs-fuse --help
   30  /usr/bin/vmhgfs-fuse /usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs
   31  /usr/bin/vmhgfs-fuse /usr/bin/vmhgfs-fuse .host:/ /home/scott/shares
   32  /usr/bin/vmhgfs-fuse /usr/bin/vmhgfs-fuse .host:/ /home/scott/shares -o subtype=vmhgfs-fust,allow_other
   33  mkdir shares
   34  /usr/bin/vmhgfs-fuse /usr/bin/vmhgfs-fuse .host:/ /home/scott/shares -o subtype=vmhgfs-fust,allow_other
   35  /usr/bin/vmhgfs-fuse .host:/ /home/scott/shares -o subtype=vmhgfs-fust,allow_other
   36  ls shares/
   37  ls
   38  cd shares
   39  ls
   40  cd ..
   41  sudo reboot
   42  ls
   43  rmdir share
   44  rmdir shares
   45  history
   46  sudo /usr/bin/vmhgfs-fuse .host:/ /home/scott/shares -o subtype=vmhgfs-fuse,allow_other
   47  mkdir shares
   48  sudo /usr/bin/vmhgfs-fuse .host:/ /home/scott/shares -o subtype=vmhgfs-fuse,allow_other
   49  sudo reboot
   50  sudo /usr/bin/vmhgfs-fuse .host:/VMWharedLocation/ /home/scott/shares -o subtype=vmhgfs-fuse,allow_other
   51  ls
   52  cd shares
   53  mkdir shares
   54  ls -la
   55  sudo /usr/bin/vmhgfs-fuse --help
   56  sudo /usr/bin/vmhgfs-fuse -e
   57  rmdir shares
   58  sudo reboot
   59  rmdir shares
   60  history
   61  sudo /usr/bin/vmhgfs-fuse .host:/VMSharedLocation/ /home/scott/shares -o subtype=vmhgfs-fuse,allow_other
   62  md shares
   63  mkdir shares
   64  sudo /usr/bin/vmhgfs-fuse .host:/VMSharedLocation/ /home/scott/shares -o subtype=vmhgfs-fuse,allow_other
   65  ls shares
   66  ls
   67  cat shares
   68  ls shares
   69  ls -la
   70  sudo /usr/bin/vmhgfs-fuse -e
   71  sudo /usr/bin/vmhgfs-fuse --help
   72  vmhgfs-fuse 
   73  vmhgfs-fuse .host:/
   74  ls -la
   75  cd /etc/systemd/system/
   76  ls
   77  ls -la
   78  ls snap.lxd.daemon.service 
   79  cat  snap.lxd.daemon.service 
   80  sudo touch /etc/systemd/system/vmware-host-share.service
   81  sudo nano /etc/systemd/system/vmware-host-share.service 
   82  cd ~
   83  ls
   84  rmdir shares
   85  sudo reboot
   86  rmdir shares
   87  mkdir -p shares
   88  sudo systemctl enable vmware-host-share.service 
   89  sudo systemctl status vmware-host-share.service 
   90  sudo nano /etc/systemd/system/vmware-host-share.service 
   91  sudo systemctl enable vmware-host-share.service 
   92  sudo systemctl status vmware-host-share.service 
   93  sudo journalctl -xe
   94  sudo nano /etc/systemd/system/vmware-host-share.service 
   95  sudo systemctl enable vmware-host-share.service 
   96  sudo systemctl status vmware-host-share.service 
   97  sudo journalctl -xe
   98  sudo nano /etc/systemd/system/vmware-host-share.service 
   99  ls shares/
  100  cd /usr/bin/
  101  ls
  102  ls vm*
  103  ls -la vm*
  104  cat vmhgfs-fuse 
  105  journalctl -xe
  106  sudo systemctl list
  107  sudo systemctl --help
  108  history
  109  sudo systemctl enable vmware-host-share.service 
  110  sudo journalctl -xe
  111  sudo systemctl status vmware-host-share.service 
  112  history
  113  sudo nano /etc/systemd/system/vmware-host-share.service 
  114  ls
  115  mkdir -p shared
  116  sudo systemctl status vmware-host-share.service 
  117  sudo systemctl start vmware-host-share.service 
  118  sudo systemctl staatus vm*
  119  sudo systemctl status vm*
  120  sudo nano /etc/systemd/system/vmware-host-share.service 
  121  rm /etc/systemd/system/vmware-host-share.service 
  122  sudo rm /etc/systemd/system/vmware-host-share.service 
  123  sudo systemctl daemon-reload
  124  sudo systemctl reset-failed
  125  ls /etc/systemd/system
  126  ls -la
  127  rmdir shares
  128  history
  129  sudo systemctl status vm*
  130  cd /etc/systemd/
  131  ls
  132  cd system
  133  ls
  134  sudo vmhgfs-fuse .host:/VMwareSharedLocation /mnt/hgfs -o allow_other -o uid=1000
  135  cd ~
  136  sudo vmhgfs-fuse .host:/VMwareSharedLocation shared -o allow_other -o uid=1000
  137  history
  138  sudo apt autoremove open-vm-tools
  139  sudo apt install open-vmtools-desktop
  140  sudo apt install open-vm-tools-desktop
  141  history
  142  code
  143  vmware-toolbox-cmd -v
  144  sudo apt update && sudo apt upgrade
  145  sudo vmhgfs-fuse .host:/VMwareSharedLocation shared -o allow_other -o uid=1000
  146  nano connect-share.sh
  147  ls -la
  148  chmod +x connect-share.sh 
  149  ls -la
  150  cd bin
  151  sudo vmhgfs-fuse .host:/VMwareSharedLocation shared -o allow_other -o uid=1000
  152  pwsh
  153  exit
  154  sudo apt update
  155  sudo apt upgrade
  156  sudo apt install gnome-tweaks
  157  ls
  158  ./connect-share.sh 
  159  history
  160  sudo tasksel
  161  sudo apt update
  162  sudo apt install open-vm-tools-desktop
  163  sudo apt remove open-vm-tools-desktop
  164  sudo apt install open-vm-tools-desktop 
  165  who
  166  exit
  167  pip install boto3
  168  sudo apt install python3-pip
  169  pip install boto3
  170  pip3 install boto3
  171  clear
  172  python s3bucket.py CloudSkills202102
  173  python3 s3bucket.py CloudSkills202102
  174  clear
  175  python3 s3bucket.py CloudSkills202102
  176  clear
  177  python3 s3bucket.py CloudSkills202102
  178  clear
  179  python3 s3bucket.py CloudSkills202102
  180  python3 s3bucket.py CloudSkills20210227
  181  python3 s3bucket.py CloudSkills202102271105
  182  python3 s3bucket.py cloud-skills-202102271105
  183  #
  184  # test
  185  who
  186  pip --version
  187  pip3 --version
  188  aws configure
  189  cd .aws
  190  ls
  191  cat credentials 
  192  aws --help
  193  aws help
  194  aws configure
  195  cd ~
  196  pwsh
  197  pyline
  198  pylint
  199  exit
  200  python3 s3bucket.py cloud-skills-202102271105
  201  pylint
  202  sudo apt update -y && sudo apt upgrade -y
  203  exit
