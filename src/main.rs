use actix_web::{App, HttpResponse, HttpServer, Responder, get};

#[get("/checkhealth")]
async fn checkhealth() -> impl Responder {
    HttpResponse::Ok().body("healthy!")
}

#[tokio::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| App::new().service(checkhealth))
        .bind(("127.0.0.1", 8080))?
        .run()
        .await
}
