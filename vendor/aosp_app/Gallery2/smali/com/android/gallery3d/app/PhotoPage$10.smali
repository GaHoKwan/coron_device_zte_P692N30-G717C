.class Lcom/android/gallery3d/app/PhotoPage$10;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 929
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x82

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 931
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 932
    return-void
.end method

.method public setSeekBar(II)V
    .locals 1
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 925
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->setProgress(I)V

    .line 926
    return-void
.end method

.method public setStatus(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/mediatek/gallery3d/mpo/MavSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 921
    return-void
.end method