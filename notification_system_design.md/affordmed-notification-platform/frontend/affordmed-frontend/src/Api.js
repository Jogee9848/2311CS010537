const fetchNotificationFeed = async () => {
  try {
    // Pointing directly to the Spring Boot REST endpoint
    const targetUrl = `http://localhost:8080/api/v1/notifications`;
    
    const res = await fetch(targetUrl);
    const output = await res.json();
    if (output.success) {
      setNotifications(output.data); // Update state with backend database rows
    }
  } catch (err) {
    console.error("Connection failed to Spring Boot backend:", err);
  }
};