


//  1.灰度效果  
//计算公式 .299 * r + .587 * g + .114 * b;  
// calculate gray scale value  
function gray(canvasData)  
{  
           
        
        var i;
        var average;
 
        for(i = 0; i <= canvasData.data.length - 4; i += 4){
            average = (canvasData.data[i] + canvasData.data[i + 1] + canvasData.data[i + 2]) / 3;
            canvasData.data[i] = average;
            canvasData.data[i + 1] = average;
            canvasData.data[i + 2] = average;
        }
		return canvasData;
}  
  
  
   
  
       
//2.怀旧效果     
function old(canvasData)  
{  
		var width =canvasData.width;
        var length = canvasData.data.length;
        var i;
 
        for(i = 0; i < length; i++){
            if(i <= length-width*4){
                if((i+1) % 4 !== 0){
                    if((i+4) % (width*4) == 0){
                        canvasData.data[i] = canvasData.data[i-4];
                        canvasData.data[i+1] = canvasData.data[i-3];
                        canvasData.data[i+2] = canvasData.data[i-2];
                        canvasData.data[i+3] = canvasData.data[i-1];
                        i+=4;
                    }
                    else{
                        canvasData.data[i] = 255/2 + 2*canvasData.data[i] -canvasData.data[i+4] -canvasData.data[i + width * 4];
                    }
                }
            }else{
                if((i+1) % 4 !== 0){
                    canvasData.data[i] = canvasData.data[i - width*4];
                }
            }
        }

return canvasData;  
}  
  
  
 
    
//4 黑白效果  
//求RGB平均值Avg ＝ (R + G + B) / 3，如果Avg >= 100，则新的颜色值为R＝G＝B＝255；  
//如果Avg < 100，则新的颜色值为R＝G＝B＝0；255就是白色，0就是黑色；  
//至于为什么用100作比较，这是一个经验值吧，设置为128也可以，可以根据效果来调整。  
function black(canvasData)  
{  
for ( var x = 0; x < canvasData.width; x++) {  
 for ( var y = 0; y < canvasData.height; y++) {  
  
   // Index of the pixel in the array  
   var idx = (x + y * canvasData.width) * 4;  
   var r = canvasData.data[idx + 0];  
   var g = canvasData.data[idx + 1];  
   var b = canvasData.data[idx + 2];  
   if((r+g+b)>=300)  
   {  
    fr=fg=fb=255;  
   }  
   else  
   {  
    fr=fg=fb=0;  
   }  
   canvasData.data[idx + 0] = fr; // Red channel  
   canvasData.data[idx + 1] = fg; // Green channel  
   canvasData.data[idx + 2] = fb; // Blue channel  
   canvasData.data[idx + 3] = 255; // Alpha channel  
   // add black border  
   if(x < 8 || y < 8 || x > (canvasData.width - 8) || y > (canvasData.height - 8))   
   {  
     canvasData.data[idx + 0] = 0;  
     canvasData.data[idx + 1] = 0;  
     canvasData.data[idx + 2] = 0;  
   }  
 }  
}  
return canvasData;  
}  
  
   
  
//5 浮雕效果  
//用相邻点的RGB值减去当前点的RGB值并加上128作为新的RGB值。  
//由于图片中相邻点的颜色值是比较接近的，因此这样的算法处理之后，只有颜色的边沿区域，  
//也就是相邻颜色差异较大的部分的结果才会比较明显，而其他平滑区域则值都接近128左右，  
//也就是灰色，这样就具有了浮雕效果。  
//在实际的效果中，这样处理后，有些区域可能还是会有”彩色”的一些点或者条状痕迹，所以最好再对新的RGB值做一个灰度处理。  
   
function sunglass(canvasData)  
{  
		var data = canvasData.data;
        var width = canvasData.width;
        var i;
 
        for(i = 0; i <= data.length; ++i){
            if((i+1)%4 != 0){
                if((i+4) % (width * 4) == 0){
                    data[i] = data[i-4];
                    data[i+1] = data[i-3];
                    data[i+2] = data[i-2];
                    data[i+1] = data[i-1];
                    i+=4;
                }
                else{
                    data[i] = 2*data[i] -1.5*data[i + 4];
                }
            }
        }
		return canvasData;
}

function threshold(canvasData){
	var src = canvasData.data;
  var sw = canvasData.width;
  var sh = canvasData.height;

  var w = sw;
  var h = sh;
  

  for (var y=0; y<h; y++) {
    for (var x=0; x<w; x++) {
      var sy = y;
      var sx = x;
      var dstOff = (y*w+x)*4;
      var srcOff = (sy*sw+sx)*4;
      var v = 0;
      if (src[srcOff] == 0) {
        if (src[(sy*sw+Math.max(0,sx-1))*4] == 0 && 
            src[(Math.max(0,sy-1)*sw+sx)*4] == 0) {
            v = 255;
        }
      } else {
          v = 255;
      }
      src[dstOff] = v;
      src[dstOff+1] = v;
      src[dstOff+2] = v;
      src[dstOff+3] = 255;
    }
  }
  return canvasData;
}