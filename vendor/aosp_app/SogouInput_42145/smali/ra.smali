.class Lra;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;

.field final synthetic a:Lqy;

.field a:Lsg;


# direct methods
.method public constructor <init>(Lqy;Ljava/util/ArrayList;Lsg;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1358
    iput-object p1, p0, Lra;->a:Lqy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1359
    iput-object p2, p0, Lra;->a:Ljava/util/ArrayList;

    .line 1360
    iput-object p3, p0, Lra;->a:Lsg;

    .line 1361
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1365
    iget-object v0, p0, Lra;->a:Lsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lra;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1366
    :cond_1
    iget-object v0, p0, Lra;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1367
    const-string v1, "BaseMutilThread"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1368
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1370
    const/4 v2, 0x0

    .line 1371
    iget-object v3, p0, Lra;->a:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1372
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    iget-object v0, p0, Lra;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 1374
    iget v6, v0, Lsg;->b:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    .line 1376
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1381
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1379
    :cond_3
    :try_start_1
    iget-object v0, p0, Lra;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1380
    iget-object v0, p0, Lra;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1381
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1382
    iget-object v3, p0, Lra;->a:Lsg;

    .line 1383
    iget v0, v3, Lsg;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v3, Lsg;->b:I

    .line 1384
    if-eqz v3, :cond_8

    .line 1385
    iget-object v0, v3, Lsg;->a:Lsl;

    if-eqz v0, :cond_8

    .line 1390
    :try_start_2
    iget-boolean v0, v3, Lsg;->b:Z

    if-ne v0, v7, :cond_4

    iget-boolean v0, v3, Lsg;->c:Z

    if-nez v0, :cond_4

    .line 1394
    :cond_4
    iget v0, v3, Lsg;->a:I

    const/16 v4, 0xe

    if-eq v0, v4, :cond_5

    iget-object v0, v3, Lsg;->a:Lsl;

    invoke-interface {v0, v2, v3}, Lsl;->a(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 1398
    :cond_5
    iget v0, v3, Lsg;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_b

    .line 1399
    iget-object v0, v3, Lsg;->a:Lsl;

    invoke-interface {v0, v2, v3}, Lsl;->b(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 1406
    :goto_2
    iget-object v0, v3, Lsg;->a:Lsl;

    invoke-interface {v0, v2, v3}, Lsl;->c(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 1413
    iget-boolean v0, v3, Lsg;->a:Z

    if-ne v0, v7, :cond_6

    iget-object v0, v3, Lsg;->a:Lsl;

    invoke-interface {v0}, Lsl;->a()Z

    move-result v0

    if-ne v0, v7, :cond_6

    iget-boolean v0, v3, Lsg;->b:Z

    if-ne v0, v7, :cond_6

    .line 1415
    invoke-static {}, Lrf;->a()Lrf;

    move-result-object v0

    invoke-virtual {v0, v3}, Lrf;->a(Lsg;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1423
    :cond_6
    iget-object v2, p0, Lra;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1427
    :try_start_3
    iget v0, v3, Lsg;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 1428
    iget-object v0, p0, Lra;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    :cond_7
    iget v0, v3, Lsg;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v3, Lsg;->b:I

    .line 1431
    iget-object v0, p0, Lra;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1433
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1439
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lsg;->a()Z

    move-result v0

    if-ne v0, v7, :cond_9

    iget-object v0, v3, Lsg;->a:Lsl;

    invoke-interface {v0}, Lsl;->a()Z

    move-result v0

    if-ne v0, v7, :cond_9

    .line 1440
    iget-object v0, v3, Lsg;->a:Lsk;

    if-nez v0, :cond_e

    .line 1449
    :cond_9
    :goto_4
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1455
    iget-object v0, p0, Lra;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Lqz;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1456
    iget-object v0, p0, Lra;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Lqz;

    move-result-object v0

    invoke-interface {v0}, Lqz;->a()V

    .line 1459
    :cond_a
    iget-object v0, p0, Lra;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Lrg;

    move-result-object v0

    iget-boolean v0, v0, Lrg;->a:Z

    if-ne v0, v7, :cond_0

    .line 1461
    iget-object v0, p0, Lra;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lra;->a:Lqy;

    invoke-static {v1}, Lqy;->a(Lqy;)Lrg;

    move-result-object v1

    iget-object v1, v1, Lrg;->a:Ljava/lang/String;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lsc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lra;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Lrg;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lrg;->a:Z

    goto/16 :goto_0

    .line 1401
    :cond_b
    :try_start_4
    iget-object v0, v3, Lsg;->a:Lsl;

    invoke-interface {v0, v2, v3}, Lsl;->d(Lorg/apache/http/client/HttpClient;Lsg;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1418
    :catch_0
    move-exception v0

    .line 1420
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1421
    iget-object v0, v3, Lsg;->a:Lsl;

    invoke-interface {v0, v2, v3}, Lsl;->e(Lorg/apache/http/client/HttpClient;Lsg;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1423
    iget-object v2, p0, Lra;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1427
    :try_start_6
    iget v0, v3, Lsg;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    .line 1428
    iget-object v0, p0, Lra;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    :cond_c
    iget v0, v3, Lsg;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v3, Lsg;->b:I

    .line 1431
    iget-object v0, p0, Lra;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1433
    monitor-exit v2

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 1423
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lra;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1427
    :try_start_7
    iget v2, v3, Lsg;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_d

    .line 1428
    iget-object v2, p0, Lra;->a:Lqy;

    invoke-static {v2}, Lqy;->a(Lqy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    :cond_d
    iget v2, v3, Lsg;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v3, Lsg;->b:I

    .line 1431
    iget-object v2, p0, Lra;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1433
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1423
    throw v0

    .line 1444
    :cond_e
    iget-object v0, v3, Lsg;->a:Lsk;

    invoke-interface {v0, v3}, Lsk;->a(Lsg;)V

    goto/16 :goto_4

    .line 1433
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method
