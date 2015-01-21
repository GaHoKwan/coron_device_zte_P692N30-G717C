.class Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$1;
.super Ljava/lang/Object;
.source "ZteAccountUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$1;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 69
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$1;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-static {p2}, Lorg/zx/AuthComp/IMyService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/zx/AuthComp/IMyService;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    .line 70
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$1;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mOnServiceConnectedListener:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$0(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "ZteAccountUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in onServiceConnected, call onConnect(), mMyService = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$1;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$1;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mOnServiceConnectedListener:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$0(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$1;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {v0, v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;->onConnect(Lorg/zx/AuthComp/IMyService;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 78
    return-void
.end method
