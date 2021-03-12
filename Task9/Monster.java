abstract public class Monster {
    private String name;  // private instance variable

    /** Constructs a Monster instance of the given name */
    public Monster(String name) {
        this.name = name;
    }

    /** Define common behavior for all its subclasses */
    abstract public String attack();
}