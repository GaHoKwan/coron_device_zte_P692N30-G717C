.class public Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
.super Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;
.source "BookmarkProxy.java"


# static fields
.field private static final BOOKMARKS_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    .line 73
    const-string v0, "content://com.android.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->BOOKMARKS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;-><init>(Landroid/content/Context;)V

    .line 82
    const-string v0, "BookmarkProxy"

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setProxyName(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    const-class v1, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    .line 96
    :goto_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    invoke-virtual {v0, p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public asynGetAllBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 27
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    .local p2, mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v21, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    const/4 v8, 0x0

    .line 117
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "deleted=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 119
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 120
    .local v14, iId:I
    const-string v2, "title"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 121
    .local v17, iTitle:I
    const-string v2, "url"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 122
    .local v18, iUrl:I
    const-string v2, "folder"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 123
    .local v13, iFolder:I
    const-string v2, "parent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 125
    .local v16, iParent:I
    const-string v2, "created"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 126
    .local v12, iCreate:I
    const-string v2, "modified"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 129
    .local v15, iModified:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 131
    .local v9, folder:I
    if-nez v9, :cond_3

    .line 132
    new-instance v25, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;

    invoke-direct/range {v25 .. v25}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;-><init>()V

    .line 133
    .local v25, tempData:Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->setId(I)V

    .line 134
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->setTitle(Ljava/lang/String;)V

    .line 135
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->setUrl(Ljava/lang/String;)V

    .line 136
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 137
    .local v10, i:I
    const/4 v2, 0x1

    if-ne v10, v2, :cond_2

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->setFolderId(I)V

    .line 142
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->setBookmark(I)V

    .line 143
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->setFavicon([B)V

    .line 144
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->setCreated(J)V

    .line 145
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->setModified(J)V

    .line 146
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 212
    .end local v9           #folder:I
    .end local v10           #i:I
    .end local v25           #tempData:Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_1

    .line 213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    .line 140
    .restart local v9       #folder:I
    .restart local v10       #i:I
    .restart local v25       #tempData:Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;
    :cond_2
    :try_start_1
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->setFolderId(I)V

    goto :goto_1

    .line 149
    .end local v10           #i:I
    .end local v25           #tempData:Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;
    :cond_3
    new-instance v26, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    invoke-direct/range {v26 .. v26}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;-><init>()V

    .line 150
    .local v26, tempFolder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->setId(I)V

    .line 151
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->setName(Ljava/lang/String;)V

    .line 152
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 153
    .restart local v10       #i:I
    const/4 v2, 0x1

    if-lt v10, v2, :cond_0

    .line 155
    const/4 v2, 0x1

    if-ne v10, v2, :cond_4

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->setParentId(I)V

    .line 160
    :goto_2
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->setDate(J)V

    .line 161
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 158
    :cond_4
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->setParentId(I)V

    goto :goto_2

    .line 166
    .end local v9           #folder:I
    .end local v10           #i:I
    .end local v26           #tempFolder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V

    .line 168
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v23, removeFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    const/16 v19, 0x0

    .line 171
    .local v19, id:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    .line 172
    .local v24, temp:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getParentId()I

    move-result v19

    .line 173
    :goto_4
    if-eqz v19, :cond_6

    .line 174
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    .line 175
    .local v9, folder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    if-nez v9, :cond_7

    .line 176
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 180
    :cond_7
    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getParentId()I

    move-result v19

    goto :goto_4

    .line 183
    .end local v9           #folder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    .end local v24           #temp:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFolders size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Folder size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V

    .line 186
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_b

    .line 187
    const/16 v20, 0x1

    .line 188
    .local v20, level:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    .line 189
    .restart local v26       #tempFolder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    .line 190
    .restart local v24       #temp:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    :cond_9
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getParentId()I

    move-result v2

    if-eqz v2, :cond_a

    .line 191
    add-int/lit8 v20, v20, 0x1

    .line 192
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getParentId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #temp:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    check-cast v24, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    .line 193
    .restart local v24       #temp:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    if-nez v24, :cond_9

    .line 197
    :cond_a
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->setFolderLevel(I)V

    .line 186
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 199
    .end local v20           #level:I
    .end local v24           #temp:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    .end local v26           #tempFolder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    :cond_b
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v22, removeDatas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;

    .line 201
    .local v24, temp:Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->getFolderId()I

    move-result v2

    if-eqz v2, :cond_c

    .line 204
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->getFolderId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    .line 205
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 208
    .end local v24           #temp:Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDatas size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    if-eqz v8, :cond_e

    .line 213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_e
    return-void
.end method

.method public deleteAll()V
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v2, "_id<>1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public insertBookmark(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    .local p2, mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InsertBookmark: BookmarkData size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " BookmarkFolder size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    const/4 v8, 0x0

    .line 231
    .local v8, maxLevel:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    .line 232
    .local v2, folder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getFolderLevel()I

    move-result v11

    if-ge v8, v11, :cond_0

    .line 234
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getFolderLevel()I

    move-result v8

    goto :goto_0

    .line 237
    .end local v2           #folder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    :cond_1
    const/4 v4, 0x1

    .local v4, i:I
    :goto_1
    if-gt v4, v8, :cond_6

    .line 238
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    .line 239
    .restart local v2       #folder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getFolderLevel()I

    move-result v11

    if-ne v4, v11, :cond_2

    .line 240
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "title"

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v11, "folder"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const/4 v3, -0x1

    .line 244
    .local v3, folderId:I
    const/4 v11, 0x1

    if-ne v11, v4, :cond_3

    .line 245
    const/4 v3, 0x1

    .line 254
    :goto_3
    const-string v11, "parent"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 262
    .local v9, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 267
    .local v6, iNewId:I
    :goto_4
    invoke-virtual {v2, v6}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->setId(I)V

    goto :goto_2

    .line 246
    .end local v6           #iNewId:I
    .end local v9           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getParentId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_4

    .line 247
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Insert folder: map return null, key is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getParentId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getParentId()I

    move-result v3

    goto :goto_3

    .line 252
    :cond_4
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getParentId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getId()I

    move-result v3

    goto :goto_3

    .line 263
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 264
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    const/4 v6, 0x1

    .restart local v6       #iNewId:I
    goto :goto_4

    .line 237
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #folder:Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;
    .end local v3           #folderId:I
    .end local v6           #iNewId:I
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 272
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;

    .line 273
    .local v0, data:Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v11, "title"

    invoke-virtual {v0}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v11, "url"

    invoke-virtual {v0}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v11, "folder"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const/4 v3, -0x1

    .line 278
    .restart local v3       #folderId:I
    invoke-virtual {v0}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->getFolderId()I

    move-result v11

    if-nez v11, :cond_7

    .line 279
    const/4 v3, 0x1

    .line 288
    :goto_6
    const-string v11, "parent"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_5

    .line 280
    :cond_7
    invoke-virtual {v0}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->getFolderId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_8

    .line 281
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Insert data: map return null, key is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->getFolderId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->getFolderId()I

    move-result v3

    goto :goto_6

    .line 286
    :cond_8
    invoke-virtual {v0}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;->getFolderId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;->getId()I

    move-result v3

    goto :goto_6

    .line 295
    .end local v0           #data:Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;
    .end local v3           #folderId:I
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_9
    return-void
.end method
