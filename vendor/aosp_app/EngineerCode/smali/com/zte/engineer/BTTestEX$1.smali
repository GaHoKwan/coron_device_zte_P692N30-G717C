.class Lcom/zte/engineer/BTTestEX$1;
.super Ljava/lang/Object;
.source "BTTestEX.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 278
    iput-object p1, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x3

    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, state:I
    const-string v2, "Emode.BTTestEX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThreadExitCheck: mOrgBtState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z
    invoke-static {v4}, Lcom/zte/engineer/BTTestEX;->access$000(Lcom/zte/engineer/BTTestEX;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v2, "Emode.BTTestEX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThreadExitCheck: mOrgWifiState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z
    invoke-static {v4}, Lcom/zte/engineer/BTTestEX;->access$100(Lcom/zte/engineer/BTTestEX;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v2, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z
    invoke-static {v2}, Lcom/zte/engineer/BTTestEX;->access$000(Lcom/zte/engineer/BTTestEX;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/zte/engineer/BTTestEX;->access$200(Lcom/zte/engineer/BTTestEX;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 290
    :goto_0
    if-eq v1, v6, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/zte/engineer/BTTestEX;->access$200(Lcom/zte/engineer/BTTestEX;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 294
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 300
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    if-ne v1, v6, :cond_1

    .line 301
    iget-object v2, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/zte/engineer/BTTestEX;->access$200(Lcom/zte/engineer/BTTestEX;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z
    invoke-static {v2}, Lcom/zte/engineer/BTTestEX;->access$100(Lcom/zte/engineer/BTTestEX;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 306
    iget-object v2, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/zte/engineer/BTTestEX;->access$300(Lcom/zte/engineer/BTTestEX;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 309
    :goto_1
    if-eq v1, v5, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 312
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    :goto_2
    iget-object v2, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/zte/engineer/BTTestEX;->access$300(Lcom/zte/engineer/BTTestEX;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    goto :goto_1

    .line 313
    :catch_1
    move-exception v0

    .line 314
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 320
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    if-ne v1, v5, :cond_3

    .line 321
    iget-object v2, p0, Lcom/zte/engineer/BTTestEX$1;->this$0:Lcom/zte/engineer/BTTestEX;

    #getter for: Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/zte/engineer/BTTestEX;->access$300(Lcom/zte/engineer/BTTestEX;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 324
    :cond_3
    return-void
.end method
