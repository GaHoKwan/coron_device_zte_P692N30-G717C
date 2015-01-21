.class final enum Lcom/zte/zdm/mo/v;
.super Lcom/zte/zdm/mo/ReadEnum$GprsReadHandler;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/zdm/mo/ReadEnum$GprsReadHandler;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/a;)V

    return-void
.end method


# virtual methods
.method public a(I[B)I
    .locals 3

    const-string v0, "gprs CmNet Apn has been readed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/b/b/a;->aH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/zte/zdm/mo/GprsSetting;->a:Lcom/zte/zdm/mo/GprsSetting;

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/mo/GprsSetting;->d(I[B)I

    move-result v0

    return v0
.end method
