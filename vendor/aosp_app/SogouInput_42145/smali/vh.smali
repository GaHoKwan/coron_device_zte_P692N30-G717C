.class public Lvh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/multimedia/TimerRecView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/TimerRecView;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lvh;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lvh;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvh;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-static {v2}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b(Lcom/sohu/inputmethod/multimedia/TimerRecView;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvh;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-static {v2}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b(Lcom/sohu/inputmethod/multimedia/TimerRecView;)I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a(Lcom/sohu/inputmethod/multimedia/TimerRecView;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lvh;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->invalidate()V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lvh;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    const-string v1, "01:00"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a(Lcom/sohu/inputmethod/multimedia/TimerRecView;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lvh;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a(Lcom/sohu/inputmethod/multimedia/TimerRecView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 63
    iget-object v0, p0, Lvh;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->invalidate()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
