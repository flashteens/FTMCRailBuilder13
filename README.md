# [FTMC Railway Builder Tool](https://www.planetminecraft.com/mod/1-12-x-vanilla-mod-fully-automatic-minecart-railway-builder-tool/)
(applicable for Minecraft 1.13 - 1.20.5+)<br>
Snapshot v0.15.0 Updated: Apr. 28, 2024<br>
(For 1.12.x version, see on [this repo](https://github.com/flashteens/FTMCRailBuilder) instead. However, please note that some advanced features may not support 1.12.x.)<br>
Here is the source code for the [Fully-Automatic Minecart Railway Builder Tool](https://www.planetminecraft.com/mod/1-12-x-vanilla-mod-fully-automatic-minecart-railway-builder-tool/) available on PlanetMinecraft.
* Please ensure that the original author **FlashTeens Chiang** should be referenced in your code when applying this tool.
<br>
<b><a href='https://www.planetminecraft.com/mod/1-12-x-vanilla-mod-fully-automatic-minecart-railway-builder-tool/'>FTMC 全自動原版礦車鐵路指令工具</a></b><br>
(適用於電腦版 Minecraft[Java] 1.13 - 1.20.5+)<br>
指令工具版本: Snapshot v0.15.0 (2024-04-28 更新)<br>
(本工具另有提供 1.12.x 專用版本，詳見<a href='https://github.com/flashteens/FTMCRailBuilder'>此連結</a>，但其中部分進階功能恕無法支援 1.12.x，造成不便敬請見諒。)<br>
這裡提供本人於 PlanetMinecraft 網站所發布<a href='https://www.planetminecraft.com/mod/1-12-x-vanilla-mod-fully-automatic-minecart-railway-builder-tool/'>自動化礦車指令工具</a>的原始碼，歡迎多加利用。

* 使用本程式碼時，請註明原作者為 <b>FlashTeens Chiang</b>。
<br>
<br>
By FlashTeens Chiang

## English Manual / 英文版說明

HOW TO SET UP THIS TOOL IN YOUR MINECRAFT MAP:
1. Download the data packs (.zip files) from [this Google Drive Link](https://drive.google.com/drive/folders/17wC49MOp5E19GXIX7YvnoGrULzCf13AL?usp=sharing).
   * On the Google Drive page, click into one of the folders that matches your current Minecraft version.
   * There are currently three data packs: "<b>FTMC Railway Builder</b>", "<b>FTMC Bullet Cart v2.3 Engine</b>", and "<b>FTMC Speedometer</b>". You may apply any (or all) of them into your Minecraft map on your demand, and each of the data packs should work independently.
   * If you are migrating your Minecraft map with these datapacks to newer Minecraft versions, it is suggested to remove the existing related datapacks &amp; re-download the new datapacks from Google Drive. <b>Attention:</b> overwriting existing datapacks without removing them may cause problems since datapack filenames across different supporting Minecraft versions may differ.
   * If you apply only "FTMC Speedometer" in your map, it's not necessary to do Steps 3. and 4 below.
2. Move/Copy the data pack(s) (without unzipping) into the folder 'datapacks' of your Minecraft map directory<br>
   (ex: '%appdata%\.minecraft\saves\YOUR_MAP_PROJECT\datapacks\')
3. Enter this map in your Minecraft, and type the following command in your chat:<br>
   /function ftmc:subwaybuilder/tools<br>
4. You'll get a book in-game with clickable links. Click on any of the links to get the related contraption(s) for rapidly building fully-automatic minecart subway system in Minecraft. Have fun! :D
   * If you would like to build high-speed railway lines using the "<b>FTMC Bullet Cart v2.3 Engine</b>", please also get the tools using the following command:<br>
   /function ftmc:bcartv2/builder/tools<br>
   * Check out [this tutorial on PlanetMinecraft](https://www.planetminecraft.com/mod/1-13-instant-high-speed-railway-builder-tool-datapack/) for how to use the "<b>FTMC Bullet Cart v2.3 Engine</b>".


## 中文版說明 / Chinese Manual

如何將此工具安裝在您的 Minecraft 地圖上：
1. 請先進入 [Google Drive 下載點連結](https://drive.google.com/drive/folders/17wC49MOp5E19GXIX7YvnoGrULzCf13AL?usp=sharing)。
   * 在 Google Drive 頁面中，首先請選擇符合您目前 Minecraft 版本的資料夾名稱，並進入該資料夾。
   * 內有三個資料包: "<b>FTMC Railway Builder</b>" (鐵路指令工具)、"<b>FTMC Bullet Cart v2.3 Engine</b>" (子彈礦車指令工具) 及 "<b>FTMC Speedometer</b>" (測速工具)，三者皆可獨立運作，您可以視自己的需求決定在您的地圖中使用其中一部分的資料包，或全部使用亦可。
   * 若您先前在較舊版本的 Minecraft 使用此工具，並需要再將地圖升級到更新的 Minecraft 版本，建議請把原有相關的指令包移除掉，再重新到 Google Drive 下載新版本。<b>請注意</b>：不建議直接用新版本指令包來覆寫原有的指令包，因為下載點當中對應到不同 Minecraft 版本的指令包，檔名也可能不同，在地圖中恐將出現兩個相同功能但版本卻不同的指令包，因而導致發生不預期的問題！
   * 如果您在地圖中只有使用 FTMC Speedometer (測速工具)，則無需進行下列 3. 4. 兩個步驟。
2. 移動(或複製)這些資料包至 Minecraft 地圖目錄中的 'datapacks' 資料夾。(無需解壓縮)<br>
   (路徑格式如「%appdata%\.minecraft\saves\您的地圖\datapacks\」)
3. 從 Minecraft 中進入您的地圖，在聊天介面中輸入以下指令：<br>
   /function ftmc:subwaybuilder/tools<br>
4. 輸入以上指令後，在遊戲中您將得到一本書，其中附有幾個連結，按下任一連結即可獲得對應的指令機關，可用以快速建造全自動的礦車地鐵系統。
   * 如需使用「<b>子彈礦車指令工具</b>」來建造高鐵系統，請另行輸入以下指令取得相關工具:<br>
   /function ftmc:bcartv2/builder/tools<br>
   * 有關「<b>子彈礦車指令工具</b>」的英文版使用說明詳見 [PlanetMinecraft 頁面](https://www.planetminecraft.com/mod/1-13-instant-high-speed-railway-builder-tool-datapack/)；中文版說明將擇日在巴哈姆特發布，敬請期待！
