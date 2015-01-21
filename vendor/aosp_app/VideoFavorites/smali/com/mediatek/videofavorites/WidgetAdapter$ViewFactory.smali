.class Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;
.super Ljava/lang/Object;
.source "WidgetAdapter.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/WidgetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$AddressObserver;,
        Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    }
.end annotation


# instance fields
.field private mAddView:Landroid/widget/RemoteViews;

.field private final mContactObserver:Landroid/database/ContentObserver;

.field private final mFavoriteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexContactUri:I

.field private mIndexId:I

.field private mIndexName:I

.field private mIndexStorage:I

.field private mIndexVideoUri:I

.field private final mLayoutId:I

.field private mPackageName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/mediatek/videofavorites/WidgetAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/videofavorites/WidgetAdapter;I)V
    .locals 2
    .parameter
    .parameter "layoutId"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$AddressObserver;

    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    #getter for: Lcom/mediatek/videofavorites/WidgetAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/videofavorites/WidgetAdapter;->access$100(Lcom/mediatek/videofavorites/WidgetAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$AddressObserver;-><init>(Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mContactObserver:Landroid/database/ContentObserver;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    .line 264
    iput p2, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mLayoutId:I

    .line 265
    return-void
.end method

.method private getAddIcon()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mAddView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private getEmptyView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 309
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mPackageName:Ljava/lang/String;

    const v2, 0x7f030001

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getFillInIntentFor(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 2
    .parameter "contactUri"
    .parameter "entryId"

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    .local v0, i:Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    return-object v0
.end method

.method private getFillInIntentForPickContact(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 4
    .parameter "videoUri"
    .parameter "entryId"

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 330
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    const/4 v1, 0x1

    .line 333
    .local v1, pickType:I
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    :cond_0
    const/4 v1, 0x0

    .line 336
    :cond_1
    const-string v2, "action_pick_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    return-object v0
.end method

.method private getFillInIntentForPickVideo(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 3
    .parameter "contactUri"
    .parameter "entryId"

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string v1, "action_pick_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    return-object v0
.end method

.method private getFillInIntentOfDeleteIcon(ILjava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "id"
    .parameter "name"

    .prologue
    .line 319
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 321
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 323
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.DELETE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.mediatek.videofavorites.NAME"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    return-object v0
.end method

.method private selectionContactUri(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, uriStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 507
    const/4 v5, 0x0

    .line 522
    :goto_0
    return-object v5

    .line 509
    :cond_0
    const-string v1, " OR "

    .line 510
    .local v1, or:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v2, "contact_uri=\'"

    .line 512
    .local v2, prefix:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 514
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 515
    const-string v5, "contact_uri=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v4, :cond_1

    .line 519
    const-string v5, " OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private updateColumnIndex(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 430
    :goto_0
    return-void

    .line 424
    :cond_0
    const-string v0, "contact_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexContactUri:I

    .line 426
    const-string v0, "video_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexVideoUri:I

    .line 427
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexName:I

    .line 428
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexId:I

    .line 429
    const-string v0, "storage"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexStorage:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x4

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 297
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 13
    .parameter "position"

    .prologue
    const v12, 0x7f090002

    const/4 v11, 0x4

    const v10, 0x7f090003

    .line 351
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    .line 352
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mLayoutId:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 354
    .local v3, rv:Landroid/widget/RemoteViews;
    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 356
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;

    .line 357
    .local v1, entry:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    const-string v4, "WidgetAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getViewAt(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", totalFavorites:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->dbId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->videoUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->contactUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    iget-object v5, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->videoUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f08

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget-object v8, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    #calls: Lcom/mediatek/videofavorites/WidgetAdapter;->getThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6, v7, v8}, Lcom/mediatek/videofavorites/WidgetAdapter;->access$300(Lcom/mediatek/videofavorites/WidgetAdapter;Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 367
    const v4, 0x7f020015

    invoke-virtual {v3, v12, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 368
    const-string v4, "setVideoUriWithoutOpenVideo"

    const-string v5, ""

    invoke-virtual {v3, v10, v4, v5}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_0
    const-string v4, ""

    iget-object v5, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    if-nez v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget v5, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->dbId:I

    invoke-direct {p0, v4, v5}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->getFillInIntentForPickContact(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v2

    .line 389
    .local v2, favoirteClickIntent:Landroid/content/Intent;
    :goto_2
    const v4, 0x7f090006

    iget-object v5, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 391
    const/high16 v4, 0x7f09

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 393
    const v4, 0x7f090005

    iget v5, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->dbId:I

    iget-object v6, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->getFillInIntentOfDeleteIcon(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 395
    const v4, 0x7f090004

    invoke-virtual {v3, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 406
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #entry:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    .end local v2           #favoirteClickIntent:Landroid/content/Intent;
    :goto_3
    return-object v3

    .line 370
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #entry:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    :cond_0
    invoke-virtual {v3, v12, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 371
    const-string v4, "setVideoUriWithoutOpenVideo"

    iget-object v5, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->videoUri:Ljava/lang/String;

    invoke-virtual {v3, v10, v4, v5}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v4, "setAudioMute"

    const/4 v5, 0x1

    invoke-virtual {v3, v10, v4, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v4, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->videoUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 380
    :cond_2
    if-nez v0, :cond_3

    .line 383
    iget-object v4, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->contactUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->dbId:I

    invoke-direct {p0, v4, v5}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->getFillInIntentForPickVideo(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v2

    .restart local v2       #favoirteClickIntent:Landroid/content/Intent;
    goto :goto_2

    .line 386
    .end local v2           #favoirteClickIntent:Landroid/content/Intent;
    :cond_3
    iget-object v4, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->contactUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->dbId:I

    invoke-direct {p0, v4, v5}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->getFillInIntentFor(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v2

    .restart local v2       #favoirteClickIntent:Landroid/content/Intent;
    goto :goto_2

    .line 396
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #entry:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    .end local v2           #favoirteClickIntent:Landroid/content/Intent;
    .end local v3           #rv:Landroid/widget/RemoteViews;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p1, v4, :cond_5

    .line 397
    const-string v4, "WidgetAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getViewAt(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", totalFavorites:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": getAddIcon()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->getAddIcon()Landroid/widget/RemoteViews;

    move-result-object v3

    .restart local v3       #rv:Landroid/widget/RemoteViews;
    goto :goto_3

    .line 401
    .end local v3           #rv:Landroid/widget/RemoteViews;
    :cond_5
    const-string v4, "WidgetAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getViewAt(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", totalFavorites:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": getEmptyView()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->getEmptyView()Landroid/widget/RemoteViews;

    move-result-object v3

    .restart local v3       #rv:Landroid/widget/RemoteViews;
    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mPackageName:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mResolver:Landroid/content/ContentResolver;

    .line 271
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mPackageName:Ljava/lang/String;

    const v2, 0x7f030002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mAddView:Landroid/widget/RemoteViews;

    .line 272
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mAddView:Landroid/widget/RemoteViews;

    const v1, 0x7f090009

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 273
    return-void
.end method

.method public loadEntries()V
    .locals 10

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->refreshContactdata()Z

    .line 435
    iget-object v9, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    monitor-enter v9

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/mediatek/videofavorites/WidgetAdapter;->access$200()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->selection()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 438
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 439
    invoke-direct {p0, v6}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->updateColumnIndex(Landroid/database/Cursor;)V

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 443
    .local v7, count:I
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 444
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 446
    iget v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexVideoUri:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexStorage:I

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/mediatek/videofavorites/VideoFavoritesProvider;->getRealVideoURI(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, realVideoUri:Ljava/lang/String;
    new-instance v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;

    iget v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexName:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexContactUri:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mIndexId:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;-><init>(Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 451
    .local v0, fe:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    const-string v1, "WidgetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding entry: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->dbId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->videoUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->contactUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 444
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 456
    .end local v0           #fe:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    .end local v2           #realVideoUri:Ljava/lang/String;
    :cond_0
    const-string v1, "WidgetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entry loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 458
    monitor-exit v9

    .line 459
    return-void

    .line 458
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .end local v8           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onContactDataChanged()V
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->refreshContactdata()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    #calls: Lcom/mediatek/videofavorites/WidgetAdapter;->sendRefreshBroadcast()V
    invoke-static {v0}, Lcom/mediatek/videofavorites/WidgetAdapter;->access$500(Lcom/mediatek/videofavorites/WidgetAdapter;)V

    .line 594
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 467
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->loadEntries()V

    .line 468
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->loadEntries()V

    .line 475
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 482
    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/mediatek/videofavorites/WidgetAdapter;->access$200()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public refreshContactdata()Z
    .locals 18

    .prologue
    .line 527
    const/4 v14, 0x0

    .line 528
    .local v14, uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 530
    .local v12, nameChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 531
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 532
    const/4 v1, 0x0

    monitor-exit v17

    .line 584
    :goto_0
    return v1

    .line 535
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 537
    .local v8, count:I
    const/4 v10, 0x0

    .local v10, i:I
    move-object v15, v14

    .end local v14           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v15, uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-ge v10, v8, :cond_7

    .line 538
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mFavoriteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;

    .line 539
    .local v9, fe:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    iget-object v1, v9, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->contactUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object v14, v15

    .line 537
    .end local v15           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object v15, v14

    .end local v14           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 543
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, v9, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->contactUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/videofavorites/WidgetAdapter;->access$400()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 546
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 547
    :cond_3
    const-string v1, "WidgetAdapter"

    const-string v2, "a contact url is gone"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-nez v15, :cond_c

    .line 549
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    .end local v15           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    :try_start_2
    iget-object v1, v9, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->contactUri:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :goto_4
    if-eqz v7, :cond_1

    .line 570
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 582
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #count:I
    .end local v9           #fe:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    .end local v10           #i:I
    :catchall_0
    move-exception v1

    :goto_5
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 553
    .end local v14           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #count:I
    .restart local v9       #fe:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    .restart local v10       #i:I
    .restart local v15       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 554
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 556
    .local v11, name:Ljava/lang/String;
    iget-object v1, v9, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    if-nez v1, :cond_5

    if-nez v11, :cond_6

    :cond_5
    iget-object v1, v9, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, v9, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 558
    :cond_6
    const-string v1, "WidgetAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v9, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->dbId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 562
    .local v13, target:Landroid/net/Uri;
    new-instance v16, Landroid/content/ContentValues;

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 563
    .local v16, v:Landroid/content/ContentValues;
    const-string v1, "name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v13, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 565
    const/4 v12, 0x1

    move-object v14, v15

    .end local v15           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_4

    .line 574
    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #fe:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    .end local v11           #name:Ljava/lang/String;
    .end local v13           #target:Landroid/net/Uri;
    .end local v14           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #v:Landroid/content/ContentValues;
    .restart local v15       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    if-eqz v15, :cond_8

    .line 575
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 576
    .restart local v16       #v:Landroid/content/ContentValues;
    const-string v1, "contact_uri"

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v1, "name"

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->selectionContactUri(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 582
    .end local v16           #v:Landroid/content/ContentValues;
    :cond_8
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 584
    if-nez v12, :cond_9

    if-eqz v15, :cond_a

    :cond_9
    const/4 v1, 0x1

    :goto_6
    move-object v14, v15

    .end local v15           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_0

    .end local v14           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    .line 582
    :catchall_1
    move-exception v1

    move-object v14, v15

    .end local v15           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_5

    .end local v14           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v9       #fe:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v15       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    move-object v14, v15

    .end local v15           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_4

    .end local v11           #name:Ljava/lang/String;
    .end local v14           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    move-object v14, v15

    .end local v15           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_3
.end method

.method protected selection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method
