import { View, StyleSheet, Text, TouchableOpacity, Linking, Image } from 'react-native';

let profilePage = () => {
    const styles = StyleSheet.create({
        View: {
            borderColor: 'red',
            borderRadius: '1px',
            borderStyle: 'solid',
        },
        container: {
            flex: 1,
            backgroundColor: '#1E1E1E',
            alignItems: 'center',
            justifyContent: 'flex-start',
            paddingHorizontal: 20,
            height: '100vh',
            width: '100vw',
        },
        logoContainer: {
            marginTop: '5vh',
            alignItems: 'center',
            marginBottom: '25vh',
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
        loginButton: {
            width: '100%',
            height: 50,
            backgroundColor: '#7BB49F',
            alignItems: 'center',
            justifyContent: 'center',
            marginTop: 50,
            marginBottom: 50,
            borderRadius: 5,
            flexDirection: 'row',
        },
        loginButtonText: {
            fontSize: 16,
            fontWeight: 'bold',
            color: '#1E1E1E',
            marginLeft: 10,
        },
        userDataContainer: {
            width: '100%',
            display: 'flex',
            flexDirection: 'column',
            textAlign: 'center',
        },
    });

    return (
        <View style={styles.container}>
            <View style={styles.userDataContainer}>
                <Text style={styles.logo}>Gipsz Jakab Jákob</Text>
            </View>
            <View style={styles.line} />
            <TouchableOpacity style={styles.loginButton}>
                <FontAwesome name="microsoft" size={24} color="#1E1E1E" />
                <Text style={styles.loginButtonText}>Login with Microsoft</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => Linking.openURL('https://lobotomy.store')}>
            </TouchableOpacity>
            <View style={styles.line} />
        </View>
    );
};

export default profilePage;
