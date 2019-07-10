package com.bysj.work.nsfz.util;

import java.util.ArrayList;
import java.util.List;

import com.bysj.work.nsfz.model.Menu;

public class Recurrence {
	static  List<Menu> childMenu=new ArrayList<Menu>();
	 
    /**
     * 获取某个父节点下面的所有子节点
     * @param menuList
     * @param pid
     * @return
     */
	static List<Integer> resultList=new ArrayList<Integer>();
    public static List<Integer> treeMenuList(List<Menu> menuList, int pid){
    	int cid; 	
    	if(resultList.size()==0){
        	resultList.add(pid);}
        for(Menu mu: menuList){
            //遍历出父id等于参数的id，add进子节点集合
            if(Integer.valueOf(mu.getId())==pid){
                //递归遍历下一级
           	System.out.println("========="+mu.getPid()+"------>"+pid);
           	cid=mu.getPid();
        	
            resultList.add(cid);
           treeMenuList(menuList,Integer.valueOf(mu.getPid()));
//                Menu muresult=new Menu();
//                muresult.setId(cid);muresult.setPid(rid);
//                childMenu.add(muresult);
            }
        }
    return resultList;
    }
}
