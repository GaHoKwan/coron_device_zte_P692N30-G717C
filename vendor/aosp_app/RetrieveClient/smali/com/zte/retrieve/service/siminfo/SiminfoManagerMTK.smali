.class public Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;
.super Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
.source "SiminfoManagerMTK.java"


# instance fields
.field private featureOptionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private telManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;-><init>()V

    .line 18
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    .line 19
    const-string v0, "com.mediatek.common.featureoption.FeatureOption"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->featureOptionClass:Ljava/lang/Class;

    .line 20
    return-void
.end method


# virtual methods
.method public getIdentificationforSimcard(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "bIdFlag"

    .prologue
    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, isCardOneInsert:Z
    const/4 v4, 0x0

    .line 70
    .local v4, isCardTwoInsert:Z
    const/4 v2, 0x0

    .line 71
    .local v2, hasIccCardGiminiMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 73
    .local v1, getSimCardIdentificationMethod:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->isDualSimCardMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->getIdentificationforSimcard(Landroid/content/Context;Z)V

    .line 121
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "hasIccCardGemini"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 80
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardType1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 81
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardType2:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isCardOneInsert is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isCardTwoInsert is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    if-eqz p2, :cond_7

    .line 89
    :try_start_1
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getSimSerialNumberGemini"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 93
    :goto_2
    const-string v5, "getSimSerialNumberGemini success"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_3
    if-eqz v3, :cond_3

    .line 100
    :try_start_2
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardType1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdOne:Ljava/lang/String;

    .line 101
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdOne:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdOne:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdOne:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 102
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdOne:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    :cond_3
    :goto_4
    if-eqz v4, :cond_6

    .line 111
    :try_start_3
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardType2:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdTwo:Ljava/lang/String;

    .line 112
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdTwo:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdTwo:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdTwo:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 113
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdTwo:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 120
    :cond_6
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getIdentificationforSimcard MTKcard1 is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdOne:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", MTKcard2 is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardIdTwo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_4
    iget-object v5, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getSubscriberIdGemini"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto/16 :goto_2

    .line 94
    :catch_1
    move-exception v0

    .line 95
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 105
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_4

    .line 115
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 116
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public isDualSimCardMode()Z
    .locals 5

    .prologue
    .line 25
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->featureOptionClass:Ljava/lang/Class;

    const-string v4, "MTK_GEMINI_SUPPORT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 26
    .local v0, MTKGeminiSupport:Ljava/lang/reflect/Field;
    iget-object v3, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->featureOptionClass:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 28
    .local v1, bFlag:Z
    if-eqz v1, :cond_0

    .line 29
    const-string v3, "this is mtk dual card platform"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const/4 v3, 0x1

    .line 36
    .end local v0           #MTKGeminiSupport:Ljava/lang/reflect/Field;
    .end local v1           #bFlag:Z
    :goto_0
    return v3

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 36
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSimcardInsert(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->isDualSimCardMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    invoke-super {p0, p1}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->isSimcardInsert(Landroid/content/Context;)Z

    move-result v4

    .line 63
    :goto_0
    return v4

    .line 51
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v7, "hasIccCardGemini"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 52
    .local v1, hasIccCardGiminiMethod:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardType1:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 53
    .local v2, isCardOneInsert:Z
    iget-object v4, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->telManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->simCardType2:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 54
    .local v3, isCardTwoInsert:Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "isSimcardInsert:isCardOneInsert is:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "isCardTwoInsert is :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v4, v5

    .line 57
    goto :goto_0

    .line 59
    .end local v1           #hasIccCardGiminiMethod:Ljava/lang/reflect/Method;
    .end local v2           #isCardOneInsert:Z
    .end local v3           #isCardTwoInsert:Z
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v4, v6

    .line 63
    goto :goto_0
.end method

.method public sendSmsBackend(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 2
    .parameter "toNumber"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "simCardId"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMTK;->isDualSimCardMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "send sms in single card mode"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 129
    invoke-super/range {p0 .. p5}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->sendSmsBackend(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send sms in dualcard card mode, simCardId is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 134
    invoke-static {p1, p2, p3, p4, p5}, Lcom/zte/retrieve/utils/SMSSender;->sendMTKDualSms(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0
.end method
