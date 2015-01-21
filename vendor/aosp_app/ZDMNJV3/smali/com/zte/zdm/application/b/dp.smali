.class Lcom/zte/zdm/application/b/dp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/dp;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zte/zdm/application/b/dp;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/application/b/dq;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/dq;-><init>(Lcom/zte/zdm/application/b/dp;)V

    new-instance v2, Lcom/zte/zdm/application/b/dr;

    invoke-direct {v2, p0}, Lcom/zte/zdm/application/b/dr;-><init>(Lcom/zte/zdm/application/b/dp;)V

    iget-object v3, p0, Lcom/zte/zdm/application/b/dp;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v3, v3, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "Download pushed and wifi is connected"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dp;->a:Lcom/zte/zdm/application/b/dd;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/dd;->v()V

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    const-string v3, "Download pushed and wifi is not connected"

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/zdm/application/b/dp;->a:Lcom/zte/zdm/application/b/dd;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v2, v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
