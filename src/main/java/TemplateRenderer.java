import freemarker.template.*;
import java.io.*;
import java.util.*;

public class TemplateRenderer {
    public static void main(String[] args) throws Exception {
        Configuration cfg = new Configuration(Configuration.VERSION_2_3_31);
        cfg.setDirectoryForTemplateLoading(new File("templates"));
        cfg.setDefaultEncoding("UTF-8");

        Template template = cfg.getTemplate("dashboard.ftlh");

        // Prepare data
        Map<String, Object> data = new HashMap<>();
        List<Map<String, String>> employees = new ArrayList<>();

        employees.add(Map.of(
            "id", "1",
            "firstName", "John",
            "lastName", "Doe",
            "email", "john@example.com",
            "department", "HR",
            "role", "Manager"
        ));
        employees.add(Map.of(
            "id", "2",
            "firstName", "Jane",
            "lastName", "Smith",
            "email", "jane@example.com",
            "department", "IT",
            "role", "Developer"
        ));

        data.put("employees", employees);

        // Render output
        Writer out = new FileWriter("output.html");
        template.process(data, out);
        out.close();

        System.out.println("✅ output.html generated. Open it in your browser.");
    }
}
