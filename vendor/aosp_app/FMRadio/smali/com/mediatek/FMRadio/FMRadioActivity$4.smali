.class Lcom/mediatek/FMRadio/FMRadioActivity$4;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    .line 661
    const-string v1, "FmRx/Activity"

    const-string v2, "FMRadioActivity.onServiceConnected start"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    check-cast p2, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;->getService()Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;

    .line 663
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 664
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: Error: can\'t get Service"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 706
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->registerFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V

    .line 670
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isServiceInit()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 671
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: FM service is already init"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isDeviceOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 677
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z
    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateCurrentStation()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 680
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v0

    .line 683
    .local v0, isPlaying:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 684
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateMenuStatus()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 685
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateDialogStatus()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 688
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateRds()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 694
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->restoreRecorderState()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2500(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 705
    .end local v0           #isPlaying:Z
    :cond_3
    :goto_1
    const-string v1, "FmRx/Activity"

    const-string v2, "FMRadioActivity.onServiceConnected end"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 698
    :cond_4
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: FM service is not init"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->initService(I)V

    .line 701
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: call power up to service"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->powerUpFM()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2600(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 715
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method
