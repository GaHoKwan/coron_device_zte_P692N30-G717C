.class public Lcom/android/browser/BrowserSnapshotPage;
.super Landroid/app/Fragment;
.source "BrowserSnapshotPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final EXTRA_ANIMATE_ID:Ljava/lang/String; = "animate_id"

.field private static final LOADER_SNAPSHOTS:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SNAPSHOT_DATE_CREATED:I = 0x6

.field private static final SNAPSHOT_FAVICON:I = 0x4

.field private static final SNAPSHOT_ID:I = 0x0

.field private static final SNAPSHOT_THUMBNAIL:I = 0x3

.field private static final SNAPSHOT_TITLE:I = 0x1

.field private static final SNAPSHOT_URL:I = 0x5

.field private static final SNAPSHOT_VIEWSTATE_SIZE:I = 0x2


# instance fields
.field mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

.field mAnimateId:J

.field mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

.field mEmpty:Landroid/view/View;

.field mGrid:Landroid/widget/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "viewstate_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_created"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BrowserSnapshotPage;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 236
    return-void
.end method

.method static getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 177
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 178
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 179
    const/4 v1, 0x0

    .line 181
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;)V
    .locals 1
    .parameter "cursor"
    .parameter "item"

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/browser/BrowserSnapshotPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 174
    return-void
.end method


# virtual methods
.method deleteSnapshot(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 219
    sget-object v2, Lcom/android/browser/provider/SnapshotProvider$Snapshots;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/browser/BrowserSnapshotPage$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/browser/BrowserSnapshotPage$1;-><init>(Lcom/android/browser/BrowserSnapshotPage;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 228
    return-void
.end method

.method getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;
    .locals 1
    .parameter "menuInfo"

    .prologue
    .line 187
    instance-of v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p1
    iget-object v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 193
    :goto_0
    return-object v0

    .line 190
    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-eqz v0, :cond_1

    .line 191
    check-cast p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .end local p1
    iget-object v0, p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    goto :goto_0

    .line 193
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0d00a8

    if-ne v3, v4, :cond_2

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 200
    .local v0, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    if-nez v0, :cond_1

    .line 215
    .end local v0           #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_0
    :goto_0
    return v2

    .line 203
    .restart local v0       #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSnapshotPage;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, targetView:Landroid/view/View;
    instance-of v3, v1, Lcom/android/browser/HistoryItem;

    if-nez v3, :cond_0

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_0

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v2, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/BrowserSnapshotPage;->deleteSnapshot(J)V

    .line 210
    const/4 v2, 0x1

    goto :goto_0

    .line 215
    .end local v0           #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    .end local v1           #targetView:Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/browser/CombinedBookmarksCallbacks;

    iput-object v0, p0, Lcom/android/browser/BrowserSnapshotPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "animate_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/BrowserSnapshotPage;->mAnimateId:J

    .line 90
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 161
    .local v1, inflater:Landroid/view/MenuInflater;
    const v3, 0x7f100008

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 163
    new-instance v0, Lcom/android/browser/BookmarkItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, header:Lcom/android/browser/BookmarkItem;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/browser/BookmarkItem;->setEnableScrolling(Z)V

    move-object v2, p3

    .line 165
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 166
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/browser/BrowserSnapshotPage;->populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;)V

    .line 167
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 168
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 125
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 126
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/browser/provider/SnapshotProvider$Snapshots;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/browser/BrowserSnapshotPage;->PROJECTION:[Ljava/lang/String;

    const-string v6, "date_created DESC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v4

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 95
    const v1, 0x7f04002f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, view:Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserSnapshotPage;->mEmpty:Landroid/view/View;

    .line 97
    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/browser/BrowserSnapshotPage;->mGrid:Landroid/widget/GridView;

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserSnapshotPage;->setupGrid(Landroid/view/LayoutInflater;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 100
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 107
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 109
    iput-object v2, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    .line 111
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    invoke-interface {v0, p4, p5}, Lcom/android/browser/CombinedBookmarksCallbacks;->openSnapshot(J)V

    .line 234
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-wide/16 v6, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    if-nez v1, :cond_2

    .line 137
    new-instance v1, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, p2}, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    .line 138
    iget-object v1, p0, Lcom/android/browser/BrowserSnapshotPage;->mGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    :goto_0
    iget-wide v4, p0, Lcom/android/browser/BrowserSnapshotPage;->mAnimateId:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    iget-wide v4, p0, Lcom/android/browser/BrowserSnapshotPage;->mAnimateId:J

    invoke-virtual {v1, v4, v5}, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->animateIn(J)V

    .line 144
    iput-wide v6, p0, Lcom/android/browser/BrowserSnapshotPage;->mAnimateId:J

    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "animate_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    .line 148
    .local v0, empty:Z
    iget-object v4, p0, Lcom/android/browser/BrowserSnapshotPage;->mGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/android/browser/BrowserSnapshotPage;->mEmpty:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .end local v0           #empty:Z
    :cond_1
    return-void

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserSnapshotPage;->mAdapter:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .restart local v0       #empty:Z
    :cond_3
    move v1, v3

    .line 148
    goto :goto_1

    :cond_4
    move v3, v2

    .line 149
    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserSnapshotPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method setupGrid(Landroid/view/LayoutInflater;)V
    .locals 6
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 114
    const v3, 0x7f04002e

    iget-object v4, p0, Lcom/android/browser/BrowserSnapshotPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, item:Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 116
    .local v1, mspec:I
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 118
    .local v2, width:I
    iget-object v3, p0, Lcom/android/browser/BrowserSnapshotPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 119
    iget-object v3, p0, Lcom/android/browser/BrowserSnapshotPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object v3, p0, Lcom/android/browser/BrowserSnapshotPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 121
    return-void
.end method