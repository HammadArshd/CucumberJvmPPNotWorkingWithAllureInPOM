import cucumber.api.java.Before;
import org.testng.annotations.BeforeTest;

public class BaseCLass {

    @Before
    public void setupBrowser(){
        System.out.println("============= Browser Started==========");
    }
}
