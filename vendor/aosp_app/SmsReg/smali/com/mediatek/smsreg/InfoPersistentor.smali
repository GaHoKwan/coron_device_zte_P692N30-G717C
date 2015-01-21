.class public Lcom/mediatek/smsreg/InfoPersistentor;
.super Ljava/lang/Object;
.source "InfoPersistentor.java"

# interfaces
.implements Lcom/mediatek/smsreg/IInfoPersistentor;


# instance fields
.field private mAgent:Lcom/mediatek/common/dm/DmAgent;

.field private mTAG:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v1, "SmsReg/InfoPersistentor"

    iput-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 58
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v2, "get the agent..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v1, "DmAgent"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    .local v0, binder:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v2, "get DmAgent fail! binder is null!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0       #binder:Landroid/os/IBinder;
    :cond_1
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    goto :goto_0
.end method

.method private setSavedCTA(Ljava/lang/String;)V
    .locals 4
    .parameter "cta"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v2, "save CTA switch value failed, agent is null!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/common/dm/DmAgent;->setRegisterSwitch([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save CTA ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v2, "save CTA switch failed, writeCTA failed!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getSavedCTA()I
    .locals 6

    .prologue
    .line 104
    iget-object v3, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v4, "get CTA failed, agent is null!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, 0x0

    .line 120
    :goto_0
    return v2

    .line 108
    :cond_0
    const/4 v2, 0x0

    .line 110
    .local v2, savedCTA:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->getRegisterSwitch()[B

    move-result-object v0

    .line 111
    .local v0, ctaBytes:[B
    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 119
    .end local v0           #ctaBytes:[B
    :goto_2
    iget-object v3, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get savedCTA = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .restart local v0       #ctaBytes:[B
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 113
    .end local v0           #ctaBytes:[B
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v4, "get cta cmcc switch failed, readCTA failed!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 116
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 117
    .local v1, e:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v4, "number format exception. "

    invoke-static {v3, v4, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getSavedIMSI()Ljava/lang/String;
    .locals 7

    .prologue
    .line 70
    iget-object v4, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v5, "get IMSI failed, agent is null!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x0

    .line 86
    :goto_0
    return-object v2

    .line 75
    :cond_0
    const/4 v2, 0x0

    .line 77
    .local v2, savedIMSI:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v4}, Lcom/mediatek/common/dm/DmAgent;->readImsi()[B

    move-result-object v1

    .line 78
    .local v1, imsiByte:[B
    if-eqz v1, :cond_1

    .line 79
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #savedIMSI:Ljava/lang/String;
    .local v3, savedIMSI:Ljava/lang/String;
    move-object v2, v3

    .line 85
    .end local v1           #imsiByte:[B
    .end local v3           #savedIMSI:Ljava/lang/String;
    .restart local v2       #savedIMSI:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get savedIMSI = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v5, "get IMSI failed, readImsi failed!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setSavedIMSI(Ljava/lang/String;)V
    .locals 4
    .parameter "regIMSI"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v2, "save IMSI failed, agent is null!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/common/dm/DmAgent;->writeImsi([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save IMSI ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/smsreg/InfoPersistentor;->mTAG:Ljava/lang/String;

    const-string v2, "save IMSI failed, writeImsi failed!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
