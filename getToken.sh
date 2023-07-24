#!\/bin\/bash
# shellcheck disable=SC2155
#
# CurseForge Token Retriever (Please no DMCA me or I'll cum :3)
#
# Server Files: \/mnt\/server

if [[ -f token ]]; then
	echo "The token file already exists. Skipping..."
	exit 0
fi

## slowwwwwww, but works
#mkdir -p wrk; cd wrk

#curl -L -O https://web.archive.org/web/20220519222137/https://curseforge.overwolf.com/downloads/curseforge-latest-linux.zip
#7z -y x curseforge-latest-linux.zip
#7z -y x *.AppImage
#grep -Poh 'cfCoreApiKey":".*?"' resources/app/dist/desktop/desktop.js | sed 's/.*://;s/"//g' > ../token

#cd ..; rm -R wrk

## I've been reversing the new API key storage for a few hours and found out that you didn't change the token

curl https://forum.gamer.com.tw/Co.php?bsn=18673&sn=1038906 | grep -Pzo '(?s)「<b>CurseForge 核心 API」</b>欄位填入：.<font size="2">.*?</font>' | grep -Poh '(?<=font size="2">).*?(?=</font>)' > token