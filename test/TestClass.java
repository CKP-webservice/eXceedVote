package com.ckp.test;
import com.ckp.model.*;
public class TestClass extends junit.framework.TestCase {
	public void testAccount()
	{
		Account ac = Account.getAccount("Pawis", "Chairoj", Account.AccountType.VOTER, true);
		assertEquals("Pawis", ac.getName());
		assertEquals("Chairoj", ac.getLastName());
		assertEquals(Account.AccountType.VOTER, ac.getType());
		assertTrue(ac.isVote());
	}
	
	public void testProject()
	{
		Project pj = Project.getProject("World-note", "zero-bug", "img", 1);
		assertEquals("World-note", pj.getProjectName());
		assertEquals("zero-bug", pj.getProjectDetail());
		assertEquals("img", pj.getImgURL());
		assertEquals(1, pj.getProjectNumber());
	}	
	
	public void testQuestion()
	{
		Question q = Question.getQuestion("question1");
		assertEquals("question1", q.getQuestion());
	}
}
