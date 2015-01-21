.class public Lcom/isw/android/corp/util/WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isw/android/corp/util/WifiReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "WifiReceiver"

    sput-object v0, Lcom/isw/android/corp/util/WifiReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/isw/android/corp/util/WifiReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/isw/android/corp/util/WifiReceiver;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/isw/android/corp/util/WifiReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    const-string v3, "wifi_state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 41
    .local v2, wifiState:I
    sget-object v3, Lcom/isw/android/corp/util/WifiReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wifiState:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    packed-switch v2, :pswitch_data_0

    .line 65
    .end local v2           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v2       #wifiState:I
    :pswitch_0
    sget-object v3, Lcom/isw/android/corp/util/WifiReceiver;->TAG:Ljava/lang/String;

    const-string v4, "[onReceive] disconnected!"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_1
    sget-object v3, Lcom/isw/android/corp/util/WifiReceiver;->TAG:Ljava/lang/String;

    const-string v4, "[onReceive] disconnecting..."

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_2
    sget-object v3, Lcom/isw/android/corp/util/WifiReceiver;->TAG:Ljava/lang/String;

    const-string v4, "[onReceive] connected!"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/isw/android/corp/util/WifiReceiver;->mContext:Landroid/content/Context;

    .line 52
    new-instance v1, Lcom/isw/android/corp/util/WifiReceiver$MyHandler;

    invoke-direct {v1, p0}, Lcom/isw/android/corp/util/WifiReceiver$MyHandler;-><init>(Lcom/isw/android/corp/util/WifiReceiver;)V

    .line 53
    .local v1, myHandler:Lcom/isw/android/corp/util/WifiReceiver$MyHandler;
    const/4 v3, 0x3

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Lcom/isw/android/corp/util/WifiReceiver$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    sget-object v3, Lcom/isw/android/corp/util/WifiReceiver;->TAG:Ljava/lang/String;

    const-string v4, "send msg delayed"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v1           #myHandler:Lcom/isw/android/corp/util/WifiReceiver$MyHandler;
    :pswitch_3
    sget-object v3, Lcom/isw/android/corp/util/WifiReceiver;->TAG:Ljava/lang/String;

    const-string v4, "[onReceive] connecting..."

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_4
    sget-object v3, Lcom/isw/android/corp/util/WifiReceiver;->TAG:Ljava/lang/String;

    const-string v4, "[onReceive] unknown..."

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
