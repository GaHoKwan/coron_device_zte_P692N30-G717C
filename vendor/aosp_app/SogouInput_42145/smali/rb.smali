.class Lrb;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:I

.field a:Ljava/util/ArrayList;

.field final synthetic a:Lqy;


# direct methods
.method public constructor <init>(Lqy;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1213
    iput-object p1, p0, Lrb;->a:Lqy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1214
    iput-object p2, p0, Lrb;->a:Ljava/util/ArrayList;

    .line 1215
    iput p3, p0, Lrb;->a:I

    .line 1216
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1220
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lrb;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lrb;->a:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1222
    const-string v2, "BaseThread"

    invoke-virtual {v0, v8, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 1223
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1224
    :cond_2
    :goto_1
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1230
    const/4 v4, 0x0

    .line 1231
    iget-object v5, p0, Lrb;->a:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1232
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 1234
    iget v7, v0, Lsg;->b:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_3

    .line 1236
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1247
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1239
    :cond_4
    :try_start_1
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1240
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1242
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1243
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 1244
    iget v2, v0, Lsg;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lsg;->b:I

    move-object v2, v0

    .line 1247
    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1248
    if-eqz v2, :cond_a

    .line 1249
    iget-object v0, v2, Lsg;->a:Lsl;

    if-eqz v0, :cond_a

    .line 1254
    :try_start_2
    iget-boolean v0, v2, Lsg;->b:Z

    if-ne v0, v8, :cond_5

    iget-boolean v0, v2, Lsg;->c:Z

    if-nez v0, :cond_5

    .line 1258
    :cond_5
    iget v0, v2, Lsg;->a:I

    if-eq v0, v9, :cond_6

    iget-object v0, v2, Lsg;->a:Lsl;

    invoke-interface {v0, v4, v2}, Lsl;->a(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 1274
    :cond_6
    iget v0, v2, Lsg;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_b

    .line 1275
    iget-object v0, v2, Lsg;->a:Lsl;

    invoke-interface {v0, v4, v2}, Lsl;->b(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 1283
    iget-object v0, v2, Lsg;->a:Lsl;

    invoke-interface {v0, v4, v2}, Lsl;->c(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 1290
    iget-boolean v0, v2, Lsg;->a:Z

    if-ne v0, v8, :cond_7

    iget-object v0, v2, Lsg;->a:Lsl;

    invoke-interface {v0}, Lsl;->a()Z

    move-result v0

    if-ne v0, v8, :cond_7

    iget-boolean v0, v2, Lsg;->b:Z

    if-ne v0, v8, :cond_7

    .line 1292
    invoke-static {}, Lrf;->a()Lrf;

    move-result-object v0

    invoke-virtual {v0, v2}, Lrf;->a(Lsg;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1300
    :cond_7
    iget-object v4, p0, Lrb;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1304
    :try_start_3
    iget v0, v2, Lsg;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 1305
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    :cond_8
    iget v0, v2, Lsg;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v2, Lsg;->b:I

    .line 1308
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 1310
    iget-object v0, v2, Lsg;->a:Lsl;

    check-cast v0, Lamr;

    .line 1311
    iget-object v5, p0, Lrb;->a:Lqy;

    invoke-static {v5}, Lqy;->b(Lqy;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1312
    iget-object v5, p0, Lrb;->a:Lqy;

    invoke-static {v5}, Lqy;->b(Lqy;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, v0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1315
    :cond_9
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 1321
    :cond_a
    :goto_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lsg;->a()Z

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, v2, Lsg;->a:Lsl;

    invoke-interface {v0}, Lsl;->a()Z

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1322
    iget-object v0, v2, Lsg;->a:Lsk;

    if-eqz v0, :cond_2

    .line 1326
    iget-object v0, v2, Lsg;->a:Lsk;

    invoke-interface {v0, v2}, Lsk;->a(Lsg;)V

    goto/16 :goto_1

    .line 1277
    :cond_b
    :try_start_4
    iget-object v0, v2, Lsg;->a:Lsl;

    invoke-interface {v0, v4, v2}, Lsl;->d(Lorg/apache/http/client/HttpClient;Lsg;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1300
    iget-object v4, p0, Lrb;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1304
    :try_start_5
    iget v0, v2, Lsg;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    .line 1305
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    :cond_c
    iget v0, v2, Lsg;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v2, Lsg;->b:I

    .line 1308
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    if-ne v0, v9, :cond_d

    .line 1310
    iget-object v0, v2, Lsg;->a:Lsl;

    check-cast v0, Lamr;

    .line 1311
    iget-object v2, p0, Lrb;->a:Lqy;

    invoke-static {v2}, Lqy;->b(Lqy;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, v0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1312
    iget-object v2, p0, Lrb;->a:Lqy;

    invoke-static {v2}, Lqy;->b(Lqy;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, v0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1315
    :cond_d
    monitor-exit v4

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1295
    :catch_0
    move-exception v0

    .line 1297
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1298
    iget-object v0, v2, Lsg;->a:Lsl;

    invoke-interface {v0, v4, v2}, Lsl;->e(Lorg/apache/http/client/HttpClient;Lsg;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1300
    iget-object v4, p0, Lrb;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1304
    :try_start_7
    iget v0, v2, Lsg;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_e

    .line 1305
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    :cond_e
    iget v0, v2, Lsg;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v2, Lsg;->b:I

    .line 1308
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    if-ne v0, v9, :cond_f

    .line 1310
    iget-object v0, v2, Lsg;->a:Lsl;

    check-cast v0, Lamr;

    .line 1311
    iget-object v5, p0, Lrb;->a:Lqy;

    invoke-static {v5}, Lqy;->b(Lqy;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1312
    iget-object v5, p0, Lrb;->a:Lqy;

    invoke-static {v5}, Lqy;->b(Lqy;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, v0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1315
    :cond_f
    monitor-exit v4

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 1300
    :catchall_3
    move-exception v0

    move-object v1, v0

    iget-object v3, p0, Lrb;->a:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1304
    :try_start_8
    iget v0, v2, Lsg;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_10

    .line 1305
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    :cond_10
    iget v0, v2, Lsg;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v2, Lsg;->b:I

    .line 1308
    iget-object v0, p0, Lrb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    if-ne v0, v9, :cond_11

    .line 1310
    iget-object v0, v2, Lsg;->a:Lsl;

    check-cast v0, Lamr;

    .line 1311
    iget-object v2, p0, Lrb;->a:Lqy;

    invoke-static {v2}, Lqy;->b(Lqy;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, v0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1312
    iget-object v2, p0, Lrb;->a:Lqy;

    invoke-static {v2}, Lqy;->b(Lqy;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, v0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1315
    :cond_11
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1300
    throw v1

    .line 1331
    :cond_12
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)[Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1

    .line 1334
    :try_start_9
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)[Ljava/lang/Thread;

    move-result-object v0

    iget v2, p0, Lrb;->a:I

    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 1335
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1337
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1343
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Lqz;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1344
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Lqz;

    move-result-object v0

    invoke-interface {v0}, Lqz;->a()V

    .line 1347
    :cond_13
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Lrg;

    move-result-object v0

    iget-boolean v0, v0, Lrg;->a:Z

    if-ne v0, v8, :cond_0

    .line 1349
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lrb;->a:Lqy;

    invoke-static {v1}, Lqy;->a(Lqy;)Lrg;

    move-result-object v1

    iget-object v1, v1, Lrg;->a:Ljava/lang/String;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lsc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lrb;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Lrg;

    move-result-object v0

    iput-boolean v10, v0, Lrg;->a:Z

    goto/16 :goto_0

    .line 1335
    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 1315
    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    :cond_14
    move-object v2, v1

    goto/16 :goto_3
.end method
