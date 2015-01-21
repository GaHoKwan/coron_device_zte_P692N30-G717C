.class Lgi;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgh;


# direct methods
.method constructor <init>(Lgh;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lgi;->a:Lgh;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 262
    iget-object v0, p0, Lgi;->a:Lgh;

    invoke-static {v0, p1}, Lgh;->a(Lgh;Landroid/os/Message;)V

    .line 263
    return-void
.end method
