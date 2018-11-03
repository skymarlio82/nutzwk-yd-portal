var i=0;
var timer;
$(function(){
	$(".ig").eq(0).show().siblings().hide();//页面加载后，显示第一张图片，其余的图片隐藏
	ShowTime();
	$(".tab").hover(function(){
		i=$(this).index();
		Show();
		clearInterval(timer);//鼠标放在tab上，显示当前图片，并移除轮播效果
	},function(){
		ShowTime();
	});
	$(".btn1").click(function(){
		clearInterval(timer);//鼠标放在btn上，显示当前图片，并移除轮播效果
		if(i==0)
		{
			i=3;
		}
		i--;
		Show();
		ShowTime();
	});
	$(".btn2").click(function(){
		clearInterval(timer);//鼠标放在btn上，显示当前图片，并移除轮播效果
		if(i==2)
		{
			i=-1;
		}
		i++;
		Show();
		ShowTime();
	});
});

function Show(){
	$(".ig").eq(i).fadeIn(300).siblings().fadeOut(300);//每四秒换一张图片，0.3秒内完成
	$(".tab").eq(i).addClass('bg').siblings().removeClass('bg');//显示相应图片的圆点的背景变为白色
}

function ShowTime(){
	timer=setInterval(function(){
		i++;
		if(i==3)
		{
			i=0;
		}
		Show();
	},4000);
}