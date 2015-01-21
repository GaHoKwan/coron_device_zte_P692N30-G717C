.class Lcom/android/mms/ui/SlideEditorActivity$5;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$5;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$5;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mIsCanPreview:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$5;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$5;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/SlideEditorActivity;->mIsCanPreview:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$1002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z

    .line 454
    :cond_0
    return-void
.end method
