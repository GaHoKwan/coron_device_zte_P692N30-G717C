.class Lcom/zte/heartyservice/main/staService$3;
.super Ljava/lang/Object;
.source "staService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/staService;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/staService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 241
    invoke-static {}, Lcom/zte/heartyservice/main/staService;->access$200()Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 245
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$400(Lcom/zte/heartyservice/main/staService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v13

    .line 247
    .local v13, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v15, 0x0

    .line 248
    .local v15, pkgName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 249
    .local v9, context:Landroid/content/Context;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 250
    .local v12, info:Landroid/content/pm/PackageInfo;
    iget-object v15, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 252
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$500(Lcom/zte/heartyservice/main/staService;)Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v15, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 257
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->i(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v4, v9, v15, v12}, Lcom/zte/heartyservice/main/staService;->access$600(Lcom/zte/heartyservice/main/staService;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-ne v2, v4, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$100(Lcom/zte/heartyservice/main/staService;)Lcom/zte/heartyservice/main/staAdapter;

    move-result-object v2

    iget v4, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v15, v4}, Lcom/zte/heartyservice/main/staAdapter;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 262
    :catch_0
    move-exception v10

    .line 263
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 268
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #info:Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$100(Lcom/zte/heartyservice/main/staService;)Lcom/zte/heartyservice/main/staAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/staAdapter;->e()V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$500(Lcom/zte/heartyservice/main/staService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 272
    .local v8, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    .line 274
    .local v14, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/staService;->s()J

    move-result-wide v18

    .line 277
    .local v18, time:J
    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-lez v2, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$100(Lcom/zte/heartyservice/main/staService;)Lcom/zte/heartyservice/main/staAdapter;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/zte/heartyservice/main/staAdapter;->i(J)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->p()V
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$700(Lcom/zte/heartyservice/main/staService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/main/staService;->staThread:Ljava/lang/Thread;
    invoke-static {v2, v4}, Lcom/zte/heartyservice/main/staService;->access$902(Lcom/zte/heartyservice/main/staService;Ljava/lang/Thread;)Ljava/lang/Thread;

    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v9           #context:Landroid/content/Context;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #networkInfo:Landroid/net/NetworkInfo;
    .end local v15           #pkgName:Ljava/lang/String;
    .end local v18           #time:J
    :goto_1
    return-void

    .line 284
    .restart local v8       #connManager:Landroid/net/ConnectivityManager;
    .restart local v9       #context:Landroid/content/Context;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v15       #pkgName:Ljava/lang/String;
    .restart local v18       #time:J
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$100(Lcom/zte/heartyservice/main/staService;)Lcom/zte/heartyservice/main/staAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/staAdapter;->c()Ljava/util/List;

    move-result-object v17

    .line 285
    .local v17, staPkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 286
    .local v3, staPkgName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 288
    .local v16, ret:Z
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$500(Lcom/zte/heartyservice/main/staService;)Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->r(Landroid/content/Context;)Z
    invoke-static {v2, v9}, Lcom/zte/heartyservice/main/staService;->access$800(Lcom/zte/heartyservice/main/staService;Landroid/content/Context;)Z

    move-result v16

    .line 294
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/main/staService;->access$100(Lcom/zte/heartyservice/main/staService;)Lcom/zte/heartyservice/main/staAdapter;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Lcom/zte/heartyservice/main/staService;->e(Landroid/content/Context;Z)J

    move-result-wide v21

    add-long v6, v6, v21

    invoke-virtual/range {v2 .. v7}, Lcom/zte/heartyservice/main/staAdapter;->f(Ljava/lang/String;JJ)V

    .line 302
    :cond_3
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 303
    :catch_1
    move-exception v10

    .line 305
    .local v10, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 310
    .end local v3           #staPkgName:Ljava/lang/String;
    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v9           #context:Landroid/content/Context;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #networkInfo:Landroid/net/NetworkInfo;
    .end local v15           #pkgName:Ljava/lang/String;
    .end local v16           #ret:Z
    .end local v17           #staPkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v18           #time:J
    :catch_2
    move-exception v10

    .line 311
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 313
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/main/staService;->staThread:Ljava/lang/Thread;
    invoke-static {v2, v4}, Lcom/zte/heartyservice/main/staService;->access$902(Lcom/zte/heartyservice/main/staService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 315
    .end local v10           #e:Ljava/lang/Exception;
    :goto_3
    monitor-exit v20

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 313
    .restart local v8       #connManager:Landroid/net/ConnectivityManager;
    .restart local v9       #context:Landroid/content/Context;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v15       #pkgName:Ljava/lang/String;
    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/main/staService;->staThread:Ljava/lang/Thread;
    invoke-static {v2, v4}, Lcom/zte/heartyservice/main/staService;->access$902(Lcom/zte/heartyservice/main/staService;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_3

    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v9           #context:Landroid/content/Context;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #networkInfo:Landroid/net/NetworkInfo;
    .end local v15           #pkgName:Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartyservice/main/staService$3;->this$0:Lcom/zte/heartyservice/main/staService;

    const/4 v5, 0x0

    #setter for: Lcom/zte/heartyservice/main/staService;->staThread:Ljava/lang/Thread;
    invoke-static {v4, v5}, Lcom/zte/heartyservice/main/staService;->access$902(Lcom/zte/heartyservice/main/staService;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method
