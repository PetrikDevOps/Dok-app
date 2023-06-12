import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import loginPage from './pages/login';
import profilePage from './pages/profile';

export default function App() {
  return (
    <div>
      {profilePage()}
    </div>
  );
}
