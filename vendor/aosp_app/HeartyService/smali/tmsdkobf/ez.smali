.class public final Ltmsdkobf/ez;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;[Ltmsdkobf/ey;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 36
    const-class v8, Ltmsdkobf/ez;

    monitor-enter v8

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_1

    .line 38
    :cond_0
    const-string v0, "rqdp{  args error}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    .line 59
    :goto_0
    monitor-exit v8

    return v0

    .line 41
    :cond_1
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    array-length v10, p1

    move v7, v6

    :goto_1
    if-ge v7, v10, :cond_3

    aget-object v11, p1, v7

    .line 44
    invoke-static {v11}, Ltmsdkobf/er;->a(Ljava/lang/Object;)[B

    move-result-object v5

    .line 45
    if-nez v5, :cond_2

    .line 47
    const-string v0, "rqdp{ getSerData error }"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 50
    :cond_2
    new-instance v0, Ltmsdkobf/ea;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v11}, Ltmsdkobf/ey;->X()J

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Ltmsdkobf/ea;-><init>(IIJ[B)V

    .line 51
    invoke-virtual {v11}, Ltmsdkobf/ey;->bf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/ea;->av(Ljava/lang/String;)Ltmsdkobf/ea;

    .line 52
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 54
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 56
    invoke-static {p0, v9}, Ltmsdkobf/eb;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v6

    .line 59
    goto :goto_0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 139
    const-class v7, Ltmsdkobf/ez;

    monitor-enter v7

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 141
    :cond_0
    :try_start_0
    const-string v1, "rqdp{  args error}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    monitor-exit v7

    return v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x9

    aput v2, v1, v0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Ltmsdkobf/eb;->a(Landroid/content/Context;[IJJLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized j(Landroid/content/Context;)I
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 156
    const-class v6, Ltmsdkobf/ez;

    monitor-enter v6

    if-nez p0, :cond_0

    .line 158
    :try_start_0
    const-string v1, "rqdp{  args error}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit v6

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x9

    aput v2, v1, v0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ltmsdkobf/eb;->a(Landroid/content/Context;[IJJ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
