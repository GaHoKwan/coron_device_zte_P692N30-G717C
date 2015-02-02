.class Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/WifiBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/WifiBase;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    const-string v3, "wifi_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 60
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    .line 100
    .end local v2           #state:I
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v2       #state:I
    :pswitch_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->testingView:Landroid/widget/TextView;

    const v4, 0x7f0600b0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 68
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->testingView:Landroid/widget/TextView;

    const v4, 0x7f0600b2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 71
    .end local v2           #state:I
    :cond_1
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    const/4 v4, 0x0

    #setter for: Lcom/amoi/AmoiEngineerMode/base/WifiBase;->isScanWifi:Z
    invoke-static {v3, v4}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->access$002(Lcom/amoi/AmoiEngineerMode/base/WifiBase;Z)Z

    .line 73
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mSuccess:Z

    .line 77
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->testingView:Landroid/widget/TextView;

    const v4, -0xff0100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->testingView:Landroid/widget/TextView;

    const v4, 0x7f0600b5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->infoView:Landroid/widget/TextView;

    const v4, 0x7f0600b6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mAdapter:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;

    invoke-virtual {v3}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->clearItem()V

    .line 82
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    #calls: Lcom/amoi/AmoiEngineerMode/base/WifiBase;->addlist(Ljava/util/List;)V
    invoke-static {v3, v1}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->access$100(Lcom/amoi/AmoiEngineerMode/base/WifiBase;Ljava/util/List;)V

    .line 83
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v4, v4, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mAdapter:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    invoke-virtual {v3}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->showButton()V

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-boolean v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mSuccess:Z

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget v4, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mScanTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mScanTimes:I

    .line 89
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mScanTimes:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    .line 91
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->testingView:Landroid/widget/TextView;

    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->testingView:Landroid/widget/TextView;

    const v4, 0x7f0600b4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    invoke-virtual {v3}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->showButton()V

    goto/16 :goto_0

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/WifiBase;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto/16 :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
