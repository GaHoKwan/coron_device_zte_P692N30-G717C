.class Lcom/android/music/PlaylistBrowserActivity$1;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/PlaylistBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    iput-object p2, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 169
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v6

    #setter for: Lcom/android/music/PlaylistBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5, v6}, Lcom/android/music/PlaylistBrowserActivity;->access$002(Lcom/android/music/PlaylistBrowserActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 170
    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 173
    const-string v5, "PlaylistBrowser"

    const-string v6, "Unexpected:getExtras() returns null."

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 199
    .end local v0           #b:Landroid/os/Bundle;
    :cond_0
    return-void

    .line 176
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_1
    :try_start_0
    const-string v5, "playlist"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 177
    .local v2, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    .line 178
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #calls: Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V
    invoke-static {v5}, Lcom/android/music/PlaylistBrowserActivity;->access$100(Lcom/android/music/PlaylistBrowserActivity;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v2           #id:J
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "PlaylistBrowser"

    const-string v6, "Playlist id missing or broken"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #id:J
    :cond_2
    const-wide/16 v5, -0x3

    cmp-long v5, v2, v5

    if-nez v5, :cond_3

    .line 180
    :try_start_1
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #calls: Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V
    invoke-static {v5}, Lcom/android/music/PlaylistBrowserActivity;->access$200(Lcom/android/music/PlaylistBrowserActivity;)V

    goto :goto_0

    .line 181
    :cond_3
    const-wide/16 v5, -0x2

    cmp-long v5, v2, v5

    if-nez v5, :cond_5

    .line 182
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v5}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v4

    .line 183
    .local v4, list:[J
    if-eqz v4, :cond_4

    .line 184
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 187
    :cond_4
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #calls: Lcom/android/music/PlaylistBrowserActivity;->showUSBInUsingMsg()V
    invoke-static {v5}, Lcom/android/music/PlaylistBrowserActivity;->access$300(Lcom/android/music/PlaylistBrowserActivity;)V

    goto :goto_0

    .line 190
    .end local v4           #list:[J
    :cond_5
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v5, v2, v3}, Lcom/android/music/MusicUtils;->playPlaylist(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/music/PlaylistBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/android/music/PlaylistBrowserActivity;->access$002(Lcom/android/music/PlaylistBrowserActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 204
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 205
    return-void
.end method
