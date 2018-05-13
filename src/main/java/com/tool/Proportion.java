package com.tool;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import com.model.Pain;
import com.model.RiskGoodsPet;


public class Proportion {
	public List<Pain> setProportion(List<RiskGoodsPet> Risk){
		List<Pain> pains=new ArrayList<Pain>();
		int i=0,j=0,k=0,l=0,total=0;
		for(RiskGoodsPet risk:Risk){
			if(risk.getType().equals("未审核")){
				i++;
			}
			else if(risk.getType().equals("已通过")){
				j++;
			}
			else if(risk.getType().equals("审核中...")){
				k++;
			}
			else if(risk.getType().equals("未通过")){
				l++;
			}
			total++;
		}
		Pain pain1=new Pain("未审核",calculate(i,total));
		Pain pain2=new Pain("已通过",calculate(j,total));
		Pain pain3=new Pain("审核中",calculate(k,total));
		Pain pain4=new Pain("未通过",calculate(l,total));
		pains.add(pain1);
		pains.add(pain2);
		pains.add(pain3);
		pains.add(pain4);
		return pains;
	}
	
	public float calculate(int x,int y){
		float z = (float)x/(float)y;
		BigDecimal b = new BigDecimal(z);
		return b.setScale(2,BigDecimal.ROUND_HALF_UP).floatValue();
	}

	public Object UrgentProportion(List<RiskGoodsPet> risk) {
		List<Pain> pains=new ArrayList<Pain>();
		int n=0,m=0,sum=0;
		for(RiskGoodsPet risks:risk){
			if(risks.getRurgents().equals("是")){
				n++;
			}else{
				m++;
			}
			sum++;
		}
		Pain paina=new Pain("紧急审核",calculate(n,sum));
		Pain painb=new Pain("非紧急审核",calculate(m,sum));
		pains.add(paina);
		pains.add(painb);
		return pains;
	}

	public Object getProportion(List<RiskGoodsPet> risk) {
		List<Pain> pains=new ArrayList<Pain>();
		int i=0,j=0,k=0,l=0,total=0;
		for(RiskGoodsPet risks:risk){
			if(risks.getType().equals("未审核")){
				i++;
			}
			else if(risks.getType().equals("已通过")){
				j++;
			}
			else if(risks.getType().equals("审核中...")){
				k++;
			}
			else if(risks.getType().equals("未通过")){
				l++;
			}
			total++;
		}
		Pain pain1=new Pain("未审核",i);
		Pain pain2=new Pain("已通过",j);
		Pain pain3=new Pain("审核中",k);
		Pain pain4=new Pain("未通过",l);
		Pain pain5=new Pain("总计",total);
		pains.add(pain1);
		pains.add(pain2);
		pains.add(pain3);
		pains.add(pain4);
		pains.add(pain5);
		return pains;
	}
}

