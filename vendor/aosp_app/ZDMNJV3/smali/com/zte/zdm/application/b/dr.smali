.class Lcom/zte/zdm/application/b/dr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dp;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/dr;->a:Lcom/zte/zdm/application/b/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x82

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========caocaocaocao screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/dr;->a:Lcom/zte/zdm/application/b/dp;

    iget-object v2, v2, Lcom/zte/zdm/application/b/dp;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v2}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "============"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/dr;->a:Lcom/zte/zdm/application/b/dp;

    iget-object v1, v1, Lcom/zte/zdm/application/b/dp;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    return-void
.end method
