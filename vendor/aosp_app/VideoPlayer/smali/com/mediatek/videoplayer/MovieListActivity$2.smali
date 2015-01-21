.class Lcom/mediatek/videoplayer/MovieListActivity$2;
.super Ljava/lang/Object;
.source "MovieListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/videoplayer/MovieListActivity;->showScanningProgress()V
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
    .line 254
    iput-object p1, p0, Lcom/mediatek/videoplayer/MovieListActivity$2;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 258
    const-string v0, "MovieListActivity"

    const-string v1, "mProgressDialog.onCancel()"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$2;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #calls: Lcom/mediatek/videoplayer/MovieListActivity;->hideScanningProgress()V
    invoke-static {v0}, Lcom/mediatek/videoplayer/MovieListActivity;->access$300(Lcom/mediatek/videoplayer/MovieListActivity;)V

    .line 260
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$2;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 261
    return-void
.end method
