.class Lcom/android/music/MediaPlaybackService$8;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1169
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mReceiverUnregistered:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$2700(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1177
    const-string v3, "MusicService"

    const-string v4, "MEDIA_EJECT"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$3702(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 1180
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$3810(Lcom/android/music/MediaPlaybackService;)I

    .line 1181
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ejected card path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$3700(Lcom/android/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1189
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 1192
    :cond_2
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$3700(Lcom/android/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1194
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v3, v6}, Lcom/android/music/MediaPlaybackService;->access$3000(Lcom/android/music/MediaPlaybackService;Z)V

    .line 1195
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$3902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 1196
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$3700(Lcom/android/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 1197
    const-string v3, "MusicService"

    const-string v4, "card eject"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;
    invoke-static {v3, v7}, Lcom/android/music/MediaPlaybackService;->access$3702(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1200
    :cond_4
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1201
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1203
    .local v1, curTrackPath:Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$3700(Lcom/android/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1204
    const-string v3, "MusicService"

    const-string v4, "MEDIA_EJECT: current track on an unmounting external card"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mEjectingCardPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$3700(Lcom/android/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 1211
    .end local v1           #curTrackPath:Ljava/lang/String;
    :cond_5
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$3800(Lcom/android/music/MediaPlaybackService;)I

    move-result v3

    if-gez v3, :cond_6

    .line 1216
    const-string v3, "MusicService"

    const-string v4, "MEDIA_MOUNTED"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$3808(Lcom/android/music/MediaPlaybackService;)I

    .line 1220
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1221
    .local v2, mountedCardPath:Ljava/lang/String;
    const-string v3, "MusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mounted card path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1224
    const-string v3, "MusicService"

    const-string v4, "card mounted"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->reloadQueue()V
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$4000(Lcom/android/music/MediaPlaybackService;)V

    .line 1226
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z
    invoke-static {v3, v6}, Lcom/android/music/MediaPlaybackService;->access$3902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 1227
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v4, "com.android.music.queuechanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1228
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v4, "com.android.music.metachanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1230
    .end local v2           #mountedCardPath:Ljava/lang/String;
    :cond_6
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1231
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->reloadQueueAfterScan()V
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$4100(Lcom/android/music/MediaPlaybackService;)V

    goto/16 :goto_0
.end method
