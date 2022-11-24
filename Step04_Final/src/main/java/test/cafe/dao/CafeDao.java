package test.cafe.dao;

public class CafeDao {
	
	private static CafeDao dao;
	/*
	 *  static 메소드는 생성자를 호출하지 않고 클래스명으로 바로 호출을 하기 때문에
	 *  메소드 호출전에 무언가 준비 작업을 하고 싶다면 static 블럭 안에서 하면 된다.
	 *  static 블럭은 해당클래스를 최초로 사용할때 한번만 실행되기 때문에
	 *  초기화 작업을 하기에 적당한 블럭이다.
	 */
	static {
		if(dao==null) {
			dao=new CafeDao();
		}
	}
	
	private CafeDao() {}
	
	public static CafeDao getInstance() {
		
		return dao;
	}
}
