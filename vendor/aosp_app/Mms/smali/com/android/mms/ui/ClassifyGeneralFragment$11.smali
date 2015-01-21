.class Lcom/android/mms/ui/ClassifyGeneralFragment$11;
.super Ljava/lang/Object;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromSys(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

.field final synthetic val$sourceId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassifyGeneralFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$11;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    iput p2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$11;->val$sourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 953
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$11;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    iget v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$11;->val$sourceId:I

    #calls: Lcom/android/mms/ui/ClassifyGeneralFragment;->saveResourceWallpaperToMemory(I)Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1700(Lcom/android/mms/ui/ClassifyGeneralFragment;I)Z

    move-result v0

    .line 954
    .local v0, isSaveForSystem:Z
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$11;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->showSaveWallpaperResult(Z)V

    .line 955
    return-void
.end method
