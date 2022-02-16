package test_java_config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import test01.SpringTest;
import test02.ex01.construct.Chef;
import test02.ex01.construct.Hotel;
import test02.ex02.setter.DatabaseDev;

@Configuration
public class JavaConfig {
	//<bean id="good" class="test01.SpringTest"/>
	@Bean
	public SpringTest good() {
		return new SpringTest();
	}
	//<bean id="chef" class="test02.ex01.construct.Chef" >
	//<constructor-arg ref="chef"></constructor-arg>
	//</bean>
	@Bean
	public Chef chef() {
		return new Chef();
	}
	//<bean id="hotel" class="test02.ex01.construct.Hotel" scope="prototype"/>
	@Bean
	public Hotel hotel() {
		//hotel은 생성자로 Chef객체를 받기때문에 매개값으로 chef()함수를 주입합니다.
		return new Hotel(chef());
	}

	/*
	 * <bean id="DBdev" class="test02.ex02.setter.DatabaseDev"> <property name="url"
	 * value="jdbc:oracle:thin:@localhost:1521/XEPDB1"/> <property name="uid"
	 * value="myjsp"/> <property name="upw" value="myjsp"/> </bean>
	 */
	@Bean
	public DatabaseDev DBdev() {
		//setter를 통해 값을 받고있기 때문에 객체를 생성하고 세터 지정후 반환
		DatabaseDev dv=new DatabaseDev();
		dv.setUrl("jdbc:oracle:thin:@localhost:1521/XEPDB1");
		dv.setUpw("myjsp");
		dv.setUrl("myjsp");
		return dv;
	}


}

