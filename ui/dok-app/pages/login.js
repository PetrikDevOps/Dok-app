import { View, StyleSheet, Text, TextInput, TouchableOpacity, Linking } from 'react-native';


let loginPage = () => {

    const styles = StyleSheet.create({
        container: {
            flex: 1,
            backgroundColor: '#1E1E1E',
            alignItems: 'center',
            paddingHorizontal: 20,
            justifyContent: 'center',
            width: '100vw',
            height: '100vh',
        },
        logoContainer: {
            alignItems: 'center',
            marginBottom: 10,
            marginTop: '-12vh',
        },
        logo: {
            fontSize: 32,
            fontWeight: 'bold',
            color: '#FFFFFF',
        },
        line: {
            width: '100%',
            marginBottom: '5vh',
            height: 1,
            backgroundColor: '#474747',
            marginVertical: 20,
        },
        inputContainer: {

            width: '100%',
            marginTop: 20,
            marginBottom: 10,
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
            marginTop: '15vh',
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

    return (
        <View style={styles.container}>
            <View style={styles.logoContainer}>
                <Text style={styles.logo}>DÖK App</Text>
            </View>
            <View style={styles.line} />
            <View style={styles.inputContainer}>
                <Text style={styles.label}>name</Text>
                <TextInput style={styles.input} />
                <Text style={styles.label}>password</Text>
                <TextInput secureTextEntry={true} style={styles.input} />
            </View>
            <TouchableOpacity style={styles.loginButton}>
                <Text style={styles.loginButtonText}>login</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => Linking.openURL('https://lobotomy.store')} style={styles.signupLink}>
                <Text style={styles.signupLinkText}>Don't have an account?</Text>
            </TouchableOpacity>
            <View style={styles.line} />
        </View>
    )
}

export default loginPage;