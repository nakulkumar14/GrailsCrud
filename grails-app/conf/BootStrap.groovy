class BootStrap {

    def init = { servletContext ->
        /*The default password is 'password'*//*
        def password = 'admin'
        def user = new User(username: 'admin', password: password, enabled: true,
                accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true, insert: true)
        def role = new Role(authority: 'ROLE_USER').save(flush: true, insert: true)

        UserRole.create user, role, true*/
    }
    def destroy = {
    }
}
