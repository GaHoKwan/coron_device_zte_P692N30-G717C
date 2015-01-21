.class Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;
.super Landroid/os/AsyncTask;
.source "NetTrafficStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetTrafficStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchTrafficStatsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private appSwitchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/net/AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->appSwitchList:Ljava/util/ArrayList;

    .line 492
    iput-object p2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->mContext:Landroid/content/Context;

    .line 493
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 487
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;)V

    return-void
.end method

.method private switchApps(Z)V
    .locals 18
    .parameter "enable"

    .prologue
    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 518
    :cond_0
    return-void

    .line 497
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/zte/heartyservice/net/AppUsageItem;

    .line 498
    .local v16, pi:Lcom/zte/heartyservice/net/AppUsageItem;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    if-eqz p1, :cond_3

    const/16 v17, 0x0

    .line 505
    .local v17, pt:I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/net/AppUsageItem;->getPermissonType()I

    move-result v2

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 506
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->publishProgress([Ljava/lang/Object;)V

    .line 507
    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/net/AppUsageItem;->setPermissonType(I)V

    .line 508
    new-instance v1, Lcom/zte/heartyservice/net/AppUsageItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/16 v4, 0x9

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->stats:Landroid/net/NetworkStats;
    invoke-static {v6}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$800(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/net/NetworkStats;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->statsWifi:Landroid/net/NetworkStats;
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$900(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/net/NetworkStats;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1000(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I
    invoke-static {v9}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$400(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iget-wide v10, v10, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->startTime:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iget-wide v12, v12, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->endTime:J

    invoke-direct/range {v1 .. v13}, Lcom/zte/heartyservice/net/AppUsageItem;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;IILandroid/net/NetworkStats;Landroid/net/NetworkStats;Lcom/zte/heartyservice/net/NetTrafficUtils;IJJ)V

    .line 511
    .local v1, appInfo:Lcom/zte/heartyservice/net/AppUsageItem;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez p1, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v4, v2}, Lcom/zte/heartyservice/net/NetManagermentUtils;->setAppIpRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 513
    :catch_0
    move-exception v14

    .line 514
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 502
    .end local v1           #appInfo:Lcom/zte/heartyservice/net/AppUsageItem;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v17           #pt:I
    :cond_3
    const/16 v17, 0x1

    goto :goto_1

    .line 511
    .restart local v1       #appInfo:Lcom/zte/heartyservice/net/AppUsageItem;
    .restart local v17       #pt:I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 487
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 522
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 523
    .local v0, enable:Z
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->switchApps(Z)V

    .line 524
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateCheckBoxState()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1500(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    .line 530
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->dismissUpdateListProgressDialog()V

    .line 531
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 487
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateCheckBoxState()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1500(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    .line 536
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->dismissUpdateListProgressDialog()V

    .line 537
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 487
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 5
    .parameter "values"

    .prologue
    const v4, 0x7f0a056b

    .line 541
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 544
    :cond_0
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 545
    .local v0, progress:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 548
    invoke-static {}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$2000(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_0

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$2000(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const v2, 0x7f0a05ae

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_0
.end method
