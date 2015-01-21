.class public Lcom/zte/heartyservice/examination/AutoScanVirusTask;
.super Landroid/os/AsyncTask;
.source "AutoScanVirusTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 21
    const-string v4, "chenlu"

    const-string v5, "AutoScanVirusTask start"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v4, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->initAntivirusEngine()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 58
    :goto_0
    return-object v6

    .line 32
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 33
    .local v0, appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 35
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 37
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanAppForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    goto :goto_1

    .line 45
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->cloudVinusScan()Ljava/util/List;

    .line 50
    const-string v4, "chenlu"

    const-string v5, "AutoScanVirusTask end"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "from"

    const-string v5, "antivirus"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/examination/AutoScanVirusTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
