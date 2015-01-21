.class Lcom/zte/heartyservice/floater/BackgroundService$3;
.super Ljava/lang/Object;
.source "BackgroundService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/BackgroundService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/BackgroundService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/BackgroundService;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-boolean v2, v2, Lcom/zte/heartyservice/floater/BackgroundService;->isRun:Z

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/BackgroundService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/heartyservice/floater/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/BackgroundService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/zte/heartyservice/floater/NetworkUtil;->updateFlowData(Landroid/content/Context;I)V

    .line 150
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getFlowData()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->flowInfoStr:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/zte/heartyservice/floater/BackgroundService;->access$102(Lcom/zte/heartyservice/floater/BackgroundService;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 152
    .local v1, msg:Landroid/os/Message;
    const v2, 0x123456

    iput v2, v1, Landroid/os/Message;->what:I

    .line 153
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$200(Lcom/zte/heartyservice/floater/BackgroundService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$200(Lcom/zte/heartyservice/floater/BackgroundService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const/4 v3, 0x0

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z
    invoke-static {v2, v3}, Lcom/zte/heartyservice/floater/BackgroundService;->access$002(Lcom/zte/heartyservice/floater/BackgroundService;Z)Z

    .line 172
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/BackgroundService;->wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v3, v3, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 173
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$3;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #calls: Lcom/zte/heartyservice/floater/BackgroundService;->notifyClosed()V
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$300(Lcom/zte/heartyservice/floater/BackgroundService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_1
    return-void

    .line 174
    :catch_1
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
