package project.dao;

public interface SecurityRepository {
    String findLoggedInEmail();

    void autoLogin(String email, String password);
}
