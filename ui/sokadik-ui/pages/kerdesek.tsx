import { View, StyleSheet, Text, Pressable } from 'react-native';

let kerdesPage = () => {
    const styles = StyleSheet.create({
        centerList: {
            width: '100vw',
            display: 'flex',
            justifyContent: 'center',
        },
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
            marginBottom: 10,
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
        headcontainer: {
            width: '100vw',
            display: 'flex',
            flexDirection: 'row',
            justifyContent: 'space-between',
            alignItems: 'center',
            paddingHorizontal: 20,
            height: 100,
            backgroundColor: '#1E1E1E',
        },
    });

    return (
        <View style={styles.container}>

            < View style={styles.container} >
                <View style={styles.line} />
            </View >
        </View >
    );
};

export default kerdesPage;