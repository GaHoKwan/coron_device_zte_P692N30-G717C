.class Lcom/android/providers/media/MediaScannerService$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$3;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$3;->this$0:Lcom/android/providers/media/MediaScannerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/providers/media/MediaScannerService;->mNeedPreScanAgain:Z
    invoke-static {v1, v2}, Lcom/android/providers/media/MediaScannerService;->access$402(Lcom/android/providers/media/MediaScannerService;Z)Z

    .line 431
    const-string v1, "MediaScannerService"

    const-string v2, "MediaScanner need prescan again after scan finish."

    invoke-static {v1, v2}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    return-void
.end method
