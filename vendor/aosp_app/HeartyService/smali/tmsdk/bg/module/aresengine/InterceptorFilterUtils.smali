.class public final Ltmsdk/bg/module/aresengine/InterceptorFilterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTERCEPTOR_MODE_ACCEPTED_ONLY_WHITELIST:I = 0x2

.field public static final INTERCEPTOR_MODE_REJECTED_ONLY_BLACKLIST:I = 0x1

.field public static final INTERCEPTOR_MODE_STANDARD:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static er()V
    .locals 10

    .prologue
    .line 58
    const-class v9, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v9}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v5

    check-cast v5, Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 60
    .local v5, manager:Ltmsdk/bg/module/aresengine/AresEngineManager;
    const-string v9, "incoming_sms"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v4

    .line 61
    .local v4, incominginterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v4, :cond_1

    .line 62
    invoke-interface {v4}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 63
    .local v2, filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 64
    .local v6, old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 65
    .local v0, config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 67
    .local v1, filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 69
    .end local v1           #filed:I
    :cond_0
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 72
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_1
    const-string v9, "outing_sms"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v7

    .line 73
    .local v7, outgoingSmsInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v7, :cond_3

    .line 74
    invoke-interface {v7}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 75
    .restart local v2       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 76
    .restart local v6       #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 77
    .restart local v0       #config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_2

    .line 78
    const/4 v1, 0x1

    .line 79
    .restart local v1       #filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 81
    .end local v1           #filed:I
    :cond_2
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 84
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_3
    const-string v9, "incoming_call"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v3

    .line 85
    .local v3, incomingCallInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v3, :cond_5

    .line 86
    invoke-interface {v3}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 87
    .restart local v2       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 88
    .restart local v6       #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 89
    .restart local v0       #config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_4

    .line 90
    const/4 v1, 0x1

    .line 91
    .restart local v1       #filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 93
    .end local v1           #filed:I
    :cond_4
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 96
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_5
    const-string v9, "system_call"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v8

    .line 97
    .local v8, systemCallLogInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v8, :cond_7

    .line 98
    invoke-interface {v8}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 99
    .restart local v2       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 100
    .restart local v6       #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 101
    .restart local v0       #config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_6

    .line 102
    const/4 v1, 0x1

    .line 103
    .restart local v1       #filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 105
    .end local v1           #filed:I
    :cond_6
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 107
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_7
    return-void
.end method

.method private static es()V
    .locals 16

    .prologue
    const/16 v15, 0x8

    const/4 v14, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x3

    .line 110
    const-class v9, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v9}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v5

    check-cast v5, Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 112
    .local v5, manager:Ltmsdk/bg/module/aresengine/AresEngineManager;
    const-string v9, "incoming_sms"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v4

    .line 113
    .local v4, incomingSmsInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v4, :cond_1

    .line 114
    invoke-interface {v4}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 115
    .local v2, filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 116
    .local v6, old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 117
    .local v0, config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_0

    .line 118
    const/4 v1, 0x1

    .line 119
    .local v1, filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 121
    .end local v1           #filed:I
    :cond_0
    invoke-virtual {v0, v12, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 122
    invoke-virtual {v0, v14, v13}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 123
    invoke-virtual {v0, v15, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 124
    const/16 v9, 0x10

    invoke-virtual {v0, v9, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 125
    const/16 v9, 0x20

    invoke-virtual {v0, v9, v12}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 126
    const/16 v9, 0x40

    invoke-virtual {v0, v9, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 127
    const/16 v9, 0x80

    invoke-virtual {v0, v9, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 128
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 131
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_1
    const-string v9, "outing_sms"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v7

    .line 132
    .local v7, outgoingSmsInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v7, :cond_3

    .line 133
    invoke-interface {v7}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 134
    .restart local v2       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 135
    .restart local v6       #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 136
    .restart local v0       #config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_2

    .line 137
    const/4 v1, 0x1

    .line 138
    .restart local v1       #filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 140
    .end local v1           #filed:I
    :cond_2
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 143
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_3
    const-string v9, "incoming_call"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v3

    .line 144
    .local v3, incomingCallInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v3, :cond_5

    .line 145
    invoke-interface {v3}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 146
    .restart local v2       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 147
    .restart local v6       #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 148
    .restart local v0       #config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_4

    .line 149
    const/4 v1, 0x1

    .line 150
    .restart local v1       #filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 152
    .end local v1           #filed:I
    :cond_4
    invoke-virtual {v0, v12, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 153
    invoke-virtual {v0, v14, v13}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 154
    invoke-virtual {v0, v15, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 155
    const/16 v9, 0x10

    invoke-virtual {v0, v9, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 156
    const/16 v9, 0x20

    invoke-virtual {v0, v9, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 157
    const/16 v9, 0x40

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 158
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 161
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_5
    const-string v9, "system_call"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v8

    .line 162
    .local v8, systemCallLogInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v8, :cond_7

    .line 163
    invoke-interface {v8}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 164
    .restart local v2       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 165
    .restart local v6       #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 166
    .restart local v0       #config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_6

    .line 167
    const/4 v1, 0x1

    .line 168
    .restart local v1       #filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 170
    .end local v1           #filed:I
    :cond_6
    invoke-virtual {v0, v12, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 171
    invoke-virtual {v0, v14, v13}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 172
    invoke-virtual {v0, v15, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 173
    const/16 v9, 0x10

    invoke-virtual {v0, v9, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 174
    const/16 v9, 0x20

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 175
    const/16 v9, 0x40

    invoke-virtual {v0, v9, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 176
    const/16 v9, 0x80

    invoke-virtual {v0, v9, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 177
    const/16 v9, 0x100

    invoke-virtual {v0, v9, v12}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 179
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 181
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_7
    return-void
.end method

.method private static et()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x3

    .line 184
    const-class v9, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v9}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v5

    check-cast v5, Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 186
    .local v5, manager:Ltmsdk/bg/module/aresengine/AresEngineManager;
    const-string v9, "incoming_sms"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v4

    .line 187
    .local v4, incomingSmsInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v4, :cond_1

    .line 188
    invoke-interface {v4}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 189
    .local v2, filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 190
    .local v6, old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 191
    .local v0, config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_0

    .line 192
    const/4 v1, 0x1

    .line 193
    .local v1, filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 195
    .end local v1           #filed:I
    :cond_0
    invoke-virtual {v0, v12, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 196
    invoke-virtual {v0, v14, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 197
    const/16 v9, 0x8

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 198
    const/16 v9, 0x10

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 199
    const/16 v9, 0x20

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 200
    const/16 v9, 0x40

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 201
    const/16 v9, 0x80

    invoke-virtual {v0, v9, v13}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 202
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 205
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_1
    const-string v9, "outing_sms"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v7

    .line 206
    .local v7, outgoingSmsInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v7, :cond_3

    .line 207
    invoke-interface {v7}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 208
    .restart local v2       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 209
    .restart local v6       #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 210
    .restart local v0       #config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_2

    .line 211
    const/4 v1, 0x1

    .line 212
    .restart local v1       #filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 214
    .end local v1           #filed:I
    :cond_2
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 217
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_3
    const-string v9, "incoming_call"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v3

    .line 218
    .local v3, incomingCallInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v3, :cond_5

    .line 219
    invoke-interface {v3}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 220
    .restart local v2       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 221
    .restart local v6       #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 222
    .restart local v0       #config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_4

    .line 223
    const/4 v1, 0x1

    .line 224
    .restart local v1       #filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 226
    .end local v1           #filed:I
    :cond_4
    const/16 v9, 0x40

    invoke-virtual {v0, v9, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 227
    invoke-virtual {v0, v12, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 228
    invoke-virtual {v0, v14, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 229
    const/16 v9, 0x8

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 230
    const/16 v9, 0x10

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 231
    const/16 v9, 0x20

    invoke-virtual {v0, v9, v13}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 232
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 235
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_5
    const-string v9, "system_call"

    invoke-virtual {v5, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v8

    .line 236
    .local v8, systemCallLoginterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    if-eqz v8, :cond_7

    .line 237
    invoke-interface {v8}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 238
    .restart local v2       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->getConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v6

    .line 239
    .restart local v6       #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/DataFilter;->defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;

    move-result-object v0

    .line 240
    .restart local v0       #config:Ltmsdk/common/module/aresengine/FilterConfig;
    if-eqz v6, :cond_6

    .line 241
    const/4 v1, 0x1

    .line 242
    .restart local v1       #filed:I
    invoke-virtual {v6, v1}, Ltmsdk/common/module/aresengine/FilterConfig;->get(I)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 244
    .end local v1           #filed:I
    :cond_6
    invoke-virtual {v0, v12, v11}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 245
    invoke-virtual {v0, v14, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 246
    const/16 v9, 0x8

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 247
    const/16 v9, 0x10

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 248
    const/16 v9, 0x20

    invoke-virtual {v0, v9, v13}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 249
    const/16 v9, 0x40

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 250
    const/16 v9, 0x80

    invoke-virtual {v0, v9, v10}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 251
    const/16 v9, 0x100

    invoke-virtual {v0, v9, v12}, Ltmsdk/common/module/aresengine/FilterConfig;->set(II)V

    .line 252
    invoke-virtual {v2, v0}, Ltmsdk/bg/module/aresengine/DataFilter;->setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V

    .line 254
    .end local v0           #config:Ltmsdk/common/module/aresengine/FilterConfig;
    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<*>;"
    .end local v6           #old_config:Ltmsdk/common/module/aresengine/FilterConfig;
    :cond_7
    return-void
.end method

.method public static setInterceptorMode(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 44
    :pswitch_0
    invoke-static {}, Ltmsdk/bg/module/aresengine/InterceptorFilterUtils;->er()V

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-static {}, Ltmsdk/bg/module/aresengine/InterceptorFilterUtils;->es()V

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-static {}, Ltmsdk/bg/module/aresengine/InterceptorFilterUtils;->et()V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
