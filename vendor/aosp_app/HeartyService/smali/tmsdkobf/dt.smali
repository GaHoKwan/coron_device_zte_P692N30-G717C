.class public final Ltmsdkobf/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/do;


# static fields
.field private static kf:Ltmsdkobf/dt;


# instance fields
.field private jY:Ltmsdkobf/dp$a;

.field private ke:Ltmsdkobf/dr;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ltmsdkobf/dt$1;

    invoke-direct {v0, p0}, Ltmsdkobf/dt$1;-><init>(Ltmsdkobf/dt;)V

    iput-object v0, p0, Ltmsdkobf/dt;->jY:Ltmsdkobf/dp$a;

    .line 38
    return-void
.end method

.method public static T()Ltmsdkobf/dt;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ltmsdkobf/dt;->kf:Ltmsdkobf/dt;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ltmsdkobf/dt;

    invoke-direct {v0}, Ltmsdkobf/dt;-><init>()V

    sput-object v0, Ltmsdkobf/dt;->kf:Ltmsdkobf/dt;

    .line 34
    :cond_0
    sget-object v0, Ltmsdkobf/dt;->kf:Ltmsdkobf/dt;

    return-object v0
.end method

.method private declared-synchronized V()V
    .locals 8

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltmsdkobf/dt;->ke:Ltmsdkobf/dr;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "batch"

    iget v4, v1, Ltmsdkobf/dr;->jO:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "operator"

    iget v4, v1, Ltmsdkobf/dr;->kb:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, v1, Ltmsdkobf/dr;->ka:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, v1, Ltmsdkobf/dr;->ka:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "dns"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x1f40

    if-le v1, v2, :cond_5

    .line 148
    .end local v0           #content:Ljava/lang/String;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 133
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/dq;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "dnsname"

    iget-object v7, v1, Ltmsdkobf/dq;->jP:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "used_ip"

    iget-boolean v7, v1, Ltmsdkobf/dq;->a:Z

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v6, v1, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    if-eqz v6, :cond_3

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, v1, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ips"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_4
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 138
    .restart local v0       #content:Ljava/lang/String;
    :cond_5
    invoke-static {}, Ltmsdkobf/ds;->S()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-static {v0}, Ltmsdkobf/ds;->as(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1
.end method

.method private declared-synchronized W()V
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ltmsdkobf/ds;->O()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Ltmsdkobf/gf;->as(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-static {v2}, Ltmsdkobf/dr;->a(Lorg/json/JSONObject;)Ltmsdkobf/dr;

    move-result-object v1

    .line 163
    .local v1, serverList:Ltmsdkobf/dr;
    iget v2, v1, Ltmsdkobf/dr;->kb:I

    invoke-static {}, Ltmsdkobf/dp;->R()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 164
    iput-object v1, p0, Ltmsdkobf/dt;->ke:Ltmsdkobf/dr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1           #serverList:Ltmsdkobf/dr;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 154
    .end local v0           #content:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static b([BLjava/lang/String;)Ltmsdkobf/dr;
    .locals 4
    .parameter "data"
    .parameter "charset"

    .prologue
    const/4 v2, 0x0

    .line 110
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 111
    .local v1, result:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, jsonObj:Lorg/json/JSONObject;
    const-string v3, "update"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 115
    :goto_0
    if-nez v3, :cond_1

    .line 124
    .end local v0           #jsonObj:Lorg/json/JSONObject;
    .end local v1           #result:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 114
    .restart local v0       #jsonObj:Lorg/json/JSONObject;
    .restart local v1       #result:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {v0}, Ltmsdkobf/dr;->a(Lorg/json/JSONObject;)Ltmsdkobf/dr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 120
    .end local v0           #jsonObj:Lorg/json/JSONObject;
    .end local v1           #result:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final Q()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Ltmsdkobf/dp;->P()Ltmsdkobf/dp;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/dt;->jY:Ltmsdkobf/dp$a;

    invoke-virtual {v0, v1}, Ltmsdkobf/dp;->a(Ltmsdkobf/dp$a;)V

    .line 45
    invoke-static {}, Ltmsdkobf/dp;->P()Ltmsdkobf/dp;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/dp;->Q()V

    .line 46
    invoke-direct {p0}, Ltmsdkobf/dt;->W()V

    .line 47
    return-void
.end method

.method public final U()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 53
    invoke-static {}, Ltmsdkobf/dp;->R()I

    move-result v9

    .line 54
    .local v9, operType:I
    if-nez v9, :cond_0

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Ltmsdkobf/dt;->ke:Ltmsdkobf/dr;

    if-nez v0, :cond_1

    .line 58
    .local v8, batch:I
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://sl.map.soso.com/server_list?fv=1&op="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ba="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, url:Ljava/lang/String;
    :try_start_0
    const-string v3, "QQ Map Mobile"

    invoke-static {}, Ltmsdkobf/dw;->S()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ltmsdkobf/dy;

    invoke-direct {v0}, Ltmsdkobf/dy;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0

    .line 57
    .end local v2           #url:Ljava/lang/String;
    .end local v8           #batch:I
    :cond_1
    iget-object v0, p0, Ltmsdkobf/dt;->ke:Ltmsdkobf/dr;

    iget v8, v0, Ltmsdkobf/dr;->jO:I

    goto :goto_1

    .line 60
    .restart local v2       #url:Ljava/lang/String;
    .restart local v8       #batch:I
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    new-instance v0, Ltmsdkobf/dm;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Ltmsdkobf/dm;-><init>(ZLjava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/do;)V

    invoke-virtual {v0}, Ltmsdkobf/dm;->start()V

    new-instance v1, Ltmsdkobf/du;

    invoke-direct {v1, v0}, Ltmsdkobf/du;-><init>(Ltmsdkobf/dm;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Z[BLjava/lang/String;)V
    .locals 3
    .parameter "isResultOK"
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-static {p2, p3}, Ltmsdkobf/dt;->b([BLjava/lang/String;)Ltmsdkobf/dr;

    move-result-object v0

    .line 83
    .local v0, serverList:Ltmsdkobf/dr;
    if-nez v0, :cond_1

    .line 99
    .end local v0           #serverList:Ltmsdkobf/dr;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v0       #serverList:Ltmsdkobf/dr;
    :cond_1
    iget v1, v0, Ltmsdkobf/dr;->kb:I

    invoke-static {}, Ltmsdkobf/dp;->R()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iput-object v0, p0, Ltmsdkobf/dt;->ke:Ltmsdkobf/dr;

    .line 95
    invoke-direct {p0}, Ltmsdkobf/dt;->V()V

    goto :goto_0
.end method

.method public final au(Ljava/lang/String;)Ltmsdkobf/dq;
    .locals 4
    .parameter "host"

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Ltmsdkobf/dt;->ke:Ltmsdkobf/dr;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdkobf/dt;->ke:Ltmsdkobf/dr;

    invoke-static {}, Ltmsdkobf/dp;->R()I

    move-result v2

    iget-object v3, v0, Ltmsdkobf/dr;->ka:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    iget v3, v0, Ltmsdkobf/dr;->kb:I

    if-eq v3, v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Ltmsdkobf/dr;->ka:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/dq;

    iget-object v2, v0, Ltmsdkobf/dq;->jP:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method
