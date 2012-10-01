package Model;

public class Account {
	public enum AccountType{
		VOTER,ADMIN
	}
	private String userName;
	private String passWord;
	private AccountType type;
	private String name;
	private String lastName;
	
	public static Account getAccount(String userName,String passWord){
		return new Account(userName,passWord);
	}
	
	private Account(String userName,String passWord){
		this.userName = userName;
		this.passWord = passWord;
		this.type = AccountType.VOTER;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public AccountType getType() {
		return type;
	}

	public void setType(AccountType type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}
