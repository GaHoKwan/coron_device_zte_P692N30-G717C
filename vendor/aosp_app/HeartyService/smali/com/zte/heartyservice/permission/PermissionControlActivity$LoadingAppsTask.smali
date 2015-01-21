.class Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;
.super Landroid/os/AsyncTask;
.source "PermissionControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 522
    iput-object p2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->mContext:Landroid/content/Context;

    .line 523
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/content/Context;Lcom/zte/heartyservice/permission/PermissionControlActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 518
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/content/Context;)V

    return-void
.end method

.method private getApps(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "permissionCategory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;>;"
    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-static {v5}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$100(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getPackagesUsingPermissionCategory(I)Ljava/util/List;

    move-result-object v4

    .line 541
    .local v4, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 542
    .local v3, pi:Landroid/content/pm/PackageInfo;
    new-instance v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    iget-object v6, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v6, v3, p1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/content/Context;Landroid/content/pm/PackageInfo;I)V

    .line 543
    .local v0, appInfo:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 545
    .end local v0           #appInfo:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v1
.end method

.method private getPermissionGroups()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v5, permGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;>;"
    iget-object v7, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-static {v7}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$100(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAllPermissionCategory()Ljava/util/ArrayList;

    move-result-object v0

    .line 528
    .local v0, allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 529
    .local v4, permCategory:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 530
    .local v6, permissionCategory:I
    invoke-direct {p0, v6}, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->getApps(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 531
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;>;"
    new-instance v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget-object v7, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-direct {v2, v7, v6, v1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;ILjava/util/List;)V

    .line 532
    .local v2, group_item:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;>;"
    .end local v2           #group_item:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;
    .end local v4           #permCategory:Ljava/lang/Integer;
    .end local v6           #permissionCategory:I
    :cond_0
    return-object v5
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
    .locals 5
    .parameter "params"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-direct {p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->getPermissionGroups()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$602(Lcom/zte/heartyservice/permission/PermissionControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 556
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    new-instance v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$600(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/content/Context;Ljava/util/List;)V

    #setter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$002(Lcom/zte/heartyservice/permission/PermissionControlActivity;Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    .line 557
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$000(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 518
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->doInBackground([Ljava/lang/Void;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->list:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$800(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 564
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 518
    check-cast p1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->onPostExecute(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 550
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 551
    return-void
.end method
