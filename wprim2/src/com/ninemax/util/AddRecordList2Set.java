package com.ninemax.util;

import java.util.List;
import java.util.Set;

import com.jfinal.plugin.activerecord.Record;

public class AddRecordList2Set {

	public static Set<Integer> add(Set<Integer> set,List<Record> list){
		int listSize = list.size();
		if(list != null && listSize != 0){
			for(Record r : list){
				set.add(r.getInt("JournalId"));
			}
		}
		return set;
	}
}
