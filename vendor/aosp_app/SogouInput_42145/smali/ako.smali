.class Lako;
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
    .line 2090
    iput-object p1, p0, Lako;->a:Lajq;

    iput-object p2, p0, Lako;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2092
    iget-object v0, p0, Lako;->a:Lajq;

    iget-object v1, p0, Lako;->a:Landroid/os/Message;

    invoke-static {v0, v1}, Lajq;->a(Lajq;Landroid/os/Message;)Landroid/view/View;

    move-result-object v0

    .line 2093
    iget-object v1, p0, Lako;->a:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2094
    iget-object v0, p0, Lako;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lako;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2095
    return-void
.end method
