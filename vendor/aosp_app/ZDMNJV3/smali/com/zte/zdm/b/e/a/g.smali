.class public Lcom/zte/zdm/b/e/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/a/j;


# instance fields
.field private a:Lcom/zte/zdm/b/e/a/c;

.field private b:Lcom/zte/zdm/b/e/a/a/k;

.field private c:Lcom/zte/zdm/b/e/a/a/h;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/c;Lcom/zte/zdm/b/e/a/a/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/g;->a:Lcom/zte/zdm/b/e/a/c;

    iput-object p2, p0, Lcom/zte/zdm/b/e/a/g;->c:Lcom/zte/zdm/b/e/a/a/h;

    return-void
.end method

.method private a()V
    .locals 1

    const-string v0, "sdcard"

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/a/g;->a(Ljava/lang/String;)V

    const-string v0, "/data/data/com.zte.zdm/files"

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/a/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "update.zip"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " result is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/zte/zdm/d/a/k;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/g;->a:Lcom/zte/zdm/b/e/a/c;

    invoke-interface {p1}, Lcom/zte/zdm/d/a/k;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->b(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/g;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/g;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->y:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/g/d/b;)Lcom/zte/zdm/b/e/a/a/b;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! IdleState should not call performDownloadDescriptionPhase "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/zte/zdm/d/a/k;)Ljava/lang/String;
    .locals 4

    const-string v0, "IdleState performSetupPhase()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/g;->c:Lcom/zte/zdm/b/e/a/a/h;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/g;->a:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/a/c;->h()Lcom/zte/zdm/b/b/a;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/zte/zdm/b/e/a/a/h;->a(Lcom/zte/zdm/d/a/k;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/b/e/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/g;->b:Lcom/zte/zdm/b/e/a/a/k;

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/g;->b:Lcom/zte/zdm/b/e/a/a/k;

    invoke-interface {v0}, Lcom/zte/zdm/b/e/a/a/k;->a()Ljava/lang/String;
    :try_end_0
    .catch Lcom/zte/zdm/d/a/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "performSetupPhase --> response=NULL"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recv response data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/g;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/g;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v2, v2, Lcom/zte/zdm/b/e/a/c;->u:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V
    :try_end_1
    .catch Lcom/zte/zdm/d/a/a; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    const-string v2, "transportAgent connection or execute failed!"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/a/g;->b(Lcom/zte/zdm/d/a/k;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(ILcom/zte/zdm/b/e/e;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! IdleState should not call handleException "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! IdleState should not call performDestroyPhase "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/b/b/a;ILcom/zte/zdm/g/d/b;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! IdleState should not call performDownloadMetaPhase "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
