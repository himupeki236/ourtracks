// 遷移時にWindowのloadイベントが発火しないため「turbolinks: load」を使用する
document.addEventListener('turbolinks:load', function() {
   // ジャンルのid取得
   const pullDownButton = document.getElementById("genre_list")
   const pullDownParents = document.getElementById("pull-genre")  
 
   const pullDownPop = document.getElementById("pull-pop")
   const pullDownRock = document.getElementById("pull-rock")
   const pullDownRb = document.getElementById("pull-rb")
   const pullDownHiphop = document.getElementById("pull-hiphop")
   const pullDownRap = document.getElementById("pull-rap")
   const pullDownFunk = document.getElementById("pull-funk")
   const pullDownSoul = document.getElementById("pull-soul")
   const pullDownFolk = document.getElementById("pull-folk")
   const pullDownCountry = document.getElementById("pull-country")
   const pullDownElectro = document.getElementById("pull-electro")
   const pullDownEDM = document.getElementById("pull-edm")
   const pullDownV = document.getElementById("pull-v")
   const pullDownIdol = document.getElementById("pull-idol")
   const pullDownKayo = document.getElementById("pull-kayo")
 
   // 年代のid取得
   const pullDownYear = document.getElementById("year_list")
   const pullDownParentsYear = document.getElementById("pull-year")  
 
   const pullDown1950s = document.getElementById("pull-five")
   const pullDown1960s = document.getElementById("pull-six")
   const pullDown1970s = document.getElementById("pull-seven")
   const pullDown1980s = document.getElementById("pull-eight")
   const pullDown1990s = document.getElementById("pull-nine")
   const pullDown2000s = document.getElementById("pull-zero")
   const pullDown2010s = document.getElementById("pull-two-one")
   const pullDown2020s = document.getElementById("pull-two-two")
 
 
 
   // ジャンルのマウスオーバー時にイベント発火
   pullDownButton.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:black; color:white;")
      // ジャンルのpullDownParentsにdisplay:block;が付与されている場合
      if (pullDownParents.getAttribute("style") == "display:block;") {
       // ジャンルののプルダウンメニューの非表示
       pullDownParents.removeAttribute("style", "display:block;")
     } else {
       // ジャンルののプルダウンメニューの表示
       pullDownParents.setAttribute("style", "display:block;")
     }
     // 年代のpullDownParentsにdisplay:block;が付与されている場合
     if (pullDownParentsYear.getAttribute("style") == "display:block;") {
       // 年代のプルダウンメニューの非表示
       pullDownParentsYear.removeAttribute("style", "display:block;")
     }
   })
 
   // Popのマウスオーバー時にイベント発火
   pullDownPop.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // Rockのマウスオーバー時にイベント発火
   pullDownRock.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // R&Bのマウスオーバー時にイベント発火
   pullDownRb.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // HipHopのマウスオーバー時にイベント発火
   pullDownHiphop.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // Rapのマウスオーバー時にイベント発火
   pullDownRap.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // Funkのマウスオーバー時にイベント発火
   pullDownFunk.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // Soulのマウスオーバー時にイベント発火
   pullDownSoul.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // Folkのマウスオーバー時にイベント発火
   pullDownFolk.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // Countryのマウスオーバー時にイベント発火
   pullDownCountry.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // Electroのマウスオーバー時にイベント発火
   pullDownElectro.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // EDMのマウスオーバー時にイベント発火
   pullDownEDM.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // ヴィジュアル系のマウスオーバー時にイベント発火
   pullDownV.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // アイドルのマウスオーバー時にイベント発火
   pullDownIdol.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // 歌謡曲のマウスオーバー時にイベント発火
   pullDownKayo.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
 
 
   // ジャンルのマウスアウト時にイベント発火
   pullDownButton.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:#FFBEDA;")
     // pullDownParents.removeAttribute("style", "display:block;")
   })
   
   // Popのマウスアウト時にイベント発火
   pullDownPop.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white;")
   })
 
   // Rockのマウスアウト時にイベント発火
   pullDownRock.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // R&Bのマウスアウト時にイベント発火
   pullDownRb.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // HipHopのマウスアウト時にイベント発火
   pullDownHiphop.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // Rapのマウスアウト時にイベント発火
   pullDownRap.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // Funkのマウスアウト時にイベント発火
   pullDownFunk.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // Soulのマウスアウト時にイベント発火
   pullDownSoul.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // Folkのマウスアウト時にイベント発火
   pullDownFolk.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // Countryのマウスアウト時にイベント発火
   pullDownCountry.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // Electroのマウスアウト時にイベント発火
   pullDownElectro.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // EDMのマウスアウト時にイベント発火
   pullDownEDM.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // ヴィジュアル系のマウスアウト時にイベント発火
   pullDownV.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // アイドルのマウスアウト時にイベント発火
   pullDownIdol.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // 歌謡曲のマウスアウト時にイベント発火
   pullDownKayo.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
 
   // 年代
 
   // 年代のマウスオーバー時にイベント発火
   pullDownYear.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:black; color:white;")
       // 年代のpullDownParentsにdisplay:block;が付与されている場合
       if (pullDownParentsYear.getAttribute("style") == "display:block;") {
       // 年代のプルダウンメニューの非表示
       pullDownParentsYear.removeAttribute("style", "display:block;")
     } else {
       // 年代のプルダウンメニューの表示
       pullDownParentsYear.setAttribute("style", "display:block;")
     }
      // ジャンルのpullDownParentsにdisplay:block;が付与されている場合
      if (pullDownParents.getAttribute("style") == "display:block;") {
       // ジャンルのプルダウンメニューの非表示
       pullDownParents.removeAttribute("style", "display:block;")
     }
   })
 
   // 1950sのマウスオーバー時にイベント発火
   pullDown1950s.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue;")
   })
 
   // 1960sのマウスオーバー時にイベント発火
   pullDown1960s.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // 1970sのマウスオーバー時にイベント発火
   pullDown1970s.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // 1980sのマウスオーバー時にイベント発火
   pullDown1980s.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // 1990sのマウスオーバー時にイベント発火
   pullDown1990s.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
   
   // 2000sのマウスオーバー時にイベント発火
   pullDown2000s.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue;")
 
   })
 
   // 2010sのマウスオーバー時にイベント発火
   pullDown2010s.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
   // 2020sのマウスオーバー時にイベント発火
   pullDown2020s.addEventListener('mouseover', function(){
     this.setAttribute("style", "background-color:lightblue")
   })
 
 
 
   // 年代のマウスアウト時にイベント発火
   pullDownYear.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:#FFBEDA;")
   })
   
   // 1950sのマウスアウト時にイベント発火
   pullDown1950s.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white;")
   })
 
   // 1960sのマウスアウト時にイベント発火
   pullDown1960s.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // 1970sのマウスアウト時にイベント発火
   pullDown1970s.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // 1980sのマウスアウト時にイベント発火
   pullDown1980s.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // 1990sのマウスアウト時にイベント発火
   pullDown1990s.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
   
   // 2000sのマウスアウト時にイベント発火
   pullDown2000s.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white;")
   })
 
   // 2010sのマウスアウト時にイベント発火
   pullDown2010s.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
 
   // 2020sのマウスアウト時にイベント発火
   pullDown2020s.addEventListener('mouseout', function(){
     this.removeAttribute("style", "background-color:white")
   })
});
// window.addEventListener('load', pullDown)

