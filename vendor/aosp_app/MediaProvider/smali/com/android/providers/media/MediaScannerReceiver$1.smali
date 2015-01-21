.class Lcom/android/providers/media/MediaScannerReceiver$1;
.super Landroid/os/Handler;
.source "MediaScannerReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaScannerReceiver;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerReceiver;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaScannerReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerReceiver$1;->this$0:Lcom/android/providers/media/MediaScannerReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 202
    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 203
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1388

    if-lt v1, v2, :cond_1

    .line 204
    const-string v1, "MediaScannerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler: Timeout and starts to scan. mountedStorage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/media/MediaScannerReceiver$1;->this$0:Lcom/android/providers/media/MediaScannerReceiver;

    invoke-static {}, Lcom/android/providers/media/MediaScannerReceiver;->access$000()Ljava/util/ArrayList;

    move-result-object v4

    #calls: Lcom/android/providers/media/MediaScannerReceiver;->dumpList(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/providers/media/MediaScannerReceiver;->access$100(Lcom/android/providers/media/MediaScannerReceiver;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/media/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/providers/media/MediaScannerReceiver$1;->this$0:Lcom/android/providers/media/MediaScannerReceiver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const-string v3, "external"

    #calls: Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/android/providers/media/MediaScannerReceiver;->access$200(Lcom/android/providers/media/MediaScannerReceiver;Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 211
    .local v0, copy:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 212
    iget v1, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 213
    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
