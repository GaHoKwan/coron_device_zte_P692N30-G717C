.class Lcom/android/simmelock/SPAddLockSetting$11;
.super Landroid/os/Handler;
.source "SPAddLockSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/simmelock/SPAddLockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/SPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/SPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 339
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 340
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 372
    :goto_0
    return-void

    .line 342
    :sswitch_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 343
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 349
    :sswitch_1
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 350
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    const-string v4, "fail to get SIM GID1"

    invoke-virtual {v3, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 351
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #setter for: Lcom/android/simmelock/SPAddLockSetting;->mSimGid1Valid:Z
    invoke-static {v3, v6}, Lcom/android/simmelock/SPAddLockSetting;->access$602(Lcom/android/simmelock/SPAddLockSetting;Z)Z

    goto :goto_0

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    const-string v4, "succeed to get SIM GID1"

    invoke-virtual {v3, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 354
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 355
    .local v1, data:[B
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM GID1 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 356
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, hexSIMGID1:Ljava/lang/String;
    aget-byte v3, v1, v6

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_2

    .line 358
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    const-string v4, "SIM GID1 not initialized"

    invoke-virtual {v3, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #setter for: Lcom/android/simmelock/SPAddLockSetting;->mSimGid1Valid:Z
    invoke-static {v3, v6}, Lcom/android/simmelock/SPAddLockSetting;->access$602(Lcom/android/simmelock/SPAddLockSetting;Z)Z

    goto :goto_0

    .line 361
    :cond_2
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    const/4 v4, 0x1

    #setter for: Lcom/android/simmelock/SPAddLockSetting;->mSimGid1Valid:Z
    invoke-static {v3, v4}, Lcom/android/simmelock/SPAddLockSetting;->access$602(Lcom/android/simmelock/SPAddLockSetting;Z)Z

    .line 362
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_3

    .line 363
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/simmelock/SPAddLockSetting;->mSimGid1:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/simmelock/SPAddLockSetting;->access$1202(Lcom/android/simmelock/SPAddLockSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    :goto_1
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normal SIM GID1 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    #getter for: Lcom/android/simmelock/SPAddLockSetting;->mSimGid1:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/simmelock/SPAddLockSetting;->access$1200(Lcom/android/simmelock/SPAddLockSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_3
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting$11;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/simmelock/SPAddLockSetting;->mSimGid1:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/simmelock/SPAddLockSetting;->access$1202(Lcom/android/simmelock/SPAddLockSetting;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 340
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
