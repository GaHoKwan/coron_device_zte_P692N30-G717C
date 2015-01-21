.class Lgo;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgn;


# direct methods
.method constructor <init>(Lgn;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lgo;->a:Lgn;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 102
    iget-object v0, p0, Lgo;->a:Lgn;

    invoke-static {v0, p1}, Lgn;->a(Lgn;Landroid/os/Message;)V

    .line 103
    return-void
.end method
