.class Lcom/android/mms/ui/ClassifyGeneralFragment$8;
.super Ljava/lang/Object;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment;->showSaveWallpaperResult(Z)V
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
    .line 798
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$8;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$8;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$8;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 802
    return-void
.end method