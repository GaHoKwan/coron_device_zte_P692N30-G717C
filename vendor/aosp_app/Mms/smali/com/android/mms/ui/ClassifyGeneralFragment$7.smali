.class Lcom/android/mms/ui/ClassifyGeneralFragment$7;
.super Ljava/lang/Object;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromGalleryResult(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassifyGeneralFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$7;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$7;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 770
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$7;->val$data:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 771
    .local v1, mChatWallpaperGalleryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$7;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 773
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 791
    :goto_0
    return-void

    .line 776
    :cond_0
    const-string v9, ""

    .line 778
    .local v9, wallpaperPathForGallery:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 785
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 781
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 782
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 785
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 787
    const-string v0, "ClassifyGeneralFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save wallpaper Gallery Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$7;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #calls: Lcom/android/mms/ui/ClassifyGeneralFragment;->compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1400(Lcom/android/mms/ui/ClassifyGeneralFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 789
    .local v7, chatWallpaperCompressForGallery:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$7;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #calls: Lcom/android/mms/ui/ClassifyGeneralFragment;->saveWallpaperToMemory(Ljava/lang/String;)Z
    invoke-static {v0, v7}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1500(Lcom/android/mms/ui/ClassifyGeneralFragment;Ljava/lang/String;)Z

    move-result v8

    .line 790
    .local v8, isSaveForGallery:Z
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$7;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ClassifyGeneralFragment;->showSaveWallpaperResult(Z)V

    goto :goto_0

    .line 785
    .end local v7           #chatWallpaperCompressForGallery:Ljava/lang/String;
    .end local v8           #isSaveForGallery:Z
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
