.class public Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseNotesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseGridItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mCurrPosition:I

.field protected mGroupPosition:I

.field private mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

.field private mPosInSortList:I

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "groupPosition"

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->startTime:J

    .line 183
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    .line 184
    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mGroupPosition:I

    .line 185
    instance-of v0, p1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    if-eqz v0, :cond_1

    .line 186
    check-cast p1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    .end local p1
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    .line 187
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mGroupPosition:I

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mCurrPosition:I

    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->getNotesSortList(Lzte/com/cn/cloudnotepad/data/NotesData;II)V

    .line 192
    :cond_0
    :goto_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mGroupPosition:I

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->getNotePosInSortListByGroupPos(Lzte/com/cn/cloudnotepad/data/NotesData;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mPosInSortList:I

    .line 193
    return-void

    .line 188
    .restart local p1
    :cond_1
    instance-of v0, p1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    if-eqz v0, :cond_0

    .line 189
    check-cast p1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .end local p1
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    goto :goto_0
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->showNoteOptionPopupWindow(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createContentThumbnail(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "data"
    .parameter "thumbnail"

    .prologue
    .line 345
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;

    invoke-direct {v0, p0, p2, p1}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;-><init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;Landroid/widget/ImageView;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    .line 359
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;

    invoke-direct {v1, p0, p1, v0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;-><init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Landroid/os/Handler;)V

    .line 370
    .local v1, r:Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method private getChild(II)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 395
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    return-object v1
.end method

.method private getCoverDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "noteId"

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->getMemoryCache()Lzte/com/cn/cloudnotepad/ui/MemoryCache;

    move-result-object v0

    .line 377
    .local v0, cache:Lzte/com/cn/cloudnotepad/ui/MemoryCache;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "cover_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lzte/com/cn/cloudnotepad/ui/MemoryCache;->contain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    invoke-virtual {v0, v3}, Lzte/com/cn/cloudnotepad/ui/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 390
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 384
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v4, "BaseNotesListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCoverDrawable() not contain key, noteId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cover_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getContentDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 387
    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v0, v3, v1}, Lzte/com/cn/cloudnotepad/ui/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object v2, v1

    .line 390
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private getNotePosInSortListByGroupPos(Lzte/com/cn/cloudnotepad/data/NotesData;I)I
    .locals 5
    .parameter "notesData"
    .parameter "groupPosition"

    .prologue
    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, pos:I
    iget-object v4, p1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 199
    .local v2, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 205
    return v3

    .line 200
    :cond_0
    iget-object v4, p1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, key:Ljava/lang/String;
    if-ge v0, p2, :cond_1

    .line 202
    iget-object v4, p1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private showNoteOptionPopupWindow(Landroid/view/View;II)V
    .locals 5
    .parameter "button"
    .parameter "groupPosition"
    .parameter "position"

    .prologue
    .line 401
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 402
    .local v1, mPopupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0b0002

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 403
    invoke-direct {p0, p2, p3}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->getChild(II)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v0

    .line 404
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    new-instance v2, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$4;

    invoke-direct {v2, p0, v0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$4;-><init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 412
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const/4 v1, 0x0

    .line 215
    :goto_0
    return v1

    .line 214
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mGroupPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 221
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mGroupPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 227
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->startTime:J

    .line 248
    :cond_0
    if-eqz p2, :cond_2

    .line 249
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;

    .line 250
    .local v5, holder:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;
    move-object v7, p2

    .line 264
    .local v7, view:Landroid/view/View;
    :goto_0
    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mGroupPosition:I

    invoke-direct {p0, v8, p1}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->getChild(II)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v1

    .line 265
    .local v1, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    iget-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget v9, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 266
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "cover_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getContentDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 268
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_3

    .line 272
    iget-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    const v9, 0x7f0200b1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v8}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->createContentThumbnail(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Landroid/widget/ImageView;)V

    .line 285
    :goto_1
    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mPosInSortList:I

    add-int/2addr v8, p1

    iput v8, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mCurrPosition:I

    .line 288
    iget-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->optionButton:Landroid/view/View;

    new-instance v9, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$1;

    invoke-direct {v9, p0, p1}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$1;-><init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->created:Landroid/widget/TextView;

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    iget-wide v10, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    invoke-static {v9, v10, v11}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->optionButton:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->selected:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 301
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v8, v8, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    .line 302
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v9, v9, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    iget v10, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mGroupPosition:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 301
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 302
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 303
    .local v0, count:I
    add-int/lit8 v8, v0, -0x1

    if-ne p1, v8, :cond_1

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 307
    .local v3, endTime:J
    const/high16 v8, 0x3f80

    iget-wide v9, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->startTime:J

    sub-long v9, v3, v9

    long-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x447a

    div-float v6, v8, v9

    .line 308
    .local v6, val:F
    const-string v9, "BaseNotesListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "getView() cost : "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " s; group = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v8, v8, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    iget v11, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mGroupPosition:I

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v3           #endTime:J
    .end local v6           #val:F
    :cond_1
    return-object v7

    .line 253
    .end local v0           #count:I
    .end local v1           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #holder:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;
    .end local v7           #view:Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030024

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 254
    move-object v7, p2

    .line 255
    .restart local v7       #view:Landroid/view/View;
    new-instance v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;

    invoke-direct {v5}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;-><init>()V

    .line 256
    .restart local v5       #holder:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;
    const v8, 0x7f0600b1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 257
    const v8, 0x7f0600b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->created:Landroid/widget/TextView;

    .line 258
    const v8, 0x7f0600b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 259
    const v8, 0x7f0600b5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->optionButton:Landroid/view/View;

    .line 260
    const v8, 0x7f0600b4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->selected:Landroid/widget/CheckBox;

    .line 261
    const v8, 0x7f0600b2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->bottomLayout:Landroid/widget/RelativeLayout;

    .line 262
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 279
    .restart local v1       #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v8, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method protected menuItemSelected(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "data"
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 420
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0600dd

    if-ne v4, v5, :cond_0

    .line 421
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughInternalStorage()Z

    move-result v4

    if-nez v4, :cond_0

    .line 422
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0900ad

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v3

    .line 462
    :goto_0
    return v2

    .line 426
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0600de

    if-eq v4, v5, :cond_1

    .line 427
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0600df

    if-ne v4, v5, :cond_2

    .line 428
    :cond_1
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughExtStorage()Z

    move-result v4

    if-nez v4, :cond_2

    .line 429
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0900ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v3

    .line 430
    goto :goto_0

    .line 434
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 436
    :pswitch_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    if-eqz v2, :cond_3

    .line 437
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->exitSearchMode()V

    .line 440
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "id"

    iget v4, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 443
    goto :goto_0

    .line 445
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateShareDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    move v2, v3

    .line 446
    goto :goto_0

    .line 448
    :pswitch_2
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateExportDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    move v2, v3

    .line 449
    goto :goto_0

    .line 451
    :pswitch_3
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateMoveAlertDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V

    move v2, v3

    .line 452
    goto :goto_0

    .line 454
    :pswitch_4
    new-instance v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 455
    .local v0, controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget v4, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-static {v2, v4, v0}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateDeleteAlertDlg(Landroid/app/Activity;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V

    move v2, v3

    .line 457
    goto/16 :goto_0

    .line 459
    .end local v0           #controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    :pswitch_5
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateInfoAlertDlg(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    move v2, v3

    .line 460
    goto/16 :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600dd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
