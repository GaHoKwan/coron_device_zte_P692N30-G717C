.class Lcom/android/providers/downloads/ui/DownloadList$3;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->getOmaDownloadBackKeyClickHanlder(Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;II)Landroid/content/DialogInterface$OnCancelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;

.field final synthetic val$downloadID:I

.field final synthetic val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

.field final synthetic val$showReason:I


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;ILcom/android/providers/downloads/ui/DownloadList$DownloadInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput p2, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->val$showReason:I

    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iput p4, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->val$downloadID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 7
    .parameter "dialog"

    .prologue
    const/4 v6, 0x0

    .line 670
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->val$showReason:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_2

    .line 671
    const-string v2, "DownloadManager/OMA"

    const-string v3, "DownloadList:getOmaDownloadClickHandler(): user click Back key"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 674
    .local v1, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-boolean v2, v2, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mSupportByDevice:Z

    if-nez v2, :cond_1

    .line 675
    const-string v2, "OMA_Download_Status"

    const/16 v3, 0x1ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    :goto_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->val$downloadID:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 685
    .local v0, row:I
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->val$downloadID:I

    int-to-long v3, v3

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->deleteOMADownloadDDFile(J)V
    invoke-static {v2, v3, v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$500(Lcom/android/providers/downloads/ui/DownloadList;J)V

    .line 701
    .end local v0           #row:I
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mCurrentDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v6}, Lcom/android/providers/downloads/ui/DownloadList;->access$302(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 702
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->showNextDialog()V
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 703
    return-void

    .line 678
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_1
    const-string v2, "OMA_Download_Status"

    const/16 v3, 0x1ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 692
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->val$showReason:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_0

    .line 693
    const-string v2, "DownloadManager/Enhance"

    const-string v3, "DownloadList:getOmaDownloadClickHandler(): Authencticate Download:user click Cancel"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 696
    .restart local v1       #values:Landroid/content/ContentValues;
    const-string v2, "status"

    const/16 v3, 0x1eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->val$downloadID:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method
