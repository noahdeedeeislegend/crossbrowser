package net.lightbody.bmp.proxy;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

public class EchoPayloadServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setStatus(200);

        PrintWriter writer = resp.getWriter();

        BufferedReader reader = req.getReader();
        char[] readBuf = new char[4000];
        int charactersRead;
        while ((charactersRead = reader.read(readBuf)) > 0) {
            String readDataString = new String(readBuf, 0, charactersRead);
            writer.print(readDataString);
        }

        writer.close();
    }
}
