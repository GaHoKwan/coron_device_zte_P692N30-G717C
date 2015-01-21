.class public Lcn/com/zte/yp/module/touchpal/TouchPalModule;
.super Lcn/com/zte/yp/YpModule;
.source "TouchPalModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/yp/module/touchpal/TouchPalModule$CallerIdResultReceiver;
    }
.end annotation


# instance fields
.field private csom:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/com/zte/yp/YpModule;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->context:Landroid/content/Context;

    .line 32
    const v0, 0x7f080006

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->description:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getYpContactByNumber([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;
    .locals 16
    .parameter "numbers"
    .parameter "onlyYp"

    .prologue
    .line 85
    const-string v1, "getBusinessCardByNumber"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v15, v1, [Lcn/com/zte/yp/YpContact;

    .line 89
    .local v15, result:[Lcn/com/zte/yp/YpContact;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v14, v1, :cond_2

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->context:Landroid/content/Context;

    aget-object v2, p1, v14

    invoke-static {v1, v2}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->getCallerIdResult(Landroid/content/Context;Ljava/lang/String;)Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;

    move-result-object v13

    .line 91
    .local v13, callerIdResult:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    if-eqz v13, :cond_1

    .line 92
    invoke-virtual {v13}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getAttribute()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, loc:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 99
    aget-object v1, p1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->queryLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    :cond_0
    new-instance v1, Lcn/com/zte/yp/YpContact;

    invoke-virtual {v13}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getVipPhoto()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->description:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcn/com/zte/yp/YpContact;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v15, v14

    .line 89
    .end local v6           #loc:Ljava/lang/String;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const-string v1, "callerIdResults[i] is null"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 105
    new-instance v7, Lcn/com/zte/yp/YpContact;

    aget-object v8, p1, v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcn/com/zte/yp/YpContact;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v15, v14

    goto :goto_1

    .line 108
    .end local v13           #callerIdResult:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    :cond_2
    return-object v15
.end method

.method public declared-synchronized getYpContactByNumberFromLocal([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;
    .locals 20
    .parameter "numbers"
    .parameter "onlyYp"

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    const-string v1, "getBusinessCardByNumberFromLocal"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v0, v1, [Lcn/com/zte/yp/YpContact;

    move-object/from16 v19, v0

    .line 142
    .local v19, ypcs:[Lcn/com/zte/yp/YpContact;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerIdResult.numbers[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 144
    .local v17, start:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->getCallerIdResult(Landroid/content/Context;[Ljava/lang/String;)[Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;

    move-result-object v13

    .line 145
    .local v13, callerIdResults:[Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 146
    .local v14, end:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerIdResult.numbers[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "use time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v14, v17

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 148
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    array-length v1, v13

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    .line 149
    aget-object v1, v13, v16

    if-eqz v1, :cond_1

    .line 150
    aget-object v1, v13, v16

    invoke-virtual {v1}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getAttribute()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, loc:Ljava/lang/String;
    aget-object v1, v13, v16

    invoke-virtual {v1}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 153
    aget-object v1, p1, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->queryLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    :cond_0
    new-instance v1, Lcn/com/zte/yp/YpContact;

    aget-object v2, v13, v16

    invoke-virtual {v2}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getNumber()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v13, v16

    invoke-virtual {v3}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v13, v16

    invoke-virtual {v4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getVipPhoto()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->description:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcn/com/zte/yp/YpContact;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v19, v16

    .line 148
    .end local v6           #loc:Ljava/lang/String;
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const-string v1, "callerIdResults[i] is null"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 166
    new-instance v7, Lcn/com/zte/yp/YpContact;

    aget-object v8, p1, v16

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcn/com/zte/yp/YpContact;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v19, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 139
    .end local v13           #callerIdResults:[Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .end local v14           #end:J
    .end local v16           #i:I
    .end local v17           #start:J
    .end local v19           #ypcs:[Lcn/com/zte/yp/YpContact;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 169
    .restart local v13       #callerIdResults:[Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .restart local v14       #end:J
    .restart local v16       #i:I
    .restart local v17       #start:J
    .restart local v19       #ypcs:[Lcn/com/zte/yp/YpContact;
    :cond_2
    monitor-exit p0

    return-object v19
.end method

.method public init()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    .line 178
    iget-object v2, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 180
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.cootek.smartdialer_oem_module"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, enabled:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 182
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 184
    :cond_0
    const/4 v2, 0x0

    .line 186
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public launchOfflineDataDownloadUI()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->csom:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;

    invoke-virtual {v0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->launchSettings()V

    .line 74
    return-void
.end method

.method public launchSearchUI()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->context:Landroid/content/Context;

    const-string v1, "QueryYpNum"

    const-string v2, "TouchPal"

    invoke-static {v0, v1, v2}, Lcn/com/zte/yp/statics/StaticsInfo;->collectSelfDefineStatiscs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->csom:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;

    invoke-virtual {v0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->launchYellowPage()V

    .line 65
    return-void
.end method

.method public launchSettingsUI()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->csom:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;

    invoke-virtual {v0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->launchSettings()V

    .line 48
    return-void
.end method

.method public launchWarningDialog()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public launchWebView(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0
    .parameter "activity"
    .parameter "number"
    .parameter "callType"

    .prologue
    .line 207
    return-void
.end method

.method public queryYpContactByName(Ljava/lang/String;)[Lcn/com/zte/yp/YpContact;
    .locals 1
    .parameter "name"

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 37
    iput-object p1, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->activity:Landroid/app/Activity;

    .line 38
    new-instance v0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;

    invoke-direct {v0, p1}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule;->csom:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;

    .line 39
    return-void
.end method
