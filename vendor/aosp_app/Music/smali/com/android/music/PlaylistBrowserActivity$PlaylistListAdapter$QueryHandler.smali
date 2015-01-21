.class Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 719
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 720
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 725
    const/4 v1, 0x0

    .line 726
    .local v1, shouldFinish:Z
    if-eqz p3, :cond_1

    .line 727
    const-string v2, "PlaylistBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_0
    if-eqz p3, :cond_0

    .line 734
    :try_start_0
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;
    invoke-static {v2}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->access$600(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;

    move-result-object v2

    #calls: Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v2, p3}, Lcom/android/music/PlaylistBrowserActivity;->access$700(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 743
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 744
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;
    invoke-static {v2}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->access$600(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 749
    :goto_2
    return-void

    .line 729
    :cond_1
    const-string v2, "PlaylistBrowser"

    const-string v3, "query complete: cursor is null"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "PlaylistBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v1, 0x1

    goto :goto_1

    .line 747
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;
    invoke-static {v2}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->access$600(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_2
.end method
