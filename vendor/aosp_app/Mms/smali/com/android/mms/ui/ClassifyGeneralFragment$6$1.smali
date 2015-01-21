.class Lcom/android/mms/ui/ClassifyGeneralFragment$6$1;
.super Ljava/lang/Thread;
.source "ClassifyGeneralFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ClassifyGeneralFragment$6;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassifyGeneralFragment$6;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6$1;->this$1:Lcom/android/mms/ui/ClassifyGeneralFragment$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 663
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6$1;->this$1:Lcom/android/mms/ui/ClassifyGeneralFragment$6;

    iget-object v1, v1, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6$1;->this$1:Lcom/android/mms/ui/ClassifyGeneralFragment$6;

    iget-object v2, v2, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ClassifyGeneralFragment;->clearWallpaperAll(Landroid/content/Context;)Z

    move-result v0

    .line 664
    .local v0, isClearAll:Z
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6$1;->this$1:Lcom/android/mms/ui/ClassifyGeneralFragment$6;

    iget-object v1, v1, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->showSaveWallpaperResult(Z)V

    .line 665
    return-void
.end method
