.class final Lcom/android/music/MusicPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicPicker;


# direct methods
.method public constructor <init>(Lcom/android/music/MusicPicker;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    .line 494
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 495
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 499
    if-eqz p3, :cond_5

    .line 500
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 502
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-static {v0, v2}, Lcom/android/music/MusicUtils;->emptyShow(Landroid/widget/ListView;Landroid/app/Activity;)V

    .line 506
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v2, v0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v3, v3, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 514
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v2, v2, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 522
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-boolean v0, v0, Lcom/android/music/MusicPicker;->mListHasFocus:Z

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iput-boolean v1, v0, Lcom/android/music/MusicPicker;->mListHasFocus:Z

    .line 526
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 530
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 540
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 506
    goto :goto_0

    .line 532
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 536
    :cond_5
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 537
    invoke-static {}, Lcom/android/music/MusicUtils;->resetSdStatus()V

    .line 538
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Z)V

    goto :goto_1
.end method
