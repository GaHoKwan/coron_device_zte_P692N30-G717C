.class Ljg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljf;


# direct methods
.method constructor <init>(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Ljg;->a:Ljf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Ljg;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljg;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Ljg;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 501
    :cond_0
    iget-object v0, p0, Ljg;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Ljg;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 503
    iget-object v0, p0, Ljg;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljg;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 504
    :cond_1
    iget-object v0, p0, Ljg;->a:Ljf;

    new-instance v1, Ljh;

    invoke-direct {v1, p0}, Ljh;-><init>(Ljg;)V

    invoke-static {v0, v1}, Ljf;->a(Ljf;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 510
    iget-object v0, p0, Ljg;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 513
    :cond_2
    return-void
.end method
