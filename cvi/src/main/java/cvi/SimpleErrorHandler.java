package cvi;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class SimpleErrorHandler implements ErrorHandler {
	private boolean errorOccured=false;

	public boolean hasError() {
		return errorOccured;
	}
	
	public void reinit() {
		errorOccured = false;
	}
	
	public void warning(SAXParseException exception) throws SAXException {
		// TODO Auto-generated method stub
		errorOccured = true;
		System.out.println(exception.getMessage());
	}

	public void error(SAXParseException exception) throws SAXException {
		// TODO Auto-generated method stub
		errorOccured = true;
		System.out.println(exception.getMessage());
	}

	public void fatalError(SAXParseException exception) throws SAXException {
		// TODO Auto-generated method stub
		errorOccured = true;
		System.out.println(exception.getMessage());
	}

}
