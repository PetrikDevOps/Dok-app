import { View, StyleSheet, Text } from 'react-native';
import taskList from '../components/taskList';

let profilePage = () => {
    const styles = StyleSheet.create({
        container: {
            flex: 1,
            backgroundColor: '#1E1E1E',
            justifyContent: 'flex-start',
            paddingHorizontal: 20,
            minHeight: '100vh',
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

        suggestionButton: {
            width: '100%',
            height: 50,
            backgroundColor: '#7BB49F',
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
        suggestionText: {
            fontSize: 28,
            color: '#000000',
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
            {taskList()}
            <View style={styles.line} />
            <Text style={styles.big}>Javaslat</Text>
            <View style={styles.suggestionButton}>
                <Text style={styles.suggestionText}>Van egy Tippem</Text>
            </View>
            <View style={styles.line} />
        </View>
    );
};

export default profilePage;