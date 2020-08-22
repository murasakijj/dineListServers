package test;

import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;

import javax.servlet.ServletException;

import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

import util.Constant;
import view.ViewController;
import view.ViewGlobalIF;

class TestViewController {
	private String para_login = "login";
	private String para_password = "password";
	private MockHttpServletRequest request = new MockHttpServletRequest();
	private MockHttpServletResponse response = new MockHttpServletResponse();
	// test user
	private String user = "test";
	private String password = "password";
	private String para_transitionSrc = "transitionSrc";
	private String transitionFromLogin = "frmLogin.login";
	private String processID_userAuthrorization = "userAuthorization";

	@Test
	void testConvertRequestToViewGlobalIF() {
		request.setParameter(para_login, user);
		request.setParameter(para_password, password);
		request.setParameter(para_transitionSrc, transitionFromLogin);

		ViewController vc = new ViewController();
		ViewGlobalIF vgIF = vc.convertRequestToViewGlobalIF(request);
		// Test Answer
		String transitionSrc = vgIF.getFormID() + Constant.STR_PERIOD + vgIF.getActionID();
		assertEquals(request.getParameter(para_transitionSrc), transitionSrc);
		assertEquals(request.getParameter(para_password), vgIF.getPassword());
		assertEquals(request.getParameter(para_password), vgIF.getPassword());
		assertEquals(request.getParameter(para_login), vgIF.getLogin());
		assertEquals(request.getParameter(para_password), vgIF.getPassword());
	}

	@Test
	void testSetupIFforLogic_Login() throws ServletException, IOException {
		request.setParameter(para_login, user);
		request.setParameter(para_password, password);
		request.setParameter(para_transitionSrc, transitionFromLogin);

		//doGet(request, response);
		ViewController vc = new ViewController();
		ViewGlobalIF vgIF = vc.setupIFforLogic(request);
		// Test Answer
		String transitionSrc = vgIF.getFormID() + Constant.STR_PERIOD + vgIF.getActionID();
		assertEquals(request.getParameter(para_transitionSrc), transitionSrc);
		assertEquals(request.getParameter(para_password), vgIF.getPassword());
		assertEquals(request.getParameter(para_password), vgIF.getPassword());
		assertEquals(request.getParameter(para_login), vgIF.getLogin());
		assertEquals(request.getParameter(para_password), vgIF.getPassword());
		assertEquals(processID_userAuthrorization, vgIF.getProcessID());
	}
}
