import React from 'react';
import loginPage from './pages/login';
import StyleSheet from 'react-native';

const App = () => {
  return (
    <div>{loginPage(styles)}</div>
  )
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#1E1E1E',
    alignItems: 'center',
    paddingHorizontal: 20,
    justifyContent: 'center',
  },
  logoContainer: {
    alignItems: 'center',
    marginBottom: 30,
    marginTop: 30,
  },
  logo: {
    fontSize: 32,
    fontWeight: 'bold',
    color: '#FFFFFF',
  },
  line: {
    width: '100%',
    height: 1,
    backgroundColor: '#474747',
    marginVertical: 20,
  },
  inputContainer: {
    width: '100%',
    marginBottom: 20,
  },
  label: {
    fontSize: 16,
    color: '#FFFFFF',
    alignSelf: 'flex-start',
    marginBottom: 5,
  },
  input: {
    width: '100%',
    height: 40,
    backgroundColor: 'rgba(217, 217, 217, 0.32)',
    marginBottom: 15,
    paddingHorizontal: 10,
    borderRadius: 5,
  },
  loginButton: {
    width: '100%',
    height: 40,
    backgroundColor: '#7BB49F',
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 15,
    borderRadius: 5,
  },
  loginButtonText: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#1E1E1E',
  },
  signupLink: {
    marginBottom: 10,
  },
  signupLinkText: {
    fontSize: 14,
    color: '#7BB49F',
    textDecorationLine: 'underline',
    marginBottom: 10,
  },
});

export default App;