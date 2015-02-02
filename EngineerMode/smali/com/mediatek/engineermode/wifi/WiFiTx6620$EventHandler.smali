.class Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;
.super Landroid/os/Handler;
.source "WiFiTx6620.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wifi/WiFiTx6620;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 727
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .line 728
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 729
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 732
    sget-boolean v7, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-nez v7, :cond_1

    .line 733
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/app/Activity;->showDialog(I)V

    .line 937
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 736
    :cond_1
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "new msg"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v7, 0x1

    new-array v6, v7, [J

    .line 740
    .local v6, u4Value:[J
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 742
    :pswitch_1
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 746
    :pswitch_2
    const-wide/16 v7, 0x2

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 747
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The mPreambleIndex is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-wide/16 v7, 0x4

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 751
    const-wide/16 v7, 0x5

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 754
    const-wide/16 v7, 0x6

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPktLenNum:J
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 759
    const-wide/16 v7, 0x7

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCntNum:J
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 762
    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 769
    const-wide/16 v7, 0x9

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 771
    const-wide/16 v7, 0xa

    const-wide/32 v9, 0x20000

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 774
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-static {}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2100()[J

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 775
    const-wide/16 v7, 0xc

    invoke-static {}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2100()[J

    move-result-object v9

    aget-wide v9, v9, v1

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 779
    :cond_2
    const-wide/16 v7, 0xd

    const-wide/16 v9, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 781
    const-wide/16 v7, 0xe

    const-wide/16 v9, 0x2

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 782
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The mGuardIntervalIndex is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalIndex:I
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-wide/16 v7, 0x10

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalIndex:I
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 786
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The mBandwidthIndex is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-wide/16 v7, 0xf

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 789
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    move-result-object v7

    iget v5, v7, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    .line 790
    .local v5, rateIndex:I
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$600(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 791
    add-int/lit8 v5, v5, -0xc

    .line 792
    const/4 v7, 0x7

    if-le v5, v7, :cond_3

    .line 793
    const/16 v5, 0x20

    .line 795
    :cond_3
    const/high16 v7, -0x8000

    or-int/2addr v5, v7

    .line 798
    :cond_4
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "TXX rate index = 0x%08x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-wide/16 v7, 0x3

    int-to-long v9, v5

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 801
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelFreq()I

    move-result v2

    .line 802
    .local v2, number:I
    int-to-long v7, v2

    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/EMWifi;->setChannel(J)I

    .line 803
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "target channel freq ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelFreq()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_5

    .line 808
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z
    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    .line 810
    :cond_5
    const/4 v7, 0x3

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 820
    .end local v1           #i:I
    .end local v2           #number:I
    .end local v5           #rateIndex:I
    :pswitch_3
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    move-result-object v7

    iget v5, v7, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    .line 821
    .restart local v5       #rateIndex:I
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$600(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 822
    add-int/lit8 v5, v5, -0xc

    .line 823
    const/4 v7, 0x7

    if-le v5, v7, :cond_6

    .line 824
    const/16 v5, 0x20

    .line 826
    :cond_6
    const/high16 v7, -0x8000

    or-int/2addr v5, v7

    .line 828
    :cond_7
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "Tx rate index = 0x%08x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-wide/16 v7, 0x3

    int-to-long v9, v5

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 831
    const-wide/16 v7, 0x2

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 832
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The mPreambleIndex is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-wide/16 v7, 0x4

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 834
    const-wide/16 v7, 0x5

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 836
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x4

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_0

    .line 838
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z
    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    goto/16 :goto_0

    .line 846
    .end local v5           #rateIndex:I
    :pswitch_4
    const-wide/16 v7, 0x2

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 847
    const-wide/16 v7, 0x5

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 849
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 850
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x6

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_0

    .line 852
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z
    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    goto/16 :goto_0

    .line 855
    :cond_8
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 856
    const-wide/16 v7, 0x41

    const-wide/16 v9, 0x5

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 862
    :goto_2
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0xa

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_0

    .line 864
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z
    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    goto/16 :goto_0

    .line 859
    :cond_9
    const-wide/16 v7, 0x41

    const-wide/16 v9, 0x2

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    goto :goto_2

    .line 873
    :pswitch_5
    const-wide/16 v7, 0x2

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J
    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 874
    const-wide/16 v7, 0x5

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 876
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x5

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_0

    .line 878
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z
    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    goto/16 :goto_0

    .line 891
    :pswitch_6
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "The Handle event is : HANDLER_EVENT_STOP"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 893
    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v8

    int-to-long v8, v8

    aput-wide v8, v6, v7

    .line 895
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z
    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    .line 901
    :cond_a
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 902
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    :cond_b
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 907
    :pswitch_7
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 908
    const-wide/16 v3, 0x0

    .line 909
    .local v3, pktCnt:J
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "The Handle event is : HANDLER_EVENT_TIMER"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 919
    const-wide/16 v7, 0x20

    invoke-static {v7, v8, v6}, Lcom/mediatek/engineermode/wifi/EMWifi;->getATParam(J[J)I

    move-result v7

    if-nez v7, :cond_c

    .line 921
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query Transmitted packet count succeed, count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-wide v9, v6, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " target count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v7, 0x0

    aget-wide v7, v6, v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_d

    .line 925
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 926
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const-string v8, "invalid input value"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 930
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_c
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "query Transmitted packet count failed"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_d
    const/4 v7, 0x3

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 742
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
