.class Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;
.super Lcom/mediatek/CellConnService/IPhoneStatesMgrService$Stub;
.source "PhoneStatesMgrService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/PhoneStatesMgrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;


# direct methods
.method constructor <init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-direct {p0}, Lcom/mediatek/CellConnService/IPhoneStatesMgrService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyPhoneState(IILcom/mediatek/CellConnService/IPhoneStatesCallback;)I
    .locals 11
    .parameter "slot"
    .parameter "reqType"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x3

    .line 356
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsVerify:Z
    invoke-static {v6}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$600(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "It already exists a request item"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return v3

    .line 360
    :cond_0
    const/high16 v6, -0x8000

    and-int/2addr v6, p2

    if-nez v6, :cond_1

    .line 361
    const-string v6, "PhoneStatesMgrService"

    const-string v7, "verifyPhoneState suppress confirm dialog flag is false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z
    invoke-static {v6, v9}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$702(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 369
    :goto_1
    const/high16 v6, 0x4000

    and-int/2addr v6, p2

    if-nez v6, :cond_2

    .line 370
    const-string v6, "PhoneStatesMgrService"

    const-string v7, "verifyPhoneState request no prefer flag is false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mRequestNoPrefer:Z
    invoke-static {v6, v9}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$802(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 378
    :goto_2
    const-string v6, "PhoneStatesMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifyPhoneState slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reqType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->reqestTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-nez p3, :cond_3

    .line 382
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "verifyPhoneState call back is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_1
    const-string v6, "PhoneStatesMgrService"

    const-string v7, "verifyPhoneState suppress confirm dialog flag is true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z
    invoke-static {v6, v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$702(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 366
    const v6, 0x7fffffff

    and-int/2addr p2, v6

    goto :goto_1

    .line 373
    :cond_2
    const-string v6, "PhoneStatesMgrService"

    const-string v7, "verifyPhoneState request no prefer flag is true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mRequestNoPrefer:Z
    invoke-static {v6, v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$802(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 375
    const v6, -0x40000001

    and-int/2addr p2, v6

    goto :goto_2

    .line 386
    :cond_3
    if-gez p1, :cond_4

    .line 387
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "verifyPhoneState slot is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-interface {p3, v3}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onComplete(I)V

    goto/16 :goto_0

    .line 404
    :cond_4
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getRetryPinCount(I)I
    invoke-static {v6, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)I

    move-result v6

    if-nez v6, :cond_5

    .line 405
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v6}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v6

    aput v10, v6, p1

    .line 408
    :cond_5
    const-string v6, "PhoneStatesMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifyPhoneState mPhoneStates["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v8}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v8

    aget v8, v8, p1

    invoke-static {v8}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->phoneStateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v6, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isSIMReady(I)Z

    move-result v0

    .line 411
    .local v0, bSimReady:Z
    const-string v6, "PhoneStatesMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifyPhoneState isSIMReady = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-eqz v0, :cond_a

    .line 414
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v6}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v6

    aget v6, v6, p1

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isRadioOff(I)Z
    invoke-static {v6, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1100(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v6, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->pinRequest(I)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v6, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->pukRequest(I)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v6, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->simMELockRequest(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 417
    :cond_6
    const-string v6, "PhoneStatesMgrService"

    const-string v7, "verifyPhoneState phone state is normal"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v6}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v6

    aput v9, v6, p1

    .line 421
    const/16 v6, 0x12e

    if-eq p2, v6, :cond_8

    const/16 v6, 0x130

    if-ne v6, p2, :cond_7

    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v6, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->fdnRequest(I)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const/16 v6, 0x132

    if-ne v6, p2, :cond_a

    iget-object v6, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v6, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->roamingRequest(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 424
    :cond_8
    const-string v3, "PhoneStatesMgrService"

    const-string v5, "verifyPhoneState respond with RESULT_STATE_NORMAL to request"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v3, 0x132

    if-ne v3, p2, :cond_9

    .line 427
    invoke-interface {p3, v4, p1}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onCompleteWithPrefer(II)V

    :goto_3
    move v3, v4

    .line 431
    goto/16 :goto_0

    .line 429
    :cond_9
    invoke-interface {p3, v4}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onComplete(I)V

    goto :goto_3

    .line 436
    :cond_a
    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I
    invoke-static {v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I

    move-result v4

    if-lt p1, v4, :cond_b

    .line 437
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onComplete(I)V

    .line 438
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "verifyPhoneState The param slot is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    :cond_b
    const-string v4, "PhoneStatesMgrService"

    const-string v6, "verifyPhoneState enter the phone states machine"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v2, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;

    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-direct {v2, v4, p1, p2, p3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;-><init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;IILcom/mediatek/CellConnService/IPhoneStatesCallback;)V

    .line 445
    .local v2, reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    if-nez v2, :cond_c

    .line 446
    const-string v4, "PhoneStatesMgrService"

    const-string v5, "verifyPhoneState reqItem is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-interface {p3, v3}, Lcom/mediatek/CellConnService/IPhoneStatesCallback;->onComplete(I)V

    goto/16 :goto_0

    .line 451
    :cond_c
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mResult:I
    invoke-static {v3, v10}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1302(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)I

    .line 452
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 453
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    if-nez v0, :cond_d

    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isRadioOff(I)Z
    invoke-static {v3, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1100(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 457
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "verifyPhoneState exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 458
    goto/16 :goto_0

    .line 454
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 462
    :cond_d
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 463
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 464
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsVerify:Z
    invoke-static {v3, v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$602(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 466
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    move-result-object v3

    if-nez v3, :cond_e

    .line 467
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "verifyPhoneState wait looper"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->waitForLooper()V
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1400(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V

    .line 471
    :cond_e
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$2;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 472
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "verifyPhoneState --"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 473
    goto/16 :goto_0
.end method
