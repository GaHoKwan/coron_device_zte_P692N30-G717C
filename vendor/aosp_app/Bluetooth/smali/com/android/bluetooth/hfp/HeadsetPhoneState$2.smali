.class Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;
.super Landroid/telephony/PhoneStateListener;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9
    .parameter "serviceState"

    .prologue
    const/4 v6, 0x1

    .line 340
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v5, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$002(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 345
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServicePool:[I
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$500(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)[I

    move-result-object v7

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v8

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_0
    aput v5, v7, v8

    .line 349
    const/4 v4, 0x0

    .line 351
    .local v4, tempService:I
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServicePool:[I
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$500(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 352
    .local v3, service:I
    if-ne v3, v6, :cond_4

    .line 353
    move v4, v3

    .line 358
    .end local v3           #service:I
    :cond_1
    const-string v5, "HeadsetPhoneState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateServiceForGemini, mService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I
    invoke-static {v7}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$100(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tempService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " simNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$100(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 361
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I
    invoke-static {v5, v4}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$102(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 362
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 364
    :cond_2
    return-void

    .line 345
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #tempService:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 351
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #service:I
    .restart local v4       #tempService:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 8
    .parameter "signalStrength"

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignalPool:[I
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$600(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v6

    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #calls: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    invoke-static {v7, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$300(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/SignalStrength;)I

    move-result v7

    aput v7, v5, v6

    .line 374
    :goto_0
    const/4 v4, 0x0

    .line 376
    .local v4, tempSignal:I
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignalPool:[I
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$600(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 377
    .local v3, signal:I
    if-le v3, v4, :cond_0

    .line 378
    move v4, v3

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 371
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #signal:I
    .end local v4           #tempSignal:I
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignalPool:[I
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$600(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v6

    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #calls: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    invoke-static {v7, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$400(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/SignalStrength;)I

    move-result v7

    aput v7, v5, v6

    goto :goto_0

    .line 382
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #tempSignal:I
    :cond_2
    const-string v5, "HeadsetPhoneState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSignalForGemini, mSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v7}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$200(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tempSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " simNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$200(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 385
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v5, v4}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 386
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v5}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 388
    :cond_3
    return-void
.end method
