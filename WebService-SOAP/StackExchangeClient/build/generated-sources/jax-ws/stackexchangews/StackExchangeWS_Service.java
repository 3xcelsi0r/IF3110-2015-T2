
package stackexchangews;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.10-b140803.1500
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "StackExchangeWS", targetNamespace = "http://StackExchangeWS/", wsdlLocation = "http://localhost:8080/StackExchangeWS/StackExchangeWS?wsdl")
public class StackExchangeWS_Service
    extends Service
{

    private final static URL STACKEXCHANGEWS_WSDL_LOCATION;
    private final static WebServiceException STACKEXCHANGEWS_EXCEPTION;
    private final static QName STACKEXCHANGEWS_QNAME = new QName("http://StackExchangeWS/", "StackExchangeWS");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8080/StackExchangeWS/StackExchangeWS?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        STACKEXCHANGEWS_WSDL_LOCATION = url;
        STACKEXCHANGEWS_EXCEPTION = e;
    }

    public StackExchangeWS_Service() {
        super(__getWsdlLocation(), STACKEXCHANGEWS_QNAME);
    }

    public StackExchangeWS_Service(WebServiceFeature... features) {
        super(__getWsdlLocation(), STACKEXCHANGEWS_QNAME, features);
    }

    public StackExchangeWS_Service(URL wsdlLocation) {
        super(wsdlLocation, STACKEXCHANGEWS_QNAME);
    }

    public StackExchangeWS_Service(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, STACKEXCHANGEWS_QNAME, features);
    }

    public StackExchangeWS_Service(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public StackExchangeWS_Service(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns StackExchangeWS
     */
    @WebEndpoint(name = "StackExchangeWSPort")
    public StackExchangeWS getStackExchangeWSPort() {
        return super.getPort(new QName("http://StackExchangeWS/", "StackExchangeWSPort"), StackExchangeWS.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns StackExchangeWS
     */
    @WebEndpoint(name = "StackExchangeWSPort")
    public StackExchangeWS getStackExchangeWSPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://StackExchangeWS/", "StackExchangeWSPort"), StackExchangeWS.class, features);
    }

    private static URL __getWsdlLocation() {
        if (STACKEXCHANGEWS_EXCEPTION!= null) {
            throw STACKEXCHANGEWS_EXCEPTION;
        }
        return STACKEXCHANGEWS_WSDL_LOCATION;
    }

}