.class Lcom/android/mms/ui/ClassifyGeneralFragment$10;
.super Ljava/lang/Object;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromCamResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$10;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 817
    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$10;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    iget-object v3, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$10;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperPathForCamera:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1600(Lcom/android/mms/ui/ClassifyGeneralFragment;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/mms/ui/ClassifyGeneralFragment;->compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1400(Lcom/android/mms/ui/ClassifyGeneralFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, chatWallpaperCompressForCamera:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$10;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #calls: Lcom/android/mms/ui/ClassifyGeneralFragment;->saveWallpaperToMemory(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1500(Lcom/android/mms/ui/ClassifyGeneralFragment;Ljava/lang/String;)Z

    move-result v1

    .line 819
    .local v1, isSaveForCamera:Z
    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$10;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->showSaveWallpaperResult(Z)V

    .line 820
    return-void
.end method
