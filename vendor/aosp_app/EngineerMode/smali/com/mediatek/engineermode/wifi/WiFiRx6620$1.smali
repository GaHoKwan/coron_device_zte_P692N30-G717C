.class Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;
.super Landroid/os/Handler;
.source "WiFiRx6620.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wifi/WiFiRx6620;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 81
    sget-boolean v8, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-nez v8, :cond_0

    .line 82
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/app/Activity;->showDialog(I)V

    .line 114
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v8, 0x2

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_2

    .line 86
    const/4 v8, 0x2

    new-array v1, v8, [J

    .line 87
    .local v1, i4Rx:[J
    const-wide/16 v4, -0x1

    .line 88
    .local v4, i4RxCntOk:J
    const-wide/16 v2, -0x1

    .line 89
    .local v2, i4RxCntFcsErr:J
    const-wide/16 v6, -0x1

    .line 90
    .local v6, i4RxPer:J
    const-string v8, "EM/WiFi_Rx"

    const-string v9, "The Handle event is : HANDLER_EVENT_RX"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvPer:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$000(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 97
    :goto_1
    const/4 v8, 0x2

    invoke-static {v1, v8}, Lcom/mediatek/engineermode/wifi/EMWifi;->getPacketRxStatus([JI)I

    .line 98
    const-string v8, "EM/WiFi_Rx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after rx test: rx ok = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-wide v10, v1, v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v8, "EM/WiFi_Rx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after rx test: fcs error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-wide v10, v1, v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v8, 0x0

    aget-wide v4, v1, v8

    .line 103
    const/4 v8, 0x1

    aget-wide v2, v1, v8

    .line 104
    add-long v8, v2, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 105
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v2

    add-long v10, v2, v4

    div-long v6, v8, v10

    .line 108
    :cond_1
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvFcs:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$100(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvRx:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$200(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvPer:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$000(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .end local v1           #i4Rx:[J
    .end local v2           #i4RxCntFcsErr:J
    .end local v4           #i4RxCntOk:J
    .end local v6           #i4RxPer:J
    :cond_2
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$300(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 93
    .restart local v1       #i4Rx:[J
    .restart local v2       #i4RxCntFcsErr:J
    .restart local v4       #i4RxCntOk:J
    .restart local v6       #i4RxPer:J
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v8, "EM/WiFi_Rx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Long.parseLong NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
