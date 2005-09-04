<jsp:root version="1.2" xmlns:jsp="http://java.sun.com/JSP/Page" 
  xmlns:display="urn:jsptld:http://displaytag.sf.net/el"
  xmlns:c="urn:jsptld:../WEB-INF/tld/c.tld">
  <jsp:text> <![CDATA[<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> ]]> </jsp:text>
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
      <title>Displaytag unit test</title>
    </head>
    <body>
      <jsp:scriptlet> <![CDATA[
          java.util.List testData = new java.util.ArrayList();
          testData.add(new org.displaytag.test.KnownValue());
          request.setAttribute( "test", testData);
      ]]> </jsp:scriptlet>
      
      <c:forEach items="1,2">
	      <display:table name="requestScope.test">
	        <display:column property="ant" />
	      </display:table>
      </c:forEach>
      <c:forEach items="1,2">
      <display:table name="${requestScope.test}">
        <display:column property="ant" />
      </display:table>
      </c:forEach>
      <display:table name="${requestScope.test}">
        <display:column property="ant" />
      </display:table>
      <display:table name="${requestScope.test}">
        <display:column property="ant" />
      </display:table>
    </body>
  </html>
</jsp:root>