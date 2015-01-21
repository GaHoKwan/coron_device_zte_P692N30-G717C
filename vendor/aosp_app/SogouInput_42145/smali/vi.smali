.class public Lvi;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/multimedia/TimerRecView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/TimerRecView;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lvi;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lvi;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    iget-object v0, v0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lvi;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-static {v1}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a(Lcom/sohu/inputmethod/multimedia/TimerRecView;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 38
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    .line 39
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 43
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    return-void

    .line 41
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
