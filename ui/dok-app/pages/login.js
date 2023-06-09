import { View, Text, TextInput, TouchableOpacity, Linking } from 'react-native';

let loginPage = (styles) => {
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