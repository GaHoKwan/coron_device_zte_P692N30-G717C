.class Lcom/iflytek/msc/c/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/msc/c/a$a;


# direct methods
.method constructor <init>(Lcom/iflytek/msc/c/a$a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/c/e;->a:Lcom/iflytek/msc/c/a$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/msc/c/e;->a:Lcom/iflytek/msc/c/a$a;

    invoke-static {v0}, Lcom/iflytek/msc/c/a$a;->a(Lcom/iflytek/msc/c/a$a;)Lcom/iflytek/speech/SpeechListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeechListener onMsg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/msc/c/e;->a:Lcom/iflytek/msc/c/a$a;

    invoke-static {v0}, Lcom/iflytek/msc/c/a$a;->a(Lcom/iflytek/msc/c/a$a;)Lcom/iflytek/speech/SpeechListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/speech/SpeechListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/msc/c/e;->a:Lcom/iflytek/msc/c/a$a;

    invoke-static {v0}, Lcom/iflytek/msc/c/a$a;->a(Lcom/iflytek/msc/c/a$a;)Lcom/iflytek/speech/SpeechListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/iflytek/speech/SpeechListener;->onData([B)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/msc/c/e;->a:Lcom/iflytek/msc/c/a$a;

    invoke-static {v0}, Lcom/iflytek/msc/c/a$a;->a(Lcom/iflytek/msc/c/a$a;)Lcom/iflytek/speech/SpeechListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/speech/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/speech/SpeechListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
