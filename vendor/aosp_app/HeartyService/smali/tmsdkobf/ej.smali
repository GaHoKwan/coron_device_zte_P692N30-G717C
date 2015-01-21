.class public final Ltmsdkobf/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static kn:J


# instance fields
.field private kQ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Ltmsdkobf/ej;->kn:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private U()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-static {}, Ltmsdkobf/ei;->ar()Ltmsdkobf/fn;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 136
    :goto_0
    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 140
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    invoke-static {}, Ltmsdkobf/ei;->ar()Ltmsdkobf/fn;

    move-result-object v2

    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 144
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 150
    :cond_0
    if-eqz v2, :cond_1

    .line 152
    new-instance v0, Ltmsdkobf/fk;

    iget-object v1, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    const/16 v3, 0x457

    const/16 v4, 0xc8

    invoke-direct {v0, v1, v3, v4}, Ltmsdkobf/fk;-><init>(Landroid/content/Context;II)V

    .line 153
    invoke-interface {v2, v0}, Ltmsdkobf/fn;->a(Ltmsdkobf/fj;)V

    .line 156
    new-instance v0, Ltmsdkobf/fl;

    iget-object v1, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltmsdkobf/fl;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-interface {v2, v0}, Ltmsdkobf/fn;->a(Ltmsdkobf/fj;)V

    .line 164
    :goto_2
    return-void

    .line 161
    :cond_1
    const-string v0, "rqdp{  no uphandler ,no upload!}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static declared-synchronized X()J
    .locals 3

    .prologue
    .line 36
    const-class v0, Ltmsdkobf/ej;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Ltmsdkobf/ej;->kn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 198
    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ltmsdkobf/fh;->b(Landroid/content/Context;I)Ltmsdkobf/em;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltmsdkobf/em;->Y()I

    move-result v1

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ltmsdkobf/em;->aG()[B

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v1}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdkobf/ei;->au()Ltmsdkobf/fm;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x12c

    invoke-virtual {v0}, Ltmsdkobf/em;->aG()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Ltmsdkobf/fm;->a(I[BZ)V

    const-string v0, "rqdp{  common strategy setted by history}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v6

    .line 203
    invoke-virtual {v6}, Ltmsdkobf/ei;->ax()I

    move-result v0

    if-nez v0, :cond_8

    .line 205
    const-string v0, "rqdp{  stepCheckApp}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ltmsdkobf/ei;->av(I)V

    .line 208
    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    iget-object v1, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdkobf/en;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/en;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    const/4 v1, 0x0

    const/16 v9, 0xa

    invoke-static {v0, v2, v1, v9}, Ltmsdkobf/ef;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v9

    const/4 v0, 0x0

    if-eqz v9, :cond_d

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ee;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ltmsdkobf/ee;->ac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ltmsdkobf/ee;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ltmsdkobf/ee;->an()J

    move-result-wide v10

    cmp-long v0, v3, v10

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ltmsdkobf/ee;->ao()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-nez v0, :cond_2

    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/ei;->as()Ltmsdkobf/ek;

    move-result-object v0

    invoke-virtual {v1}, Ltmsdkobf/ee;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/ek;->az(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 210
    :goto_2
    const-string v1, "rqdp{  isAppFirstRun } %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-static {}, Ltmsdkobf/ep;->aK()Ltmsdkobf/ep;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ltmsdkobf/ep;->aJ()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ltmsdkobf/ep;->aJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 214
    :cond_1
    invoke-virtual {v6}, Ltmsdkobf/ei;->as()Ltmsdkobf/ek;

    move-result-object v2

    invoke-virtual {v2}, Ltmsdkobf/ek;->aA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltmsdkobf/ep;->ay(Ljava/lang/String;)V

    .line 215
    const-string v2, "rqdp{  uuid } %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ltmsdkobf/ep;->aJ()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :goto_3
    if-eqz v0, :cond_7

    .line 225
    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v5}, Ltmsdkobf/eb;->a(Landroid/content/Context;[IJJ)I

    move-result v0

    .line 226
    const-string v1, "rqdp{  clear all ao} %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    monitor-enter v6

    .line 233
    :try_start_1
    const-string v0, "rqdp{  appfirstRun}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v6}, Ltmsdkobf/ei;->av()[Ltmsdkobf/eh;

    move-result-object v1

    .line 236
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ltmsdkobf/ei;->c(Z)V

    .line 237
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    if-eqz v1, :cond_8

    .line 241
    const-string v0, "rqdp{  notify listener first run}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    .line 244
    invoke-interface {v3}, Ltmsdkobf/eh;->aq()V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 198
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/en;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    const-string v0, "rqdp{  apkid get error!return false}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_3
    const-string v11, "rqdp{  local apk record is outday,should remove} %s"

    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/Object;

    const/4 v13, 0x0

    if-nez v1, :cond_5

    const-string v0, "null"

    :goto_5
    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ltmsdkobf/eq;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v0, v9}, Ltmsdkobf/ef;->d(Landroid/content/Context;Ljava/util/List;)I

    move-result v0

    const-string v1, "rqdp{  deleted old apkids} %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v11

    invoke-static {v1, v9}, Ltmsdkobf/eq;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ltmsdkobf/ee;

    invoke-direct {v1}, Ltmsdkobf/ee;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ltmsdkobf/ee;->av(I)V

    invoke-virtual {v1, v2}, Ltmsdkobf/ee;->aw(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ltmsdkobf/ee;->ax(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ltmsdkobf/ee;->ay(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ltmsdkobf/ee;->i(J)V

    invoke-virtual {v1, v7, v8}, Ltmsdkobf/ee;->j(J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v2, v0}, Ltmsdkobf/ef;->c(Landroid/content/Context;Ljava/util/List;)I

    const-string v0, "rqdp{  insert new app record:} %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ltmsdkobf/ee;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ltmsdkobf/eq;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/ei;->as()Ltmsdkobf/ek;

    move-result-object v0

    invoke-virtual {v0, v10}, Ltmsdkobf/ek;->az(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v1}, Ltmsdkobf/ee;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 219
    :cond_6
    const-string v1, "rqdp{ com info not ready?}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 251
    :cond_7
    invoke-static {}, Ltmsdkobf/ej;->X()J

    move-result-wide v0

    .line 252
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_8

    .line 254
    const-string v2, "rqdp{  sleep %d}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    :cond_8
    :goto_6
    monitor-enter v6

    .line 264
    :try_start_3
    const-string v0, "rqdp{  stepStartQuery}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v6}, Ltmsdkobf/ei;->av()[Ltmsdkobf/eh;

    move-result-object v1

    .line 267
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ltmsdkobf/ei;->av(I)V

    .line 268
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    if-eqz v1, :cond_9

    .line 272
    const-string v0, "rqdp{  notify listener query start}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    array-length v2, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_9

    aget-object v3, v1, v0

    .line 275
    invoke-interface {v3}, Ltmsdkobf/eh;->W()V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 255
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 268
    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    .line 279
    :cond_9
    invoke-direct {p0}, Ltmsdkobf/ej;->U()V

    .line 281
    const-string v0, "rqdp{  common query end!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    monitor-enter v6

    .line 285
    :try_start_4
    invoke-virtual {v6}, Ltmsdkobf/ei;->av()[Ltmsdkobf/eh;

    move-result-object v1

    .line 286
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Ltmsdkobf/ei;->av(I)V

    .line 287
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 289
    if-eqz v1, :cond_a

    .line 291
    const-string v0, "rqdp{  notify listener query end}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_a

    aget-object v3, v1, v0

    .line 294
    invoke-interface {v3}, Ltmsdkobf/eh;->ap()V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 287
    :catchall_2
    move-exception v0

    monitor-exit v6

    throw v0

    .line 298
    :cond_a
    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/ei;->as()Ltmsdkobf/ek;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "rqdp{  magic should never null ? comStrategy}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :goto_9
    return-void

    .line 298
    :cond_b
    invoke-virtual {v0}, Ltmsdkobf/ek;->Z()I

    move-result v0

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    invoke-static {}, Ltmsdkobf/eo;->aH()Ltmsdkobf/eo;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;J)V

    const-string v2, "rqdp{  next time} %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltmsdkobf/eq;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ltmsdkobf/ej;->kQ:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ltmsdkobf/ei;->av(I)V

    goto :goto_9

    :cond_c
    const-string v0, "rqdp{  stop loop query}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    move-object v1, v0

    goto/16 :goto_1
.end method
