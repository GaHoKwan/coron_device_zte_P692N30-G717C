.class Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;
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
    .line 309
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$002(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 313
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I
    invoke-static {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$102(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 316
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 317
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$200(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v0

    .line 322
    .local v0, prevSignal:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #calls: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    invoke-static {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$300(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/SignalStrength;)I

    move-result v2

    #setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$200(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 331
    :cond_0
    return-void

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    #calls: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    invoke-static {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$400(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/SignalStrength;)I

    move-result v2

    #setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    goto :goto_0
.end method
