import React, { useState } from "react";

export default function Login() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const handleemailChange = (e) => {
    setEmail(e.target.value);
  };

  const handlePasswordChange = (e) => {
    setPassword(e.target.value);
  };

  
  

  return (
    <div>
      <h1>Login</h1>
      <form method="post" action="http://localhost:8080/to-do-lis-main/api/login.php" className="form">
        <div className="inputbox">
        <label className="emailfield">
          Email:
          <input
            type="email"
            name="email"
            value={email}
            onChange={handleemailChange}
          />
        </label>
        </div>
      
        <div className="inputbox">
         <label>
          Password:
          <input
            type="password"
            name="password"
            value={password}
            onChange={handlePasswordChange}
          />
        </label>
        
        </div>
        <div className="inputbox">
        <button type="submit">Login</button>
        </div>
      </form>
    </div>
  );
}
