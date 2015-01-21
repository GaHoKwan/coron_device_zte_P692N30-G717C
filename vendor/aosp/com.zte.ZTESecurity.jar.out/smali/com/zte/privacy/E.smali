.class final Lcom/zte/privacy/E;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/Y;


# instance fields
.field final synthetic gT:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/E;->gT:Ljava/util/zip/ZipOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dump.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/E;->gT:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v0, Lcom/zte/privacy/v;

    iget-object v1, p0, Lcom/zte/privacy/E;->gT:Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/v;-><init>(Lcom/zte/privacy/E;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
