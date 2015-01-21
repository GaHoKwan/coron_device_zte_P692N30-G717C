.class public Lcom/mediatek/connectivity/CdsConnectivityActivity;
.super Landroid/app/Activity;
.source "CdsConnectivityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_CONN_LIST:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CdsConnectivityActivity"


# instance fields
.field private mCaptiveCheckBox:Landroid/widget/CheckBox;

.field private mConnChangeDelay:Landroid/widget/EditText;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field mConnSpinner:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field private mDisableUdpBtn:Landroid/widget/Button;

.field private mEnableUdpBtn:Landroid/widget/Button;

.field private mReportBtnCmd:Landroid/widget/Button;

.field private mReportPercent:Landroid/widget/EditText;

.field private mSelectConnType:I

.field private mSetBtnCmd:Landroid/widget/Button;

.field private mToast:Landroid/widget/Toast;

.field private mUdpIpAddr:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Wi-Fi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Mobile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->DEFAULT_CONN_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnSpinner:Landroid/widget/Spinner;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSelectConnType:I

    .line 73
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mReportPercent:Landroid/widget/EditText;

    .line 74
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnChangeDelay:Landroid/widget/EditText;

    .line 75
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 76
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mReportBtnCmd:Landroid/widget/Button;

    .line 77
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSetBtnCmd:Landroid/widget/Button;

    .line 78
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mEnableUdpBtn:Landroid/widget/Button;

    .line 79
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mDisableUdpBtn:Landroid/widget/Button;

    .line 80
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mCaptiveCheckBox:Landroid/widget/CheckBox;

    .line 81
    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mUdpIpAddr:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/connectivity/CdsConnectivityActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSelectConnType:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/connectivity/CdsConnectivityActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->setCaptivePortalCheckEnabled(Z)V

    return-void
.end method

.method private getConnectivityChangeDelay()Ljava/lang/String;
    .locals 6

    .prologue
    .line 182
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "conn.connectivity_change_delay"

    const/16 v5, 0xbb8

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 188
    .local v1, defaultDelay:I
    const-string v4, "connectivity_change_delay"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 191
    .local v3, delayValue:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, delayString:Ljava/lang/String;
    return-object v2
.end method

.method private getIsCaptivePortalCheckEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 197
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_detection_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportInetAcction()V
    .locals 6

    .prologue
    .line 290
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mReportPercent:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, percentText:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    const-string v4, "The percent value is empty. This is not allowed"

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 310
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 299
    .local v2, percentValue:I
    const/16 v3, 0x64

    if-gt v2, v3, :cond_1

    if-gez v2, :cond_2

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    const-string v4, "The range fo report percent should be 1 ~ 100"

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v2           #percentValue:I
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #percentValue:I
    :cond_2
    :try_start_1
    const-string v3, "CdsConnectivityActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report nw:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSelectConnType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v4, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSelectConnType:I

    invoke-virtual {v3, v4, v2}, Landroid/net/ConnectivityManager;->reportInetCondition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setCaptivePortalCheckEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 176
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 177
    .local v0, value:I
    :goto_0
    const-string v1, "CdsConnectivityActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptivePortalCheckEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_detection_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    return-void

    .line 176
    .end local v0           #value:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setConnChangeDelay()V
    .locals 7

    .prologue
    .line 267
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnChangeDelay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, tmpString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 270
    .local v1, delay:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 271
    if-ltz v1, :cond_0

    const v5, 0xea60

    if-le v1, v5, :cond_1

    .line 272
    :cond_0
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    const-string v6, "The range of dealy value should be 0 ~ 60 * 1000"

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 286
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "connectivity_change_delay"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The dealy value ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") has been configured successfully"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #msg:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnChangeDelay:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->getConnectivityChangeDelay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private setUdpTesting(Z)V
    .locals 11
    .parameter "enabled"

    .prologue
    .line 227
    const-string v8, "connectivity"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 228
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 229
    .local v1, connManager:Landroid/net/IConnectivityManager;
    if-nez v1, :cond_0

    .line 230
    const-string v8, "CdsConnectivityActivity"

    const-string v9, "Failed to get the NetworkManagementService!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    .line 236
    .local v6, nwService:Landroid/os/INetworkManagementService;
    if-nez v6, :cond_1

    .line 237
    const-string v8, "CdsConnectivityActivity"

    const-string v9, "Failed to get the NetworkManagementService!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_1
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mUdpIpAddr:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, ipAddr:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 243
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    const-string v9, "Please input the destination address"

    invoke-virtual {v8, v9}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 249
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, tetherInterfaces:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 251
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong tethering state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v7           #tetherInterfaces:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 261
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    const-string v8, "CdsConnectivityActivity"

    const-string v9, "setStartRequest failed!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v7       #tetherInterfaces:[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    aget-object v4, v7, v8

    .line 256
    .local v4, inInterface:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v3, v7, v8

    .line 258
    .local v3, extInterface:Ljava/lang/String;
    invoke-interface {v6, p1, v4, v3, v5}, Landroid/os/INetworkManagementService;->enableUdpForwarding(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateCurrentStatus()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnChangeDelay:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->getConnectivityChangeDelay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mCaptiveCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->getIsCaptivePortalCheckEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 173
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 204
    .local v0, buttonId:I
    packed-switch v0, :pswitch_data_0

    .line 221
    :pswitch_0
    const-string v1, "CdsConnectivityActivity"

    const-string v2, "Error button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 206
    :pswitch_1
    const-string v1, "CdsConnectivityActivity"

    const-string v2, "Report Inet action"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->reportInetAcction()V

    goto :goto_0

    .line 210
    :pswitch_2
    const-string v1, "CdsConnectivityActivity"

    const-string v2, "setting configuration"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->setConnChangeDelay()V

    goto :goto_0

    .line 214
    :pswitch_3
    const-string v1, "CdsConnectivityActivity"

    const-string v2, "configure udp testing"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->setUdpTesting(Z)V

    goto :goto_0

    .line 218
    :pswitch_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->setUdpTesting(Z)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x7f070005
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mContext:Landroid/content/Context;

    .line 92
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnSpinner:Landroid/widget/Spinner;

    .line 93
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    sget-object v2, Lcom/mediatek/connectivity/CdsConnectivityActivity;->DEFAULT_CONN_LIST:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 94
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 95
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 96
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/mediatek/connectivity/CdsConnectivityActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/connectivity/CdsConnectivityActivity$1;-><init>(Lcom/mediatek/connectivity/CdsConnectivityActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 127
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mReportPercent:Landroid/widget/EditText;

    .line 128
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mReportPercent:Landroid/widget/EditText;

    const-string v2, "55"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 130
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mToast:Landroid/widget/Toast;

    .line 131
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mReportBtnCmd:Landroid/widget/Button;

    .line 132
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mReportBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnChangeDelay:Landroid/widget/EditText;

    .line 137
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSetBtnCmd:Landroid/widget/Button;

    .line 138
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSetBtnCmd:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mCaptiveCheckBox:Landroid/widget/CheckBox;

    .line 141
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mCaptiveCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/mediatek/connectivity/CdsConnectivityActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/connectivity/CdsConnectivityActivity$2;-><init>(Lcom/mediatek/connectivity/CdsConnectivityActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mEnableUdpBtn:Landroid/widget/Button;

    .line 148
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mEnableUdpBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mUdpIpAddr:Landroid/widget/EditText;

    .line 150
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mUdpIpAddr:Landroid/widget/EditText;

    const-string v2, "192.168.42."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mDisableUdpBtn:Landroid/widget/Button;

    .line 153
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mDisableUdpBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->updateCurrentStatus()V

    .line 156
    const-string v1, "CdsConnectivityActivity"

    const-string v2, "CdsConnectivityActivity is started"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->updateCurrentStatus()V

    .line 163
    return-void
.end method
