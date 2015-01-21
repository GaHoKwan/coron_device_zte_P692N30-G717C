.class Lcom/zte/engineer/BTTestEX$3;
.super Landroid/os/Handler;
.source "BTTestEX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/BTTestEX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/BTTestEX;


# direct methods
.method constructor <init>(Lcom/zte/engineer/BTTestEX;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 513
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 645
    :goto_0
    return-void

    .line 515
    :sswitch_0
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #calls: Lcom/zte/engineer/BTTestEX;->updateAddress()V
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$600(Lcom/zte/engineer/BTTestEX;)V

    goto :goto_0

    .line 553
    :sswitch_1
    const-string v7, ""

    .line 556
    .local v7, output:Ljava/lang/String;
    const-string v8, "dhcp.wlan0.gateway"

    const-string v9, "192.168.1.1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, gateway:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ping -c 5 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, cmdLineStr:Ljava/lang/String;
    const-string v8, "Emode.BTTestEX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gateway:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :try_start_0
    invoke-static {v0}, Lcom/zte/engineer/CdsShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_1
    invoke-static {}, Lcom/zte/engineer/CdsShellExe;->getOutput()Ljava/lang/String;

    move-result-object v7

    .line 566
    const-string v8, "Emode.BTTestEX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG_PING_GATEWAY output====:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v8, "ERROR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 568
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1408(Lcom/zte/engineer/BTTestEX;)I

    .line 569
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->errorCount:I
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1400(Lcom/zte/engineer/BTTestEX;)I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_0

    .line 570
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const/4 v9, 0x0

    #setter for: Lcom/zte/engineer/BTTestEX;->errorCount:I
    invoke-static {v8, v9}, Lcom/zte/engineer/BTTestEX;->access$1402(Lcom/zte/engineer/BTTestEX;I)I

    .line 571
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    iget-object v9, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const v10, 0x7f060110

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/zte/engineer/BTTestEX;->detailMessages:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/zte/engineer/BTTestEX;->access$1502(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const v11, 0x7f06010e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/engineer/BTTestEX;->access$1200(Lcom/zte/engineer/BTTestEX;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const v11, 0x7f06010d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/zte/engineer/BTTestEX;->connectionState:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/zte/engineer/BTTestEX;->access$1602(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    const-string v8, "Emode.BTTestEX"

    const-string v9, "****execCommand more than 3 times failed*********"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3001

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 561
    :catch_0
    move-exception v2

    .line 562
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 581
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3002

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 586
    :cond_1
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #setter for: Lcom/zte/engineer/BTTestEX;->detailMessages:Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/zte/engineer/BTTestEX;->access$1502(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$300(Lcom/zte/engineer/BTTestEX;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    .line 590
    .local v6, mSSID:Ljava/lang/String;
    const-string v8, "Emode.BTTestEX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "********wifiInfo.getSSID()*****"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const v11, 0x7f06010b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/zte/engineer/BTTestEX;->connectionState:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/zte/engineer/BTTestEX;->access$1602(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    if-eqz v6, :cond_2

    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1200(Lcom/zte/engineer/BTTestEX;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 593
    :cond_2
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const v11, 0x7f06010c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/engineer/BTTestEX;->access$1200(Lcom/zte/engineer/BTTestEX;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zte/engineer/BTTestEX;->access$1684(Lcom/zte/engineer/BTTestEX;Ljava/lang/Object;)Ljava/lang/String;

    .line 595
    :cond_3
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3001

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x5dc

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 598
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 599
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v8, "http://it.zte.com.cn"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 602
    .local v1, content_url:Landroid/net/Uri;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 604
    const-string v8, "com.android.browser"

    const-string v9, "com.android.browser.BrowserActivity"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    invoke-virtual {v8, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 606
    .end local v1           #content_url:Landroid/net/Uri;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 607
    .local v3, ex:Landroid/content/ActivityNotFoundException;
    const-string v8, "Emode.BTTestEX"

    const-string v9, "----ActivityNotFoundException----"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 612
    .end local v0           #cmdLineStr:Ljava/lang/String;
    .end local v3           #ex:Landroid/content/ActivityNotFoundException;
    .end local v4           #gateway:Ljava/lang/String;
    .end local v6           #mSSID:Ljava/lang/String;
    .end local v7           #output:Ljava/lang/String;
    :sswitch_2
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const/16 v9, 0xf

    invoke-static {v8, v9}, Lcom/zte/engineer/BTTestEX;->access$1712(Lcom/zte/engineer/BTTestEX;I)I

    .line 613
    const-string v8, "Emode.BTTestEX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***********connectWIFITime========="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->connectWIFITime:I
    invoke-static {v10}, Lcom/zte/engineer/BTTestEX;->access$1700(Lcom/zte/engineer/BTTestEX;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->isScanSuccess:Z
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1300(Lcom/zte/engineer/BTTestEX;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 615
    const-string v8, "Emode.BTTestEX"

    const-string v9, "***********connect wifi success*********"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 617
    :cond_4
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->connectWIFITime:I
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1700(Lcom/zte/engineer/BTTestEX;)I

    move-result v8

    const/16 v9, 0x3c

    if-lt v8, v9, :cond_6

    .line 619
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    iget v8, v8, Lcom/zte/engineer/BTTestEX;->connectpot:I

    if-nez v8, :cond_5

    .line 620
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const/4 v9, 0x0

    #setter for: Lcom/zte/engineer/BTTestEX;->connectWIFITime:I
    invoke-static {v8, v9}, Lcom/zte/engineer/BTTestEX;->access$1702(Lcom/zte/engineer/BTTestEX;I)I

    .line 621
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    iget-object v9, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    iget v9, v9, Lcom/zte/engineer/BTTestEX;->connectpot:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/zte/engineer/BTTestEX;->connectpot:I

    .line 622
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #calls: Lcom/zte/engineer/BTTestEX;->handleScanResultsAvailable()V
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1100(Lcom/zte/engineer/BTTestEX;)V

    goto/16 :goto_0

    .line 624
    :cond_5
    const-string v8, "Emode.BTTestEX"

    const-string v9, "***********connect wifi failed*********"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    iget-object v9, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const v10, 0x7f060110

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/zte/engineer/BTTestEX;->detailMessages:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/zte/engineer/BTTestEX;->access$1502(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 628
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const v11, 0x7f06010e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/engineer/BTTestEX;->access$1200(Lcom/zte/engineer/BTTestEX;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    const v11, 0x7f06010d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/zte/engineer/BTTestEX;->connectionState:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/zte/engineer/BTTestEX;->access$1602(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 631
    const-string v8, "Emode.BTTestEX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "****connect time out****wifiSSID*****"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/engineer/BTTestEX;->access$1200(Lcom/zte/engineer/BTTestEX;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3001

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 636
    :cond_6
    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/engineer/BTTestEX$3;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x3a98

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x3001 -> :sswitch_0
        0x3002 -> :sswitch_1
    .end sparse-switch
.end method
