package com.bysj.work.nsfz.util;
import java.util.ArrayList;
import java.util.List;

import com.bysj.work.nsfz.model.Menu;
 
/**
 * Created by tl on 2016/4/10.
 */
public class MenuRecursioin {
    //子节点
    static  List<Menu> childMenu=new ArrayList<Menu>();
 
    /**
     * 获取某个父节点下面的所有子节点
     * @param menuList
     * @param pid
     * @return
     */
    public static List<Menu> treeMenuList(List<Menu> menuList, int pid){
    	int cid,rid;
        for(Menu mu: menuList){
            //遍历出父id等于参数的id，add进子节点集合
            if(Integer.valueOf(mu.getId())==pid){
                //递归遍历下一级
            	cid=mu.getPid();rid=pid;
            	 Menu muresult=new Menu();
                 muresult.setId(cid);muresult.setPid(rid);
                 childMenu.add(muresult);
                treeMenuList(menuList,Integer.valueOf(mu.getPid()));
            }
        }
    return childMenu;
    }
 
    
    }
