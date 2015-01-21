.class Lach;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lace;


# direct methods
.method constructor <init>(Lace;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lach;->a:Lace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 405
    iget-object v0, p0, Lach;->a:Lace;

    invoke-static {v0}, Lace;->a(Lace;)I

    move-result v0

    .line 406
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 407
    iget-object v1, p0, Lach;->a:Lace;

    invoke-static {v1}, Lace;->a(Lace;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lach;->a:Lace;

    invoke-static {v2}, Lace;->a(Lace;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lach;->a:Lace;

    invoke-static {v0}, Lace;->a(Lace;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lach;->a:Lace;

    invoke-static {v1}, Lace;->a(Lace;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
