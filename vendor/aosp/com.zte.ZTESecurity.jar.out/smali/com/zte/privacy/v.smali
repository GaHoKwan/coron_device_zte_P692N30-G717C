.class Lcom/zte/privacy/v;
.super Ljava/io/PrintWriter;


# instance fields
.field final synthetic fd:Lcom/zte/privacy/E;


# direct methods
.method constructor <init>(Lcom/zte/privacy/E;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/v;->fd:Lcom/zte/privacy/E;

    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/v;->fd:Lcom/zte/privacy/E;

    iget-object v0, v0, Lcom/zte/privacy/E;->gT:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
