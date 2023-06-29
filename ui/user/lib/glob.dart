library user.glob;

// Indicates whether or not we are logged in.
// Note: if a request fails with `401` then you shall be logged out.
bool isLoggedIn = false;
// The url of the backend API both including the `https://` and the trailing `/`
const String appUrl = 'https://app.vincus.me/';