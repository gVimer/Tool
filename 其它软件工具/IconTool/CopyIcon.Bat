
SET CLIENT_CODE_PATH="E:\PaiJiu\Client\PJ-MasterBranch\ClientCode"

XCOPY  /S Android\*        %CLIENT_CODE_PATH%"\Game\MixProject\Proj.Android\Res"  /Y  /R
XCOPY  /S IOS\*.*          %CLIENT_CODE_PATH%"\Game\MixProject\Proj.Ios_Mac\IOS"  /Y  /R
XCOPY  /S IOS\*.*          %CLIENT_CODE_PATH%"\Game\MixProject\Proj.Ios_Mac\MixProject-Mobile\Images.Xcassets\AppIcon.AppIconset"  /Y  /R
COPY   /Y IOS\Icon-100.png %CLIENT_CODE_PATH%"\Game\MixProject\Resources\Games\icon_share.png"
