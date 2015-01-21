.class Lcom/zte/zdm/application/c/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/c/a;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/c/d;->a:Lcom/zte/zdm/application/c/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/c/d;->a:Lcom/zte/zdm/application/c/a;

    invoke-static {v0, p1}, Lcom/zte/zdm/application/c/a;->b(Lcom/zte/zdm/application/c/a;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
