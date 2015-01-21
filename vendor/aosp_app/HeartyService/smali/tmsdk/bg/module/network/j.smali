.class final Ltmsdk/bg/module/network/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mProperty:Ltmsdkobf/kf;

.field private final wl:Ljava/lang/String;

.field private final wm:Ljava/lang/String;

.field private final wn:Ljava/lang/String;

.field private final wo:Ljava/lang/String;

.field private final wp:Ljava/lang/String;

.field private final wq:Ljava/lang/String;

.field private final wr:Ljava/lang/String;

.field private final ws:Ljava/lang/String;

.field private final wt:Ljava/lang/String;

.field private final wu:Ljava/lang/String;

.field private final wv:Ljava/lang/String;

.field private final ww:Ljava/lang/String;

.field private final wx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "LAST_SYNC_TASK_EXECUTE_TIME"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wl:Ljava/lang/String;

    .line 33
    const-string v0, "LAST_SYNC_TASK_EXECUTE_RESULT"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wm:Ljava/lang/String;

    .line 34
    const-string v0, "LAST_OPERATOR_DATA_SYNC_TIME"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wn:Ljava/lang/String;

    .line 35
    const-string v0, "ZFT_OPERATOR_CONFIG_UPDATE_TIME"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wo:Ljava/lang/String;

    .line 36
    const-string v0, "OPERATOR_CONFIG_UPDATE_TIME"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wp:Ljava/lang/String;

    .line 37
    const-string v0, "OPERATOR_CONFIG_UPDATE_RESURRECTION_TIME"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wq:Ljava/lang/String;

    .line 38
    const-string v0, "MATCH_RULE_UPDATE_TIME"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wr:Ljava/lang/String;

    .line 39
    const-string v0, "CURRENT_IMSI"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->ws:Ljava/lang/String;

    .line 40
    const-string v0, "SAMPLE_COLLECTED"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wt:Ljava/lang/String;

    .line 43
    const-string v0, "SIM_CARD_PROVINCE"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wu:Ljava/lang/String;

    .line 44
    const-string v0, "SIM_CARD_CITY"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wv:Ljava/lang/String;

    .line 45
    const-string v0, "SIM_CARD_CARRY"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->ww:Ljava/lang/String;

    .line 46
    const-string v0, "SIM_CARD_BRAND"

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->wx:Ljava/lang/String;

    .line 51
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "operator_data_sync_setting"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Ltmsdk/bg/module/network/TrafficCorrectionConfig;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 55
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v2, "SIM_CARD_PROVINCE"

    iget-object v0, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    iget-object v1, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v2, "SIM_CARD_CITY"

    iget-object v0, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2, v0, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    iget-object v1, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v2, "SIM_CARD_CARRY"

    iget-object v0, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2, v0, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    iget-object v1, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v2, "SIM_CARD_BRAND"

    iget-object v0, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v2, v0, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 59
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 60
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 61
    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 62
    :cond_4
    const-string v0, ""

    goto :goto_4
.end method

.method public bh(I)Ljava/util/List;
    .locals 12
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v7, rules:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;>;"
    iget-object v8, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MATCH_RULE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, ruleText:Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 85
    const-string v8, "#ITEM#"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 86
    .local v5, ruleItem:Ljava/lang/String;
    const-string v8, "#COLUMN#"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, ruleColumns:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v8, v4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 88
    new-instance v3, Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    const/4 v11, 0x3

    aget-object v11, v4, v11

    invoke-direct {v3, v8, v9, v10, v11}, Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v3, rule:Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3           #rule:Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #ruleColumns:[Ljava/lang/String;
    .end local v5           #ruleItem:Ljava/lang/String;
    :cond_1
    return-object v7
.end method

.method public bi(I)Ljava/util/List;
    .locals 11
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v4, queryInfo:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ba;>;"
    iget-object v8, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QUERY_INFO"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, queryInfoText:Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 142
    const-string v8, "#ITEM#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 143
    .local v6, queryInfoItem:Ljava/lang/String;
    const-string v8, "#COLUMN#"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, queryInfoColumns:[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v8, v5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 145
    new-instance v3, Ltmsdkobf/ba;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-direct {v3, v8, v9, v10}, Ltmsdkobf/ba;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v3, query:Ltmsdkobf/ba;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v3           #query:Ltmsdkobf/ba;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #queryInfoColumns:[Ljava/lang/String;
    .end local v6           #queryInfoItem:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public eH()Ltmsdk/bg/module/network/TrafficCorrectionConfig;
    .locals 7

    .prologue
    .line 67
    new-instance v0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    iget-object v1, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v2, "SIM_CARD_PROVINCE"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v3, "SIM_CARD_CITY"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v4, "SIM_CARD_CARRY"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v5, "SIM_CARD_BRAND"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ltmsdk/bg/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public eI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATCH_RULE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ltmsdkobf/ac;->cV:Ltmsdkobf/ac;

    invoke-virtual {v2}, Ltmsdkobf/ac;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    iget-object v0, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATCH_RULE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ltmsdkobf/ac;->cW:Ltmsdkobf/ac;

    invoke-virtual {v2}, Ltmsdkobf/ac;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    return-void
.end method

.method public eJ()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QUERY_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ltmsdkobf/y;->ck:Ltmsdkobf/y;

    invoke-virtual {v2}, Ltmsdkobf/y;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    iget-object v0, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QUERY_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ltmsdkobf/y;->cl:Ltmsdkobf/y;

    invoke-virtual {v2}, Ltmsdkobf/y;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method public eK()J
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v1, "MATCH_RULE_UPDATE_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/kf;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/ax;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, rules:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ax;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v3, ruleMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ax;

    .line 117
    .local v1, rule:Ltmsdkobf/ax;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MATCH_RULE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Ltmsdkobf/ax;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 118
    .local v5, ruleText:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Ltmsdkobf/ax;->unit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Ltmsdkobf/ax;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Ltmsdkobf/ax;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Ltmsdkobf/ax;->postfix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MATCH_RULE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Ltmsdkobf/ax;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#ITEM#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Ltmsdkobf/ax;->unit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Ltmsdkobf/ax;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Ltmsdkobf/ax;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Ltmsdkobf/ax;->postfix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 125
    .end local v1           #rule:Ltmsdkobf/ax;
    .end local v5           #ruleText:Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 126
    .local v4, ruleSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    .local v2, rule:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v7, v9}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 130
    .end local v2           #rule:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/ba;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, queryInfo:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/ba;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v2, queryInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ba;

    .line 173
    .local v1, query:Ltmsdkobf/ba;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QUERY_INFO"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ltmsdkobf/ba;->q()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 174
    .local v4, queryInfoText:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ltmsdkobf/ba;->q()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ltmsdkobf/ba;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ltmsdkobf/ba;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QUERY_INFO"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ltmsdkobf/ba;->q()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#ITEM#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ltmsdkobf/ba;->q()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ltmsdkobf/ba;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#COLUMN#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ltmsdkobf/ba;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 181
    .end local v1           #query:Ltmsdkobf/ba;
    .end local v4           #queryInfoText:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 182
    .local v3, queryInfoSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 183
    .local v5, queryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v7, v9}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 186
    .end local v5           #queryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public q(J)V
    .locals 3
    .parameter "updateTime"

    .prologue
    .line 293
    iget-object v0, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v1, "OPERATOR_CONFIG_UPDATE_TIME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ltmsdkobf/kf;->a(Ljava/lang/String;JZ)V

    .line 294
    return-void
.end method

.method public r(J)V
    .locals 3
    .parameter "updateTime"

    .prologue
    .line 311
    iget-object v0, p0, Ltmsdk/bg/module/network/j;->mProperty:Ltmsdkobf/kf;

    const-string v1, "MATCH_RULE_UPDATE_TIME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ltmsdkobf/kf;->a(Ljava/lang/String;JZ)V

    .line 312
    return-void
.end method
