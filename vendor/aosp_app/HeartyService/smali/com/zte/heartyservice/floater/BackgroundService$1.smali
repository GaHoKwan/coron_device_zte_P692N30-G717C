.class Lcom/zte/heartyservice/floater/BackgroundService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/floater/BackgroundService;
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
    .line 62
    iput-object p1, p0, Lcom/zte/heartyservice/floater/BackgroundService$1;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    const-string v2, "NetMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$1;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iput-boolean v5, v2, Lcom/zte/heartyservice/floater/BackgroundService;->isScreenOn:Z

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$1;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$000(Lcom/zte/heartyservice/floater/BackgroundService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$1;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const/4 v3, 0x0

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z
    invoke-static {v2, v3}, Lcom/zte/heartyservice/floater/BackgroundService;->access$002(Lcom/zte/heartyservice/floater/BackgroundService;Z)Z

    .line 75
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$1;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/BackgroundService;->wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService$1;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v3, v3, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "NetMonitor"

    const-string v3, "Exception 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$1;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/zte/heartyservice/floater/BackgroundService;->isScreenOn:Z

    goto :goto_0
.end method
