<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0">

<channel>
  <title>rss-summary: <c:out value="${summarized_feed.url}"/></title>
  <link><c:out value="${summarized_feed.url}"/></link>
  <description>${summarized_feed.itemCount} items via rss-summary/rss-summary @ github</description>
  <c:forEach var="feedEntry" items="${summarized_feed.entries}">
  <item>
    <title><c:out value="${feedEntry.title}" /></title>
    <description><c:out value="${feedEntry.summary}" /></description>
    <link>${feedEntry.link}</link>
    <guid isPermaLink="false">${feedEntry.link}</guid>
  </item>
  </c:forEach>
</channel>

</rss>
