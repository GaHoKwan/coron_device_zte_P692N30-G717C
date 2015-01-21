.class Lcom/mediatek/CellConnService/PhoneStatesMgrService$4;
.super Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;
.source "PhoneStatesMgrService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getRetryMELockCount(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;


# direct methods
.method constructor <init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$4;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-direct {p0, p1, p2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;-><init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1516
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1517
    .local v9, ar:Landroid/os/AsyncResult;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1559
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1562
    :goto_1
    return-void

    .line 1520
    :pswitch_0
    const-string v0, "PhoneStatesMgrService"

    const-string v2, "getRetryMELockCount GET_MELOCK_RETRYCOUNT +"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    const/4 v1, 0x0

    .line 1522
    .local v1, nMELockType:I
    iget v11, p1, Landroid/os/Message;->arg1:I

    .line 1524
    .local v11, slot:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1525
    .local v10, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getNetworkPersoType()I

    move-result v1

    .line 1526
    const-string v0, "PhoneStatesMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRetryMELockCount gemini nMELockType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$4;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    iget-object v4, v4, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mMELockHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;

    const/16 v5, 0x6e

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1538
    const-string v0, "PhoneStatesMgrService"

    const-string v2, "getRetryMELockCount GET_MELOCK_RETRYCOUNT -"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1543
    .end local v1           #nMELockType:I
    .end local v10           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v11           #slot:I
    :pswitch_1
    const-string v0, "PhoneStatesMgrService"

    const-string v2, "getRetryMELockCount UNLOCK_ICC_SML_QUERYLEFTTIMES+"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1545
    const-string v0, "PhoneStatesMgrService"

    const-string v2, "getRetryMELockCount AsyncResult exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const-string v0, "PhoneStatesMgrService"

    const-string v2, "getRetryMELockCount UNLOCK_ICC_SML_QUERYLEFTTIMES -"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1547
    :cond_0
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    move-object v8, v0

    check-cast v8, [I

    .line 1548
    .local v8, LockState:[I
    aget v0, v8, v4

    invoke-virtual {p0, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;->setRetryCount(I)V

    .line 1549
    const-string v0, "PhoneStatesMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RetryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v8, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    monitor-enter p0

    .line 1551
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1552
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1517
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
