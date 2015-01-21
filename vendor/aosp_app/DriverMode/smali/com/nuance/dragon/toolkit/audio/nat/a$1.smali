.class final Lcom/nuance/dragon/toolkit/audio/nat/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/nat/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/nat/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->b:Lcom/nuance/dragon/toolkit/audio/nat/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->b:Lcom/nuance/dragon/toolkit/audio/nat/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->a(Lcom/nuance/dragon/toolkit/audio/nat/a;)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->b:Lcom/nuance/dragon/toolkit/audio/nat/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->b(Lcom/nuance/dragon/toolkit/audio/nat/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->b:Lcom/nuance/dragon/toolkit/audio/nat/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->c(Lcom/nuance/dragon/toolkit/audio/nat/a;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->b:Lcom/nuance/dragon/toolkit/audio/nat/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/nat/a;->b(Lcom/nuance/dragon/toolkit/audio/nat/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->b:Lcom/nuance/dragon/toolkit/audio/nat/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->d(Lcom/nuance/dragon/toolkit/audio/nat/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->b:Lcom/nuance/dragon/toolkit/audio/nat/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->e(Lcom/nuance/dragon/toolkit/audio/nat/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->b:Lcom/nuance/dragon/toolkit/audio/nat/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->f(Lcom/nuance/dragon/toolkit/audio/nat/a;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->b:Lcom/nuance/dragon/toolkit/audio/nat/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/a;->b(Lcom/nuance/dragon/toolkit/audio/nat/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/a$1;->a:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
