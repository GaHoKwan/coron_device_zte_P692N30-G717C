.class Lcom/android/providers/downloads/ui/DownloadList$8;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
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
    .line 1068
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$downloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$downloadId:J

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$1700(Lcom/android/providers/downloads/ui/DownloadList;J)V

    .line 1073
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mCurrentDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$302(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1074
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->showNextDialog()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 1075
    return-void
.end method
