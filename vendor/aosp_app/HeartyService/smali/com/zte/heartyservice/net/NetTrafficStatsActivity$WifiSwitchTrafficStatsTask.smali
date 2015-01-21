.class Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;
.super Landroid/os/AsyncTask;
.source "NetTrafficStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetTrafficStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSwitchTrafficStatsTask"
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
.field private WifiappSwitchList:Ljava/util/ArrayList;
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
    .line 420
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->WifiappSwitchList:Ljava/util/ArrayList;

    .line 421
    iput-object p2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->mContext:Landroid/content/Context;

    .line 422
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 416
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;)V

    return-void
.end method

.method private switchApps(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 425
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_1

    .line 447
    :cond_0
    return-void

    .line 426
    :cond_1
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/net/AppUsageItem;

    .line 427
    .local v2, pi:Lcom/zte/heartyservice/net/AppUsageItem;
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 431
    if-eqz p1, :cond_3

    move v3, v4

    .line 433
    .local v3, pt:I
    :goto_1
    invoke-virtual {v2}, Lcom/zte/heartyservice/net/AppUsageItem;->getWifiPermissonType()I

    move-result v6

    if-eq v3, v6, :cond_2

    .line 434
    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v2}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->publishProgress([Ljava/lang/Object;)V

    .line 435
    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/net/AppUsageItem;->setWifiPermissonType(I)V

    .line 438
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->putWifiCheckedInt(Ljava/lang/String;I)V
    invoke-static {v6, v7, v3}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1800(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Ljava/lang/String;I)V

    .line 440
    :try_start_0
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    move-result-object v7

    invoke-virtual {v2}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez p1, :cond_4

    move v6, v4

    :goto_2
    invoke-virtual {v7, v8, v6}, Lcom/zte/heartyservice/net/NetManagermentUtils;->setWifiAppIpRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #pt:I
    :cond_3
    move v3, v5

    .line 431
    goto :goto_1

    .restart local v3       #pt:I
    :cond_4
    move v6, v5

    .line 440
    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 416
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 451
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 452
    .local v0, enable:Z
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->switchApps(Z)V

    .line 453
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateWifiCheckBoxState()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1900(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    .line 459
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->dismissUpdateListProgressDialog()V

    .line 460
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 416
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateWifiCheckBoxState()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1900(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    .line 465
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->dismissUpdateListProgressDialog()V

    .line 466
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 416
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 5
    .parameter "values"

    .prologue
    const v4, 0x7f0a056b

    .line 470
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 473
    :cond_0
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 474
    .local v0, progress:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 477
    invoke-static {}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$2000(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_0

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$2000(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const v2, 0x7f0a05ae

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_0
.end method
