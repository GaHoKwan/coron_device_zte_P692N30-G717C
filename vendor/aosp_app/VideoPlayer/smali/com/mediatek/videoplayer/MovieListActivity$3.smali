.class Lcom/mediatek/videoplayer/MovieListActivity$3;
.super Ljava/lang/Object;
.source "MovieListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/videoplayer/MovieListActivity;->showDelete(Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/videoplayer/MovieListActivity;

.field final synthetic val$holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mediatek/videoplayer/MovieListActivity;Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/mediatek/videoplayer/MovieListActivity$3;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    iput-object p2, p0, Lcom/mediatek/videoplayer/MovieListActivity$3;->val$holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 401
    const-string v0, "MovieListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete.onClick() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$3;->val$holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;

    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$3;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$3;->val$holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;-><init>(Lcom/mediatek/videoplayer/MovieListActivity;Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 403
    return-void
.end method
