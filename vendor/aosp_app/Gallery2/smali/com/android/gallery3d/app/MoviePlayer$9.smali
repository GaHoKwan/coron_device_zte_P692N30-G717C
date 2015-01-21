.class Lcom/android/gallery3d/app/MoviePlayer$9;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$bookmark:Lcom/android/gallery3d/app/BookmarkerInfo;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/BookmarkerInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iput-object p2, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->val$bookmark:Lcom/android/gallery3d/app/BookmarkerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->val$bookmark:Lcom/android/gallery3d/app/BookmarkerInfo;

    iget v3, v3, Lcom/android/gallery3d/app/BookmarkerInfo;->mDuration:I

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2000(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    .line 421
    return-void
.end method
