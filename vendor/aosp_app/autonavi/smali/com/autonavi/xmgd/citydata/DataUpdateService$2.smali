.class Lcom/autonavi/xmgd/citydata/DataUpdateService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRemoved(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$2;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
