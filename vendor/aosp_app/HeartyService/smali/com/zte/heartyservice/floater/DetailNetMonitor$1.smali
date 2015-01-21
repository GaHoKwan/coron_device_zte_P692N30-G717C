.class Lcom/zte/heartyservice/floater/DetailNetMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "DetailNetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/floater/DetailNetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$1;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, action:Ljava/lang/String;
    const-string v1, "NetMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$1;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/zte/heartyservice/floater/DetailNetMonitor;->isScreenOn:Z

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$1;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/zte/heartyservice/floater/DetailNetMonitor;->isScreenOn:Z

    goto :goto_0
.end method
