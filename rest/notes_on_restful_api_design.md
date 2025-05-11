# Notes on RESTful API Design

This is a list of return codes in relation to a RESTful API design.

Some of the operations can have more than one outcome, so you need to decide on which one you find the most appropriate for your use case.

<table>
<tr><th>Operation</th><th>HTTP Method</th><th>Status Code On Success</th><th>Notes</th></tr>
<tr><td rowspan=2>Create</td><td rowspan=2>POST</td><td>201 Created</td><td>When the object is created immediately</td></tr>
<tr><td>202 Accepted</td><td>When the object is accepted but not created immediately</td</tr>
<tr><td>Read</td><td>GET</td></td><td>200 OK</td><td>When the object requested in included in the response</td></tr>
<tr><td rowspan=4>Update</td><td rowspan=2>PUT</td><td>200 OK</td><td>When the updated object is returned as part of the response</td></tr>
<tr><td>204 No Content</td><td>When the updated object is not returned as part of the response</td></tr>
<tr><td rowspan=2>PATCH</td><td>200 OK</td><td>When the updated object is returned as part of the response</td></tr>
<tr><td>204 No Content</td><td>When the updated object is not returned as part of the response</td></tr>
<tr><td rowspan=3>Delete</td><td rowspan=3>DELETE</td><td>200 OK</td><td>When an object changes status to deleted or similar (<i>soft delete</i>) and is returned as part of the response </td></tr>
<tr><td>202 Accepted</td><td>When an object changes status to deleted or similar and is deleted a part of a garbage collection process or similar</td></tr>
<tr><td>204 No Content</td><td>When an object is deleted immediately and the object is not returned</td></tr>
</table>

<table>
<tr><th>Operation</th><th>HTTP Method</th><th>Status Code On Error</th><th>Notes</th></tr>
<tr><td rowspan=4>Create</td><td rowspan=4>POST</td><td>400 Bad Request</td><td>If the submitted data are malformed</td></tr>
<tr><td>404 Not Found</td><td>If referenced objects do not exist</td></tr>
<tr><td>409 Conflict</td><td>If you handle that the same object cannot be created more than once</td></tr>
<tr><td>422 Unprocessable Content</td><td>If submitted data are validated and validation fails</td></tr>
<tr><td>Read</td><td>GET</td></td><td>404 Not Found</td><td>If referenced object/objects do not exist</td></tr>
<tr><td rowspan=5>Update</td><td rowspan=3>PUT</td><td>400 Bad request</td><td>If the submitted data are malformed</td></tr>
<tr><td>404 Not Found</td><td>If referenced object/objects do not exist</td></tr>
<tr><td>409 Conflict</td><td>If you handle that the object cannot be updated inconsistently</td></tr>
<tr><td rowspan=2>PATCH</td><td>400 Bad Request</td><td>If the submitted data are malformed</td></tr>
<tr><td>404 Not Found</td><td>If referenced object/objects do not exist</td></tr>
<tr><td>Delete</td><td>DELETE</td><td>404 Not Found</td><td>If referenced object do not exist</td></tr>
</table>

<table>
<tr><th>Status Code On Error</th><th>Notes</th></tr>
<tr><td>400 Bad Request</td><td>If you receive a request with malformed data</td></tr>
<tr><td>401 Unauthorized</td><td>If you receive a unauthenticated request, to a resource requiring authentication</td></tr>
<tr><td>403 Forbidden</td><td>If you receive a authenticated but unauthorized request, to a resource requiring authorization</td></tr>
<tr><td>405 Method not allowed</td><td>If you receive a HTTP method not supported</td></tr>
<tr><td>429 Too Many Requests</td><td>If you support rate limiting</td></tr>
<tr><td>500 Internal Server Error</td><td>For you unhandled errors and errors server side</td></tr>
</table>

<table>
<tr><th>HTTP Method</th><th>Idempotent</th><th>Can become Idempotent</th></tr>
<tr><td>POST</td><td>No</td><td>Yes</td></tr>
<tr><td>PUT</td><td>Yes</td></tr>
<tr><td>PATCH</td><td>No</td></tr>
<tr><td>GET</td><td>Yes</td></tr>
<tr><td>HEAD</td><td>Yes</td></tr>
<tr><td>DELETE</td><td>Yes</td></tr>
<tr><td>OPTIONS</td><td>Yes</td></tr>
</table>

## Resources and References

- [MDN: 200 OK](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/200)
- [MDN: 201 Created](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/201)
- [MDN: 202 Accepted](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/202)
- [MDN: 204 No Content](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/204)

- [MDN: 400 Bad Request](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/400)
- [MDN: 401 Unauthorized](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/401)
- [MDN: 403 Forbidden](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/403)
- [MDN: 404 Not Found](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/404)
- [MDN: 405 Method not allowed](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/405)
- [MDN: 409 Conflict](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/409)
- [MDN: 429 Too many requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/429)

- [MDN: 500 Server Error](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/500)
- [MDN: 502 Bad Gateway](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/502)
- [MDN: 503 Service Unavailable](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/503)
- [MDN: 504 Gateway Timeout](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/504)