package com.ninemax.util;

import java.util.List;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
/**
 * 查询某用户是否有某个角色
 * @author ninemax-jzh
 *
 */
public class UserUtil {

	public static boolean haveRole(int userId,String roleName){
		Record role = Db.findFirst("select * from Wprim_Role where Rname_en_US = ?",roleName);
		if(role != null){
			Record userRole = Db.findFirst("select * from User_Role where UserId = ? and RoleId = ?",userId,role.getInt("Id"));
			return userRole != null;
		}
		return false;
	}
	
	public static boolean haveRole(Record user,String roleName){
		if(user != null){
			return haveRole(user.getInt("UserId"),roleName);
		}
		return false;
	}
	
	public static boolean haveAnyOfRoles(int userId,List<String> roleNames){
		if(roleNames != null && roleNames.size() != 0){
			int flag = 0;
			for(String roleName : roleNames){
				if(haveRole(userId,roleName)){
					flag++;
					break;
				}
			}
			return flag != 0;
		}
		return false;
	}
	
	public static boolean haveAnyOfRoles(Record user,List<String> roleNames){
		if(user != null){
			return haveAnyOfRoles(user.getInt("UserId"), roleNames);
		}
		return false;
	}
	
	public static boolean havaAnyOfRoles(Record user,List<Integer> roleIds){
		if(user != null){
			return haveAnyOfRoles(user.getInt("UserId"),roleIds);
		}
		return false;
	}
	
	public static boolean haveRole(Record user,Integer roleId){
		if(user != null && roleId != null){
			return haveRole(user.getInt("UserId"),roleId);
		}
		return false;
	}
	
	public static boolean haveRole(Integer userId,Integer roleId){
		if(userId != null && roleId != null){
			Record userRole = Db.findFirst("select * from User_Role where UserId = ? and RoleId = ?",userId,roleId);
			return userRole != null;
		}
		return false;
	}
	
	public static boolean haveAnyOfRoles(Integer userId,List<Integer> roleIds){
		if(userId != null && roleIds != null && roleIds.size() != 0){
			int flag = 0;
			for(Integer roleId : roleIds){
				if(haveRole(userId,roleId)){
					flag++;
					break;
				}
			}
			return flag == 1;
		}
		return false;
	}
	
	public static boolean dontHaveRole(Integer userId,String roleName){
		return !haveRole(userId, roleName);
	}
	
	public static boolean dontHaveRole(Record user,String roleName){
		return !haveRole(user, roleName);
	}
	
	public static boolean dontHaveAnyOfRoles(Integer userId,List<String> roleNames){
		int size = roleNames.size();
		if(roleNames != null && size != 0){
			int total = 0;
			for(String roleName : roleNames){
				if(haveRole(userId, roleName)){
					total++;
					break;
				}
			}
			return total == 0;
		}
		return true;
	}
	
	public static boolean dontHaveAnyOfRoles(Record user,List<String> roleNames){
		if(user != null){
			return dontHaveAnyOfRoles(user.getInt("UserId"), roleNames);
		}
		return true;
	}
}
