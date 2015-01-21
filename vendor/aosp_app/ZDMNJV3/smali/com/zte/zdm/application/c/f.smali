.class Lcom/zte/zdm/application/c/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/c/e;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/c/f;->a:Lcom/zte/zdm/application/c/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/f;->a:Lcom/zte/zdm/application/c/e;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/c/e;->a(Landroid/os/Message;)V

    return-void
.end method
