.class Lcom/autonavi/xmgd/c/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/c/a;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/c/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/c/b;->a:Lcom/autonavi/xmgd/c/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/b;->a:Lcom/autonavi/xmgd/c/a;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/a;Landroid/os/Message;)V

    return-void
.end method
