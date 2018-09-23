        /**************************************
		canvas主要操作的js文件
		包含canvas内进行操作的各种函数
		
		面向对象的思想体现得不够明显
		在代码结构上还有待改进		
		**************************************/
		
		
        var photo;
		var oPhoto;
		var oImageData;
		var photoCanvas = document.getElementById("oldCanvas");
		var canvasDiv = document.getElementById("canvas");
		var canvasWidth = photoCanvas.width;
		var canvasHeight= photoCanvas.height;		
        var ctx = photoCanvas.getContext("2d");
        
		var oWidth;			//图片一开始的宽度，用来复原图片
		var oHeight;

		var moveCtr = 10;   //控件相关数据

		
		//****如果为了更好的效果及更优良的代码结构，应该将conroller写成一个类，并且规定控件的长度为全局静态变量
		
		
		
		//新建图片类，方便使用图片的left和top
		function MyPhoto(pho,left,top){
			this.pho=pho;
			this.left=left;
			this.top=top;      //top和left均为相对于canvas的值
			this.width=pho.width;
			this.height=pho.height;
		}
		
        $(document).ready(function() {
 
 
		// show image preview after selection
            $("#fileInput").change(function picChange(evt) {
                //get files captured through input
                var fileInput = evt.target.files;
                if (fileInput.length > 0) {
                    //window url
                    var windowURL = window.URL || window.webkitURL;
                    //picture url
                    var picURL = windowURL.createObjectURL(fileInput[0]);
                    //get canvas
                    
 
 
                    //create image
                    photo = new Image();
					
					photo.src = picURL;
					var myPhoto = new MyPhoto(photo,0,0);
					oMyPhoto=myPhoto;
 
 
                    photo.onload = function() {
						
						
                        init(myPhoto);
						
						
						action(myPhoto);
						setBtns(myPhoto);
						
						
						
						
						
                    };
					
 
 
                
 
                    var arr = picURL.split('/');
                    var imgUrl = arr[arr.length - 1];
                    windowURL.revokeObjectURL(imgUrl);
                  
 
                }
            });
        });
		
		//pho为Image对象
		
		function init(myPhoto){
			ctx.clearRect(0,0,canvasWidth,canvasHeight);			//在每次重新绘画前先清除画布
			var pho=myPhoto.pho;
			console.log("init succ");
			
			
			//值 3*moveCtr  都是为了画出控件
			if(pho.width>canvasWidth&&pho.height<=canvasHeight)
			{				  //如果宽超出范围 高不超出范围
				
				myPhoto.left=0;
				myPhoto.top=canvasHeight/2-pho.height/2;
				myPhoto.width=canvasWidth-3*moveCtr;
				myPhoto.height=pho.height;
				ctx.drawImage(pho,myPhoto.left,myPhoto.top,myPhoto.width,myPhoto.height);
			}
			
			if(pho.width<=canvasWidth&&pho.height>canvasHeight)
			{				  //如果高超出范围 宽不超出范围
				
				myPhoto.left=canvasWidth/2-pho.width/2;
				myPhoto.top=3*moveCtr;
				myPhoto.width=pho.width;
				myPhoto.height=canvasHeight-3*moveCtr;
				ctx.drawImage(pho,myPhoto.left,myPhoto.top,myPhoto.width,myPhoto.height);
			}
			
			
			
			
			if(pho.width>canvasWidth&&pho.height>canvasHeight)
			{				//如果超出范围
			   
			   myPhoto.left=0;
			   myPhoto.top=3*moveCtr;
			   myPhoto.width=canvasWidth-3*moveCtr;
			   myPhoto.height=canvasHeight-3*moveCtr;
			   ctx.drawImage(pho,myPhoto.left,myPhoto.top,myPhoto.width,myPhoto.height);
			}			   //绘制canvas全屏
			
			
			if(pho.width<=canvasWidth&&pho.height<=canvasHeight){
			
			myPhoto.left=canvasWidth/2-pho.width/2;
			myPhoto.top=canvasHeight/2-pho.height/2;
			myPhoto.width=pho.width;
			myPhoto.height=pho.height;
			ctx.drawImage(pho,myPhoto.left,myPhoto.top,myPhoto.width,myPhoto.height);
				
			}			//将图片绘画到中部
			oWidth=myPhoto.width;
			oHeight=myPhoto.height;
			oImageData=ImageFilters.Clone(ctx.getImageData(myPhoto.left,myPhoto.top,myPhoto.width,myPhoto.height));
			drawControl(myPhoto);
			
			
				
		}
		
		function draw(myPhoto,left,top){              //因为这里是使用get和put ImageData  所以必须传入改变之前的left和top
			
			
			var imageData=ctx.getImageData(left,top,myPhoto.width,myPhoto.height);
			ctx.clearRect(0,0,canvasWidth,canvasHeight);
			
			console.log("画之前left："+left+"后："+myPhoto.left);
			ctx.putImageData(imageData,myPhoto.left,myPhoto.top,0,0,myPhoto.width,myPhoto.height);
			
		
			
			
			
			
		}
		
		function zoom(myPhoto){              //因为这里是使用get和put ImageData  所以必须传入改变之前的left和top
			
			
			
			ctx.clearRect(0,0,canvasWidth,canvasHeight);
			ctx.drawImage(myPhoto.pho,myPhoto.left,myPhoto.top,myPhoto.width,myPhoto.height);
			
			
		
			
			
			
			
		}
		
		
		
		//舍弃 会影响保存图片  解决方法：设置一个div或者img  未实现
		
		
		//画出辅助缩放和旋转的图块
		function drawControl(myPhoto){
			/*var beginLeft = myPhoto.left+myPhoto.width;
			var beginTop = myPhoto.top-moveCtr;
			ctx.strokeRect(beginLeft,beginTop,moveCtr,moveCtr); //画正方形*/
			
			/*//画直线
			ctx.beginPath();
			ctx.moveTo(beginLeft+moveCtr,beginTop);
			ctx.lineTo(beginLeft+moveCtr+moveCtr,beginTop-moveCtr);
			ctx.closePath();
			ctx.stroke();
			
			//画圆形
			ctx.beginPath();
			ctx.arc(beginLeft+moveCtr+moveCtr+rotateRadius, beginTop-moveCtr-5, 5, -Math.PI, Math.PI, false);
			ctx.fill();*/
			
			
		}
		
		
		
		//鼠标在canvas内的各种事件
		function action(myPhoto){
			photoCanvas.onmousedown=function(event){
				console.log("图片left"+myPhoto.left+"点击的X"+event.x);
				
				var zoomLeft = myPhoto.left+myPhoto.width;
				var zoomTop = myPhoto.top-moveCtr;
				//console.log(zoomLeft+"点击"+event.offsetX+"减去"+canvasLeft);
				console.log("点击"+event.offsetX+"图片left"+myPhoto.left);
				
				
				//判断是否在正方形内
				if(zoomLeft<=event.offsetX&&event.offsetX<=zoomLeft+moveCtr&&zoomTop<=event.offsetY&&event.offsetY<=zoomTop+moveCtr){
					photoCanvas.onmousemove=function(event){
						console.log("zoom");
						console.log("zoomleft:"+zoomLeft+"event.offsetX:"+event.offsetX);
						
						
						
						myPhoto.height=myPhoto.top+myPhoto.height-event.offsetY; 						//拖动算法
						myPhoto.width=event.offsetX-myPhoto.left;
						myPhoto.top=event.offsetY;
					
						
						zoomLeft = myPhoto.left+myPhoto.width;        //重新计算控件位置
						zoomTop = myPhoto.top-moveCtr;
						
						
						zoom(myPhoto);
						
					}
					
					
					}
					
					
					
					//判断指针是否在图片内
					if(event.offsetX>=myPhoto.left&&event.offsetX<=myPhoto.left+myPhoto.width&&event.offsetY>=myPhoto.top&&event.offsetY<=myPhoto.top+myPhoto.height){
					var left = event.offsetX-myPhoto.left;
					var top = event.offsetY-myPhoto.top;         //记录点击时刻指针相对于图片的left和top
					
					photoCanvas.onmousemove=function(event){
						var oLeft = myPhoto.left;
						var oTop = myPhoto.top;          //记录移动前 photo的left和top  以便在获取imageData的时候使用
						
						if(event.offsetX-left+myPhoto.width>=canvasWidth||event.offsetX-left<=0){
							myPhoto.left=oLeft;
							myPhoto.top=event.offsetY-top;
						}
						
						if(event.offsetY-top<=0||event.offsetY-top+myPhoto.height>=canvasHeight){
							myPhoto.left=event.offsetX-left;
							myPhoto.top=oTop;
						}
						
						if((event.offsetX-left+myPhoto.width>=canvasWidth||event.offsetX-left<=0)&&(event.offsetY-top<=0||event.offsetY-top+myPhoto.height>=canvasHeight)){
							myPhoto.left=oLeft;
							myPhoto.top=oTop;
						}
						
						if(event.offsetX-left+myPhoto.width<canvasWidth&&event.offsetX-left>0&&event.offsetY-top>0&&event.offsetY-top+myPhoto.height<canvasHeight){
						myPhoto.left=event.offsetX-left;
						myPhoto.top=event.offsetY-top;
						}
						
						
						
						draw(myPhoto,oLeft,oTop);
						
					}
				}
				
				
				//舍弃  实现难度较大
				
				//判断是否在圆形内
				/*if(event.offsetX>=zoomLeft+2*moveCtr&&event.offsetX<=zoomLeft+3*moveCtr&&event.offsetY>=zoomTop-2*moveCtr&&event.offsetY<=zoomTop-moveCtr){
					var theta = 0;
					photoCanvas.onmousemove=function(event){
						
					}
				}*/
				
					
					
				
					
					document.onmouseup=function(event){
					photoCanvas.onmousemove=null;          //松开鼠标时取消移动，有另一种设置flag的算法，这里使用函数为null
					}
				
			
				
			}
			
			
		}
		
		
		
		
		
		function filter(myPhoto,filterName){
			
			
			var canvasData = ctx.getImageData(myPhoto.left,myPhoto.top,myPhoto.width,myPhoto.height);
			
			
			switch(filterName){
				case "origin":{canvasData=oImageData;myPhoto.width=oWidth;myPhoto.height=oHeight};break;  //原图
				case "gray":canvasData=ImageFilters.GrayScale(canvasData);break;  //灰度化
				case "hFilp":canvasData=ImageFilters.Flip(canvasData,180);break;       //左右翻转
				case "vFilp":canvasData=ImageFilters.Flip(canvasData,90);break;       //上下翻转
				case "desaturate":canvasData=ImageFilters.Desaturate(canvasData,10);break; //降低饱和度
				case "stackBlur":canvasData=ImageFilters.StackBlur(canvasData,10);break;  //毛玻璃
				case "hBoxBlur":canvasData=ImageFilters.BoxBlur(canvasData,10,0,0.5);break;      //横向模糊  
				case "vBoxBlur":canvasData=ImageFilters.BoxBlur(canvasData,0,10,0.5);break;		 //纵向模糊
				case "gaussianBlur":canvasData=ImageFilters.Desaturate(canvasData,0.5);break;   //高斯模糊
				case "dither":canvasData=ImageFilters.Dither(canvasData,2);break;   //抖动
				case "edge":canvasData=ImageFilters.Edge(canvasData);break;   //edge
				case "emboss":canvasData=ImageFilters.Emboss(canvasData);break;   //浮雕
				case "enrich":canvasData=ImageFilters.Enrich(canvasData);break;   //enrich
				case "oil":canvasData=ImageFilters.Oil(canvasData,2);break;   //油画
				case "opacity":canvasData=ImageFilters.OpacityFilter(canvasData,200);break;   //半透明
				case "posterize":canvasData=ImageFilters.Posterize(canvasData,2);break;   //多色调
				case "sharpen":canvasData=ImageFilters.Sharpen(canvasData,15);break;   //锐利
				case "solarize":canvasData=ImageFilters.Oil(canvasData);break;   //过曝												
			}			
			ctx.clearRect(0,0,canvasWidth,canvasHeight);	

			ctx.putImageData(canvasData,myPhoto.left,myPhoto.top);
			
		
			
			
		}
		
		
		function setBtns(myPhoto){
		var btns = document.getElementsByClassName("filterBtns");
		var saveBtn = document.getElementById("save");
		
		saveBtn.onclick=function(myPhoto){save(myPhoto)};
		
		console.log(btns);
		for(var i = 0 ;i<btns.length;i++){
			btns[i].onclick=function(){filter(myPhoto,this.getAttribute("id"));}
			console.log(btns[i].getAttribute("id"));
		}
		
		/*var btn = document.getElementById("gray");
		btn.onclick=function(){filter(myPhoto,this.getAttribute("id"))};*/
		}
		
		
		function save(myPhoto){
			canvasToImage('oldCanvas', {
				name: 'myImage',
				type: 'png',
				quality: 1.0
				});
		}
		
	
		
	
		
		
		
		
		
		
		
	
