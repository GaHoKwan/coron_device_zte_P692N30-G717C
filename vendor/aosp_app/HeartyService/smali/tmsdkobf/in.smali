.class public Ltmsdkobf/in;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static rr:Ltmsdkobf/in;

.field private static volatile rs:Z

.field private static volatile rt:Z


# instance fields
.field private rq:Ltmsdkobf/lf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Ltmsdkobf/in;->rs:Z

    .line 54
    sput-boolean v0, Ltmsdkobf/in;->rt:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Ltmsdkobf/lk;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdkobf/lk;

    invoke-virtual {v0}, Ltmsdkobf/lk;->go()Ltmsdkobf/lf;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/in;->rq:Ltmsdkobf/lf;

    .line 44
    return-void
.end method

.method static synthetic a(Ltmsdkobf/in;Ljava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ltmsdkobf/in;->p(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Ltmsdkobf/in;Ljava/util/List;)Ltmsdkobf/b;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ltmsdkobf/in;->g(Ljava/util/List;)Ltmsdkobf/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ltmsdk/common/module/software/AppEntity;)Ltmsdkobf/bt;
    .locals 3
    .parameter "app"

    .prologue
    .line 262
    if-nez p0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    .line 265
    :cond_0
    new-instance v0, Ltmsdkobf/bt;

    invoke-direct {v0}, Ltmsdkobf/bt;-><init>()V

    .line 266
    .local v0, softKey:Ltmsdkobf/bt;
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, v0, Ltmsdkobf/bt;->gX:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_2
    iput-object v1, v0, Ltmsdkobf/bt;->name:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_3
    iput-object v1, v0, Ltmsdkobf/bt;->version:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getVersionCode()I

    move-result v1

    iput v1, v0, Ltmsdkobf/bt;->gZ:I

    .line 270
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_4
    iput-object v1, v0, Ltmsdkobf/bt;->ec:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_5
    iput-object v1, v0, Ltmsdkobf/bt;->dF:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_6
    iput v1, v0, Ltmsdkobf/bt;->ab:I

    .line 273
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Ltmsdkobf/bt;->gm:I

    .line 274
    const-string v1, ""

    iput-object v1, v0, Ltmsdkobf/bt;->gP:Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 268
    :cond_3
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 270
    :cond_4
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 271
    :cond_5
    invoke-virtual {p0}, Ltmsdk/common/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 272
    :cond_6
    const/4 v1, 0x0

    goto :goto_6
.end method

.method static synthetic a(Ltmsdkobf/in;)Ltmsdkobf/lf;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Ltmsdkobf/in;->rq:Ltmsdkobf/lf;

    return-object v0
.end method

.method static synthetic b(Ltmsdkobf/in;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Ltmsdkobf/in;->dm()V

    return-void
.end method

.method public static declared-synchronized dk()Ltmsdkobf/in;
    .locals 2

    .prologue
    .line 47
    const-class v1, Ltmsdkobf/in;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/in;->rr:Ltmsdkobf/in;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ltmsdkobf/in;

    invoke-direct {v0}, Ltmsdkobf/in;-><init>()V

    sput-object v0, Ltmsdkobf/in;->rr:Ltmsdkobf/in;

    .line 50
    :cond_0
    sget-object v0, Ltmsdkobf/in;->rr:Ltmsdkobf/in;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dm()V
    .locals 6

    .prologue
    const v5, 0x1d4e0

    const v4, 0x1d4df

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 160
    invoke-static {}, Ltmsdk/common/utils/EnvUtil;->getRootStatus()I

    move-result v2

    .line 161
    .local v2, status:I
    if-eqz v2, :cond_0

    move v0, v1

    .line 162
    .local v0, isPhoneRoot:Z
    :goto_0
    if-ne v2, v1, :cond_1

    .line 164
    .local v1, isSdkRoot:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 165
    invoke-static {v4}, Ltmsdkobf/im;->aU(I)V

    .line 170
    :goto_2
    if-eqz v1, :cond_3

    .line 171
    invoke-static {v5}, Ltmsdkobf/im;->aU(I)V

    .line 176
    :goto_3
    const v3, 0x1d4e1

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ltmsdkobf/im;->a(II)V

    .line 177
    return-void

    .end local v0           #isPhoneRoot:Z
    .end local v1           #isSdkRoot:Z
    :cond_0
    move v0, v3

    .line 161
    goto :goto_0

    .restart local v0       #isPhoneRoot:Z
    :cond_1
    move v1, v3

    .line 162
    goto :goto_1

    .line 167
    .restart local v1       #isSdkRoot:Z
    :cond_2
    invoke-static {v4}, Ltmsdkobf/im;->aV(I)V

    goto :goto_2

    .line 173
    :cond_3
    invoke-static {v5}, Ltmsdkobf/im;->aV(I)V

    goto :goto_3
.end method

.method private g(Ljava/util/List;)Ltmsdkobf/b;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/io;",
            ">;)",
            "Ltmsdkobf/b;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, updateConfigEntityList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/io;>;"
    new-instance v1, Ltmsdkobf/b;

    invoke-direct {v1}, Ltmsdkobf/b;-><init>()V

    .line 124
    .local v1, report:Ltmsdkobf/b;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ltmsdkobf/b;->v:Ljava/util/ArrayList;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdkobf/io;

    .line 126
    .local v3, updateConfigEntity:Ltmsdkobf/io;
    new-instance v2, Ltmsdkobf/a;

    invoke-direct {v2}, Ltmsdkobf/a;-><init>()V

    .line 127
    .local v2, reportItem:Ltmsdkobf/a;
    iget-object v4, v3, Ltmsdkobf/io;->c:Ljava/lang/String;

    invoke-static {v4}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ltmsdkobf/a;->c:Ljava/lang/String;

    .line 128
    iget-object v4, v3, Ltmsdkobf/io;->l:Ljava/lang/String;

    invoke-static {v4}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ltmsdkobf/a;->l:Ljava/lang/String;

    .line 129
    iget v4, v3, Ltmsdkobf/io;->k:I

    iput v4, v2, Ltmsdkobf/a;->k:I

    .line 130
    iget v4, v3, Ltmsdkobf/io;->f:I

    iput v4, v2, Ltmsdkobf/a;->f:I

    .line 131
    iget-byte v4, v3, Ltmsdkobf/io;->j:B

    iput-byte v4, v2, Ltmsdkobf/a;->j:B

    .line 132
    iget v4, v3, Ltmsdkobf/io;->errorCode:I

    iput v4, v2, Ltmsdkobf/a;->errorCode:I

    .line 133
    iget-object v4, v3, Ltmsdkobf/io;->o:Ljava/lang/String;

    invoke-static {v4}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ltmsdkobf/a;->o:Ljava/lang/String;

    .line 134
    iget-object v4, v3, Ltmsdkobf/io;->fileName:Ljava/lang/String;

    invoke-static {v4}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ltmsdkobf/a;->fileName:Ljava/lang/String;

    .line 135
    iget v4, v3, Ltmsdkobf/io;->r:I

    iput v4, v2, Ltmsdkobf/a;->r:I

    .line 136
    iget-object v4, v3, Ltmsdkobf/io;->s:Ljava/lang/String;

    invoke-static {v4}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ltmsdkobf/a;->s:Ljava/lang/String;

    .line 137
    iget v4, v3, Ltmsdkobf/io;->t:I

    iput v4, v2, Ltmsdkobf/a;->t:I

    .line 138
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ltmsdkobf/a;->n:Ljava/lang/String;

    .line 139
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v4

    invoke-virtual {v4}, Ltmsdkobf/t;->value()I

    move-result v4

    iput v4, v2, Ltmsdkobf/a;->m:I

    .line 140
    iget v4, v3, Ltmsdkobf/io;->h:I

    iput v4, v2, Ltmsdkobf/a;->h:I

    .line 141
    iget v4, v3, Ltmsdkobf/io;->u:I

    iput v4, v2, Ltmsdkobf/a;->u:I

    .line 142
    iget v4, v3, Ltmsdkobf/io;->p:I

    iput v4, v2, Ltmsdkobf/a;->p:I

    .line 143
    iget v4, v3, Ltmsdkobf/io;->q:I

    iput v4, v2, Ltmsdkobf/a;->q:I

    .line 144
    iget-byte v4, v3, Ltmsdkobf/io;->e:B

    iput-byte v4, v2, Ltmsdkobf/a;->e:B

    .line 145
    iget v4, v3, Ltmsdkobf/io;->d:I

    iput v4, v2, Ltmsdkobf/a;->d:I

    .line 146
    iget-object v4, v3, Ltmsdkobf/io;->url:Ljava/lang/String;

    invoke-static {v4}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ltmsdkobf/a;->url:Ljava/lang/String;

    .line 147
    iget v4, v3, Ltmsdkobf/io;->g:I

    iput v4, v2, Ltmsdkobf/a;->g:I

    .line 150
    iget-object v4, v1, Ltmsdkobf/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 153
    .end local v2           #reportItem:Ltmsdkobf/a;
    .end local v3           #updateConfigEntity:Ltmsdkobf/io;
    :cond_0
    return-object v1
.end method

.method public static h(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, mDataList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/software/AppEntity;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v3, softKeyList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bt;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/software/AppEntity;

    .line 249
    .local v0, app:Ltmsdk/common/module/software/AppEntity;
    invoke-static {v0}, Ltmsdkobf/in;->a(Ltmsdk/common/module/software/AppEntity;)Ltmsdkobf/bt;

    move-result-object v2

    .line 250
    .local v2, softKey:Ltmsdkobf/bt;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    .end local v0           #app:Ltmsdk/common/module/software/AppEntity;
    .end local v2           #softKey:Ltmsdkobf/bt;
    :cond_0
    return-object v3
.end method

.method private o(Z)V
    .locals 12
    .parameter "isDebug"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 184
    sget-boolean v8, Ltmsdkobf/in;->rt:Z

    if-eqz v8, :cond_0

    .line 185
    const-string v6, "checkReportApplist"

    const-string v7, "XX try to report Applist: is busy"

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 188
    :cond_0
    sput-boolean v6, Ltmsdkobf/in;->rt:Z

    .line 190
    invoke-static {}, Ltmsdkobf/im;->cU()Ltmsdkobf/im;

    move-result-object v0

    .line 191
    .local v0, actionStatsManager:Ltmsdkobf/im;
    invoke-virtual {v0}, Ltmsdkobf/im;->dj()J

    move-result-wide v3

    .line 192
    .local v3, lastTime:J
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v8

    sget-object v9, Ltmsdkobf/t;->ba:Ltmsdkobf/t;

    if-ne v8, v9, :cond_3

    move v2, v6

    .line 195
    .local v2, isWifi:Z
    :goto_1
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8, v9}, Ltmsdkobf/js;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    const-wide/32 v10, 0x240c8400

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    if-eqz p1, :cond_4

    :cond_2
    move v1, v6

    .line 198
    .local v1, isNeedReportApplist:Z
    :goto_2
    const-string v6, "Chord"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkReportApplist() isNeedReportApplist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    if-eqz v1, :cond_5

    .line 200
    const-class v6, Ltmsdkobf/kw;

    invoke-static {v6}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v5

    check-cast v5, Ltmsdkobf/kw;

    .line 202
    .local v5, threadPool:Ltmsdkobf/kw;
    new-instance v6, Ltmsdkobf/in$2;

    invoke-direct {v6, p0, v1, v0}, Ltmsdkobf/in$2;-><init>(Ltmsdkobf/in;ZLtmsdkobf/im;)V

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Ltmsdkobf/kw;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    goto :goto_0

    .end local v1           #isNeedReportApplist:Z
    .end local v2           #isWifi:Z
    .end local v5           #threadPool:Ltmsdkobf/kw;
    :cond_3
    move v2, v7

    .line 192
    goto :goto_1

    .restart local v2       #isWifi:Z
    :cond_4
    move v1, v7

    .line 195
    goto :goto_2

    .line 236
    .restart local v1       #isNeedReportApplist:Z
    :cond_5
    sput-boolean v7, Ltmsdkobf/in;->rt:Z

    goto :goto_0
.end method

.method private p(Ljava/util/ArrayList;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bh;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, suis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 370
    :cond_0
    const/4 v0, -0x6

    .line 384
    :cond_1
    :goto_0
    return v0

    .line 373
    :cond_2
    const v3, 0x10000002

    invoke-static {v3}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v2

    .line 374
    .local v2, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 375
    .local v1, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "suikey"

    iget-object v4, p0, Ltmsdkobf/in;->rq:Ltmsdkobf/lf;

    invoke-interface {v4}, Ltmsdkobf/lf;->gd()Ltmsdkobf/bi;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v3, "vecsui"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iput-object v1, v2, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 379
    const/16 v0, -0x1770

    .line 380
    .local v0, err:I
    iget-object v3, p0, Ltmsdkobf/in;->rq:Ltmsdkobf/lf;

    invoke-interface {v3, v2}, Ltmsdkobf/lf;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-nez v0, :cond_1

    .line 384
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p(Z)Z
    .locals 9
    .parameter "isDebug"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 283
    sget-boolean v6, Ltmsdkobf/in;->rs:Z

    if-eqz v6, :cond_0

    .line 284
    const-string v6, "checkReportInfo"

    const-string v7, "XX try to report ActionInfo: is busy"

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    :goto_0
    return v5

    .line 287
    :cond_0
    sput-boolean v1, Ltmsdkobf/in;->rs:Z

    .line 289
    invoke-static {}, Ltmsdkobf/im;->cU()Ltmsdkobf/im;

    move-result-object v0

    .line 290
    .local v0, actionStatsManager:Ltmsdkobf/im;
    invoke-virtual {v0}, Ltmsdkobf/im;->di()J

    move-result-wide v2

    .line 291
    .local v2, lastTime:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6, v7}, Ltmsdkobf/js;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_2

    .line 293
    .local v1, isNeedReportSoftUsageInfo:Z
    :cond_1
    :goto_1
    const-string v6, "Chord"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkReportInfo() isNeedReportSoftUsageInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    if-eqz v1, :cond_3

    .line 295
    const-class v5, Ltmsdkobf/kw;

    invoke-static {v5}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdkobf/kw;

    .line 297
    .local v4, threadPool:Ltmsdkobf/kw;
    new-instance v5, Ltmsdkobf/in$3;

    invoke-direct {v5, p0, v1}, Ltmsdkobf/in$3;-><init>(Ltmsdkobf/in;Z)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ltmsdkobf/kw;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .end local v4           #threadPool:Ltmsdkobf/kw;
    :goto_2
    move v5, v1

    .line 358
    goto :goto_0

    .end local v1           #isNeedReportSoftUsageInfo:Z
    :cond_2
    move v1, v5

    .line 291
    goto :goto_1

    .line 355
    .restart local v1       #isNeedReportSoftUsageInfo:Z
    :cond_3
    sput-boolean v5, Ltmsdkobf/in;->rs:Z

    goto :goto_2
.end method

.method static synthetic q(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-boolean p0, Ltmsdkobf/in;->rt:Z

    return p0
.end method

.method static synthetic r(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-boolean p0, Ltmsdkobf/in;->rs:Z

    return p0
.end method


# virtual methods
.method public dl()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltmsdkobf/in;->n(Z)V

    .line 66
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/io;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, updateConfigEntityList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/io;>;"
    const-class v1, Ltmsdkobf/kw;

    invoke-static {v1}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdkobf/kw;

    .line 87
    .local v0, threadPool:Ltmsdkobf/kw;
    new-instance v1, Ltmsdkobf/in$1;

    invoke-direct {v1, p0, p1}, Ltmsdkobf/in$1;-><init>(Ltmsdkobf/in;Ljava/util/List;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ltmsdkobf/kw;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 120
    return-void
.end method

.method public n(Z)V
    .locals 0
    .parameter "isDebug"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ltmsdkobf/in;->o(Z)V

    .line 74
    invoke-direct {p0, p1}, Ltmsdkobf/in;->p(Z)Z

    .line 75
    return-void
.end method
