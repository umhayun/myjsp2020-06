package test01;

import java.sql.ResultSet;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.core.convert.Property;


import test02.ex01.construct.Chef;
import test02.ex01.construct.Hotel;
import test02.ex02.setter.DatabaseDev;
import test_java_config.JavaConfig;

public class MainClass {

	public static void main(String[] args) {
//		SpringTest st=new SpringTest(); //기존방식으로 객체 생성
//		st.method();					//객체에 생성된 메서드 실행
		//XML을 로드, applicationContext.xml을 이용한  ct객체 생성
//		GenericXmlApplicationContext ct=
//				new GenericXmlApplicationContext("classpath:applicationContext.xml");
//		//ct객체에 의해서 생성된 bean을 호출(getBean("객체이름", 불러올 클래스 object)
//		SpringTest test=ct.getBean("good", SpringTest.class);
//		test.method(); //test.객체에 스프링 Container에 생성되어 호출된 객체 저장. method()사용
//		//ApplicationContext.xml에서 정의된 Bean 호출
//		Hotel hotel=ct.getBean("hotel", Hotel.class);
//		//XML에 정의된 DI에 의해서 Chef클래스를 별도로 불러오지 않고, 정의하지 않은 상태에서불러옴
//		//의존성 주입처리됨.
//		hotel.getChef().cook();
//		System.out.println("hotel객체 : "+hotel);
//		Hotel hotel2=ct.getBean("hotel", Hotel.class);
//		System.out.println("hotel객체 : "+hotel2);
//		DatabaseDev dev=ct.getBean("DBdev", DatabaseDev.class);
//		
//		//dev.test();
//		
//		Chef cf=ct.getBean("chef", Chef.class);
//		System.out.println("Chef 객체 : "+cf);
//		Chef cf2=ct.getBean("chef2", Chef.class);
//		System.out.println("Chef2 객체 : "+cf2);
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext(JavaConfig.class);
		SpringTest t=ctx.getBean("good", SpringTest.class);
		t.method();
		Hotel h=ctx.getBean("hotel", Hotel.class);
		h.getChef().cook();
				
		
		
		
		
		
		//ct.close();	//ct객체 닫기
		ctx.close();
	}
}
