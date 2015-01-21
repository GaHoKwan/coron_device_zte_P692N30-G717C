.class final Lcom/nuance/a/a/a/b/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/a/b/a/f$a;


# instance fields
.field private synthetic a:Lcom/nuance/a/a/a/b/a/a;


# direct methods
.method constructor <init>(Lcom/nuance/a/a/a/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/b/a/a$1;->a:Lcom/nuance/a/a/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/a$1;->a:Lcom/nuance/a/a/a/b/a/a;

    invoke-static {v0}, Lcom/nuance/a/a/a/b/a/a;->a(Lcom/nuance/a/a/a/b/a/a;)S

    invoke-static {}, Lcom/nuance/a/a/a/b/a/a;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/a/a/a/b/a/a;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session Idle for too long, longer than ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/a/a/a/b/a/a$1;->a:Lcom/nuance/a/a/a/b/a/a;

    invoke-static {v2}, Lcom/nuance/a/a/a/b/a/a;->b(Lcom/nuance/a/a/a/b/a/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/a$1;->a:Lcom/nuance/a/a/a/b/a/a;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/nuance/a/a/a/b/a/a;->c:B

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/a$1;->a:Lcom/nuance/a/a/a/b/a/a;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/a;->a(Lcom/nuance/a/a/a/b/a/a;BLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/nuance/a/a/a/b/a/a;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nuance/a/a/a/b/a/a;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XMode.sendXModeMsg() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method
