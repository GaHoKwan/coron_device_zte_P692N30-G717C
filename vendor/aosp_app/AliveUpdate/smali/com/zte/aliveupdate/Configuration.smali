.class public Lcom/zte/aliveupdate/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final COMMERICAL_MULTI_UPDATE_SERVER:Ljava/lang/String; = "http://cloud.ztedevices.com/zteappupgrade/multiupdate"

.field public static final COMMERICAL_RECOMMAND_SERVER:Ljava/lang/String; = "http://cloud.ztedevices.com/zteappupgrade/getrecommend"

.field private static final REFERENCE_KEY_ALLOW_BUSSINESS_WLAN:Ljava/lang/String; = "allow_business_wlan"

.field private static final REFERENCE_KEY_CHECK_ALLOW_BUSSINESS_WLAN_ITEM_VISIBLE:Ljava/lang/String; = "check_allow_business_wlan_item_visible"

.field private static final REFERENCE_KEY_CONFIGURATION_NAME:Ljava/lang/String; = "configuration_name"

.field private static final REFERENCE_KEY_FILTERS:Ljava/lang/String; = "filters"

.field private static final REFERENCE_KEY_HELP_ITEM_VISIBLE:Ljava/lang/String; = "help_item_visible"

.field private static final REFERENCE_KEY_LAST_UPDATE_TIME:Ljava/lang/String; = "last_updatet_time"

.field private static final REFERENCE_KEY_NEED_RECOMMEND:Ljava/lang/String; = "need_recommend"

.field private static final REFERENCE_KEY_NETWORK_STRATEGY:Ljava/lang/String; = "network_strategy"

.field private static final REFERENCE_KEY_QUERYCOUNT:Ljava/lang/String; = "querycount"

.field private static final REFERENCE_KEY_SHOW_INTENT_ACTION:Ljava/lang/String; = "show_intent_action"

.field public static final SHARED_PREF_NAME:Ljava/lang/String; = "aliveupdate_config"

.field public static final TEST_MULTI_UPDATE_SERVER:Ljava/lang/String; = "http://218.104.200.245:10013/UpgradeServer/multiupdate"

.field public static final TEST_RECOMMAND_SERVER:Ljava/lang/String; = "http://218.104.200.245:10013/UpgradeServer/getrecommend"

.field private static config:Lcom/zte/aliveupdate/Configuration;


# instance fields
.field private filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field multiUpdateServer:Ljava/lang/String;

.field private networkStrategy:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

.field recommandServer:Ljava/lang/String;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "http://cloud.ztedevices.com/zteappupgrade/multiupdate"

    iput-object v1, p0, Lcom/zte/aliveupdate/Configuration;->multiUpdateServer:Ljava/lang/String;

    .line 31
    const-string v1, "http://cloud.ztedevices.com/zteappupgrade/getrecommend"

    iput-object v1, p0, Lcom/zte/aliveupdate/Configuration;->recommandServer:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    .line 55
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/zte/aliveupdate/CustomConfig;->getDefault()Lcom/zte/aliveupdate/CustomConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/aliveupdate/CustomConfig;->init(Landroid/content/Context;)V

    .line 56
    const-string v1, "aliveupdate_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    .line 57
    return-void
.end method

.method public static getConfig()Lcom/zte/aliveupdate/Configuration;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/zte/aliveupdate/Configuration;->config:Lcom/zte/aliveupdate/Configuration;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/zte/aliveupdate/Configuration;

    invoke-direct {v0}, Lcom/zte/aliveupdate/Configuration;-><init>()V

    sput-object v0, Lcom/zte/aliveupdate/Configuration;->config:Lcom/zte/aliveupdate/Configuration;

    .line 62
    :cond_0
    sget-object v0, Lcom/zte/aliveupdate/Configuration;->config:Lcom/zte/aliveupdate/Configuration;

    return-object v0
.end method

.method private initFilterList()V
    .locals 5

    .prologue
    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/zte/aliveupdate/Configuration;->filterList:Ljava/util/List;

    .line 124
    iget-object v2, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "filters"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, filters:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, arrayFilter:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/aliveupdate/Configuration;->filterList:Ljava/util/List;

    goto :goto_0
.end method

.method public static setInstance(Lcom/zte/aliveupdate/Configuration;)V
    .locals 0
    .parameter "configuration"

    .prologue
    .line 146
    sput-object p0, Lcom/zte/aliveupdate/Configuration;->config:Lcom/zte/aliveupdate/Configuration;

    .line 147
    return-void
.end method


# virtual methods
.method public getCheckAllowBussinessWlanItemVisible()I
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "check_allow_business_wlan_item_visible"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "configuration_name"

    const-string v2, "no name"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterList()Ljava/util/List;
    .locals 2
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
    .line 115
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->filterList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/zte/aliveupdate/Configuration;->initFilterList()V

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aliveupdate/Configuration;->filterList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->filterList:Ljava/util/List;

    return-object v0
.end method

.method public getHelpItemVisible()I
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "help_item_visible"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastCheckTime()J
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "last_updatet_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMultiUpdateServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->multiUpdateServer:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkStrategy()Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->WIFI_AND_DATA:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    return-object v0
.end method

.method public getQureryCount()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "querycount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, count:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRecmmdServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->recommandServer:Ljava/lang/String;

    return-object v0
.end method

.method public getShowIntentAction()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "show_intent_action"

    const-string v2, "com.zte.aliveupdate.intent.action.SHOW_UPDATE_APPS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllowBussinessWLan()Z
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "allow_business_wlan"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNeedNewAppRefresh()Z
    .locals 9

    .prologue
    .line 150
    const-wide/16 v3, 0x6

    .line 151
    .local v3, timePeriod:J
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPeriodType()Lcom/zte/aliveupdate/common/datatype/PeriodType;

    move-result-object v2

    .line 152
    .local v2, periodType:Lcom/zte/aliveupdate/common/datatype/PeriodType;
    invoke-virtual {v2}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->getTimePeriod()J

    move-result-wide v3

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/zte/aliveupdate/Configuration;->getLastCheckTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 154
    .local v0, currentTime:J
    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isNeedRecommend()Z
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "need_recommend"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public refreshLastCheckTime()V
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 109
    .local v1, timeMillis:J
    iget-object v3, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "last_updatet_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method public refreshNextQureyCount()V
    .locals 5

    .prologue
    .line 161
    iget-object v2, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "querycount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, count:I
    add-int/lit8 v0, v0, 0x1

    .line 163
    iget-object v2, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 164
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "querycount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method

.method public setAllowBussinessWLan(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/zte/aliveupdate/Configuration;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "allow_business_wlan"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public setCommericlServer()V
    .locals 1

    .prologue
    .line 183
    const-string v0, "http://cloud.ztedevices.com/zteappupgrade/multiupdate"

    iput-object v0, p0, Lcom/zte/aliveupdate/Configuration;->multiUpdateServer:Ljava/lang/String;

    .line 184
    const-string v0, "http://cloud.ztedevices.com/zteappupgrade/getrecommend"

    iput-object v0, p0, Lcom/zte/aliveupdate/Configuration;->recommandServer:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setTestServer()V
    .locals 1

    .prologue
    .line 189
    const-string v0, "http://218.104.200.245:10013/UpgradeServer/multiupdate"

    iput-object v0, p0, Lcom/zte/aliveupdate/Configuration;->multiUpdateServer:Ljava/lang/String;

    .line 190
    const-string v0, "http://218.104.200.245:10013/UpgradeServer/getrecommend"

    iput-object v0, p0, Lcom/zte/aliveupdate/Configuration;->recommandServer:Ljava/lang/String;

    .line 192
    return-void
.end method
