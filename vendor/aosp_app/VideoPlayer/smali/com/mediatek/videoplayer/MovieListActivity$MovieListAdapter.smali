.class Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MovieListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/MovieListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovieListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieListAdapter"

.field private static final VALUE_IS_DRM:Ljava/lang/String; = "1"


# instance fields
.field private final mCachedHolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFling:Z

.field private final mQueryHandler:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;

.field final synthetic this$0:Lcom/mediatek/videoplayer/MovieListActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/videoplayer/MovieListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 492
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mCachedHolder:Ljava/util/ArrayList;

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mFling:Z

    .line 493
    new-instance v0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;-><init>(Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mQueryHandler:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;

    .line 494
    return-void
.end method

.method private refreshThumbnail(Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V
    .locals 9
    .parameter "holder"

    .prologue
    const/4 v8, 0x1

    .line 550
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #getter for: Lcom/mediatek/videoplayer/MovieListActivity;->mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;
    invoke-static {v0}, Lcom/mediatek/videoplayer/MovieListActivity;->access$700(Lcom/mediatek/videoplayer/MovieListActivity;)Lcom/mediatek/videoplayer/ThumbnailCache;

    move-result-object v0

    iget-wide v1, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mId:J

    iget-wide v3, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDateModified:J

    iget-boolean v5, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mSupport3D:Z

    iget-boolean v6, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mFling:Z

    if-nez v6, :cond_1

    move v6, v8

    :goto_0
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/videoplayer/ThumbnailCache;->getCachedThumbnail(JJZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 552
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/mediatek/videoplayer/MtkUtils;->isSupportDrm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mIsDrm:Z

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    iget-object v1, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mData:Ljava/lang/String;

    invoke-static {v0, v1, v8, v7}, Lcom/mediatek/videoplayer/MtkUtils;->overlayDrmIcon(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 555
    :cond_0
    iget-object v0, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFastDrawable:Lcom/mediatek/videoplayer/FastBitmapDrawable;

    invoke-virtual {v0, v7}, Lcom/mediatek/videoplayer/FastBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 556
    iget-object v0, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFastDrawable:Lcom/mediatek/videoplayer/FastBitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iget-object v0, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 558
    return-void

    .line 550
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    .line 530
    .local v0, holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mId:J

    .line 531
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitle:Ljava/lang/String;

    .line 532
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDateTaken:J

    .line 533
    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    .line 534
    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mData:Ljava/lang/String;

    .line 535
    const/4 v1, 0x6

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFileSize:J

    .line 536
    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDuration:J

    .line 537
    const-string v1, "1"

    const/4 v2, 0x7

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mIsDrm:Z

    .line 538
    const/16 v1, 0x8

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDateModified:J

    .line 539
    const/16 v1, 0x9

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/videoplayer/MtkUtils;->isStereo3D(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mSupport3D:Z

    .line 541
    iget-object v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFileSizeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #getter for: Lcom/mediatek/videoplayer/MovieListActivity;->mCachedVideoInfo:Lcom/mediatek/videoplayer/CachedVideoInfo;
    invoke-static {v2}, Lcom/mediatek/videoplayer/MovieListActivity;->access$800(Lcom/mediatek/videoplayer/MovieListActivity;)Lcom/mediatek/videoplayer/CachedVideoInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    iget-wide v4, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/videoplayer/CachedVideoInfo;->getFileSize(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v1, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDurationView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #getter for: Lcom/mediatek/videoplayer/MovieListActivity;->mCachedVideoInfo:Lcom/mediatek/videoplayer/CachedVideoInfo;
    invoke-static {v2}, Lcom/mediatek/videoplayer/MovieListActivity;->access$800(Lcom/mediatek/videoplayer/MovieListActivity;)Lcom/mediatek/videoplayer/CachedVideoInfo;

    move-result-object v2

    iget-wide v3, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/videoplayer/CachedVideoInfo;->getDuration(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    invoke-direct {p0, v0}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->refreshThumbnail(Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V

    .line 546
    const-string v1, "MovieListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindeView() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 563
    return-void
.end method

.method public clearCachedHolder()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mCachedHolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 525
    return-void
.end method

.method getQueryHandler()Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mQueryHandler:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 498
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 499
    .local v2, view:Landroid/view/View;
    new-instance v1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    iget-object v4, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-direct {v1, v4}, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;-><init>(Lcom/mediatek/videoplayer/MovieListActivity;)V

    .line 500
    .local v1, holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    const v4, 0x7f060063

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 501
    const v4, 0x7f060064

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 502
    const v4, 0x7f060065

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFileSizeView:Landroid/widget/TextView;

    .line 503
    const v4, 0x7f060066

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDurationView:Landroid/widget/TextView;

    .line 504
    iget-object v4, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #getter for: Lcom/mediatek/videoplayer/MovieListActivity;->mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;
    invoke-static {v4}, Lcom/mediatek/videoplayer/MovieListActivity;->access$700(Lcom/mediatek/videoplayer/MovieListActivity;)Lcom/mediatek/videoplayer/ThumbnailCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/videoplayer/ThumbnailCache;->getDefaultThumbnailWidth()I

    move-result v3

    .line 505
    .local v3, width:I
    iget-object v4, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #getter for: Lcom/mediatek/videoplayer/MovieListActivity;->mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;
    invoke-static {v4}, Lcom/mediatek/videoplayer/MovieListActivity;->access$700(Lcom/mediatek/videoplayer/MovieListActivity;)Lcom/mediatek/videoplayer/ThumbnailCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/videoplayer/ThumbnailCache;->getDefaultThumbnailHeight()I

    move-result v0

    .line 506
    .local v0, height:I
    new-instance v4, Lcom/mediatek/videoplayer/FastBitmapDrawable;

    invoke-direct {v4, v3, v0}, Lcom/mediatek/videoplayer/FastBitmapDrawable;-><init>(II)V

    iput-object v4, v1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFastDrawable:Lcom/mediatek/videoplayer/FastBitmapDrawable;

    .line 507
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 508
    iget-object v4, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mCachedHolder:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    const-string v4, "MovieListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newView() mCachedHolder.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mCachedHolder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-object v2
.end method

.method public onChanged(JILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "rowId"
    .parameter "type"
    .parameter "drawable"

    .prologue
    .line 514
    const-string v2, "MovieListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mCachedHolder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    .line 516
    .local v0, holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    iget-wide v2, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 517
    invoke-direct {p0, v0}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->refreshThumbnail(Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V

    .line 521
    .end local v0           #holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    :cond_1
    return-void
.end method

.method protected onContentChanged()V
    .locals 4

    .prologue
    .line 567
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 568
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mQueryHandler:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 569
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 601
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v0, 0x0

    .line 606
    packed-switch p2, :pswitch_data_0

    .line 621
    :goto_0
    const-string v0, "MovieListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mFling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mFling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void

    .line 608
    :pswitch_0
    iput-boolean v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mFling:Z

    .line 610
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 613
    :pswitch_1
    iput-boolean v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mFling:Z

    goto :goto_0

    .line 616
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->mFling:Z

    goto :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
