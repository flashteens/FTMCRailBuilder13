# [FTMC Railway Builder Tool](https://www.planetminecraft.com/mod/1-12-x-vanilla-mod-fully-automatic-minecart-railway-builder-tool/)
(applicable for Minecraft 1.13.x - 1.19.x)<br>
Snapshot v0.14.0 Updated: Aug. 27, 2022<br>
(For 1.12.x version, see on [this repo](https://github.com/flashteens/FTMCRailBuilder) instead. However, please note that some advanced features may not support 1.12.x.)<br>
Here is the source code for the [Fully-Automatic Minecart Railway Builder Tool](https://www.planetminecraft.com/mod/1-12-x-vanilla-mod-fully-automatic-minecart-railway-builder-tool/) available on PlanetMinecraft.
* Please ensure that the original author **FlashTeens Chiang** should be referenced in your code when applying this tool.
<br>
<b><a href='https://www.planetminecraft.com/mod/1-12-x-vanilla-mod-fully-automatic-minecart-railway-builder-tool/'>FTMC 全自動原版礦車鐵路指令工具</a></b><br>
(適用於電腦版 Minecraft[Java] 1.13.x - 1.19.x)<br>
指令工具版本: Snapshot v0.14.0 (2022-08-27 更新)<br>
(本工具另有提供 1.12.x 專用版本，詳見<a href='https://github.com/flashteens/FTMCRailBuilder'>此連結</a>，但其中部分進階功能恕無法支援 1.12.x，造成不便敬請見諒。)<br>
這裡提供本人於 PlanetMinecraft 網站所發布<a href='https://www.planetminecraft.com/mod/1-12-x-vanilla-mod-fully-automatic-minecart-railway-builder-tool/'>自動化礦車指令工具</a>的原始碼，歡迎多加利用。

* 使用本程式碼時，請註明原作者為 <b>FlashTeens Chiang</b>。
<br>
<br>
By FlashTeens Chiang

## English Manual / 英文版說明

HOW TO SET UP THIS TOOL IN YOUR MINECRAFT MAP:
1. Download the data packs (.zip files) from one of the Google Drive Links below:
  * [Click here for 1.14+](https://drive.google.com/open?id=1i0RpLMziBHDBAy-fdQtkVPNrEIFL-fe7)
  * [Click here for 1.13.x](https://drive.google.com/open?id=1EqN13Qx_NxTx00wz4j64mXb0agOAUItS)
* There are currently three data packs: "<b>FTMC Railway Builder for 1.13(1.14)</b>", "<b>FTMC Bullet Cart v2.3 Engine for 1.13(1.14)</b>", and "<b>FTMC Speedometer</b>". You may apply any (or all) of them into your Minecraft map on your demand, and each of the data packs should work independently.
  * If you are migrating your Minecraft 1.13.x map to 1.14+ with this tool, please just leave "<b>FTMC Speedometer</b>" unchanged, and update all the others above.
  * If you are migrating your Minecraft 1.14+ map with this tool to newer Minecraft versions, then it is not necessary to update any of the three datapacks.
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
1. 從以下其中一個 Google Drive 連結下載資料包 (data pack) 壓縮檔。
  * [1.14 (含) 以上版本專用下載點](https://drive.google.com/open?id=1i0RpLMziBHDBAy-fdQtkVPNrEIFL-fe7)
  * [1.13.x 版本專用下載點](https://drive.google.com/open?id=1EqN13Qx_NxTx00wz4j64mXb0agOAUItS)
* 內有三個資料包: "<b>FTMC Railway Builder for 1.13(1.14)</b>" (鐵路指令工具)、"<b>FTMC Bullet Cart v2.3 Engine</b>" (子彈礦車指令工具) 及 "<b>FTMC Speedometer</b>" (測速工具)，三者皆可獨立運作，您可以視自己的需求決定在您的地圖中使用其中一部分的資料包，或全部使用亦可。
  * 如果您先前曾使用此工具於 1.13.x 版本中遊玩，則當您升級地圖到 1.14+ 之前，只需要更新前兩項「鐵路指令工具」與「子彈礦車指令工具」即可，至於「測速工具」則可維持不變。
  * 若您先前在 1.14 (含) 以上 Minecraft 版本的地圖使用此工具，並需要再將地圖升級到更新的 Minecraft 版本，則前述三個指令包皆不需更新，可直接移植到新版 Minecraft 繼續使用。
* 如果您在地圖中只有使用 FTMC Speedometer (測速工具)，則無需進行下列 3. 4. 兩個步驟。
2. 移動(或複製)這些資料包至 Minecraft 地圖目錄中的 'datapacks' 資料夾。(無需解壓縮)<br>
   (路徑格式如「%appdata%\.minecraft\saves\您的地圖\datapacks\」)
3. 從 Minecraft 中進入您的地圖，在聊天介面中輸入以下指令：<br>
   /function ftmc:subwaybuilder/tools<br>
4. 輸入以上指令後，在遊戲中您將得到一本書，其中附有幾個連結，按下任一連結即可獲得對應的指令機關，可用以快速建造全自動的礦車地鐵系統。
* 如需使用「<b>子彈礦車指令工具</b>」來建造高鐵系統，請另行輸入以下指令取得相關工具:<br>
   /function ftmc:bcartv2/builder/tools<br>
* 有關「<b>子彈礦車指令工具</b>」的英文版使用說明詳見 [PlanetMinecraft 頁面](https://www.planetminecraft.com/mod/1-13-instant-high-speed-railway-builder-tool-datapack/)；中文版說明將擇日在巴哈姆特發布，敬請期待！
