.class Lcom/android/mms/ui/SlideView$3;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->enableMMSConformanceMode(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->isShow:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$700(Lcom/android/mms/ui/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->show()V

    .line 680
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/SlideView;->isShow:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$702(Lcom/android/mms/ui/SlideView;Z)Z

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->isShow:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$700(Lcom/android/mms/ui/SlideView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->hide()V

    .line 683
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/SlideView;->isShow:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$702(Lcom/android/mms/ui/SlideView;Z)Z

    goto :goto_0
.end method
