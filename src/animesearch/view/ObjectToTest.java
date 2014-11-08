
public class ObjectToTest {
	
	public static final String[] PROPERTY = {"Property 1","Property 2"};
	
	private String avatar;
	private String name1;
	private String name2;

	public ObjectToTest() {
		super();
	}

	public ObjectToTest(String avatar, String name1, String name2) {
		super();
		this.avatar = avatar;
		this.name1 = name1;
		this.name2 = name2;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getName1() {
		return name1;
	}

	public void setName1(String name1) {
		this.name1 = name1;
	}

	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

}
