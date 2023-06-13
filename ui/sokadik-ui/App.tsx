import profilePage from './pages/profile';
import votePage from './pages/vote';
import loginPage from './pages/login';
import voteAdminPage from './pages/voteAdmin';

export default function App() {
  return (
    <div>
      {voteAdminPage()}
    </div>
  );
}
