import React, { useState } from "react";

export default function EditUser({ user, onUpdate }) {
  const [editedUser, setEditedUser] = useState({ ...user });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setEditedUser((prevUser) => ({
      ...prevUser,
      [name]: value,
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    // Call the onUpdate function to update the user data
    onUpdate(editedUser);
  };

  return (
    <div>
      <form
        method="post"
        action="http://localhost:8080/api/updateUser.php"
        onSubmit={handleSubmit}
      >
        <table>
          <tbody>
            <tr>
              <td>{editedUser.id}</td>
              <td>
                <input
                  type="text"
                  name="name"
                  value={editedUser.name}
                 
                />
              </td>
              <td>
                <input
                  type="email"
                  name="email"
                  value={editedUser.email}
                
                />
              </td>
              <td>
                <input
                  type="tel"
                  name="mobile"
                  value={editedUser.mobile}
                  
                />
              </td>
              <td>
                <input type="hidden" name="id" value={editedUser.id} />
                <button type="submit">Save</button>
              </td>
            </tr>
          </tbody>
        </table>
      </form>
    </div>
  );
}
