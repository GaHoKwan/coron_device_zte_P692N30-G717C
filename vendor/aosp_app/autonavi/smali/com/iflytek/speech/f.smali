.class Lcom/iflytek/speech/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/speech/SpeechVerify$a;


# direct methods
.method constructor <init>(Lcom/iflytek/speech/SpeechVerify$a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechVerify$a;->a(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechVerify$a;->a(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyListener;

    move-result-object v1

    iget-object v0, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechVerify$a;->b(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyResult;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/speech/SpeechError;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/speech/VerifyListener;->onEnd(Lcom/iflytek/speech/VerifyResult;Lcom/iflytek/speech/SpeechError;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechVerify$a;->a(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/speech/VerifyListener;->onCancel()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechVerify$a;->a(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/iflytek/speech/VerifyListener;->onBufferReceived([B)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechVerify$a;->a(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/speech/VerifyListener;->onBeginOfSpeech()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechVerify$a;->a(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/speech/VerifyListener;->onEndOfSpeech()V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechVerify$a;->a(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/f;->a:Lcom/iflytek/speech/SpeechVerify$a;

    invoke-static {v1}, Lcom/iflytek/speech/SpeechVerify$a;->b(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/speech/VerifyListener;->onRegister(Lcom/iflytek/speech/VerifyResult;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
