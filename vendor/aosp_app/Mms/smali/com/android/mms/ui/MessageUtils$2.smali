.class final Lcom/android/mms/ui/MessageUtils$2;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$append:Z

.field final synthetic val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$showProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$2;->val$imageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$2;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$2;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iput-boolean p5, p0, Lcom/android/mms/ui/MessageUtils$2;->val$append:Z

    iput-object p6, p0, Lcom/android/mms/ui/MessageUtils$2;->val$showProgress:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1154
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/UriImage;

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$2;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/MessageUtils$2;->val$imageUri:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1155
    .local v2, image:Lcom/android/mms/ui/UriImage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v5

    .line 1156
    .local v5, widthLimit:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v1

    .line 1160
    .local v1, heightLimit:I
    invoke-virtual {v2}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 1161
    move v4, v5

    .line 1162
    .local v4, temp:I
    move v5, v1

    .line 1163
    move v1, v4

    .line 1172
    .end local v4           #temp:I
    :cond_0
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v6

    add-int/lit16 v6, v6, -0x1388

    invoke-virtual {v2, v5, v1, v6}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 1176
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$2;->val$handler:Landroid/os/Handler;

    new-instance v7, Lcom/android/mms/ui/MessageUtils$2$1;

    invoke-direct {v7, p0, v3}, Lcom/android/mms/ui/MessageUtils$2$1;-><init>(Lcom/android/mms/ui/MessageUtils$2;Lcom/google/android/mms/pdu/PduPart;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/mms/ui/MessageUtils$2;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1189
    .end local v1           #heightLimit:I
    .end local v2           #image:Lcom/android/mms/ui/UriImage;
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v5           #widthLimit:I
    :goto_0
    return-void

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v6, "Mms"

    const-string v7, "Unexpected IllegalArgumentException."

    invoke-static {v6, v7, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/mms/ui/MessageUtils$2;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageUtils$2;->val$handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/mms/ui/MessageUtils$2;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v6
.end method
