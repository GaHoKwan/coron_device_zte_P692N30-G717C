.class public Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;
.super Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
.source "SiminfoManagerQualCom.java"


# instance fields
.field private classRef:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field getMethod:Ljava/lang/reflect/Method;

.field typeArgs:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->classRef:Ljava/lang/Class;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->typeArgs:[Ljava/lang/Class;

    .line 15
    iput-object v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->getMethod:Ljava/lang/reflect/Method;

    .line 18
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->classRef:Ljava/lang/Class;

    .line 20
    iget-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->typeArgs:[Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 21
    iget-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->classRef:Ljava/lang/Class;

    const-string v1, "get"

    iget-object v2, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->typeArgs:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->getMethod:Ljava/lang/reflect/Method;

    .line 22
    return-void
.end method


# virtual methods
.method public getIdentificationforSimcard(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bIdFlag"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->isDualSimCardMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->getIdentificationforSimcard(Landroid/content/Context;Z)V

    .line 88
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardType1:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    if-eqz p2, :cond_3

    .line 70
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardType1:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardIdOne:Ljava/lang/String;

    .line 74
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sim1 ready,simCardIdOne = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardIdOne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 77
    :cond_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardType2:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    if-eqz p2, :cond_4

    .line 79
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardType2:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardIdTwo:Ljava/lang/String;

    .line 83
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sim2 ready,simCardIdTwo = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardIdTwo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "manageQualcomDualSimCard QualcomImsi1 is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardIdOne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", QualcomImsi2 is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardIdTwo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardType1:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardIdOne:Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardType2:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardIdTwo:Ljava/lang/String;

    goto :goto_2
.end method

.method public isDualSimCardMode()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 27
    :try_start_0
    iget-object v4, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->getMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "persist.multisim.config"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    .local v1, multiSimConfig:Ljava/lang/String;
    const-string v4, "this is QualcomDualSimCard"

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 31
    const-string v4, "dsds"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "dsda"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    .end local v1           #multiSimConfig:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 37
    goto :goto_0
.end method

.method public isSimcardInsert(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->isDualSimCardMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->isSimcardInsert(Landroid/content/Context;)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardType1:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->simCardType2:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    const-string v0, "QualCom dualSimCard has card insert"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendSmsBackend(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 1
    .parameter "toNumber"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "simCardId"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerQualCom;->isDualSimCardMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super/range {p0 .. p5}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->sendSmsBackend(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/zte/retrieve/utils/SMSSender;->sendQualcomDualSms(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0
.end method
