package grailscrud

class Student {

    int rollNo
    String firstname
    String lastname
    Date dob

    static constraints = {
        rollNo()
        firstname()
        lastname()
        dob()
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", rollNo=" + rollNo +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", dob=" + dob +
                ", version=" + version +
                '}';
    }
}
