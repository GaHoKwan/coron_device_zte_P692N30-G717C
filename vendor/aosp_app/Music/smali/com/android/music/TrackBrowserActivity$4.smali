.class Lcom/android/music/TrackBrowserActivity$4;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/android/music/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 785
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$800(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v2

    instance-of v2, v2, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$800(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    .line 788
    .local v0, c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    invoke-virtual {v0, p1, p2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    .line 789
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 791
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$900(Lcom/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v2

    check-cast v2, Lcom/android/music/TouchInterceptor;

    invoke-virtual {v2}, Lcom/android/music/TouchInterceptor;->resetPredrawStatus()V

    .line 792
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 793
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v2, v3}, Lcom/android/music/TrackBrowserActivity;->access$1002(Lcom/android/music/TrackBrowserActivity;Z)Z

    .line 805
    .end local v0           #c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity;->access$1100(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->moveItem(Landroid/content/ContentResolver;JII)Z

    move-result v1

    .line 799
    .local v1, isSuccesss:Z
    if-nez v1, :cond_1

    .line 800
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$900(Lcom/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v2

    check-cast v2, Lcom/android/music/TouchInterceptor;

    invoke-virtual {v2}, Lcom/android/music/TouchInterceptor;->resetPredrawStatus()V

    .line 802
    :cond_1
    const-string v2, "TrackBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop: from = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", to = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSuccesss = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
