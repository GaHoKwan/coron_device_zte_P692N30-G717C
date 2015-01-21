.class Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;
.super Landroid/os/AsyncTask;
.source "NetTrafficStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetTrafficStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTrafficStatsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/zte/heartyservice/net/AppUsageItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->mContext:Landroid/content/Context;

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;)V

    return-void
.end method

.method private getApps()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/net/AppUsageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v14, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/net/AppUsageItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$600(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v2

    const/16 v4, 0x9

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getPackagesUsingPermissionCategory(IZ)Ljava/util/List;

    move-result-object v16

    .line 176
    .local v16, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 178
    .local v3, pi:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    #calls: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getWifiCheckedInt(Ljava/lang/String;I)I
    invoke-static {v2, v4, v6}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$700(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Ljava/lang/String;I)I

    move-result v5

    .line 180
    .local v5, mOperateLockOpened:I
    new-instance v1, Lcom/zte/heartyservice/net/AppUsageItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->mContext:Landroid/content/Context;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->stats:Landroid/net/NetworkStats;
    invoke-static {v6}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$800(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/net/NetworkStats;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->statsWifi:Landroid/net/NetworkStats;
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$900(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/net/NetworkStats;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1000(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I
    invoke-static {v9}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$400(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iget-wide v10, v10, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->startTime:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iget-wide v12, v12, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->endTime:J

    invoke-direct/range {v1 .. v13}, Lcom/zte/heartyservice/net/AppUsageItem;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;IILandroid/net/NetworkStats;Landroid/net/NetworkStats;Lcom/zte/heartyservice/net/NetTrafficUtils;IJJ)V

    .line 182
    .local v1, appInfo:Lcom/zte/heartyservice/net/AppUsageItem;
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getAppinfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v6, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    .end local v1           #appInfo:Lcom/zte/heartyservice/net/AppUsageItem;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v5           #mOperateLockOpened:I
    :cond_0
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 187
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 190
    :cond_1
    return-object v14
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/net/AppUsageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->getApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/net/AppUsageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/net/AppUsageItem;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #setter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1102(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 207
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAppCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1200(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a062c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    new-instance v1, Lcom/zte/heartyservice/net/AppListAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/net/AppListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;)V

    #setter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1302(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 209
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->lv:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1400(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1300(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->dismissUpdateListProgressDialog()V

    .line 211
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateCheckBoxState()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1500(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    .line 212
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 196
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 216
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 217
    .local v0, progress:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0148

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 220
    return-void
.end method
