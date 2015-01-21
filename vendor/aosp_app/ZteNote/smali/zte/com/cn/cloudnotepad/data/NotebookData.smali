.class public Lzte/com/cn/cloudnotepad/data/NotebookData;
.super Ljava/lang/Object;
.source "NotebookData.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/data/DataSchema;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    }
.end annotation


# static fields
.field public static final NOTEBOOK_SEQUENCE_SORT_ORDER:Ljava/lang/String; = "sequence COLLATE LOCALIZED ASC"

.field private static final PROJECTION_NOTEBOOK:[Ljava/lang/String;

.field public static mNotebookList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 17
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 18
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 19
    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 20
    const-string v2, "cover"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 21
    const-string v2, "sequence"

    aput-object v2, v0, v1

    .line 16
    sput-object v0, Lzte/com/cn/cloudnotepad/data/NotebookData;->PROJECTION_NOTEBOOK:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private doGetNotebookList()V
    .locals 8

    .prologue
    .line 55
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    const/4 v6, 0x0

    .line 58
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->PROJECTION_NOTEBOOK:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sequence COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 66
    if-eqz v6, :cond_0

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_0
    :goto_1
    return-void

    .line 60
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    move-result-object v7

    .line 61
    .local v7, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v1, v7, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 63
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    :catch_0
    move-exception v0

    .line 66
    if-eqz v6, :cond_0

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    if-eqz v6, :cond_2

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_2
    throw v0
.end method

.method private getNotebookData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 101
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;-><init>()V

    .line 102
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->id:I

    .line 103
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    .line 104
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->number:I

    .line 105
    const-string v1, "cover"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    .line 106
    const-string v1, "sequence"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    .line 107
    return-object v0
.end method

.method public static getTotalNotesNumber()I
    .locals 3

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, total:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 173
    return v1

    .line 171
    :cond_0
    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->number:I

    add-int/2addr v1, v2

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteNotebookData(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 120
    :try_start_0
    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNameDuplicate(Ljava/lang/String;)Z
    .locals 2
    .parameter "newnotebookName"

    .prologue
    .line 160
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 165
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 161
    :cond_0
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const/4 v1, 0x1

    goto :goto_1

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNotebookIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "notebookTitle"

    .prologue
    .line 150
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 151
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 156
    const/4 v1, 0x2

    :goto_1
    return v1

    .line 152
    :cond_0
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    add-int/lit8 v1, v0, -0x2

    goto :goto_1

    .line 151
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNotebookList()V
    .locals 2

    .prologue
    .line 49
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 50
    :try_start_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->doGetNotebookList()V

    .line 49
    monitor-exit v1

    .line 52
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertNoteBookData(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public insertNoteBookData(Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "number"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v1, "title"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "cover"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "sequence"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->insertNoteBookData(Landroid/content/ContentValues;)V

    .line 97
    return-void
.end method

.method public saveNotebookData(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updataNotebookData(Landroid/content/ContentValues;I)V
    .locals 4
    .parameter "values"
    .parameter "id"

    .prologue
    .line 129
    :try_start_0
    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 130
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateNoteBookData(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :goto_0
    return v1

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNotebookData()V
    .locals 6

    .prologue
    .line 137
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 138
    .local v2, size:I
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 147
    return-void

    .line 139
    :cond_0
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 140
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "number"

    iget v5, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->number:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v4, "title"

    iget-object v5, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v4, "cover"

    iget v5, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v4, "sequence"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    iget v4, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->id:I

    invoke-virtual {p0, v3, v4}, Lzte/com/cn/cloudnotepad/data/NotebookData;->updataNotebookData(Landroid/content/ContentValues;I)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
