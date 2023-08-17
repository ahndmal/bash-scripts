echo ">>>> configuring tools"

source atlas-b/sdk.sh

source cli/configureZSH.sh

echo ">>> installing Cloud tools"
source cloud-native/pack=cli.sh

source frame/helidon=cli.sh

source tools/sdkman.sh

echo ">>> installing PLs"
source lang/cpp.sh
source lang/lua.sh
source lang/rust.sh

echo ">>> installing HTTP tools"

source net/http-tools.sh

source docker.sh
source fira-code-font.sh
