package net.aflb.learn.java.quarkus;

import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.is;

@QuarkusTest
class QuarkusApplicationTest {

    @Test
    void pong_test() {
        given()
                .when()
                .get("/test/ping")
                .then()
                .statusCode(is(200))
                .body(is("pong"));
    }
}