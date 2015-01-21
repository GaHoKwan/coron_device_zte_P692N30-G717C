.class public final Ltmsdkobf/gt;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/gt$b;,
        Ltmsdkobf/gt$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final ok:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltmsdk/bg/module/aresengine/DataInterceptor",
            "<+",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private ol:Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

.field private om:Ltmsdk/bg/module/aresengine/AresEngineFactor;

.field private on:Ltmsdk/common/module/aresengine/MmsTransactionHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gt;->ok:Ljava/util/HashMap;

    .line 393
    return-void
.end method


# virtual methods
.method public addInterceptor(Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/aresengine/DataInterceptorBuilder",
            "<+",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, builder:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<+Ltmsdk/common/module/aresengine/TelephonyEntity;>;"
    iget-object v0, p0, Ltmsdkobf/gt;->ok:Ljava/util/HashMap;

    invoke-virtual {p1}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Ltmsdkobf/gt;->ok:Ljava/util/HashMap;

    invoke-virtual {p1}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltmsdkobf/gw;->bS()Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the interceptor named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " had exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bN()Ltmsdk/bg/module/aresengine/IntelliSmsChecker;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ltmsdkobf/gt;->ol:Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 83
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    iget-object v0, p0, Ltmsdkobf/gt;->on:Ltmsdk/common/module/aresengine/MmsTransactionHelper;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Ltmsdkobf/gt;->on:Ltmsdk/common/module/aresengine/MmsTransactionHelper;

    invoke-virtual {v0}, Ltmsdk/common/module/aresengine/MmsTransactionHelper;->stop()V

    .line 87
    :cond_0
    return-void
.end method

.method public findAheadProcess()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    const-class v18, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static/range {v18 .. v18}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v14

    check-cast v14, Ltmsdk/common/module/software/SoftwareManager;

    .line 193
    .local v14, sm:Ltmsdk/common/module/software/SoftwareManager;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v13, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 196
    .local v3, cur_pid:I
    const-string v15, "android.permission.RECEIVE_SMS"

    .line 197
    .local v15, sms_permission:Ljava/lang/String;
    const-string v9, "android.permission.RECEIVE_MMS"

    .line 198
    .local v9, mms_permission:Ljava/lang/String;
    const-string v17, "android.permission.RECEIVE_WAP_PUSH"

    .line 200
    .local v17, wappush_permission:Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v12, process_table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/gt;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 202
    .local v2, am:Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 203
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v8, :cond_0

    .line 204
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 205
    .local v7, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    invoke-static {v3}, Ltmsdkobf/js;->bp(I)I

    move-result v4

    .line 212
    .local v4, curr_start_time:I
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 213
    .local v11, process_info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x22

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v5

    .line 216
    .local v5, entity:Ltmsdk/common/module/software/AppEntity;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ltmsdk/common/module/software/AppEntity;->getPermissions()[Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 217
    invoke-virtual {v5}, Ltmsdk/common/module/software/AppEntity;->getPermissions()[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 218
    .local v10, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ltmsdk/common/module/software/AppEntity;->isSystemApp()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_1

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 224
    :cond_2
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ltmsdkobf/js;->bp(I)I

    move-result v16

    .line 226
    .local v16, start_time:I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 230
    move/from16 v0, v16

    if-ge v0, v4, :cond_1

    .line 231
    invoke-virtual {v5}, Ltmsdk/common/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    .end local v5           #entity:Ltmsdk/common/module/software/AppEntity;
    .end local v10           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #process_info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v16           #start_time:I
    :cond_3
    return-object v13
.end method

.method public findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltmsdk/bg/module/aresengine/DataInterceptor",
            "<+",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Ltmsdkobf/gt;->ok:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/DataInterceptor;

    return-object v0
.end method

.method public getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Ltmsdkobf/gt;->om:Ltmsdk/bg/module/aresengine/AresEngineFactor;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The AresEngineManager\'s Factor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Ltmsdkobf/gt;->om:Ltmsdk/bg/module/aresengine/AresEngineFactor;

    return-object v0
.end method

.method public getMmsTransactionHelper()Ltmsdk/common/module/aresengine/MmsTransactionHelper;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Ltmsdkobf/gt;->on:Ltmsdk/common/module/aresengine/MmsTransactionHelper;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Ltmsdkobf/gt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltmsdk/common/module/aresengine/AresEngineHelper;->createDefaultMmsTransactionHelper(Landroid/content/Context;)Ltmsdk/common/module/aresengine/MmsTransactionHelper;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/gt;->on:Ltmsdk/common/module/aresengine/MmsTransactionHelper;

    .line 248
    :cond_0
    iget-object v0, p0, Ltmsdkobf/gt;->on:Ltmsdk/common/module/aresengine/MmsTransactionHelper;

    return-object v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/bg/module/aresengine/DataInterceptor",
            "<+",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltmsdkobf/gt;->ok:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    iput-object p1, p0, Ltmsdkobf/gt;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Ltmsdkobf/gt$b;

    invoke-direct {v0}, Ltmsdkobf/gt$b;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gt;->ol:Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

    .line 70
    new-instance v0, Ltmsdkobf/gt$a;

    invoke-direct {v0, p0}, Ltmsdkobf/gt$a;-><init>(Ltmsdkobf/gt;)V

    invoke-static {v0}, Ltmsdkobf/if;->a(Ltmsdkobf/ic;)Z

    .line 71
    const-string v0, "rule_store.sys"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-static {}, Ltmsdkobf/lp;->gA()Ltmsdkobf/lp;

    .line 73
    return-void
.end method

.method public final reportSms(Ljava/util/List;)Z
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, smslist:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v10, smsreports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bo;>;"
    invoke-virtual {p0}, Ltmsdkobf/gt;->bN()Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

    move-result-object v9

    .line 157
    .local v9, smschecker:Ltmsdk/bg/module/aresengine/IntelliSmsChecker;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltmsdk/common/module/aresengine/SmsEntity;

    .line 158
    .local v8, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-virtual {v9, v8}, Ltmsdk/bg/module/aresengine/IntelliSmsChecker;->check(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    move-result-object v11

    iget-object v2, v11, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->sysResult:Ltmsdk/common/tcc/MMatchSysResult;

    .line 159
    .local v2, checkresult:Ltmsdk/common/tcc/MMatchSysResult;
    new-instance v6, Ltmsdkobf/bo;

    invoke-direct {v6}, Ltmsdkobf/bo;-><init>()V

    .line 160
    .local v6, report:Ltmsdkobf/bo;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ltmsdkobf/bo;->setComment(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v11, v11

    invoke-virtual {v6, v11}, Ltmsdkobf/bo;->S(I)V

    .line 162
    iget-object v11, v8, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ltmsdkobf/bo;->aa(Ljava/lang/String;)V

    .line 163
    iget-object v11, v8, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ltmsdkobf/bo;->ab(Ljava/lang/String;)V

    .line 165
    iget v11, v8, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    if-ltz v11, :cond_0

    iget v11, v8, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    const/4 v12, 0x2

    if-le v11, v12, :cond_1

    .line 166
    :cond_0
    const/4 v11, 0x0

    iput v11, v8, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    .line 169
    :cond_1
    sget-object v11, Ltmsdkobf/gt$b;->oq:[[I

    iget v12, v8, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v6, v11}, Ltmsdkobf/bo;->X(I)V

    .line 170
    iget v11, v2, Ltmsdk/common/tcc/MMatchSysResult;->finalAction:I

    invoke-virtual {v6, v11}, Ltmsdkobf/bo;->T(I)V

    .line 171
    iget v11, v2, Ltmsdk/common/tcc/MMatchSysResult;->actionReason:I

    invoke-virtual {v6, v11}, Ltmsdkobf/bo;->U(I)V

    .line 172
    iget v11, v2, Ltmsdk/common/tcc/MMatchSysResult;->minusMark:I

    invoke-virtual {v6, v11}, Ltmsdkobf/bo;->W(I)V

    .line 173
    iget v11, v2, Ltmsdk/common/tcc/MMatchSysResult;->contentType:I

    invoke-virtual {v6, v11}, Ltmsdkobf/bo;->V(I)V

    .line 174
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v6, Ltmsdkobf/bo;->fF:Ljava/util/ArrayList;

    .line 175
    iget-object v1, v2, Ltmsdk/common/tcc/MMatchSysResult;->ruleTypeID:[Ltmsdk/common/tcc/MRuleTypeID;

    .local v1, arr$:[Ltmsdk/common/tcc/MRuleTypeID;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v7, v1, v4

    .line 176
    .local v7, rule:Ltmsdk/common/tcc/MRuleTypeID;
    new-instance v0, Ltmsdkobf/au;

    iget v11, v7, Ltmsdk/common/tcc/MRuleTypeID;->ruleType:I

    iget v12, v7, Ltmsdk/common/tcc/MRuleTypeID;->ruleID:I

    invoke-direct {v0, v11, v12}, Ltmsdkobf/au;-><init>(II)V

    .line 177
    .local v0, a_rule:Ltmsdkobf/au;
    iget-object v11, v6, Ltmsdkobf/bo;->fF:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 180
    .end local v0           #a_rule:Ltmsdkobf/au;
    .end local v7           #rule:Ltmsdk/common/tcc/MRuleTypeID;
    :cond_2
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v1           #arr$:[Ltmsdk/common/tcc/MRuleTypeID;
    .end local v2           #checkresult:Ltmsdk/common/tcc/MMatchSysResult;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #report:Ltmsdkobf/bo;
    .end local v8           #sms:Ltmsdk/common/module/aresengine/SmsEntity;
    :cond_3
    const-class v11, Ltmsdkobf/lk;

    invoke-static {v11}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v11

    check-cast v11, Ltmsdkobf/lk;

    invoke-virtual {v11, v10}, Ltmsdkobf/lk;->p(Ljava/util/List;)I

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_2
    return v11

    :cond_4
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public setAresEngineFactor(Ltmsdk/bg/module/aresengine/AresEngineFactor;)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 133
    iput-object p1, p0, Ltmsdkobf/gt;->om:Ltmsdk/bg/module/aresengine/AresEngineFactor;

    .line 134
    return-void
.end method
