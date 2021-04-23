public class DBUtils {
    private static DBUtils instance;
    private Connection connection;

        private DBUtils() {
        Properties properties = new Properties();

        try {
            properties.load(
                    DBUtils.class.getResourceAsStream(&quot;/dbCOnfig.properties&quot;));

            String driver = properties.getProperty(&quot;driver&quot;);
            String url = properties.getProperty(&quot;url&quot;);
            String userName = properties.getProperty(&quot;userName&quot;);
            String password = properties.getProperty(&quot;password&quot;);

            Class.forName(driver);

            connection = DriverManager.getConnection(url, userName, password);

            } catch (ClassNotFoundException | SQLException | IOException e) {
            e.printStackTrace();
            }
        }
/**
* Get the connection from the instance
*
* @return {@link Connection}
*/
        public Connection getConnection() {
        return connection;
        }

/**
 * Create new instance which connects with the database.
 *
 * @return DBUtils
 * @throws SQLException if connection false.
 */
        public static DBUtils getInstance() throws SQLException {
        if (instance == null || instance.getConnection().isClosed()) {
            instance = new DBUtils();
            }
        return instance;
        }
}