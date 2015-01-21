.class Lcom/android/gallery3d/app/MoviePlayer$11;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;Lcom/android/gallery3d/app/BookmarkerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$11;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$11;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mIsShowResumingDialog:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2102(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 434
    return-void
.end method
