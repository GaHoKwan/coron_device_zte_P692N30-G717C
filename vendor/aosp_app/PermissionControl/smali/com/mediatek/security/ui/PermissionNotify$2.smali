.class Lcom/mediatek/security/ui/PermissionNotify$2;
.super Landroid/os/Handler;
.source "PermissionNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionNotify;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/PermissionNotify;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionNotify$2;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x65

    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_0

    .line 65
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v1, -0x1

    .line 66
    .local v0, timer:I
    const-string v1, "PermissionNotify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-lez v0, :cond_1

    .line 68
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 69
    iput v4, p1, Landroid/os/Message;->what:I

    .line 70
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 71
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionNotify$2;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    #calls: Lcom/mediatek/security/ui/PermissionNotify;->setCountDownTimerText(I)V
    invoke-static {v1, v0}, Lcom/mediatek/security/ui/PermissionNotify;->access$100(Lcom/mediatek/security/ui/PermissionNotify;I)V

    .line 72
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionNotify$2;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    #getter for: Lcom/mediatek/security/ui/PermissionNotify;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionNotify;->access$200(Lcom/mediatek/security/ui/PermissionNotify;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 79
    .end local v0           #timer:I
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v0       #timer:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionNotify$2;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionNotify$2;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    #getter for: Lcom/mediatek/security/ui/PermissionNotify;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/security/ui/PermissionNotify;->access$300(Lcom/mediatek/security/ui/PermissionNotify;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionNotify$2;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    #getter for: Lcom/mediatek/security/ui/PermissionNotify;->mPermissionName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/security/ui/PermissionNotify;->access$400(Lcom/mediatek/security/ui/PermissionNotify;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/security/service/PermControlUtils;->showDenyToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionNotify$2;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    #getter for: Lcom/mediatek/security/ui/PermissionNotify;->mBoundService:Lcom/mediatek/security/service/PermControlService;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionNotify;->access$000(Lcom/mediatek/security/ui/PermissionNotify;)Lcom/mediatek/security/service/PermControlService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/security/service/PermControlService;->setPermissionStatus(Z)V

    .line 76
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionNotify$2;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
