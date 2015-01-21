.class Lcom/android/camera/VoiceManager$2;
.super Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VoiceManager;


# direct methods
.method constructor <init>(Lcom/android/camera/VoiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    invoke-direct {p0}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 7
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 365
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVoiceCommandNotified("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v1, -0x1

    .line 368
    .local v1, result:I
    packed-switch p1, :pswitch_data_0

    .line 436
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 370
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 380
    :pswitch_2
    if-eqz p3, :cond_0

    .line 381
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    #calls: Lcom/android/camera/VoiceManager;->printExtraData(Landroid/os/Bundle;)V
    invoke-static {v2, p3}, Lcom/android/camera/VoiceManager;->access$1100(Lcom/android/camera/VoiceManager;Landroid/os/Bundle;)V

    .line 382
    const-string v2, "Result"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 383
    if-ne v1, v6, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    const-string v3, "Result_Info"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/camera/VoiceManager;->mCommandId:I
    invoke-static {v2, v3}, Lcom/android/camera/VoiceManager;->access$302(Lcom/android/camera/VoiceManager;I)I

    .line 386
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    iget-object v2, v2, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 395
    :pswitch_3
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 397
    :pswitch_4
    if-eqz p3, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    #calls: Lcom/android/camera/VoiceManager;->printExtraData(Landroid/os/Bundle;)V
    invoke-static {v2, p3}, Lcom/android/camera/VoiceManager;->access$1100(Lcom/android/camera/VoiceManager;Landroid/os/Bundle;)V

    .line 399
    const-string v2, "Result"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 400
    if-ne v1, v6, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    const-string v3, "Result_Info"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/camera/VoiceManager;->mKeywords:[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/camera/VoiceManager;->access$1202(Lcom/android/camera/VoiceManager;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 407
    :pswitch_5
    if-eqz p3, :cond_0

    .line 408
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    #calls: Lcom/android/camera/VoiceManager;->printExtraData(Landroid/os/Bundle;)V
    invoke-static {v2, p3}, Lcom/android/camera/VoiceManager;->access$1100(Lcom/android/camera/VoiceManager;Landroid/os/Bundle;)V

    .line 409
    const-string v2, "Result"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 410
    if-ne v1, v6, :cond_0

    .line 411
    const-string v2, "Result_Info"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 413
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    if-eqz v0, :cond_1

    const-string v2, "on"

    :goto_1
    #setter for: Lcom/android/camera/VoiceManager;->mVoiceValue:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/camera/VoiceManager;->access$1302(Lcom/android/camera/VoiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    iget-object v2, v2, Lcom/android/camera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 413
    :cond_1
    const-string v2, "off"

    goto :goto_1

    .line 419
    .end local v0           #enabled:Z
    :pswitch_6
    if-eqz p3, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    #calls: Lcom/android/camera/VoiceManager;->printExtraData(Landroid/os/Bundle;)V
    invoke-static {v2, p3}, Lcom/android/camera/VoiceManager;->access$1100(Lcom/android/camera/VoiceManager;Landroid/os/Bundle;)V

    .line 421
    const-string v2, "Result"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 422
    if-ne v1, v6, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    const-string v3, "Result_Info"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/camera/VoiceManager;->mCommandPathKeywords:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/camera/VoiceManager;->access$1402(Lcom/android/camera/VoiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    iget-object v2, p0, Lcom/android/camera/VoiceManager$2;->this$0:Lcom/android/camera/VoiceManager;

    #calls: Lcom/android/camera/VoiceManager;->notifyCachePathIfNeed()V
    invoke-static {v2}, Lcom/android/camera/VoiceManager;->access$1500(Lcom/android/camera/VoiceManager;)V

    goto/16 :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 370
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 395
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
