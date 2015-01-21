.class Lafy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lafy;->a:Lafs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lafy;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lafy;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lamj;

    move-result-object v0

    invoke-virtual {v0}, Lamj;->c()I

    move-result v0

    .line 240
    iget-object v1, p0, Lafy;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 242
    iget-object v1, p0, Lafy;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lafy;->a:Lafs;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lafs;->a(Lafs;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lafy;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lafy;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Lamj;

    move-result-object v2

    invoke-virtual {v2}, Lamj;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lafy;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
