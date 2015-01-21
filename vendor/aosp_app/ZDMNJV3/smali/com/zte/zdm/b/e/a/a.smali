.class public Lcom/zte/zdm/b/e/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/a/j;


# instance fields
.field private a:Lcom/zte/zdm/b/e/a/c;

.field private b:Lcom/zte/zdm/b/e/a/a/b;

.field private c:Lcom/zte/zdm/b/e/a/b;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/b/e/a/b;

    invoke-direct {v0}, Lcom/zte/zdm/b/e/a/b;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/a;->c:Lcom/zte/zdm/b/e/a/b;

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "update.zip"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

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

    :cond_0
    return-void
.end method

.method private a(Lcom/zte/zdm/g/d/b;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->b:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/e/a/c;->d(I)V

    int-to-long v0, v0

    invoke-interface {p1, v0, v1, p2}, Lcom/zte/zdm/g/d/b;->a(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->b:Lcom/zte/zdm/b/e/a/a/b;

    const-string v1, "parser Filed,media = null"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->b:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parser Media Field Failed,size = null"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->b:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parser Media Field Failed,objURI = null"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/g/d/b;)Lcom/zte/zdm/b/e/a/a/b;
    .locals 3

    const/16 v1, 0x385

    const-string v0, "DDState performDownloadDescriptionPhase()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/zte/zdm/d/a/e;->w:I

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p1}, Lcom/zte/zdm/b/e/a/a/b;->a(ILjava/lang/String;)Lcom/zte/zdm/b/e/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/a;->b:Lcom/zte/zdm/b/e/a/a/b;

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/a;->b()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->b:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/zte/zdm/b/e/a/a;->a(Lcom/zte/zdm/g/d/b;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    const/16 v2, 0x385

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/e/a/c;->c(I)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "performCapacityCheck is false!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :catch_0
    move-exception v0

    :goto_0
    const-string v2, "ERROR strange? XmlPullParserException catched,but why?? Must Notice me"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    const/16 v2, 0x38a

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/e/a/c;->c(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->c:Lcom/zte/zdm/b/e/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b;->a()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->b(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->y:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    :goto_1
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->b:Lcom/zte/zdm/b/e/a/a/b;

    return-object v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->b:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/a;->b:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/a/a/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/zte/zdm/b/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "moveTo DL_SESSION_STATE_TERM"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->w:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_0

    :cond_1
    const-string v0, "moveTo DL_SESSION_META"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->v:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_2
    const-string v1, "ERROR strange? Exception catched,but why?? Must Notice me"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->c:Lcom/zte/zdm/b/e/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b;->a()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/e/a/c;->b(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/a;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->y:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    goto :goto_1

    :catch_3
    move-exception v0

    move v2, v1

    goto :goto_2
.end method

.method public a()Lcom/zte/zdm/b/e/a/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/a;->c:Lcom/zte/zdm/b/e/a/b;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/a/k;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! DDState should not call performSetupPhase "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILcom/zte/zdm/b/e/e;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! DDState should not call handleException "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! DDState should not call performDestroyPhase "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/b/b/a;ILcom/zte/zdm/g/d/b;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! DDState should not call performDownloadMetaPhase "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/zte/zdm/b/e/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/a;->c:Lcom/zte/zdm/b/e/a/b;

    return-void
.end method
