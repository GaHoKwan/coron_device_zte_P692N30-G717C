.class Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$1;
.super Ljava/lang/Object;
.source "HandWriteMonitor.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;


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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapObtained(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    move-result-object v0

    invoke-interface {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;->addCharacter(Landroid/graphics/Bitmap;)V

    .line 33
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->access$1(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 35
    :cond_0
    return-void
.end method
