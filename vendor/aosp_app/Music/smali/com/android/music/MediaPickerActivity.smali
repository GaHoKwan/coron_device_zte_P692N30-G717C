.class public Lcom/android/music/MediaPickerActivity;
.super Landroid/app/ListActivity;
.source "MediaPickerActivity.java"

# interfaces
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPickerActivity$PickListAdapter;
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mFirstYear:Ljava/lang/String;

.field private mLastYear:Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 256
    const-string v0, "title COLLATE UNICODE"

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private MakeCursor()V
    .locals 19

    .prologue
    .line 172
    const/4 v1, 0x7

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v6, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v6, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v6, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v6, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v6, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v6, v1

    const/4 v1, 0x6

    const-string v2, "year"

    aput-object v2, v6, v1

    .line 181
    .local v6, audiocols:[Ljava/lang/String;
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v3, v1

    .line 195
    .local v3, videocols:[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v14, cList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 197
    .local v16, intent:Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    .line 199
    .local v18, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 202
    const-string v1, "video/*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    .line 253
    .end local v6           #audiocols:[Ljava/lang/String;
    :goto_0
    return-void

    .line 207
    .restart local v6       #audiocols:[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "year>="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/music/MediaPickerActivity;->mWhereClause:Ljava/lang/String;

    .line 216
    :cond_1
    const-string v1, "video/*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    .end local v6           #audiocols:[Ljava/lang/String;
    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 220
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 221
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 243
    .local v17, size:I
    if-nez v17, :cond_5

    .line 245
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 224
    .end local v13           #c:Landroid/database/Cursor;
    .end local v17           #size:I
    .restart local v6       #audiocols:[Ljava/lang/String;
    :cond_3
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/music/MediaPickerActivity;->mWhereClause:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 227
    .restart local v13       #c:Landroid/database/Cursor;
    if-eqz v13, :cond_4

    .line 228
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v7, p0

    move-object v9, v3

    invoke-static/range {v7 .. v12}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 235
    if-eqz v13, :cond_2

    .line 236
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    .end local v6           #audiocols:[Ljava/lang/String;
    .restart local v17       #size:I
    :cond_5
    move/from16 v0, v17

    new-array v15, v0, [Landroid/database/Cursor;

    .line 251
    .local v15, cs:[Landroid/database/Cursor;
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    .end local v15           #cs:[Landroid/database/Cursor;
    check-cast v15, [Landroid/database/Cursor;

    .line 252
    .restart local v15       #cs:[Landroid/database/Cursor;
    new-instance v1, Lcom/android/music/SortCursor;

    const-string v2, "title"

    invoke-direct {v1, v15, v2}, Lcom/android/music/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_0
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 113
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 115
    invoke-direct {p0}, Lcom/android/music/MediaPickerActivity;->MakeCursor()V

    .line 116
    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Lcom/android/music/MediaPickerActivity$PickListAdapter;

    const v2, 0x7f030015

    iget-object v3, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    new-array v5, v5, [I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/MediaPickerActivity$PickListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 127
    .local v0, adapter:Lcom/android/music/MediaPickerActivity$PickListAdapter;
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstyear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lastyear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 98
    :goto_0
    invoke-static {p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 99
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->init()V

    .line 100
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 105
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 133
    iget-object v6, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 134
    iget-object v6, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v8, "mime_type"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, type:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    const-string v6, "video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 144
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 152
    .local v2, mediaId:J
    :goto_0
    const/4 v6, -0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 169
    .end local v2           #mediaId:J
    .end local v5           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 147
    :cond_0
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 148
    .restart local v5       #uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .restart local v2       #mediaId:J
    goto :goto_0

    .line 159
    .end local v2           #mediaId:J
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_2

    .line 161
    :try_start_0
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_2
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, intent:Landroid/content/Intent;
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 162
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    goto :goto_2
.end method
