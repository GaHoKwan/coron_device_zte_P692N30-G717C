.class public Lcom/zte/zdm/b/e/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/a/j;


# static fields
.field private static final b:I = 0x5

.field private static final c:I = 0x6e


# instance fields
.field private a:Lcom/zte/zdm/b/e/a/c;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    return-void
.end method

.method private a(Lcom/zte/zdm/b/b/a;)I
    .locals 2

    const-string v0, "dl_thread_num"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private a(Lcom/zte/zdm/b/e/a/b/g;)V
    .locals 2

    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Lcom/zte/zdm/b/e/a/b/g;->a(I)V

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->h()Z

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->b(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->y:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/b/e/a/b/g;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disk I/O error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x385

    invoke-virtual {p1, v0}, Lcom/zte/zdm/b/e/a/b/g;->a(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->h()Z

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->b(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->y:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    return-void

    :cond_1
    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Lcom/zte/zdm/b/e/a/b/g;->a(I)V

    goto :goto_0
.end method

.method private b(Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/d/a/i;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "dl_proxy"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dl_proxy_addr"

    invoke-virtual {p1, v1, v0}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "dl_proxy_port"

    const/16 v2, 0x50

    invoke-virtual {p1, v0, v2}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Lcom/zte/zdm/d/a/i;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/zte/zdm/d/a/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/String;)Lcom/zte/zdm/d/a/i;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/a/i;->a(I)Lcom/zte/zdm/d/a/i;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/g/d/b;)Lcom/zte/zdm/b/e/a/a/b;
    .locals 1

    const-string v0, "it is resume phase,so MetaState ignore performDownloadDescriptionPhase!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/a/k;)Ljava/lang/String;
    .locals 1

    const-string v0, "it is resume phase,so MetaState ignore performSetupPhase!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public a(ILcom/zte/zdm/b/e/e;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! MetaState should not call handleException "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad state! MetaState should not call performDestroyPhase "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/b/b/a;ILcom/zte/zdm/g/d/b;)V
    .locals 3

    const-string v0, "MetaState performDownloadMetaPhase()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/zte/zdm/b/e/a/i;

    invoke-direct {v0, p0, p2, p4}, Lcom/zte/zdm/b/e/a/i;-><init>(Lcom/zte/zdm/b/e/a/h;Lcom/zte/zdm/b/e/e;I)V

    invoke-direct {p0, p3}, Lcom/zte/zdm/b/e/a/h;->a(Lcom/zte/zdm/b/b/a;)I

    move-result v1

    invoke-direct {p0, p3}, Lcom/zte/zdm/b/e/a/h;->b(Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/d/a/i;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/zte/zdm/b/e/a/b/g;->a(Lcom/zte/zdm/b/e/a/b/f;ILcom/zte/zdm/d/a/i;)I

    move-result v0

    const-string v1, "download exit ,maybe finished,paused,user cancelled"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x6e

    invoke-virtual {p1, v1}, Lcom/zte/zdm/b/e/a/b/g;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadSize ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  totalSize ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, p4, :cond_0

    const-string v0, "finished"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->w:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    :goto_0
    return-void

    :cond_0
    if-le v0, p4, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "download size should not more than total size!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    const-string v0, "error! SocketTimeoutException catched, so pause dl session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->b(Z)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/h;->a:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/c;->s()Lcom/zte/zdm/b/e/e;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-interface {v0, v1}, Lcom/zte/zdm/b/e/e;->a(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "DlSession paused do nothing! "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error! msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/b/e/a/h;->a(Lcom/zte/zdm/b/e/a/b/g;Ljava/lang/Exception;)V

    goto :goto_0
.end method
