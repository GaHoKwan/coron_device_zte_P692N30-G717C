.class Lcom/mediatek/apst/target/service/MainService$2;
.super Ljava/lang/Thread;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/apst/target/service/MainService;->onPackageAdded(Lcom/mediatek/apst/target/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/service/MainService;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/service/MainService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 982
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$2;->this$0:Lcom/mediatek/apst/target/service/MainService;

    iput p2, p0, Lcom/mediatek/apst/target/service/MainService$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 986
    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService$2;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mApplicationProxy:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;
    invoke-static {v2}, Lcom/mediatek/apst/target/service/MainService;->access$300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/apst/target/service/MainService$2;->val$uid:I

    invoke-virtual {v2, v3}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getApplicationsForUid(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 988
    .local v0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/app/ApplicationInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 989
    new-instance v1, Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;

    invoke-direct {v1}, Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;-><init>()V

    .line 990
    .local v1, req:Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;
    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService$2;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;
    invoke-static {v2}, Lcom/mediatek/apst/target/service/MainService;->access$100(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/util/communication/common/Dispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 991
    iget v2, p0, Lcom/mediatek/apst/target/service/MainService$2;->val$uid:I

    invoke-virtual {v1, v2}, Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;->setUid(I)V

    .line 992
    invoke-virtual {v1, v0}, Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;->setApplications(Ljava/util/ArrayList;)V

    .line 994
    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService$2;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #calls: Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    invoke-static {v2, v1}, Lcom/mediatek/apst/target/service/MainService;->access$200(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 996
    .end local v1           #req:Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;
    :cond_0
    return-void
.end method
