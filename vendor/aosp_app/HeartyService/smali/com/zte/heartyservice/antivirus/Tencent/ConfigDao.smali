.class public Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;
.super Ljava/lang/Object;
.source "ConfigDao.java"


# static fields
.field public static final INTERCEPTER_MODE_ACCEPTED_ONLY_CONTACT:B = 0x4t

.field public static final INTERCEPTER_MODE_ACCEPTED_ONLY_WHITELIST:B = 0x2t

.field public static final INTERCEPTER_MODE_CUSTOM:B = 0x3t

.field public static final INTERCEPTER_MODE_DISABLE:B = 0x5t

.field public static final INTERCEPTER_MODE_REJECTED_ONLY_BLACKLIST:B = 0x1t

.field public static final INTERCEPTER_MODE_STANDARD:B = 0x0t

.field private static final LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field public static final PREF_VIRUS_CLOUD_SCAN_ENABLE:Ljava/lang/String; = "virus_cloud_scan_enable"

.field public static final VIRUS_LIB_UPDATE_DELAY:J = 0x240c8400L

.field private static mInstance:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;


# instance fields
.field private final CUSTOMIZE_FILTE_MODE:Ljava/lang/String;

.field private final Intercept_Mode_Type:Ljava/lang/String;

.field private final Is_Need_Update:Ljava/lang/String;

.field private final LAST_SCAN_RESULT:Ljava/lang/String;

.field private final LAST_SCAN_TIME_LONG:Ljava/lang/String;

.field private final LAST_SCAN_TIME_STR:Ljava/lang/String;

.field private final RELATE_INFO:Ljava/lang/String;

.field private final VIRUS_LIB_TIME:Ljava/lang/String;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private setting:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->mInstance:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "Relate_Info"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->RELATE_INFO:Ljava/lang/String;

    .line 33
    const-string v0, "is_need_update"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->Is_Need_Update:Ljava/lang/String;

    .line 34
    const-string v0, "intercept_mode_type"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->Intercept_Mode_Type:Ljava/lang/String;

    .line 35
    const-string v0, "customize_filte_mode"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->CUSTOMIZE_FILTE_MODE:Ljava/lang/String;

    .line 36
    const-string v0, "last_scan_time_str"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->LAST_SCAN_TIME_STR:Ljava/lang/String;

    .line 37
    const-string v0, "last_scan_time_long"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->LAST_SCAN_TIME_LONG:Ljava/lang/String;

    .line 39
    const-string v0, "last_scan_result"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->LAST_SCAN_RESULT:Ljava/lang/String;

    .line 45
    const-string v0, "virus_lib_time"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->VIRUS_LIB_TIME:Ljava/lang/String;

    .line 82
    const-string v0, "Relate_Info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setting:Landroid/content/SharedPreferences;

    .line 83
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setting:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    .line 84
    return-void
.end method

.method public static getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->mInstance:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->mInstance:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    .line 78
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->mInstance:Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    return-object v0
.end method

.method public static setIntercepterCustomMode(IIIIIII)V
    .locals 11
    .parameter "white_list_rule"
    .parameter "black_list_rule"
    .parameter "contact_rule"
    .parameter "stranger_rule"
    .parameter "keyword_rule"
    .parameter "intelligent_rule"
    .parameter "last_calls_rule"

    .prologue
    .line 165
    const-class v9, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v9}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 167
    .local v1, aresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;
    const-string v9, "incoming_sms"

    invoke-virtual {v1, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v6

    .line 169
    .local v6, intercepter:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    invoke-interface {v6}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v5

    .line 170
    .local v5, incomingSMSFilter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v4

    .line 179
    .local v4, incomingSMSConfig:Ltmsdk/common/module/aresengine/FilterConfig;
    const-string v9, "incoming_call"

    invoke-virtual {v1, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v6

    .line 181
    invoke-interface {v6}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v3

    .line 182
    .local v3, incomingCallFilter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v2

    .line 185
    .local v2, incomingCallConfig:Ltmsdk/common/module/aresengine/FilterConfig;
    const-string v9, "system_call"

    invoke-virtual {v1, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v6

    .line 187
    invoke-interface {v6}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v8

    .line 188
    .local v8, systemCallFilter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v8}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v7

    .line 191
    .local v7, systemCallConfig:Ltmsdk/common/module/aresengine/FilterConfig;
    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 195
    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-virtual {v2, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 197
    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 200
    const/4 v9, 0x2

    invoke-virtual {v4, v9, p0}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 201
    const/4 v9, 0x2

    invoke-virtual {v2, v9, p0}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 202
    const/4 v9, 0x2

    invoke-virtual {v7, v9, p0}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 204
    const/4 v9, 0x4

    invoke-virtual {v4, v9, p1}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 205
    const/4 v9, 0x4

    invoke-virtual {v2, v9, p1}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 206
    const/4 v9, 0x4

    invoke-virtual {v7, v9, p1}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 208
    const/16 v9, 0x8

    invoke-virtual {v4, v9, p2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 209
    const/16 v9, 0x8

    invoke-virtual {v2, v9, p2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 210
    const/16 v9, 0x8

    invoke-virtual {v7, v9, p2}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 212
    const/16 v9, 0x10

    move/from16 v0, p6

    invoke-virtual {v4, v9, v0}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 213
    const/16 v9, 0x10

    move/from16 v0, p6

    invoke-virtual {v2, v9, v0}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 214
    const/16 v9, 0x10

    move/from16 v0, p6

    invoke-virtual {v7, v9, v0}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 216
    const/16 v9, 0x20

    invoke-virtual {v4, v9, p4}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 217
    const/16 v9, 0x40

    move/from16 v0, p5

    invoke-virtual {v4, v9, v0}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 219
    const/16 v9, 0x80

    move/from16 v0, p5

    invoke-virtual {v7, v9, v0}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 222
    const/16 v9, 0x80

    invoke-virtual {v4, v9, p3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 223
    const/16 v9, 0x20

    invoke-virtual {v2, v9, p3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 224
    const/16 v9, 0x20

    invoke-virtual {v7, v9, p3}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 226
    const/16 v9, 0x40

    const/4 v10, 0x3

    invoke-virtual {v2, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 227
    const/16 v9, 0x200

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 228
    const/16 v9, 0x100

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 229
    const/16 v9, 0x40

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 230
    const/16 v9, 0x100

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 232
    invoke-virtual {v5, v4}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 234
    invoke-virtual {v3, v2}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 235
    invoke-virtual {v8, v7}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 236
    return-void
.end method


# virtual methods
.method public getFilterMod()I
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, type:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v0, 0x5

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setting:Landroid/content/SharedPreferences;

    const-string v2, "intercept_mode_type"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 156
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 157
    :cond_1
    const/4 v0, 0x0

    .line 159
    :cond_2
    return v0
.end method

.method public getIsNeedUpdate()Z
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setting:Landroid/content/SharedPreferences;

    const-string v1, "is_need_update"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastCheckTime()J
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setting:Landroid/content/SharedPreferences;

    const-string v1, "last_update_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastScanTimeLong()J
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setting:Landroid/content/SharedPreferences;

    const-string v1, "last_scan_time_long"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastScanTimeStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setting:Landroid/content/SharedPreferences;

    const-string v1, "last_scan_time_str"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedCloudScan()Z
    .locals 3

    .prologue
    .line 362
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "virus_cloud_scan_enable"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public setFilterMod(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x3

    .line 123
    if-eq p1, v0, :cond_0

    if-le p1, v2, :cond_1

    .line 124
    :cond_0
    const/4 p1, 0x0

    .line 127
    :cond_1
    const/4 v1, 0x2

    if-gt p1, v1, :cond_3

    .line 128
    invoke-static {p1}, Ltmsdk/bg/module/aresengine/InterceptorFilterUtils;->setInterceptorMode(I)V

    .line 140
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "intercept_mode_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void

    .line 129
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 130
    const/4 v2, 0x0

    const/4 v3, 0x1

    move v1, v0

    move v4, v0

    move v5, v0

    move v6, v0

    invoke-static/range {v0 .. v6}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setIntercepterCustomMode(IIIIIII)V

    goto :goto_0

    .line 134
    :cond_4
    if-ne p1, v2, :cond_2

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    .line 135
    invoke-static/range {v0 .. v6}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setIntercepterCustomMode(IIIIIII)V

    goto :goto_0
.end method

.method public setFilterModOnlyFlag(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 144
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 145
    :cond_0
    const/4 p1, 0x0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "intercept_mode_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    return-void
.end method

.method public setIsNeedUpdate(Z)V
    .locals 2
    .parameter "isneedupdate"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_need_update"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    if-nez p1, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setLastCheckTime(J)V

    .line 109
    :cond_0
    return-void
.end method

.method public setLastCheckTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_update_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method

.method public setLastScanTimeLong(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_scan_time_long"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    return-void
.end method

.method public setLastScanTimeStr(Ljava/lang/String;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_scan_time_str"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    return-void
.end method
