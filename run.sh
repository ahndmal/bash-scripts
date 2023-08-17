echo ">>>> \u001b[36mconfiguring tools\u001b[0m"

source atlas-b/sdk.sh

source cli/configureZSH.sh

echo ">>> \u001b[36minstalling Cloud tools\u001b[0m"
source cloud-native/pack=cli.sh

source frame/helidon-cli.sh

source tools/sdkman.sh
source tools/pyenv.sh
source tools/nvm_nodejs.sh

echo "\u001b[35m>>> installing PLs\u001b[0m"
source lang/cpp.sh
source lang/lua.sh
source lang/rust.sh

echo ">>> installing HTTP tools\u001b[0m"

source net/http-tools.sh

source docker.sh
source fira-code-font.sh

echo "#######################################################"
echo ">>>> \u001b[32mFinished installation!\u001b[0m"
