.class Lcom/zte/zdm/d/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/io/IOException;

.field final synthetic b:Lcom/zte/zdm/d/a/f;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/d/a/f;)V
    .locals 1

    iput-object p1, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/a/h;->a:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method protected a()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->a:Ljava/io/IOException;

    return-object v0
.end method

.method public run()V
    .locals 3

    :try_start_0
    const-string v0, "opening inputstream"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->d(Lcom/zte/zdm/d/a/f;)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->f(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/d/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v1}, Lcom/zte/zdm/d/a/f;->e(Lcom/zte/zdm/d/a/f;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/d/a/e;->a(J)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->f(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/d/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/e;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->a(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    iput-object v0, p0, Lcom/zte/zdm/d/a/h;->a:Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapter.openInputStream() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    iput-object v0, p0, Lcom/zte/zdm/d/a/h;->a:Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapter.openInputStream() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catch_2
    move-exception v0

    :try_start_6
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zte/zdm/d/a/h;->a:Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapter.openInputStream() failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/h;->a:Ljava/io/IOException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v1}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/zte/zdm/d/a/h;->b:Lcom/zte/zdm/d/a/f;

    invoke-static {v2}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method
