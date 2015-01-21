.class Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->notifyServerTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V
    .locals 0
    .parameter

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2197
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PositiveButton.onClick() mIsShowDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mIsShowDialog:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->access$4700(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    iget-object v0, v0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    iget-object v2, v2, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3200(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    iget-object v3, v3, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v3

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2000(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    .line 2204
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    iget-object v0, v0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    iget-object v1, v1, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1000(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2205
    return-void
.end method
