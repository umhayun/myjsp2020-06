package test02.ex01.construct;


public class Hotel {
	//@Resource(name="chef2") //@Resource는 이름을 우선한다. 이름을 지정하지 않으면 , 타입
	
	private Chef chef;
	public Hotel() {
		
	}
	public Hotel(Chef chef) {
		this.chef=chef;
		System.out.println("Hotel에서 DI된 Chef 객체:"+this.chef);
	}
	public Chef getChef() {
		return chef;
	}

	public void setChef(Chef chef) {
		this.chef = chef;
	}
	
}
