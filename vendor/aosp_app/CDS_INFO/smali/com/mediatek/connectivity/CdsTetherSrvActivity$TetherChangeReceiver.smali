.class Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CdsTetherSrvActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsTetherSrvActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsTetherSrvActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/connectivity/CdsTetherSrvActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;->this$0:Lcom/mediatek/connectivity/CdsTetherSrvActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/connectivity/CdsTetherSrvActivity;Lcom/mediatek/connectivity/CdsTetherSrvActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;-><init>(Lcom/mediatek/connectivity/CdsTetherSrvActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 348
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 350
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 352
    .local v3, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;->this$0:Lcom/mediatek/connectivity/CdsTetherSrvActivity;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    #calls: Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v7, v4, v5, v6}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->access$100(Lcom/mediatek/connectivity/CdsTetherSrvActivity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 365
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 356
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;->this$0:Lcom/mediatek/connectivity/CdsTetherSrvActivity;

    const/4 v5, 0x1

    #setter for: Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mMassStorageActive:Z
    invoke-static {v4, v5}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->access$202(Lcom/mediatek/connectivity/CdsTetherSrvActivity;Z)Z

    .line 357
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;->this$0:Lcom/mediatek/connectivity/CdsTetherSrvActivity;

    #calls: Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateState()V
    invoke-static {v4}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->access$300(Lcom/mediatek/connectivity/CdsTetherSrvActivity;)V

    goto :goto_0

    .line 358
    :cond_2
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 359
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;->this$0:Lcom/mediatek/connectivity/CdsTetherSrvActivity;

    #setter for: Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mMassStorageActive:Z
    invoke-static {v4, v6}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->access$202(Lcom/mediatek/connectivity/CdsTetherSrvActivity;Z)Z

    .line 360
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;->this$0:Lcom/mediatek/connectivity/CdsTetherSrvActivity;

    #calls: Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateState()V
    invoke-static {v4}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->access$300(Lcom/mediatek/connectivity/CdsTetherSrvActivity;)V

    goto :goto_0

    .line 361
    :cond_3
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;->this$0:Lcom/mediatek/connectivity/CdsTetherSrvActivity;

    const-string v5, "connected"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #setter for: Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mUsbConnected:Z
    invoke-static {v4, v5}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->access$402(Lcom/mediatek/connectivity/CdsTetherSrvActivity;Z)Z

    .line 363
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;->this$0:Lcom/mediatek/connectivity/CdsTetherSrvActivity;

    #calls: Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateState()V
    invoke-static {v4}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->access$300(Lcom/mediatek/connectivity/CdsTetherSrvActivity;)V

    goto :goto_0
.end method
