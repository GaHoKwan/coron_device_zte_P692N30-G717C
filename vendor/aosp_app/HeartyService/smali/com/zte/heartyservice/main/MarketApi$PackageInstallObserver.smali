.class Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "MarketApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/MarketApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/MarketApi;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/main/MarketApi;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;->this$0:Lcom/zte/heartyservice/main/MarketApi;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/main/MarketApi;Lcom/zte/heartyservice/main/MarketApi$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;-><init>(Lcom/zte/heartyservice/main/MarketApi;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 245
    const-string v1, "MAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====INSTALL_COMPLETE + returnCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;->this$0:Lcom/zte/heartyservice/main/MarketApi;

    iget-boolean v1, v1, Lcom/zte/heartyservice/main/MarketApi;->isRunService:Z

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;->this$0:Lcom/zte/heartyservice/main/MarketApi;

    #calls: Lcom/zte/heartyservice/main/MarketApi;->startTencetService()Z
    invoke-static {v1}, Lcom/zte/heartyservice/main/MarketApi;->access$100(Lcom/zte/heartyservice/main/MarketApi;)Z

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;->this$0:Lcom/zte/heartyservice/main/MarketApi;

    iget-object v1, v1, Lcom/zte/heartyservice/main/MarketApi;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMarketState(I)V

    .line 253
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;->this$0:Lcom/zte/heartyservice/main/MarketApi;

    iget-object v2, v2, Lcom/zte/heartyservice/main/MarketApi;->APKPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/heartyservice/main/MarketApi;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
