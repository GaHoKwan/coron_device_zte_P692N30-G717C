.class Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity$1;
.super Ljava/lang/Object;
.source "DebugToolboxActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity$1;->this$0:Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity$1;->this$0:Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;

    check-cast p2, Lcom/mediatek/mtklogger/debugtool/AEEControlService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/mtklogger/debugtool/AEEControlService$LocalBinder;->getService()Lcom/mediatek/mtklogger/debugtool/AEEControlService;

    move-result-object v1

    #setter for: Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;->mBoundService:Lcom/mediatek/mtklogger/debugtool/AEEControlService;
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;->access$002(Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;Lcom/mediatek/mtklogger/debugtool/AEEControlService;)Lcom/mediatek/mtklogger/debugtool/AEEControlService;

    .line 231
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity$1;->this$0:Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;->mBoundService:Lcom/mediatek/mtklogger/debugtool/AEEControlService;
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;->access$002(Lcom/mediatek/mtklogger/debugtool/DebugToolboxActivity;Lcom/mediatek/mtklogger/debugtool/AEEControlService;)Lcom/mediatek/mtklogger/debugtool/AEEControlService;

    .line 242
    return-void
.end method
