.class public Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;
.super Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
.source "SiminfoManagerMarvell.java"


# instance fields
.field private dsdsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field hasIccPropertyMethod:Ljava/lang/reflect/Method;

.field isDualSimMethod:Ljava/lang/reflect/Method;

.field telManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->dsdsClass:Ljava/lang/Class;

    .line 15
    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->isDualSimMethod:Ljava/lang/reflect/Method;

    .line 16
    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->hasIccPropertyMethod:Ljava/lang/reflect/Method;

    .line 17
    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->telManager:Landroid/telephony/TelephonyManager;

    .line 20
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->telManager:Landroid/telephony/TelephonyManager;

    .line 21
    const-string v0, "com.android.internal.telephony.Dsds"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->dsdsClass:Ljava/lang/Class;

    .line 22
    iget-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->dsdsClass:Ljava/lang/Class;

    const-string v1, "isDualSimSolution"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->isDualSimMethod:Ljava/lang/reflect/Method;

    .line 23
    iget-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->dsdsClass:Ljava/lang/Class;

    const-string v1, "hasIccFromProperty"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->hasIccPropertyMethod:Ljava/lang/reflect/Method;

    .line 24
    return-void
.end method


# virtual methods
.method public getIdentificationforSimcard(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "bIdFlag"

    .prologue
    const/4 v11, 0x0

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, getSimCardIdentificationMethod:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 65
    .local v2, isHasIccCard1:Z
    const/4 v3, 0x0

    .line 66
    .local v3, isHasIccCard2:Z
    const/4 v4, 0x0

    .line 67
    .local v4, subId1:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 69
    .local v5, subId2:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->isDualSimCardMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->getIdentificationforSimcard(Landroid/content/Context;Z)V

    .line 119
    .end local v4           #subId1:Ljava/lang/Object;
    .end local v5           #subId2:Ljava/lang/Object;
    :goto_0
    return-void

    .line 75
    .restart local v4       #subId1:Ljava/lang/Object;
    .restart local v5       #subId2:Ljava/lang/Object;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->hasIccPropertyMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->dsdsClass:Ljava/lang/Class;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardType1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 76
    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->hasIccPropertyMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->dsdsClass:Ljava/lang/Class;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardType2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 77
    if-eqz p2, :cond_3

    .line 78
    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->telManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getSimSerialNumberDs"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isHasIccCard1="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isHasIccCard2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_2
    if-eqz v2, :cond_4

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isHasIccCard1="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 90
    :try_start_1
    const-string v6, "get simCardIdOne"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 91
    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->telManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardType1:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 92
    if-eqz v4, :cond_1

    .line 93
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardIdOne:Ljava/lang/String;

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "simCardIdOne="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardIdOne:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .end local v4           #subId1:Ljava/lang/Object;
    :cond_1
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "over simCardIdOne="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardIdOne:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 103
    if-eqz v3, :cond_5

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isHasIccCard2="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 106
    :try_start_2
    const-string v6, "get simCardIdTwo"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 107
    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->telManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardType2:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 108
    if-eqz v5, :cond_2

    .line 109
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardIdTwo:Ljava/lang/String;

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "simCardIdTwo="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardIdTwo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    .end local v5           #subId2:Ljava/lang/Object;
    :cond_2
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "over simCardIdTwo="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardIdTwo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    .restart local v4       #subId1:Ljava/lang/Object;
    .restart local v5       #subId2:Ljava/lang/Object;
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->telManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getSubscriberIdDs"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #subId1:Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 97
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 100
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #subId1:Ljava/lang/Object;
    :cond_4
    iput-object v11, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardIdOne:Ljava/lang/String;

    goto/16 :goto_3

    .line 112
    .end local v4           #subId1:Ljava/lang/Object;
    .end local v5           #subId2:Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 113
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_4

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v5       #subId2:Ljava/lang/Object;
    :cond_5
    iput-object v11, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardIdTwo:Ljava/lang/String;

    goto :goto_4
.end method

.method public isDualSimCardMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->isDualSimMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->dsdsClass:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 30
    .local v1, isDualSimcard:Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "this is Marvell dualcard platform:isDualSimcard ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1           #isDualSimcard:Z
    :goto_0
    return v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    move v1, v3

    .line 36
    goto :goto_0
.end method

.method public isSimcardInsert(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->isDualSimCardMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    invoke-super {p0, p1}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->isSimcardInsert(Landroid/content/Context;)Z

    move-result v3

    .line 58
    :goto_0
    return v3

    .line 50
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->hasIccPropertyMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->dsdsClass:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardType1:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 51
    .local v1, isHasIccCard1:Z
    iget-object v3, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->hasIccPropertyMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->dsdsClass:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->simCardType2:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 52
    .local v2, isHasIccCard2:Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v3, v4

    .line 53
    goto :goto_0

    .line 55
    .end local v1           #isHasIccCard1:Z
    .end local v2           #isHasIccCard2:Z
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v3, v5

    .line 58
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
    .line 125
    invoke-virtual {p0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;->isDualSimCardMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-super/range {p0 .. p5}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->sendSmsBackend(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/zte/retrieve/utils/SMSSender;->sendMarvellDualSms(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0
.end method
