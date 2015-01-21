.class Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$1;
.super Landroid/os/Handler;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$1;->this$0:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 804
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 805
    .local v0, albumId:I
    if-ltz v0, :cond_0

    .line 806
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$1;->this$0:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->access$700(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/android/music/AlbumBrowserActivity;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, v3

    iget-object v5, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$1;->this$0:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v5}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->access$800(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/music/MusicUtils;->getCachedArtwork(Landroid/content/Context;JLandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    .line 808
    :cond_0
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$1;->this$0:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->access$700(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/android/music/AlbumBrowserActivity;

    move-result-object v2

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mRefreshAlbumArtHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity;->access$900(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 809
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$1;->this$0:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->access$700(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/android/music/AlbumBrowserActivity;

    move-result-object v2

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mRefreshAlbumArtHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/music/AlbumBrowserActivity;->access$900(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 810
    return-void
.end method
