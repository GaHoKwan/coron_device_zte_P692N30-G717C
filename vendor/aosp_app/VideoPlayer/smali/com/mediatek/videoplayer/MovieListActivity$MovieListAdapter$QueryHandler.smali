.class Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MovieListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;->this$1:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    .line 574
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 575
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 580
    const-string v0, "MovieListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;->this$1:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    iget-object v0, v0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-static {v0}, Lcom/mediatek/videoplayer/MtkUtils;->disableSpinnerState(Landroid/app/Activity;)V

    .line 582
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;->this$1:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    iget-object v0, v0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #calls: Lcom/mediatek/videoplayer/MovieListActivity;->showEmpty()V
    invoke-static {v0}, Lcom/mediatek/videoplayer/MovieListActivity;->access$900(Lcom/mediatek/videoplayer/MovieListActivity;)V

    .line 584
    if-eqz p3, :cond_1

    .line 585
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;->this$1:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0, p3}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 591
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 592
    const-string v0, "MovieListAdapter"

    const-string v1, "onQueryComplete() end"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_2
    return-void

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;->this$1:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    iget-object v0, v0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #calls: Lcom/mediatek/videoplayer/MovieListActivity;->showList()V
    invoke-static {v0}, Lcom/mediatek/videoplayer/MovieListActivity;->access$1000(Lcom/mediatek/videoplayer/MovieListActivity;)V

    .line 589
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;->this$1:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0, p3}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
