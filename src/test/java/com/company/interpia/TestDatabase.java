package com.company.interpia;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TestDatabase {
	private static final Logger logger = LoggerFactory.getLogger(TestDatabase.class);
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:oracle:thin:@localhost:1522/orcl";
	private static final String user = "hr";
	private static final String pw = "hr";

	@Test
	public void testConn() throws Exception {
		Class.forName(driver);
		try (Connection conn = DriverManager.getConnection(url, user, pw)) {
			System.out.println("sysout");
			logger.info("logger");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
