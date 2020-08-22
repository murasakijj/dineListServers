package view;

import javax.servlet.http.HttpServletRequest;

import org.w3c.dom.Document;

/**
 * It is a global interface for views.
 * @author nakataryosuke
 *
 */
public class ViewGlobalIF {
	//// COMMON
	private String formID;
	private String actionID;
	private String actionParameter;
	// XML file: it says the order of process and I/F(inputs and outputs)
	private String processID;
	private Document XMLDocument;
	// result of processes
	private String returnCode;
	// destination
	private String normalView;
	private String errorView;
	// frmLogin: login, password
	private String login;
	private String password;

	public ViewGlobalIF(HttpServletRequest request) {
	}

	//Getter Setter
	public String getFormID() {
		return formID;
	}
	public void setFormID(String formID) {
		this.formID = formID;
	}
	public String getActionID() {
		return actionID;
	}
	public void setActionID(String actionID) {
		this.actionID = actionID;
	}
	public String getActionParameter() {
		return actionParameter;
	}
	public void setActionParameter(String actionParameter) {
		this.actionParameter = actionParameter;
	}
	public Document getXMLDocument() {
		return XMLDocument;
	}
	public void setXMLDocument(Document xMLDocument) {
		XMLDocument = xMLDocument;
	}
	public String getReturnCode() {
		return returnCode;
	}
	public void setReturnCode(String returnCode) {
		this.returnCode = returnCode;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getProcessID() {
		return processID;
	}
	public void setProcessID(String processID) {
		this.processID = processID;
	}
	public String getNormalView() {
		return normalView;
	}
	public void setNormalView(String normalView) {
		this.normalView = normalView;
	}
	public String getErrorView() {
		return errorView;
	}
	public void setErrorView(String errorView) {
		this.errorView = errorView;
	}
}
