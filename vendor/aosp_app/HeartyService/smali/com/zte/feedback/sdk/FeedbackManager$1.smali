.class Lcom/zte/feedback/sdk/FeedbackManager$1;
.super Ljava/lang/Object;
.source "FeedbackManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/feedback/sdk/FeedbackManager;->initServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/sdk/FeedbackManager;


# direct methods
.method constructor <init>(Lcom/zte/feedback/sdk/FeedbackManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/feedback/sdk/FeedbackManager$1;->this$0:Lcom/zte/feedback/sdk/FeedbackManager;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 67
    const-string v0, "account onServiceConnected "

    invoke-static {v0}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager$1;->this$0:Lcom/zte/feedback/sdk/FeedbackManager;

    invoke-static {p2}, Lorg/zx/AuthComp/IMyService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/zx/AuthComp/IMyService;

    move-result-object v1

    #setter for: Lcom/zte/feedback/sdk/FeedbackManager;->myService:Lorg/zx/AuthComp/IMyService;
    invoke-static {v0, v1}, Lcom/zte/feedback/sdk/FeedbackManager;->access$0(Lcom/zte/feedback/sdk/FeedbackManager;Lorg/zx/AuthComp/IMyService;)V

    .line 69
    iget-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager$1;->this$0:Lcom/zte/feedback/sdk/FeedbackManager;

    #calls: Lcom/zte/feedback/sdk/FeedbackManager;->setAccount()V
    invoke-static {v0}, Lcom/zte/feedback/sdk/FeedbackManager;->access$2(Lcom/zte/feedback/sdk/FeedbackManager;)V

    .line 70
    iget-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager$1;->this$0:Lcom/zte/feedback/sdk/FeedbackManager;

    const/4 v1, 0x1

    #setter for: Lcom/zte/feedback/sdk/FeedbackManager;->isConnected:Z
    invoke-static {v0, v1}, Lcom/zte/feedback/sdk/FeedbackManager;->access$1(Lcom/zte/feedback/sdk/FeedbackManager;Z)V

    .line 71
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 61
    const-string v0, "account onServiceDisconnected "

    invoke-static {v0}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager$1;->this$0:Lcom/zte/feedback/sdk/FeedbackManager;

    const/4 v1, 0x0

    #setter for: Lcom/zte/feedback/sdk/FeedbackManager;->myService:Lorg/zx/AuthComp/IMyService;
    invoke-static {v0, v1}, Lcom/zte/feedback/sdk/FeedbackManager;->access$0(Lcom/zte/feedback/sdk/FeedbackManager;Lorg/zx/AuthComp/IMyService;)V

    .line 63
    iget-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager$1;->this$0:Lcom/zte/feedback/sdk/FeedbackManager;

    const/4 v1, 0x0

    #setter for: Lcom/zte/feedback/sdk/FeedbackManager;->isConnected:Z
    invoke-static {v0, v1}, Lcom/zte/feedback/sdk/FeedbackManager;->access$1(Lcom/zte/feedback/sdk/FeedbackManager;Z)V

    .line 64
    return-void
.end method
