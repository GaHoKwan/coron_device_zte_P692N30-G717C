.class public Lcom/mediatek/connectivity/CdsTetherSrvActivity;
.super Landroid/app/Activity;
.source "CdsTetherSrvActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/connectivity/CdsTetherSrvActivity$1;,
        Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field private static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field private static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field private static final CRLF:Ljava/lang/String; = "\r\n----------------------\r\n"

.field private static final ERROR_STRING:Ljava/lang/String; = "Command Error"

.field private static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field private static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field private static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field private static final TAG:Ljava/lang/String; = "CdsTetheringSrvActivity"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field private static final USB_CONNECTED:Ljava/lang/String; = "connected"


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mMassStorageActive:Z

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherInfo:Landroid/widget/TextView;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 338
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/connectivity/CdsTetherSrvActivity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/connectivity/CdsTetherSrvActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/connectivity/CdsTetherSrvActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/mediatek/connectivity/CdsTetherSrvActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mUsbConnected:Z

    return p1
.end method

.method private updateState()V
    .locals 9

    .prologue
    .line 217
    const/4 v4, 0x0

    .line 221
    .local v4, method:Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getTetherableIfaces"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 222
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 224
    .local v1, available:[Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getTetheredIfaces"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 225
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 227
    .local v5, tethered:[Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getTetheringErroredIfaces"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 228
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 230
    .local v3, errored:[Ljava/lang/String;
    invoke-direct {p0, v1, v5, v3}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1           #available:[Ljava/lang/String;
    .end local v3           #errored:[Ljava/lang/String;
    .end local v5           #tethered:[Ljava/lang/String;
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private updateTetherSrvInfo()V
    .locals 12

    .prologue
    .line 166
    const/4 v5, 0x0

    .line 167
    .local v5, method:Ljava/lang/reflect/Method;
    const-string v3, ""

    .line 168
    .local v3, infoString:Ljava/lang/String;
    const-string v7, ""

    .line 170
    .local v7, tetherString:Ljava/lang/String;
    const/4 v2, 0x0

    .line 174
    .local v2, i:I
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "isTetheringSupported"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 175
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 176
    .local v4, isTetherSupported:Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 177
    const-string v3, "Tethering function is supported\r\n----------------------\r\n"

    .line 184
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getTetherableUsbRegexs"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 185
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 186
    .local v6, tetherInterfaces:[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_1

    .line 187
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    const-string v10, "\\d"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v6           #tetherInterfaces:[Ljava/lang/String;
    :cond_0
    const-string v3, "Tethering function is non-supported"

    .line 180
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .end local v4           #isTetherSupported:Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 189
    .restart local v4       #isTetherSupported:Ljava/lang/Boolean;
    .restart local v6       #tetherInterfaces:[Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "USB tethering interfaces: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n----------------------\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getTetherableWifiRegexs"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 192
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 193
    const-string v7, ""

    .line 194
    const/4 v2, 0x0

    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    const-string v10, "\\d"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 197
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Wifi tethering interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n----------------------\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getTetherableBluetoothRegexs"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 200
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 201
    const-string v7, ""

    .line 202
    const/4 v2, 0x0

    :goto_3
    array-length v8, v6

    if-ge v2, v8, :cond_3

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    const-string v10, "\\d"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 205
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Bluetooth tethering interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n----------------------\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const-string v8, "CdsTetheringSrvActivity"

    const-string v9, "updateTetherSrvInfo Done"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 211
    .end local v4           #isTetherSupported:Ljava/lang/Boolean;
    .end local v6           #tetherInterfaces:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mUsbConnected:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mMassStorageActive:Z

    if-nez v15, :cond_1

    const/4 v11, 0x1

    .line 249
    .local v11, usbAvailable:Z
    :goto_0
    const/4 v12, 0x0

    .line 253
    .local v12, usbError:I
    move-object/from16 v1, p1

    .local v1, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v10, v1, v5

    .line 254
    .local v10, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mUsbRegexs:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v9, v2, v4

    .line 255
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 256
    if-nez v12, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "getLastTetherError"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 258
    .local v8, method:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 254
    .end local v8           #method:Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 248
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v9           #regex:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    .end local v11           #usbAvailable:Z
    .end local v12           #usbError:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 253
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v10       #s:Ljava/lang/String;
    .restart local v11       #usbAvailable:Z
    .restart local v12       #usbError:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 263
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 264
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v14, 0x0

    .line 268
    .local v14, usbTethered:Z
    move-object/from16 v1, p2

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v10, v1, v5

    .line 269
    .restart local v10       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_4
    if-ge v4, v7, :cond_5

    aget-object v9, v2, v4

    .line 270
    .restart local v9       #regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v14, 0x1

    .line 269
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 268
    .end local v9           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_3

    .line 273
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    .line 274
    .local v13, usbErrored:Z
    move-object/from16 v1, p3

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .restart local v5       #i$:I
    :goto_5
    if-ge v5, v6, :cond_9

    aget-object v10, v1, v5

    .line 275
    .restart local v10       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_6
    if-ge v4, v7, :cond_8

    aget-object v9, v2, v4

    .line 276
    .restart local v9       #regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v13, 0x1

    .line 275
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 274
    .end local v9           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_5

    .line 297
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, method:Ljava/lang/reflect/Method;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mContext:Landroid/content/Context;

    .line 131
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 132
    const-string v2, "CdsTetheringSrvActivity"

    const-string v3, "Could not get Conext of this activity"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 136
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 137
    const-string v2, "CdsTetheringSrvActivity"

    const-string v3, "Could not get Connectivity Manager"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 142
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getTetherableUsbRegexs"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mUsbRegexs:[Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getTetherableWifiRegexs"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mWifiRegexs:[Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getTetherableBluetoothRegexs"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mBluetoothRegexs:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_1
    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherInfo:Landroid/widget/TextView;

    .line 156
    const-string v2, "CdsTetheringSrvActivity"

    const-string v3, "CdsTetheringSrvActivity is started"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    iput-object v5, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mUsbRegexs:[Ljava/lang/String;

    .line 150
    iput-object v5, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mWifiRegexs:[Ljava/lang/String;

    .line 151
    iput-object v5, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mBluetoothRegexs:[Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 304
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateTetherSrvInfo()V

    .line 163
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 311
    const-string v2, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mMassStorageActive:Z

    .line 312
    new-instance v2, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/connectivity/CdsTetherSrvActivity$TetherChangeReceiver;-><init>(Lcom/mediatek/connectivity/CdsTetherSrvActivity;Lcom/mediatek/connectivity/CdsTetherSrvActivity$1;)V

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 316
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->updateState()V

    .line 336
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 374
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsTetherSrvActivity;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 376
    return-void
.end method
