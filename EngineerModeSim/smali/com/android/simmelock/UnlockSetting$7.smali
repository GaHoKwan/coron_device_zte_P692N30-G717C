.class Lcom/android/simmelock/UnlockSetting$7;
.super Landroid/os/Handler;
.source "UnlockSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/simmelock/UnlockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/UnlockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/UnlockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    .line 226
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 227
    .local v1, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 229
    :sswitch_0
    iget-object v3, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    #getter for: Lcom/android/simmelock/UnlockSetting;->clickFlag:Z
    invoke-static {v3}, Lcom/android/simmelock/UnlockSetting;->access$000(Lcom/android/simmelock/UnlockSetting;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 230
    const-string v3, "SIMMELOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set ar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    #calls: Lcom/android/simmelock/UnlockSetting;->queryLeftTimes()V
    invoke-static {v3}, Lcom/android/simmelock/UnlockSetting;->access$300(Lcom/android/simmelock/UnlockSetting;)V

    .line 233
    iget-object v3, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 237
    :goto_1
    const-string v3, "SIMMELOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handler UNLOCK_ICC_SML_COMPLETE mPwdLeftChances: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    #getter for: Lcom/android/simmelock/UnlockSetting;->mPwdLeftChances:I
    invoke-static {v5}, Lcom/android/simmelock/UnlockSetting;->access$200(Lcom/android/simmelock/UnlockSetting;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 243
    :sswitch_1
    const-string v3, "SIMMELOCK"

    const-string v4, "handler query"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v3, "SIMMELOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query ar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 248
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 249
    .local v2, ar1:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 250
    .local v0, LockState:[I
    aget v3, v0, v6

    if-lez v3, :cond_3

    .line 252
    iget-object v3, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    aget v4, v0, v6

    #setter for: Lcom/android/simmelock/UnlockSetting;->mPwdLeftChances:I
    invoke-static {v3, v4}, Lcom/android/simmelock/UnlockSetting;->access$202(Lcom/android/simmelock/UnlockSetting;I)I

    .line 253
    iget-object v3, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    iget-object v3, v3, Lcom/android/simmelock/UnlockSetting;->etPwdLeftChances:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    #getter for: Lcom/android/simmelock/UnlockSetting;->mPwdLeftChances:I
    invoke-static {v4}, Lcom/android/simmelock/UnlockSetting;->access$200(Lcom/android/simmelock/UnlockSetting;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const-string v3, "SIMMELOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query mPwdLeftChances: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    #getter for: Lcom/android/simmelock/UnlockSetting;->mPwdLeftChances:I
    invoke-static {v5}, Lcom/android/simmelock/UnlockSetting;->access$200(Lcom/android/simmelock/UnlockSetting;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 256
    :cond_3
    iget-object v3, p0, Lcom/android/simmelock/UnlockSetting$7;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
