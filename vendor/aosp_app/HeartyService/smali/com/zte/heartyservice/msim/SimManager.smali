.class public Lcom/zte/heartyservice/msim/SimManager;
.super Ljava/lang/Object;
.source "SimManager.java"

# interfaces
.implements Lcom/zte/heartyservice/msim/MSInterface;


# static fields
.field public static final MSIM_DEFAULT:I = -0x1

.field private static mDefault:Lcom/zte/heartyservice/msim/MSInterface;

.field private static mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

.field private static mInstance:Lcom/zte/heartyservice/msim/SimManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/zte/heartyservice/msim/SimManager;->mInstance:Lcom/zte/heartyservice/msim/SimManager;

    .line 15
    sput-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    .line 16
    sput-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/msim/SimManager;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/zte/heartyservice/msim/SimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/heartyservice/msim/MSFactory;->createInstance(Landroid/content/Context;)Lcom/zte/heartyservice/msim/MSInterface;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    .line 23
    new-instance v0, Lcom/zte/heartyservice/msim/SimDefault;

    iget-object v1, p0, Lcom/zte/heartyservice/msim/SimManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/msim/SimDefault;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/zte/heartyservice/msim/SimManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mInstance:Lcom/zte/heartyservice/msim/SimManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/zte/heartyservice/msim/SimManager;

    invoke-direct {v0}, Lcom/zte/heartyservice/msim/SimManager;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/msim/SimManager;->mInstance:Lcom/zte/heartyservice/msim/SimManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mInstance:Lcom/zte/heartyservice/msim/SimManager;

    return-object v0
.end method


# virtual methods
.method public extendedCallBroadcast()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->extendedCallBroadcast()Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->extendedCallBroadcast()Z

    move-result v0

    goto :goto_0
.end method

.method public getCallIdFromSys(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 148
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getCallIdFromSys(I)I

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getCallIdFromSys(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCallSubIdColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getCallSubIdColumn()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getCallSubIdColumn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallSubscription(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 124
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getCallSubscription(Landroid/content/Intent;)I

    move-result v0

    goto :goto_0
.end method

.method public getCallSysId(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 132
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getCallSysId(I)I

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getCallSysId(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCalllogColumnDefaultValue()I
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getCalllogColumnDefaultValue()I

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getCalllogColumnDefaultValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSim()I
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, -0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getDataSim()I

    move-result v0

    goto :goto_0
.end method

.method public getFirstReadyId()I
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getFirstReadyId()I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getFirstReadyId()I

    move-result v0

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 82
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 83
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 74
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSimState(I)I

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSmsColumnDefaultValue()I
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getSmsColumnDefaultValue()I

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getSmsColumnDefaultValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSmsIdFromSys(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 156
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSmsIdFromSys(I)I

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSmsIdFromSys(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSmsSubIdColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getSmsSubIdColumn()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->getSmsSubIdColumn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSmsSubscription(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 116
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, -0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSmsSubscription(Landroid/content/Intent;)I

    move-result v0

    goto :goto_0
.end method

.method public getSmsSysId(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 140
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSmsSysId(I)I

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSmsSysId(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 66
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 67
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/msim/MSInterface;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSimReady()Z
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->hasSimReady()Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->hasSimReady()Z

    move-result v0

    goto :goto_0
.end method

.method public isAllSimReady()Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->isAllSimReady()Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->isAllSimReady()Z

    move-result v0

    goto :goto_0
.end method

.method public isMultiSim()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->isMultiSim()Z

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->isMultiSim()Z

    move-result v0

    goto :goto_0
.end method

.method public isQCQrdVersion()Z
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-nez v0, :cond_0

    .line 205
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->isQCQrdVersion()Z

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    invoke-interface {v0}, Lcom/zte/heartyservice/msim/MSInterface;->isQCQrdVersion()Z

    move-result v0

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 93
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p6, v0, :cond_0

    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDelegate:Lcom/zte/heartyservice/msim/MSInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/zte/heartyservice/msim/MSInterface;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/msim/SimManager;->mDefault:Lcom/zte/heartyservice/msim/MSInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/zte/heartyservice/msim/MSInterface;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z

    move-result v0

    goto :goto_0
.end method
