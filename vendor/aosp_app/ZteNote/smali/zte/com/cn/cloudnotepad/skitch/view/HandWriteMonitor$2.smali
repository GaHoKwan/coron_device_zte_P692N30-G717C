.class Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$2;
.super Landroid/os/Handler;
.source "HandWriteMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;-><init>(Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$2;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 41
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$2;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    .line 42
    .local v0, monitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handler.handleMessage() called, msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$2;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->finishWrite()V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$2;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->finishGetCharacter()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
