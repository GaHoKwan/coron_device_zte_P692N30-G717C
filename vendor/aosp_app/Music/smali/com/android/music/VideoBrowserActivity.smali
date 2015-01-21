.class public Lcom/android/music/VideoBrowserActivity;
.super Landroid/app/ListActivity;
.source "VideoBrowserActivity.java"

# interfaces
.implements Lcom/android/music/MusicUtils$Defs;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mSortOrder:Ljava/lang/String;

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 72
    return-void
.end method

.method private MakeCursor()V
    .locals 6

    .prologue
    .line 126
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "mime_type"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "artist"

    aput-object v3, v2, v1

    .line 133
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 135
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "resolver = null"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v1, "title COLLATE UNICODE"

    iput-object v1, p0, Lcom/android/music/VideoBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 138
    const-string v1, "title != \'\'"

    iput-object v1, p0, Lcom/android/music/VideoBrowserActivity;->mWhereClause:Ljava/lang/String;

    .line 139
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/music/VideoBrowserActivity;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/VideoBrowserActivity;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/VideoBrowserActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 87
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lcom/android/music/VideoBrowserActivity;->MakeCursor()V

    .line 91
    iget-object v1, p0, Lcom/android/music/VideoBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 93
    invoke-static {p0, v5}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Z)V

    .line 112
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/music/VideoBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 98
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 104
    :goto_1
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/android/music/VideoBrowserActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 111
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 100
    .end local v0           #adapter:Landroid/widget/SimpleCursorAdapter;
    :cond_1
    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/music/VideoBrowserActivity;->init()V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/music/VideoBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/music/VideoBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 150
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/music/VideoBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 119
    iget-object v2, p0, Lcom/android/music/VideoBrowserActivity;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/VideoBrowserActivity;->mCursor:Landroid/database/Cursor;

    const-string v4, "mime_type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, type:Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method
