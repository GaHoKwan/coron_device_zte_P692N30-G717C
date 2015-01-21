.class public Lcom/mediatek/lbs/em/LbsMisc;
.super Landroid/app/Activity;
.source "LbsMisc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;,
        Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;
    }
.end annotation


# instance fields
.field SERVER_IP:[Ljava/lang/String;

.field SERVER_NAME:[Ljava/lang/String;

.field SERVER_PORT:[Ljava/lang/String;

.field private mButtonConnect:Landroid/widget/ToggleButton;

.field private mButton_AGPS:Landroid/widget/Button;

.field private mButton_APN:Landroid/widget/Button;

.field private mButton_GPS:Landroid/widget/Button;

.field private mButton_TIME:Landroid/widget/Button;

.field private mButton_WIFI:Landroid/widget/Button;

.field private mButton_YGPS:Landroid/widget/Button;

.field private mConnectionThread:Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

.field private mEditTextIp:Landroid/widget/EditText;

.field private mEditTextPort:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mSessionId:I

.field private mSpinnerServer:Landroid/widget/Spinner;

.field private mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mTextViewCellInfo:Landroid/widget/TextView;

.field private mTextViewResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "LOCAL"

    aput-object v1, v0, v2

    const-string v1, "CMCC"

    aput-object v1, v0, v3

    const-string v1, "GOOGLE"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->SERVER_NAME:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "127.0.0.1"

    aput-object v1, v0, v2

    const-string v1, "221.176.0.55"

    aput-object v1, v0, v3

    const-string v1, "supl.google.com"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->SERVER_IP:[Ljava/lang/String;

    .line 54
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "7276"

    aput-object v1, v0, v2

    const-string v1, "7275"

    aput-object v1, v0, v3

    const-string v1, "7275"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->SERVER_PORT:[Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/mediatek/lbs/em/LbsMisc;->mSessionId:I

    .line 58
    new-instance v0, Lcom/mediatek/lbs/em/UtilityStringList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em/UtilityStringList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

    .line 231
    new-instance v0, Lcom/mediatek/lbs/em/LbsMisc$9;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsMisc$9;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mHandler:Landroid/os/Handler;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mSpinnerServer:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mEditTextIp:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTextViewResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsMisc;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/lbs/em/LbsMisc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMisc;->updateCellInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mEditTextPort:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/em/LbsMisc;->startComponent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButtonConnect:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/lbs/em/LbsMisc;)Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mConnectionThread:Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/lbs/em/LbsMisc;Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;)Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mConnectionThread:Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/lbs/em/LbsMisc;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mSessionId:I

    return v0
.end method

.method static synthetic access$608(Lcom/mediatek/lbs/em/LbsMisc;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mSessionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mSessionId:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/lbs/em/LbsMisc;)Lcom/mediatek/lbs/em/UtilityStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

    return-object v0
.end method

.method private getLocalIpAddress()Ljava/lang/String;
    .locals 8

    .prologue
    .line 275
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 276
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 277
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 278
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 279
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    .line 280
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, ip:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-gt v6, v7, :cond_1

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IP="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/em/LbsMisc;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    .end local v5           #ip:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 342
    const-string v0, "LocationEM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void
.end method

.method private startComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .parameter "fullActivityName"

    .prologue
    .line 327
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: startComponent failed fullActivityName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/em/LbsMisc;->log(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsMisc;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ERR: startComponent failed!!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateCellInfo()V
    .locals 12

    .prologue
    .line 295
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, mccMnc:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 297
    .local v1, cellLocation:Landroid/telephony/CellLocation;
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMisc;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, ip:Ljava/lang/String;
    instance-of v9, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v9, :cond_1

    .line 300
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 301
    .local v3, gsmCell:Landroid/telephony/gsm/GsmCellLocation;
    const/4 v2, -0x1

    .line 302
    .local v2, cid:I
    const/4 v5, -0x1

    .line 303
    .local v5, lac:I
    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 305
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    .line 307
    :cond_0
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTextViewCellInfo:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mccMnc=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] lac=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] cid=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "IP="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .end local v2           #cid:I
    .end local v3           #gsmCell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v5           #lac:I
    :goto_0
    return-void

    .line 309
    :cond_1
    instance-of v9, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v9, :cond_3

    .line 310
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 311
    .local v0, cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    const/4 v7, -0x1

    .line 312
    .local v7, networkId:I
    const/4 v8, -0x1

    .line 313
    .local v8, systemId:I
    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v7

    .line 315
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v8

    .line 317
    :cond_2
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTextViewCellInfo:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "networkId=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] systemId=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] IP="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    .end local v0           #cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v7           #networkId:I
    .end local v8           #systemId:I
    :cond_3
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTextViewCellInfo:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown Cell Location IP="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->setContentView(I)V

    .line 66
    const v1, 0x7f0500c9

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_YGPS:Landroid/widget/Button;

    .line 67
    const v1, 0x7f0500cc

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_AGPS:Landroid/widget/Button;

    .line 68
    const v1, 0x7f0500ca

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_TIME:Landroid/widget/Button;

    .line 69
    const v1, 0x7f0500c8

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_GPS:Landroid/widget/Button;

    .line 70
    const v1, 0x7f0500cb

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_APN:Landroid/widget/Button;

    .line 71
    const v1, 0x7f0500cd

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_WIFI:Landroid/widget/Button;

    .line 72
    const v1, 0x7f0500ce

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTextViewCellInfo:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f0500cf

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mSpinnerServer:Landroid/widget/Spinner;

    .line 74
    const v1, 0x7f0500d0

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mEditTextIp:Landroid/widget/EditText;

    .line 75
    const v1, 0x7f0500d1

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mEditTextPort:Landroid/widget/EditText;

    .line 76
    const v1, 0x7f0500d2

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButtonConnect:Landroid/widget/ToggleButton;

    .line 77
    const v1, 0x7f0500d3

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTextViewResult:Landroid/widget/TextView;

    .line 80
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsMisc;->SERVER_NAME:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 82
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 83
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mSpinnerServer:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 85
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 86
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    const/16 v3, 0x71

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 91
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMisc;->updateCellInfo()V

    .line 93
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mSpinnerServer:Landroid/widget/Spinner;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$1;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMisc$1;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 107
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_YGPS:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$2;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMisc$2;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_AGPS:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$3;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMisc$3;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_TIME:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$4;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMisc$4;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_GPS:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$5;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMisc$5;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_APN:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$6;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMisc$6;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButton_WIFI:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$7;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMisc$7;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc;->mButtonConnect:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$8;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsMisc$8;-><init>(Lcom/mediatek/lbs/em/LbsMisc;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 339
    return-void
.end method
