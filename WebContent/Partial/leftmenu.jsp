<%@ page contentType="text/html;charset=utf-8" language="java" %>

<div class="col-md-3 ab_left">
    <ul>
    </ul>
</div>


<script type="text/javascript">
    var gb_menu_name = "";
    var gb_menu_id = "";
    var gb_parent_id = '${param.parent_id}';

    $(function(){
        //初始化菜单
        //父栏目id，当前栏目id,活动id，类型 list 还是 details
        //parent_id,menu_id,article_id

        $.ajax({
            url: "/platform/interface/info/getSonCarouselList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id:'${param.parent_id}'
            },
            success: function(data){
                if(data.data.list != null){
                    $(".ab_left ul").empty();
                    $(data.data.list).each(function(i,event){
                        if('${param.menu_id}' == event.id){
                            gb_menu_id = event.id;
                            gb_menu_name = event.name;
                            $(".title_c span").text(gb_menu_name);
                            $(".ab_routemap").append("您的位置：首页 》 "+event.parent_name+" 》"+event.name);
                            $(".ab_left ul").append("<li class=\"LiActive\"><a href=\""+event.url+"\" target=\""+event.target+"\">"+event.name+"</a></li>");
                        }else{
                            $(".ab_left ul").append("<li ><a href=\""+event.url+"\" target=\""+event.target+"\">"+event.name+"</a></li>");
                        }
                    });

                    $(".ab_left li.LiActive").click(function () {
                        $(".ab_left li[class!='LiActive']").toggle("hidden");
                    });


                    if('${param.parent_id}' == 'de411d51d0ff4dfb9590cadc11cdf6c1'){
                        $(".ab_left ul").remove();
                        $(".col-md-3").css("width","0%");
                        $(".ab_right").css("width","100%");
                     }
                }
            }
        });
    });
</script>

