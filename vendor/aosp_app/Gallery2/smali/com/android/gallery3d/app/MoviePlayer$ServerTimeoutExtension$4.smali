.class Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$4;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 2219
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$4;->this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2223
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "mServerTimeoutDialog.onShow()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$4;->this$1:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mIsShowDialog:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->access$4702(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;Z)Z

    .line 2226
    return-void
.end method
