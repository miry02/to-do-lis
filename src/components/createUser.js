export default function CreateUser() {

  return (
    <div>
      <h1>Create User</h1>

      <form  action="http://localhost:8080/to-do-lis-main/api/process_form.php" method="post"> {/* Set action attribute */}
        <table cellSpacing="10">
          <tbody>
            <tr>
              <th>
                <label>Name: </label>
              </th>
              <td>
                <input type="text" name="name" />
              </td>
            </tr>
            <tr>
              <th>
                <label>Email: </label>
              </th>
              <td>
                <input type="text" name="email"  />
              </td>
            </tr>
            <tr>
              <th>
                <label>Password: </label>
              </th>
              <td>
                <input type="password" name="password"  />
              </td>
            </tr>
            <tr>
              <th>
                <label>Mobile: </label>
              </th>
              <td>
                <input type="text" name="mobile" />
              </td>
            </tr>
            <tr>
              <td>
                <button type="submit">Save</button> {/* Change button type to "submit" */}
              </td>
            </tr>
          </tbody>
        </table>
      </form>
    </div>
  );
}
