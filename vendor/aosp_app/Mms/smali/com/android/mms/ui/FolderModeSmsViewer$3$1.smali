.class Lcom/android/mms/ui/FolderModeSmsViewer$3$1;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/FolderModeSmsViewer$3;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer$3;)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3$1;->this$1:Lcom/android/mms/ui/FolderModeSmsViewer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3$1;->this$1:Lcom/android/mms/ui/FolderModeSmsViewer$3;

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mLockedInd:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1700(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3$1;->this$1:Lcom/android/mms/ui/FolderModeSmsViewer$3;

    iget-boolean v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->val$lock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3$1;->this$1:Lcom/android/mms/ui/FolderModeSmsViewer$3;

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 799
    return-void

    .line 797
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
