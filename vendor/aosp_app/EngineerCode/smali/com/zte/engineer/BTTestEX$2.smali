.class Lcom/zte/engineer/BTTestEX$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 327
    iput-object p1, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const v10, 0x7f0600fc

    const/4 v11, 0x1

    .line 332
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 334
    const-string v7, "android.bluetooth.adapter.extra.STATE"

    const/high16 v8, -0x8000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 335
    .local v5, state:I
    const/16 v7, 0xc

    if-ne v5, v7, :cond_0

    .line 337
    const-string v7, "Emode.BTTestEX"

    const-string v8, "onReceive: bt turn on!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$200(Lcom/zte/engineer/BTTestEX;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/zte/engineer/BTTestEX;->access$402(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    const v9, 0x7f0600f8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/zte/engineer/BTTestEX;->access$502(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #calls: Lcom/zte/engineer/BTTestEX;->updateAddress()V
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$600(Lcom/zte/engineer/BTTestEX;)V

    .line 344
    .end local v5           #state:I
    :cond_0
    const-string v7, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 346
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 348
    .restart local v5       #state:I
    const-string v7, "Emode.BTTestEX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WIFI_STATE_CHANGED_ACTION: state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v7, "Emode.BTTestEX"

    const-string v8, "onReceive: wifi turn on!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v7, "connected"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 354
    .local v2, mSupplicantConnection:Z
    const-string v7, "Emode.BTTestEX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSupplicantConnection="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$300(Lcom/zte/engineer/BTTestEX;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 357
    .local v6, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_1

    .line 358
    if-ne v11, v2, :cond_4

    .line 359
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/zte/engineer/BTTestEX;->access$702(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/zte/engineer/BTTestEX;->access$802(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #calls: Lcom/zte/engineer/BTTestEX;->updateAddress()V
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$600(Lcom/zte/engineer/BTTestEX;)V

    .line 363
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->isWiFiConnectionOk:Z
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$900(Lcom/zte/engineer/BTTestEX;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 365
    :try_start_0
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x3a98

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$300(Lcom/zte/engineer/BTTestEX;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 367
    const-string v7, "Emode.BTTestEX"

    const-string v8, "startScan "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v2           #mSupplicantConnection:Z
    .end local v5           #state:I
    .end local v6           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 383
    const-string v7, "Emode.BTTestEX"

    const-string v8, "handleScanResultsAvailable ........"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #calls: Lcom/zte/engineer/BTTestEX;->handleScanResultsAvailable()V
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$1100(Lcom/zte/engineer/BTTestEX;)V

    .line 388
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 389
    const-string v7, "Emode.BTTestEX"

    const-string v8, "NETWORK_STATE_CHANGED_ACTION ........"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 391
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 392
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$300(Lcom/zte/engineer/BTTestEX;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, mSSID:Ljava/lang/String;
    const-string v7, "Emode.BTTestEX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_PING_GATEWAY ........mSSID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$1200(Lcom/zte/engineer/BTTestEX;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 395
    const-string v7, "Emode.BTTestEX"

    const-string v8, "MSG_PING_GATEWAY ........Start"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #setter for: Lcom/zte/engineer/BTTestEX;->isScanSuccess:Z
    invoke-static {v7, v11}, Lcom/zte/engineer/BTTestEX;->access$1302(Lcom/zte/engineer/BTTestEX;Z)Z

    .line 397
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 398
    .local v3, msg:Landroid/os/Message;
    const/16 v7, 0x3002

    iput v7, v3, Landroid/os/Message;->what:I

    .line 399
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x5dc

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 403
    .end local v1           #mSSID:Ljava/lang/String;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_3
    return-void

    .line 368
    .restart local v2       #mSupplicantConnection:Z
    .restart local v5       #state:I
    .restart local v6       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 370
    const-string v7, "Emode.BTTestEX"

    const-string v8, "startScan e"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 374
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/zte/engineer/BTTestEX;->access$702(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    iget-object v8, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/zte/engineer/BTTestEX;->access$802(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    iget-object v7, p0, Lcom/zte/engineer/BTTestEX$2;->this$0:Lcom/zte/engineer/BTTestEX;

    #calls: Lcom/zte/engineer/BTTestEX;->updateAddress()V
    invoke-static {v7}, Lcom/zte/engineer/BTTestEX;->access$600(Lcom/zte/engineer/BTTestEX;)V

    goto/16 :goto_0
.end method
