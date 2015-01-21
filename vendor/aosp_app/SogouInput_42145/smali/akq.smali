.class Lakq;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Landroid/os/Message;


# direct methods
.method constructor <init>(Lajq;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lakq;->a:Lajq;

    iput-object p2, p0, Lakq;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lakq;->a:Lajq;

    iget-object v1, p0, Lakq;->a:Landroid/os/Message;

    invoke-static {v0, v1}, Lajq;->a(Lajq;Landroid/os/Message;)Landroid/view/View;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lakq;->a:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lakq;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lakq;->a:Landroid/os/Message;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 340
    return-void
.end method
