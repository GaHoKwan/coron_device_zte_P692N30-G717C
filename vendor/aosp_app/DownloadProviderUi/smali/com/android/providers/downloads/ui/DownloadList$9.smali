.class Lcom/android/providers/downloads/ui/DownloadList$9;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$9;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/DownloadList$9;->val$downloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$9;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1800(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/DownloadManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/providers/downloads/ui/DownloadList$9;->val$downloadId:J

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->restartDownload([J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$9;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    const/4 v2, 0x0

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mCurrentDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$302(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1094
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$9;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->showNextDialog()V
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 1095
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$9;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    const v2, 0x7f070022

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
