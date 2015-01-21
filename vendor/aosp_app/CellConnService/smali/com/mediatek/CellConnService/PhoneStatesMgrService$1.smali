.class Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;
.super Ljava/lang/Object;
.source "PhoneStatesMgrService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/PhoneStatesMgrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;


# direct methods
.method constructor <init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 325
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "Time out and response cancel to caller"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->bConfirmDlgIsShowed:Z
    invoke-static {v3, v6}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$002(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 328
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mStartActivityTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$100(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 330
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 331
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 332
    .local v1, listSize:I
    if-gtz v1, :cond_1

    .line 333
    const-string v3, "PhoneStatesMgrService"

    const-string v5, "onStart response callback list is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v4

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;

    .line 337
    .local v2, reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    if-nez v2, :cond_2

    .line 340
    const-string v3, "PhoneStatesMgrService"

    const-string v4, "onStart response reqItem is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    .end local v1           #listSize:I
    .end local v2           #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 344
    .restart local v1       #listSize:I
    .restart local v2       #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$400(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "confirm_type"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 345
    .local v0, confirmType:I
    if-eqz v0, :cond_0

    .line 346
    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v4, 0x1c4

    iget-object v5, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$400(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Landroid/content/Intent;

    move-result-object v5

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->handleConfirmRsp(IILcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;Landroid/content/Intent;)V
    invoke-static {v3, v0, v4, v2, v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$500(Lcom/mediatek/CellConnService/PhoneStatesMgrService;IILcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;Landroid/content/Intent;)V

    goto :goto_0
.end method
