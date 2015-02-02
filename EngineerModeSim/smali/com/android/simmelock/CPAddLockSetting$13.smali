.class Lcom/android/simmelock/CPAddLockSetting$13;
.super Landroid/os/Handler;
.source "CPAddLockSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/simmelock/CPAddLockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/CPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/CPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 403
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 404
    .local v0, ar:Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 461
    :goto_0
    return-void

    .line 406
    :sswitch_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 407
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 413
    :sswitch_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 414
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const-string v5, "fail to get SIM GID1"

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 415
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid1Valid:Z
    invoke-static {v4, v7}, Lcom/android/simmelock/CPAddLockSetting;->access$602(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    goto :goto_0

    .line 417
    :cond_1
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const-string v5, "succeed to get SIM GID1"

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 418
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 419
    .local v1, data:[B
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM GID :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 420
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, hexSIMGID1:Ljava/lang/String;
    aget-byte v4, v1, v7

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v10, :cond_2

    .line 422
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const-string v5, "SIM GID1 not initialized"

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 423
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid1Valid:Z
    invoke-static {v4, v7}, Lcom/android/simmelock/CPAddLockSetting;->access$602(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    goto :goto_0

    .line 425
    :cond_2
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid1Valid:Z
    invoke-static {v4, v9}, Lcom/android/simmelock/CPAddLockSetting;->access$602(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    .line 426
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_3

    .line 427
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid1:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/simmelock/CPAddLockSetting;->access$1602(Lcom/android/simmelock/CPAddLockSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    :goto_1
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Normal SIM GID1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid1:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/simmelock/CPAddLockSetting;->access$1600(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :cond_3
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid1:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/simmelock/CPAddLockSetting;->access$1602(Lcom/android/simmelock/CPAddLockSetting;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 436
    .end local v1           #data:[B
    .end local v2           #hexSIMGID1:Ljava/lang/String;
    :sswitch_2
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 437
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const-string v5, "fail to get SIM GID2"

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 438
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid2Valid:Z
    invoke-static {v4, v7}, Lcom/android/simmelock/CPAddLockSetting;->access$1002(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    goto/16 :goto_0

    .line 440
    :cond_4
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const-string v5, "succeed to get SIM GID2"

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 441
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 442
    .restart local v1       #data:[B
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM GID2 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 443
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, hexSIMGID2:Ljava/lang/String;
    aget-byte v4, v1, v7

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v10, :cond_5

    .line 445
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const-string v5, "SIM GID2 not initialized"

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 446
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid2Valid:Z
    invoke-static {v4, v7}, Lcom/android/simmelock/CPAddLockSetting;->access$1002(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    goto/16 :goto_0

    .line 448
    :cond_5
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid2Valid:Z
    invoke-static {v4, v9}, Lcom/android/simmelock/CPAddLockSetting;->access$1002(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    .line 449
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_6

    .line 450
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/simmelock/CPAddLockSetting;->access$1702(Lcom/android/simmelock/CPAddLockSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    :goto_2
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Normal SIM GID2 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/simmelock/CPAddLockSetting;->access$1700(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :cond_6
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting$13;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/simmelock/CPAddLockSetting;->access$1702(Lcom/android/simmelock/CPAddLockSetting;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 404
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x25 -> :sswitch_2
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
