.class Lcom/zte/heartyservice/floater/DetailNetMonitor$4;
.super Ljava/lang/Object;
.source "DetailNetMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/DetailNetMonitor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$4;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor$4;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    move-object/from16 v16, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    #setter for: Lcom/zte/heartyservice/floater/DetailNetMonitor;->oldtime:J
    invoke-static/range {v16 .. v18}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->access$102(Lcom/zte/heartyservice/floater/DetailNetMonitor;J)J

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor$4;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/16 v17, 0x3000

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    .line 174
    .local v8, packinfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 175
    .local v5, info:Landroid/content/pm/PackageInfo;
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 176
    .local v10, premissions:[Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_0

    .line 177
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v9, v1, v4

    .line 178
    .local v9, premission:Ljava/lang/String;
    const-string v16, "android.permission.INTERNET"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 179
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 180
    .local v15, uid:I
    invoke-static {v15}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v11

    .line 181
    .local v11, rx:J
    invoke-static {v15}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v13

    .line 182
    .local v13, tx:J
    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-gtz v16, :cond_2

    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    if-gtz v16, :cond_2

    .line 183
    const-string v16, "NetMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "no data"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v11           #rx:J
    .end local v13           #tx:J
    .end local v15           #uid:I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    .restart local v11       #rx:J
    .restart local v13       #tx:J
    .restart local v15       #uid:I
    :cond_2
    const-string v16, "NetMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "data info:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor$4;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->map:Ljava/util/Map;

    move-object/from16 v16, v0

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/Long;

    add-long v19, v11, v13

    invoke-direct/range {v18 .. v20}, Ljava/lang/Long;-><init>(J)V

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 196
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #len$:I
    .end local v9           #premission:Ljava/lang/String;
    .end local v10           #premissions:[Ljava/lang/String;
    .end local v11           #rx:J
    .end local v13           #tx:J
    .end local v15           #uid:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor$4;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/zte/heartyservice/floater/DetailNetMonitor;->isRun:Z
    invoke-static/range {v16 .. v16}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->access$000(Lcom/zte/heartyservice/floater/DetailNetMonitor;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor$4;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/zte/heartyservice/floater/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 201
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 202
    .local v7, msg:Landroid/os/Message;
    const v16, 0x123456

    move/from16 v0, v16

    iput v0, v7, Landroid/os/Message;->what:I

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor$4;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    move-object/from16 v16, v0

    #getter for: Lcom/zte/heartyservice/floater/DetailNetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->access$200(Lcom/zte/heartyservice/floater/DetailNetMonitor;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    const-wide/16 v16, 0x3e8

    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 207
    :catch_0
    move-exception v2

    .line 209
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v7           #msg:Landroid/os/Message;
    :cond_4
    return-void
.end method
