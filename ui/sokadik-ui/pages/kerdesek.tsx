import { View, StyleSheet } from 'react-native';
import { kerdesCont } from '../comp/kerdesCont';

let kerdesPage = () => {
    const styles = StyleSheet.create({
        container: {
            flex: 1,
            backgroundColor: '#fff',
            alignItems: 'center',
        },
        line: {
            width: '100%',
            height: 1,
            backgroundColor: '#474747',
            marginVertical: 20,
        },
    });

    return (
        <View style={styles.container}>
            {kerdesCont()}
            <View style={styles.line} />
        </View >
    );
};

export default kerdesPage;