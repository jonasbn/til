# Notes on RESTful API Design

This is a list of return codes in relation to a RESTful API design.

Some of the operations has more that one outcome, so you need to decide on what you find the most appropriate one.

<table>
<tr><th>Operation</th><th>HTTP Method</th><th>STATUS CODE ON SUCCESS</th></tr>
<tr><td>Create</td><td>POST</td><td>201 Created</td></tr>
<tr><td></td><td></td><td>202 Accepted</td></tr>
<tr><td>Read</td><td>GET</td></td><td>200 OK</td></tr>
<tr><td rowspan=4>Update</td><td rowspan=2>PUT</td><td>200 OK</td></tr>
<tr><td>204 No Content</td></tr>
<tr><td rowspan=2>PATCH</td><td>200 OK</td></tr>
<tr><td>204 No Content</td></tr>
<tr><td rowspan=3>Delete</td><td rowspan=3>DELETE</td><td>200 OK</td></tr>
<tr><td>202 Accepted</td></tr>
<tr><td>204 No Content</td></tr>
</table>

<table>
<tr><th>Operation</th><th>HTTP Method</th><th>STATUS CODE ON ERROR</th></tr>
<tr><td rowspan=2>Create</td><td rowspan=2>POST</td><td>409 Conflict</td></tr>
<tr><td>422 Unprocessable Content</td></tr>
<tr><td>Read</td><td>GET</td></td><td>404 Not Found</td></tr>
<tr><td rowspan=3>Update</td><td rowspan=2>PUT</td><td>404 Not Found</td></tr>
<tr><td>409 Conflict</td></tr>
<tr><td>PATCH</td><td>404 Not Found</td></tr>
<tr><td>Delete</td><td>DELETE</td><td>404 Not Found</td></tr>
</table>
