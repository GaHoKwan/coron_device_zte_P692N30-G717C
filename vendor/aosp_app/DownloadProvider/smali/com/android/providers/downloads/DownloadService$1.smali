.class Lcom/android/providers/downloads/DownloadService$1;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/DownloadService;->deleteDownloadLocked(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;

.field final synthetic val$notifyUrl:Ljava/net/URL;

.field final synthetic val$omaDownloadStatus:I


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/DownloadService;Ljava/net/URL;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    iput-object p2, p0, Lcom/android/providers/downloads/DownloadService$1;->val$notifyUrl:Ljava/net/URL;

    iput p3, p0, Lcom/android/providers/downloads/DownloadService$1;->val$omaDownloadStatus:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 545
    new-instance v0, Lcom/android/providers/downloads/OmaDescription;

    invoke-direct {v0}, Lcom/android/providers/downloads/OmaDescription;-><init>()V

    .line 546
    .local v0, omaDescription:Lcom/android/providers/downloads/OmaDescription;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$1;->val$notifyUrl:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/OmaDescription;->setInstallNotifyUrl(Ljava/net/URL;)V

    .line 548
    iget v1, p0, Lcom/android/providers/downloads/DownloadService$1;->val$omaDownloadStatus:I

    const/16 v2, 0x1ec

    if-ne v1, v2, :cond_0

    .line 549
    const/16 v1, 0x3b9

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    .line 550
    const-string v1, "DownloadManager/OMA"

    const-string v2, "DownloadService: deleteDownload(): nofiyUrlThread: before install notify:NON_ACCEPTABLE_CONTENT"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/providers/downloads/OmaDownload;->installNotify(Lcom/android/providers/downloads/OmaDescription;Landroid/os/Handler;)I

    .line 559
    return-void

    .line 553
    :cond_0
    const/16 v1, 0x386

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    .line 554
    const-string v1, "DownloadManager/OMA"

    const-string v2, "DownloadService: deleteDownload(): nofiyUrlThread: before install notify:USER_CANCELLED"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
