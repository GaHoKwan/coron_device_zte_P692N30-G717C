.class public Lcom/zte/heartyservice/msim/SimDefault;
.super Ljava/lang/Object;
.source "SimDefault.java"

# interfaces
.implements Lcom/zte/heartyservice/msim/MSInterface;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/zte/heartyservice/msim/SimDefault;->mContext:Landroid/content/Context;

    .line 15
    iget-object v0, p0, Lcom/zte/heartyservice/msim/SimDefault;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/heartyservice/msim/SimDefault;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 16
    return-void
.end method


# virtual methods
.method public extendedCallBroadcast()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getCallIdFromSys(I)I
    .locals 0
    .parameter "id"

    .prologue
    .line 98
    return p1
.end method

.method public getCallSubIdColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallSubscription(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 83
    const/4 v0, -0x1

    return v0
.end method

.method public getCallSysId(I)I
    .locals 0
    .parameter "subscription"

    .prologue
    .line 88
    return p1
.end method

.method public getCalllogColumnDefaultValue()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, -0x1

    return v0
.end method

.method public getDataSim()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, -0x1

    return v0
.end method

.method public getFirstReadyId()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    return v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 56
    if-lez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/msim/SimDefault;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 40
    if-lez p1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/msim/SimDefault;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSmsColumnDefaultValue()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public getSmsIdFromSys(I)I
    .locals 0
    .parameter "id"

    .prologue
    .line 103
    return p1
.end method

.method public getSmsSubIdColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmsSubscription(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 78
    const/4 v0, -0x1

    return v0
.end method

.method public getSmsSysId(I)I
    .locals 0
    .parameter "subscription"

    .prologue
    .line 93
    return p1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 48
    if-lez p1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/msim/SimDefault;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSimReady()Z
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/msim/SimDefault;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllSimReady()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSim()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public isQCQrdVersion()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 66
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, smsManager:Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 68
    const/4 v1, 0x1

    return v1
.end method
