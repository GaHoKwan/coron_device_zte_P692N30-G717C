.class Lcom/zte/zdm/application/b/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ap;->a:Lcom/zte/zdm/application/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/ap;->a:Lcom/zte/zdm/application/b/s;

    iget-object v0, v0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/b/b/a;->aO:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/ap;->a:Lcom/zte/zdm/application/b/s;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/s;->r()V

    return-void
.end method
