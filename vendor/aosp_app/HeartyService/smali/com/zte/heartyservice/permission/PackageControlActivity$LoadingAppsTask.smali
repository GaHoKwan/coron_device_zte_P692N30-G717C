.class Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;
.super Landroid/os/AsyncTask;
.source "PackageControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 448
    iput-object p2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->mContext:Landroid/content/Context;

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;Lcom/zte/heartyservice/permission/PackageControlActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;)V

    return-void
.end method

.method private getAppGroups(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v2, appGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;>;"
    iget-object v7, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-static {v7}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$300(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getTrustPackages(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 455
    .local v1, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 458
    .local v0, ag:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;
    if-nez v1, :cond_0

    .line 459
    const/4 v2, 0x0

    .line 493
    .end local v2           #appGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;>;"
    :goto_0
    return-object v2

    .line 461
    .restart local v2       #appGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;>;"
    :cond_0
    monitor-enter v1

    .line 462
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 463
    .local v6, pi:Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v6}, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->getPermissions(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v5

    .line 464
    .local v5, permList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;>;"
    new-instance v3, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    iget-object v7, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    iget-object v8, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v8, v6, v5}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/util/List;)V

    .line 466
    .local v3, group_item:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 467
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_2
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 471
    move-object v0, v3

    goto :goto_1

    .line 475
    .end local v3           #group_item:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;
    .end local v5           #permList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;>;"
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 476
    new-instance v7, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask$1;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask$1;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;)V

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 487
    :cond_4
    if-eqz v0, :cond_5

    .line 488
    iget-object v7, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    #setter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I
    invoke-static {v7, v8}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$902(Lcom/zte/heartyservice/permission/PackageControlActivity;I)I

    .line 489
    const-string v7, "PackageControlActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppGroups:: groupPos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I
    invoke-static {v9}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$900(Lcom/zte/heartyservice/permission/PackageControlActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_5
    monitor-exit v1

    goto :goto_0

    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private getPermissions(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    .locals 9
    .parameter "pi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v4, permList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;>;"
    iget-object v6, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-static {v6}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$300(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAllPermissionCategory()Ljava/util/ArrayList;

    move-result-object v0

    .line 499
    .local v0, allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 500
    .local v2, permCategory:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 501
    .local v5, permissionCategory:I
    iget-object v6, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-static {v6}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$300(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->isPackagehasPermissionInCategory(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 503
    const-string v6, "PackageControlActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPermissions::permissionCategory is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pkg is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v3, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    iget-object v6, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    iget-object v7, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->mContext:Landroid/content/Context;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v6, v7, v8, v5}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;Ljava/lang/String;I)V

    .line 506
    .local v3, permItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    .end local v2           #permCategory:Ljava/lang/Integer;
    .end local v3           #permItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    .end local v5           #permissionCategory:I
    :cond_1
    return-object v4
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
    .locals 5
    .parameter "params"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->getAppGroups(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$602(Lcom/zte/heartyservice/permission/PackageControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 520
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    new-instance v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$600(Lcom/zte/heartyservice/permission/PackageControlActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;Ljava/util/List;)V

    #setter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$802(Lcom/zte/heartyservice/permission/PackageControlActivity;Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    .line 521
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$800(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 444
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->doInBackground([Ljava/lang/String;)Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 526
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p1}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$1000(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 532
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$1000(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 533
    const-string v0, "PackageControlActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute expandGroup groupPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$900(Lcom/zte/heartyservice/permission/PackageControlActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$900(Lcom/zte/heartyservice/permission/PackageControlActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$1000(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I
    invoke-static {v1}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$900(Lcom/zte/heartyservice/permission/PackageControlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 536
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$1000(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I
    invoke-static {v1}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$900(Lcom/zte/heartyservice/permission/PackageControlActivity;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    .line 538
    :cond_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$1000(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 444
    check-cast p1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->onPostExecute(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 514
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 515
    return-void
.end method
