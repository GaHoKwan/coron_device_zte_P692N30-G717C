.class Lcom/mediatek/FMRadio/FMRadioEMActivity$2;
.super Ljava/lang/Object;
.source "FMRadioEMActivity.java"

# interfaces
.implements Lcom/mediatek/FMRadio/FMRadioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 366
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "callback_flag"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 367
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 368
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    return-void
.end method

.method public onFmExit()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public onPowerUpChanged(Z)V
    .locals 2
    .parameter "isPowerUp"

    .prologue
    const/16 v1, 0x8

    .line 373
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 374
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    return-void
.end method

.method public onPsChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "ps"

    .prologue
    const/4 v1, 0x1

    .line 394
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    return-void
.end method

.method public onRdsStationChanged(I)V
    .locals 2
    .parameter "station"

    .prologue
    const/4 v1, 0x2

    .line 384
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I

    .line 385
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    return-void
.end method

.method public onRecordError(I)V
    .locals 0
    .parameter "errorType"

    .prologue
    .line 424
    return-void
.end method

.method public onRecordModeChanged(Z)V
    .locals 0
    .parameter "isInRecordingMode"

    .prologue
    .line 432
    return-void
.end method

.method public onRecordStateChanged(I)V
    .locals 0
    .parameter "recordState"

    .prologue
    .line 416
    return-void
.end method

.method public onRtChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "rt"

    .prologue
    const/4 v1, 0x1

    .line 404
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    return-void
.end method
