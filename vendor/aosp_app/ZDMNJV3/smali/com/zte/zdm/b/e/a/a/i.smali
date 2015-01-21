.class Lcom/zte/zdm/b/e/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/d/a/k;

.field final synthetic b:Ljava/util/concurrent/BlockingQueue;

.field final synthetic c:Lcom/zte/zdm/b/e/a/a/h;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/a/h;Lcom/zte/zdm/d/a/k;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/a/i;->c:Lcom/zte/zdm/b/e/a/a/h;

    iput-object p2, p0, Lcom/zte/zdm/b/e/a/a/i;->a:Lcom/zte/zdm/d/a/k;

    iput-object p3, p0, Lcom/zte/zdm/b/e/a/a/i;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/zte/zdm/b/e/a/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "connecting................ DD file"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/e/a/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/e/a/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const-class v0, Lcom/zte/zdm/b/e/a/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createResponser ContetntType:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zte/zdm/b/e/a/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], contentLength:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zte/zdm/b/e/a/a/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/i;->a:Lcom/zte/zdm/d/a/k;

    invoke-static {v0}, Lcom/zte/zdm/b/e/a/a/h;->a(Lcom/zte/zdm/d/a/k;)Lcom/zte/zdm/b/e/a/a/k;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/e/a/a/h;->a(Lcom/zte/zdm/b/e/a/a/k;)Lcom/zte/zdm/b/e/a/a/k;

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/i;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/i;->a:Lcom/zte/zdm/d/a/k;

    sget v1, Lcom/zte/zdm/d/a/e;->w:I

    invoke-interface {v0, v1}, Lcom/zte/zdm/d/a/k;->b(I)V

    const-string v0, "dd connect is ok , so exit while"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/i;->a:Lcom/zte/zdm/d/a/k;

    sget v1, Lcom/zte/zdm/d/a/e;->N:I

    invoke-interface {v0, v1}, Lcom/zte/zdm/d/a/k;->b(I)V

    const-string v0, "MalformedURLException found but not timeout so continue connect"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/i;->c:Lcom/zte/zdm/b/e/a/a/h;

    invoke-static {v0}, Lcom/zte/zdm/b/e/a/a/h;->a(Lcom/zte/zdm/b/e/a/a/h;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "IOException found but not timeout so continue connect"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/i;->a:Lcom/zte/zdm/d/a/k;

    sget v1, Lcom/zte/zdm/d/a/e;->M:I

    invoke-interface {v0, v1}, Lcom/zte/zdm/d/a/k;->b(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a/i;->c:Lcom/zte/zdm/b/e/a/a/h;

    invoke-static {v0}, Lcom/zte/zdm/b/e/a/a/h;->a(Lcom/zte/zdm/b/e/a/a/h;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/a/i;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
