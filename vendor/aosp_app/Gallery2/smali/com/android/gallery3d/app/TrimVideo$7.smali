.class Lcom/android/gallery3d/app/TrimVideo$7;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/TrimVideo;->trimVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/TrimVideo;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/TrimVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimVideo$7;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 464
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo$7;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;
    invoke-static {v2}, Lcom/android/gallery3d/app/TrimVideo;->access$1100(Lcom/android/gallery3d/app/TrimVideo;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/android/gallery3d/app/TrimVideo;->access$300()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo$7;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I
    invoke-static {v4}, Lcom/android/gallery3d/app/TrimVideo;->access$1200(Lcom/android/gallery3d/app/TrimVideo;)I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo$7;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I
    invoke-static {v5}, Lcom/android/gallery3d/app/TrimVideo;->access$1300(Lcom/android/gallery3d/app/TrimVideo;)I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/app/TrimVideo$7;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/gallery3d/app/TrimVideoUtils;->startTrim(Ljava/io/File;Ljava/io/File;IILcom/android/gallery3d/app/TrimVideo;)Z

    move-result v1

    .line 465
    .local v1, isTrimSuccessful:Z
    if-nez v1, :cond_0

    .line 467
    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo$7;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TrimVideo;->showToast()V

    .line 469
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/gallery3d/app/TrimVideo;->access$502(Z)Z

    .line 480
    .end local v1           #isTrimSuccessful:Z
    :goto_0
    return-void

    .line 473
    .restart local v1       #isTrimSuccessful:Z
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo$7;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-static {}, Lcom/android/gallery3d/app/TrimVideo;->access$300()Ljava/io/File;

    move-result-object v3

    #calls: Lcom/android/gallery3d/app/TrimVideo;->insertContent(Ljava/io/File;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/TrimVideo;->access$1400(Lcom/android/gallery3d/app/TrimVideo;Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v1           #isTrimSuccessful:Z
    :goto_1
    const-string v2, "Gallery2/TrimVideo"

    const-string v3, "save trim video succeed!"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo$7;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/TrimVideo;->access$1000(Lcom/android/gallery3d/app/TrimVideo;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimVideo$7;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mStartVideoRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/gallery3d/app/TrimVideo;->access$1500(Lcom/android/gallery3d/app/TrimVideo;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
