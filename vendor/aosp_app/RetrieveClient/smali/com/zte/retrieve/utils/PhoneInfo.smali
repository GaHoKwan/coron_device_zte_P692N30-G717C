.class public Lcom/zte/retrieve/utils/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private tl:Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/zte/retrieve/utils/PhoneInfo;->mContext:Landroid/content/Context;

    .line 21
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/utils/PhoneInfo;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCallState()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneModelNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneState()Z
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tl:Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;

    iget-boolean v0, v1, Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;->cfInfo:Z

    .line 178
    .local v0, cfiFlag:Z
    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isCNNetwork()Z
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/zte/retrieve/utils/PhoneInfo;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, NetworkIso:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/retrieve/utils/PhoneInfo;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, CountryIso:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get country iso,network is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sim is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 153
    const-string v2, "cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    const-string v2, "it is china network"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 155
    const/4 v2, 0x1

    .line 158
    :goto_0
    return v2

    .line 157
    :cond_1
    const-string v2, "isCNNetwork, return false"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCalling()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/zte/retrieve/utils/PhoneInfo;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDataConncected()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public registerCFListener()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;-><init>(Lcom/zte/retrieve/utils/PhoneInfo;)V

    iput-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tl:Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;

    .line 166
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tl:Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 168
    return-void
.end method

.method public unRegisterCFListener()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/zte/retrieve/utils/PhoneInfo;->tl:Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 174
    return-void
.end method
