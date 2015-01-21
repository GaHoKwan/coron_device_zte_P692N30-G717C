.class Lcom/android/mms/ui/MmsMediaController$8;
.super Ljava/lang/Object;
.source "MmsMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsMediaController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController$8;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 817
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$8;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v1, v1, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 818
    .local v0, pos:I
    add-int/lit16 v0, v0, 0x3a98

    .line 819
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$8;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v1, v1, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v1, v0}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->seekTo(I)V

    .line 820
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$8;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsMediaController;->setProgress()I

    .line 822
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$8;->this$0:Lcom/android/mms/ui/MmsMediaController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    .line 823
    return-void
.end method
