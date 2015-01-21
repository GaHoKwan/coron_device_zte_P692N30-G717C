.class public Lcom/zte/retrieve/application/RetrieveApplication;
.super Landroid/app/Application;
.source "RetrieveApplication.java"


# instance fields
.field private mRetrieveServiceApp:Lcom/zte/retrieve/application/RetrieveApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 27
    const-string v3, "RetrieveApplication onCreate"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 28
    iput-object p0, p0, Lcom/zte/retrieve/application/RetrieveApplication;->mRetrieveServiceApp:Lcom/zte/retrieve/application/RetrieveApplication;

    .line 29
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/zte/retrieve/controller/Controller;->init(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isHeartyVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    iget-object v3, p0, Lcom/zte/retrieve/application/RetrieveApplication;->mRetrieveServiceApp:Lcom/zte/retrieve/application/RetrieveApplication;

    invoke-virtual {v3}, Lcom/zte/retrieve/application/RetrieveApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 34
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/zte/retrieve/application/RetrieveApplication;->mRetrieveServiceApp:Lcom/zte/retrieve/application/RetrieveApplication;

    const-class v4, Lcom/zte/retrieve/receiver/BootReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v2, receiver:Landroid/content/ComponentName;
    :try_start_0
    const-string v3, "heartyservice exist!Do nothing"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 37
    const-string v3, "com.zte.heartyservice"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #receiver:Landroid/content/ComponentName;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 49
    return-void

    .line 38
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    .restart local v2       #receiver:Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "heartyservice doesn\'t exist,stop retrieve"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 41
    new-instance v3, Lcom/zte/retrieve/utils/ConfigManager;

    iget-object v4, p0, Lcom/zte/retrieve/application/RetrieveApplication;->mRetrieveServiceApp:Lcom/zte/retrieve/application/RetrieveApplication;

    invoke-direct {v3, v4}, Lcom/zte/retrieve/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/zte/retrieve/utils/ConfigManager;->clear()Z

    .line 42
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/retrieve/application/RetrieveApplication;->mRetrieveServiceApp:Lcom/zte/retrieve/application/RetrieveApplication;

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/controller/Controller;->stopService(Landroid/content/Context;)V

    .line 44
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 45
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
