.class final Lcom/nuance/a/a/a/c/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private synthetic a:Lcom/nuance/a/a/a/c/a/c;


# direct methods
.method constructor <init>(Lcom/nuance/a/a/a/c/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/c/a/c$1;->a:Lcom/nuance/a/a/a/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/c$1;->a:Lcom/nuance/a/a/a/c/a/c;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/c;->a(Lcom/nuance/a/a/a/c/a/c;)Lcom/nuance/a/a/a/c/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/c$1;->a:Lcom/nuance/a/a/a/c/a/c;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/c;->a(Lcom/nuance/a/a/a/c/a/c;)Lcom/nuance/a/a/a/c/a/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/a/a/a/c/a/c$a;->a()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/c$1;->a:Lcom/nuance/a/a/a/c/a/c;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/c;->a(Lcom/nuance/a/a/a/c/a/c;)Lcom/nuance/a/a/a/c/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/c$1;->a:Lcom/nuance/a/a/a/c/a/c;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/c;->a(Lcom/nuance/a/a/a/c/a/c;)Lcom/nuance/a/a/a/c/a/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/a/a/a/c/a/c$a;->b()V

    goto :goto_0
.end method
