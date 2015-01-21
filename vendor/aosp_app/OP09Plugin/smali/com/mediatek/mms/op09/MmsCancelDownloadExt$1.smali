.class Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;
.super Ljava/lang/Object;
.source "MmsCancelDownloadExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->cancelDownload(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mContentUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/mms/op09/MmsCancelDownloadExt;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->this$0:Lcom/mediatek/mms/op09/MmsCancelDownloadExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->mContentUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->this$0:Lcom/mediatek/mms/op09/MmsCancelDownloadExt;

    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->val$uri:Landroid/net/Uri;

    #calls: Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->getContentLocation(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->access$000(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->mContentUrl:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->this$0:Lcom/mediatek/mms/op09/MmsCancelDownloadExt;

    #getter for: Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mClientMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->access$100(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->mContentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->this$0:Lcom/mediatek/mms/op09/MmsCancelDownloadExt;

    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->val$uri:Landroid/net/Uri;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->setCancelDownloadState(Landroid/net/Uri;Z)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->access$200(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;Landroid/net/Uri;Z)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->this$0:Lcom/mediatek/mms/op09/MmsCancelDownloadExt;

    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->mContentUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;->val$uri:Landroid/net/Uri;

    #calls: Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->abortMmsHttp(Ljava/lang/String;Landroid/net/Uri;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->access$300(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method
