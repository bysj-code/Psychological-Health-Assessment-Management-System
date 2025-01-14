const menu = {
    list() {
        return [
 {
     "backMenu":[
         {
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "新增",
                         "修改",
                         "删除"
                     ],
                     "menu":"管理员管理",
                     "menuJump":"列表",
                     "tableName":"users"
                 }
             ],
             "menu":"管理员管理"
         }
 		,{
 		    "child":[
 		        {
 		            "buttons":[
 		                "查看",
 		                "新增",
 		                "修改",
 		                "删除"
 		            ],
 		            "menu":"咨询师管理",
 		            "menuJump":"列表",
 		            "tableName":"zhixunshi"
 		        }
 		    ],
 		    "menu":"咨询师管理"
 		}
 		,{
 		    "child":[
 		        {
 		            "buttons":[
 		                "查看",
 		                "新增",
 		                "修改",
 		                "删除"
 		            ],
 		            "menu":"用户管理",
 		            "menuJump":"列表",
 		            "tableName":"yonghu"
 		        }
 		    ],
 		    "menu":"用户管理"
 		}
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "新增",
                         "修改",
                         "删除"
                     ],
                     "menu":"心理健康管理",
                     "menuJump":"列表",
                     "tableName":"xinlijiankang"
                 }
                 ,
                 {
                     "buttons":[
                         "查看",
                         "修改",
                         "删除"
                     ],
                     "menu":"心理健康留言管理",
                     "menuJump":"列表",
                     "tableName":"xinlijiankangLiuyan"
                 }
                 ,
                 {
                     "buttons":[
                         "查看",
                         "删除"
                     ],
                     "menu":"心理健康收藏管理",
                     "menuJump":"列表",
                     "tableName":"xinlijiankangCollection"
                 }
             ],
             "menu":"心理健康管理"
         }
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "新增",
                         "修改",
                         "删除"
                     ],
                     "menu":"咨询师预约管理",
                     "menuJump":"列表",
                     "tableName":"zhixunshiYuyue"
                 }
             ],
             "menu":"咨询师预约管理"
         }
		 ,{
		     "child":[
		         {
		             "buttons":[
		                 "查看",
		                 "新增",
		                 "修改",
		                 "添加题目",
		                 "删除"
		             ],
		             "menu":"心理测评管理",
		             "menuJump":"列表",
		             "tableName":"exampaper"
		         }
		     ],
		     "menu":"心理测评管理"
		 }
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "新增",
                         "修改",
                         "删除"
                     ],
                     "menu":"题目管理",
                     "menuJump":"列表",
                     "tableName":"examquestion"
                 }
             ],
             "menu":"题目管理"
         }
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "删除"
                     ],
                     "menu":"心理测评记录",
                     "menuJump":"列表",
                     "tableName":"examrecord"
                 }
             ],
             "menu":"心理测评管理"
         }
 		,{
 		    "child":[
 		        {
 		            "buttons":[
 		                "查看",
 		                "新增",
 		                "修改",
 		                "删除"
 		            ],
 		            "menu":"通知公告管理",
 		            "menuJump":"列表",
 		            "tableName":"news"
 		        }
 		    ],
 		    "menu":"通知公告管理"
 		}
 		,{
 		    "child":[
 		        {
 		            "buttons":[
 		                "查看",
 		                "新增",
 		                "删除",
 		                "修改"
 		            ],
 		            "menu":"公告类型管理",
 		            "menuJump":"列表",
 		            "tableName":"dictionaryNews"
 		        }
 		        ,
 		        {
 		            "buttons":[
 		                "查看",
 		                "新增",
 		                "删除",
 		                "修改"
 		            ],
 		            "menu":"心理健康类型管理",
 		            "menuJump":"列表",
 		            "tableName":"dictionaryXinlijiankang"
 		        }
 		    ],
 		    "menu":"基础数据管理"
 		}
		,{
		    "child":[
		        {
		            "buttons":[
		                "查看",
		                "新增",
		                "修改",
		                "删除"
		            ],
		            "menu":"论坛管理",
		            "menuJump":"列表",
		            "tableName":"forum"
		        }
		    ],
		    "menu":"论坛信息"
		}
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "新增",
                         "修改",
                         "删除"
                     ],
                     "menu":"轮播图管理",
                     "menuJump":"列表",
                     "tableName":"config"
                 }
             ],
             "menu":"轮播图信息"
         }
     ],
     "frontMenu":[],
     "hasBackLogin":"是",
     "hasBackRegister":"否",
     "hasFrontLogin":"否",
     "hasFrontRegister":"否",
     "roleName":"管理员",
     "tableName":"users"
 },
 {
     "backMenu":[
         {
             "child":[
                 {
                     "buttons":[
                         "查看",
							"新增",
							"修改",
							"删除"
                     ],
                     "menu":"心理健康管理",
                     "menuJump":"列表",
                     "tableName":"xinlijiankang"
                 }
             ],
             "menu":"心理健康管理"
         }
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "新增",
                         "修改",
                         "删除"
                     ],
                     "menu":"心理咨询管理",
                     "menuJump":"列表",
                     "tableName":"zhixunshiChat"
                 }
             ],
             "menu":"心理咨询管理"
         }
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "删除"
                     ],
                     "menu":"咨询师预约管理",
                     "menuJump":"列表",
                     "tableName":"zhixunshiYuyue"
                 }
             ],
             "menu":"咨询师预约管理"
         }
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "新增",
                         "修改",
                         "添加题目",
                         "删除"
                     ],
                     "menu":"心理测评管理",
                     "menuJump":"列表",
                     "tableName":"exampaper"
                 }
             ],
             "menu":"心理测评管理"
         }
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "新增",
                         "修改",
                         "删除"
                     ],
                     "menu":"题目管理",
                     "menuJump":"列表",
                     "tableName":"examquestion"
                 }
             ],
             "menu":"题目管理"
         }
         ,{
             "child":[
                 {
                     "buttons":[
                         "查看",
                         "删除"
                     ],
                     "menu":"心理测评记录",
                     "menuJump":"列表",
                     "tableName":"examrecord"
                 }
             ],
             "menu":"心理测评管理"
         }
 		,{
 		    "child":[
 		        {
 		            "buttons":[
 		                "查看"
 		            ],
 		            "menu":"通知公告管理",
 		            "menuJump":"列表",
 		            "tableName":"news"
 		        }
 		    ],
 		    "menu":"通知公告管理"
 		},
		,{
		    "child":[
		        {
		            "buttons":[
		                "查看",
		                "新增",
		                "删除"
		            ],
		            "menu":"论坛管理",
		            "menuJump":"列表",
		            "tableName":"forum"
		        }
		    ],
		    "menu":"论坛信息"
		}
     ],
     "frontMenu":[],
     "hasBackLogin":"是",
     "hasBackRegister":"否",
     "hasFrontLogin":"否",
     "hasFrontRegister":"否",
     "roleName":"咨询师",
     "tableName":"zhixunshi"
 }
	
]
    }
}
export default menu;
