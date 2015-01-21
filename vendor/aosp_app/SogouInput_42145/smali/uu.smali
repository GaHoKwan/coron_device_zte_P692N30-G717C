.class Luu;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lut;


# direct methods
.method constructor <init>(Lut;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Luu;->a:Lut;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    iget-object v0, p0, Luu;->a:Lut;

    invoke-static {v0, p1}, Lut;->a(Lut;Landroid/os/Message;)V

    .line 142
    return-void
.end method
