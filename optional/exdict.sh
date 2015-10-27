#!/bin/bash

if [ ! -d ~/repos/external/exdict ]; then
  git clone http://github.com/gesinger/exdict ~/repos/external/exdict
  cd ~/repos/external/exdict
  sh generate_webster_1913_csv.sh
  printf "#!/bin/bash\npython ~/repos/external/exdict/exdict.py \$1" > ~/bin/exdict
  chmod +x ~/bin/exdict
  cd -
fi
