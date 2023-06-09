import React from 'react';
import { View, Text, StyleSheet, TextInput, TouchableOpacity, Linking } from 'react-native';

const App = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.logo}>DÖK App</Text>
      <View style={styles.line} />
      <Text style={styles.label}>name</Text>
      <TextInput style={styles.input} />
      <Text style={styles.label}>password</Text>
      <TextInput secureTextEntry={true} style={styles.input} />
      <TouchableOpacity style={styles.loginButton}>
        <Text style={styles.loginButtonText}>login</Text>
      </TouchableOpacity>
      <TouchableOpacity onPress={() => Linking.openURL('https://lobotomy.store')} style={styles.signupLink}>
        <Text style={styles.signupLinkText}>Don't have an account?</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#1E1E1E',
    alignItems: 'center',
    justifyContent: 'center',
    paddingHorizontal: 20,
    borderRadius: 10,
  },
  logo: {
    fontSize: 32,
    fontWeight: 'bold',
    color: '#FFFFFF',
    marginBottom: 10,
  },
  line: {
    width: '100%',
    height: 1,
    backgroundColor: '#FFFFFF',
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
  },
});

export default App;
