.class Lcom/mediatek/FMRadio/FMRadioEMActivity$3;
.super Ljava/lang/Object;
.source "FMRadioEMActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 555
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 563
    const-string v1, "FmRx/EM"

    const-string v2, "begin FMRadioEMActivity.onServiceConnected"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    check-cast p2, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;->getService()Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;

    .line 565
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 566
    const-string v1, "FmRx/EM"

    const-string v2, "Error: null interface"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 623
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->registerFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V

    .line 572
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isServiceInit()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 573
    const-string v1, "FmRx/EM"

    const-string v2, "FM service is not init."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v2

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->initService(I)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4400(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V

    .line 575
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4500(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 579
    const-string v1, "FmRx/EM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onService connect.mCurrentStation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    .line 622
    :goto_1
    const-string v1, "FmRx/EM"

    const-string v2, "<<< FMRadioEMActivity.onServiceConnected"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :cond_1
    const-string v1, "FmRx/EM"

    const-string v2, "FM service is already init."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 587
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->getFrequency()I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v0

    .line 588
    .local v0, iFreq:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 589
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 590
    const-string v1, "FmRx/EM"

    const-string v2, "The frequency in FM service is not same as in database."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I

    .line 594
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 602
    :goto_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPowerUp()Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 604
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 605
    const-string v1, "FmRx/EM"

    const-string v2, "FM is already power up."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4500(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 609
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 611
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPS()Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$5000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 612
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->getLRText()Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$5100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 620
    .end local v0           #iFreq:I
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 596
    .restart local v0       #iFreq:I
    :cond_4
    const-string v1, "FmRx/EM"

    const-string v2, "The frequency in FM service is same as in database."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 599
    :cond_5
    const-string v1, "FmRx/EM"

    const-string v2, "Error: invalid frequency in service."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 618
    .end local v0           #iFreq:I
    :cond_6
    const-string v1, "FmRx/EM"

    const-string v2, "Error: FM device is not open"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 626
    const-string v0, "FmRx/EM"

    const-string v1, ">>> FMRadioEMActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;

    .line 628
    const-string v0, "FmRx/EM"

    const-string v1, "<<< FMRadioEMActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method
