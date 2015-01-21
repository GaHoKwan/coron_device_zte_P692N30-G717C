.class Lcom/mediatek/videoplayer/MovieListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MovieListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/MovieListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/videoplayer/MovieListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/videoplayer/MovieListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/mediatek/videoplayer/MovieListActivity$1;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 209
    const-string v2, "MovieListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStorageListener.onReceive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$1;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    iget-object v3, p0, Lcom/mediatek/videoplayer/MovieListActivity$1;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-static {v3}, Lcom/mediatek/videoplayer/MtkUtils;->isMediaMounted(Landroid/content/Context;)Z

    move-result v3

    #calls: Lcom/mediatek/videoplayer/MovieListActivity;->refreshSdStatus(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/videoplayer/MovieListActivity;->access$000(Lcom/mediatek/videoplayer/MovieListActivity;Z)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$1;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    iget-object v3, p0, Lcom/mediatek/videoplayer/MovieListActivity$1;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-static {v3}, Lcom/mediatek/videoplayer/MtkUtils;->isMediaMounted(Landroid/content/Context;)Z

    move-result v3

    #calls: Lcom/mediatek/videoplayer/MovieListActivity;->refreshSdStatus(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/videoplayer/MovieListActivity;->access$000(Lcom/mediatek/videoplayer/MovieListActivity;Z)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    :cond_3
    const-string v2, "storage_volume"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "storage_volume"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 219
    .local v1, storage:Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/videoplayer/MovieListActivity;->access$100()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$1;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #calls: Lcom/mediatek/videoplayer/MovieListActivity;->refreshSdStatus(Z)V
    invoke-static {v2, v5}, Lcom/mediatek/videoplayer/MovieListActivity;->access$000(Lcom/mediatek/videoplayer/MovieListActivity;Z)V

    .line 221
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$1;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #getter for: Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;
    invoke-static {v2}, Lcom/mediatek/videoplayer/MovieListActivity;->access$200(Lcom/mediatek/videoplayer/MovieListActivity;)Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 223
    :cond_4
    const-string v3, "MovieListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStorageListener.onReceive() eject storage="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_5

    const-string v2, "null"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
