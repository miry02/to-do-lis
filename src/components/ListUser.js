import React, { useState, useEffect } from "react";

export default function ListUser() {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    // Fetch users data when the component mounts
    fetchUsers();
  }, []);

  const fetchUsers = () => {
    fetch('http://localhost:8080/to-do-lis-main/api/index.php') // Adjust the URL to match your backend endpoint
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then(data => {
        // Update state with the fetched users data
        setUsers(data);
      })
      .catch(error => {
        console.error('Error fetching users:', error);
      });
  };

  const handleEditUser = (userId) => {
    // Redirect to editUser.php with the user's ID as a query parameter
    window.location.href = `http://localhost:8080/to-do-lis-main/api/editUser.php?id=${userId}`;
  };
  const handleDeleteUser = (userId) => {
    // Make a request to the PHP script to delete the user
    fetch(`http://localhost:8080/to-do-lis-main/api/deleteUser.php?id=${userId}`)
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      // Reload the page after successful deletion
      window.location.reload();
    })
    .catch(error => {
      console.error('Error deleting user:', error);
    });
  };
  
  

  return (
    <div>
      <h1>List Users</h1>
      <table>
        <thead>
          <tr>
            <th>#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          {/* Map through the users array and render each user */}
          {users.map((user, index) => (
            <tr key={index}>
              <td>{user.id}</td>
              <td>{user.name}</td>
              <td>{user.email}</td>
              <td>{user.mobile}</td>
              <td>
                {/* Add your action buttons here */}
                <button onClick={() => handleEditUser(user.id)}>Edit</button> &nbsp;
                <button onClick={() => handleDeleteUser(user.id)}>Delete</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
