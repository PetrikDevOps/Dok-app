import { View, StyleSheet, Text, TouchableOpacity, Linking, Image } from 'react-native';

let profilePage = () => {
    const styles = StyleSheet.create({
        container: {
            flex: 1,
            backgroundColor: '#1E1E1E',
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
        small: {
            fontSize: 24,
            color: '#FFFFFF',
        },
        big: {
            fontSize: 32,
            color: '#FFFFFF',
        },
        line: {
            width: '100%',
            height: 1,
            backgroundColor: '#474747',
            marginVertical: 20,
        },
        battlepassButton: {
            width: '100%',
            height: 150,
            backgroundColor: '#A5D794',
            alignItems: 'center',
            justifyContent: 'center',
            marginTop: 25,
            marginBottom: 25,
            borderRadius: 5,
            flexDirection: 'row',
        },
        taskButton: {
            width: '100%',
            height: 100,
            backgroundColor: 'rgba(121, 126, 120, 0.7)',
            alignItems: 'center',
            justifyContent: 'center',
            marginTop: 25,
            marginBottom: 25,
            borderRadius: 5,
            flexDirection: 'row',
        },
        battlepassText: {
            fontSize: 32,
            fontWeight: 'bold',
            color: '#1E1E1E',
            marginLeft: 10,
        },
        taskText: {
            fontSize: 32,
            fontWeight: 'bold',
            color: '#D9D9D9',
            marginLeft: 10,
        },
        userContainer: {
            width: '100%',
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'flex-end',
            marginTop: 50,
        },
    });

    return (
        <View style={styles.container}>
            <View style={styles.userContainer}>
                <Text style={styles.big}>Gipsz Jakab Jákob</Text>
                <Text style={styles.small}>lvl 1 döckös</Text>
            </View>
            <View style={styles.line} />
            <View style={styles.battlepassButton}>
                <Text style={styles.battlepassText}>Battle Pass</Text>
            </View>
            <View style={styles.line} />
            <Text style={styles.big}>Feladataid</Text>
            <View style={styles.taskButton}>
                <Text style={styles.taskText}>Petrik Nap Sakk</Text>
            </View>
        </View>
    );
};

export default profilePage;