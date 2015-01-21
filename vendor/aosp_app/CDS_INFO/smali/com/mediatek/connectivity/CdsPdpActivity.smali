.class public Lcom/mediatek/connectivity/CdsPdpActivity;
.super Landroid/app/Activity;
.source "CdsPdpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final APN_LIST:[Ljava/lang/String; = null

.field private static final APN_TYPE_LIST:[I = null

.field private static final MSG_KEEP_CONN:I = 0x3001

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final PREFIX_APN:Ljava/lang/String; = "enable"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0x6ddd00

.field private static final TAG:Ljava/lang/String; = "CdsPdpActivity"


# instance fields
.field private mAddBtnCmd:Landroid/widget/Button;

.field private mApnSpinner:Landroid/widget/Spinner;

.field private mConnFilter:Landroid/content/IntentFilter;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHostAddress:Landroid/widget/EditText;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field private mOutputScreen:Landroid/widget/TextView;

.field private mRunBtnCmd:Landroid/widget/Button;

.field private mSelectApnFeature:Ljava/lang/String;

.field private mSelectApnPos:I

.field private mSelectApnType:I

.field private mStopBtnCmd:Landroid/widget/Button;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 84
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MMS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUPL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WAP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HIPRI"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_LIST:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_TYPE_LIST:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnType:I

    .line 96
    const-string v0, "enableMMS"

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnFeature:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mApnSpinner:Landroid/widget/Spinner;

    .line 99
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I

    .line 104
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mAddBtnCmd:Landroid/widget/Button;

    .line 105
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mRunBtnCmd:Landroid/widget/Button;

    .line 106
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mStopBtnCmd:Landroid/widget/Button;

    .line 107
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mOutputScreen:Landroid/widget/TextView;

    .line 108
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mHostAddress:Landroid/widget/EditText;

    .line 109
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnFilter:Landroid/content/IntentFilter;

    .line 344
    new-instance v0, Lcom/mediatek/connectivity/CdsPdpActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsPdpActivity$2;-><init>(Lcom/mediatek/connectivity/CdsPdpActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/connectivity/CdsPdpActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnFeature:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/connectivity/CdsPdpActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/connectivity/CdsPdpActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/connectivity/CdsPdpActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mApnSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/connectivity/CdsPdpActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsPdpActivity;->updateConnectButton()V

    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_TYPE_LIST:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/connectivity/CdsPdpActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/connectivity/CdsPdpActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsPdpActivity;->updateApnStatus()V

    return-void
.end method

.method private getApnTypes()V
    .locals 11

    .prologue
    .line 203
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, naStrings:[Ljava/lang/String;
    const-string v1, ""

    .line 205
    .local v1, element:Ljava/lang/String;
    const/4 v2, 0x0

    .line 207
    .local v2, i:I
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 209
    .local v6, naString:Ljava/lang/String;
    :try_start_0
    new-instance v5, Landroid/net/NetworkConfig;

    invoke-direct {v5, v6}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 210
    .local v5, n:Landroid/net/NetworkConfig;
    iget v8, v5, Landroid/net/NetworkConfig;->type:I

    const/16 v9, 0x28

    if-le v8, v9, :cond_1

    .line 211
    const-string v8, "CdsPdpActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v5           #n:Landroid/net/NetworkConfig;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .restart local v5       #n:Landroid/net/NetworkConfig;
    :cond_1
    iget v8, v5, Landroid/net/NetworkConfig;->type:I

    if-nez v8, :cond_2

    .line 215
    const-string v8, "CdsPdpActivity"

    const-string v9, "Skip default data connection"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    .end local v5           #n:Landroid/net/NetworkConfig;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 219
    .restart local v5       #n:Landroid/net/NetworkConfig;
    :cond_2
    iget v8, v5, Landroid/net/NetworkConfig;->radio:I

    if-nez v8, :cond_0

    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    const-string v8, "CdsPdpActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add apn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    .end local v5           #n:Landroid/net/NetworkConfig;
    .end local v6           #naString:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private getDataConnectionFromSetting()I
    .locals 7

    .prologue
    .line 233
    const/4 v2, 0x0

    .line 236
    .local v2, slot:I
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 237
    .local v0, currentDataConnectionMultiSimId:J
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 242
    if-gez v2, :cond_0

    .line 243
    const-string v3, "CdsPdpActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set default SIM slot to 0 due to slot is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, 0x0

    .line 246
    :cond_0
    const-string v3, "CdsPdpActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Data Setting value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return v2
.end method

.method private handleAddIPAddressToRoute()V
    .locals 10

    .prologue
    .line 301
    const/4 v5, 0x0

    .line 302
    .local v5, nwInfo:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mHostAddress:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, ipAddress:Ljava/lang/String;
    const/4 v0, 0x0

    .line 305
    .local v0, addr:I
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v7, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_TYPE_LIST:[I

    iget v8, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 307
    const-string v6, "CdsPdpActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAddIPAddressToRoute:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0, v4}, Lcom/mediatek/connectivity/CdsPdpActivity;->isIpAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 310
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    const-string v7, "The IP address is not valid"

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 342
    :goto_0
    return-void

    .line 315
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_1

    .line 318
    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 319
    .local v3, inetAddr:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 321
    .local v1, addressBytes:[B
    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 326
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add host:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_LIST:[Ljava/lang/String;

    iget v9, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 329
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v7, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_TYPE_LIST:[I

    iget v8, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I

    aget v7, v7, v8

    invoke-virtual {v6, v7, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    .line 331
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mHostAddress:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v1           #addressBytes:[B
    .end local v3           #inetAddr:Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 333
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to add host address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 338
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The connection("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_LIST:[Ljava/lang/String;

    iget v9, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is not connected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private handleStartAPN()V
    .locals 5

    .prologue
    .line 265
    const/4 v0, -0x1

    .line 268
    .local v0, result:I
    const-string v1, "android.telephony.apn-restore"

    const v2, 0x6ddd00

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnFeature:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsPdpActivity;->getDataConnectionFromSetting()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    .line 276
    const-string v1, "CdsPdpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Feature][Start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnFeature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method private handleStopAPN()V
    .locals 5

    .prologue
    .line 252
    const/4 v0, -0x1

    .line 255
    .local v0, result:I
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnFeature:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsPdpActivity;->getDataConnectionFromSetting()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    .line 260
    const-string v1, "CdsPdpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Feature][Stop]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnFeature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 402
    const-string v0, "((?:(?:25[0-5]|2[0-4]\\d|[01]?\\d?\\d)\\.){3}(?:25[0-5]|2[0-4]\\d|[01]?\\d?\\d))"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateApnStatus()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x2c

    const/16 v7, 0xa

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, nwInfo:Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 372
    .local v2, nwLink:Landroid/net/LinkProperties;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 373
    .local v3, sb:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v4, tb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_0

    .line 380
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v9}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_TYPE_LIST:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 386
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v6, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_TYPE_LIST:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_1

    .line 391
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v6, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_TYPE_LIST:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsPdpActivity;->updateConnectButton()V

    .line 398
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mOutputScreen:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method private updateConnectButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, nwInfo:Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_TYPE_LIST:[I

    iget v3, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mRunBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 287
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mStopBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 292
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mRunBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 293
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mStopBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mRunBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 296
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mStopBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 187
    .local v0, buttonId:I
    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    :pswitch_0
    return-void

    .line 189
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsPdpActivity;->handleStartAPN()V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsPdpActivity;->handleStopAPN()V

    goto :goto_0

    .line 195
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsPdpActivity;->handleAddIPAddressToRoute()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x7f07002b
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mContext:Landroid/content/Context;

    .line 120
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mApnSpinner:Landroid/widget/Spinner;

    .line 121
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    sget-object v2, Lcom/mediatek/connectivity/CdsPdpActivity;->APN_LIST:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 122
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 123
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mApnSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mApnSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/mediatek/connectivity/CdsPdpActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/connectivity/CdsPdpActivity$1;-><init>(Lcom/mediatek/connectivity/CdsPdpActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 149
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnFilter:Landroid/content/IntentFilter;

    .line 150
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mRunBtnCmd:Landroid/widget/Button;

    .line 153
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mRunBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mAddBtnCmd:Landroid/widget/Button;

    .line 156
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mAddBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mAddBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 159
    const v1, 0x7f07002c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mStopBtnCmd:Landroid/widget/Button;

    .line 160
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mStopBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mHostAddress:Landroid/widget/EditText;

    .line 164
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mOutputScreen:Landroid/widget/TextView;

    .line 166
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;

    .line 168
    const-string v1, "CdsPdpActivity"

    const-string v2, "CdsPdpActivity is started"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPdpActivity;->mConnFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    return-void
.end method
