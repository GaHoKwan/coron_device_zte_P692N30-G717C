.class public Lcom/mediatek/gallery3d/video/BookmarkEnhance;
.super Ljava/lang/Object;
.source "BookmarkEnhance.java"


# static fields
.field private static final BOOKMARK_URI:Landroid/net/Uri; = null

.field public static final COLUMN_ADD_DATE:Ljava/lang/String; = "date_added"

.field public static final COLUMN_DATA:Ljava/lang/String; = "_data"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "mime_type"

.field private static final COLUMN_MIME_TYPE:Ljava/lang/String; = "media_type"

.field private static final COLUMN_POSITION:Ljava/lang/String; = "position"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "_display_name"

.field public static final INDEX_ADD_DATE:I = 0x3

.field public static final INDEX_DATA:I = 0x1

.field public static final INDEX_ID:I = 0x0

.field private static final INDEX_MEDIA_TYPE:I = 0x6

.field public static final INDEX_MIME_TYPE:I = 0x4

.field private static final INDEX_POSITION:I = 0x5

.field public static final INDEX_TITLE:I = 0x2

.field private static final LOG:Z = true

.field private static final NULL_HOCK:Ljava/lang/String; = "position"

.field public static final ORDER_COLUMN:Ljava/lang/String; = "date_added ASC "

.field public static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/BookmarkEnhance"

.field private static final VIDEO_STREAMING_MEDIA_TYPE:Ljava/lang/String; = "streaming"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-string v0, "content://media/internal/bookmark"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->BOOKMARK_URI:Landroid/net/Uri;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "media_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->mCr:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method


# virtual methods
.method public delete(J)I
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 72
    sget-object v2, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->BOOKMARK_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 73
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, count:I
    const-string v2, "Gallery2/VideoPlayer/BookmarkEnhance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v0
.end method

.method public deleteAll()I
    .locals 7

    .prologue
    .line 81
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->mCr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->BOOKMARK_URI:Landroid/net/Uri;

    const-string v3, "mime_type=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "streaming"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, count:I
    const-string v1, "Gallery2/VideoPlayer/BookmarkEnhance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAll() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 9
    .parameter "uri"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->BOOKMARK_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=? and mime_type=? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v8, "streaming"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 95
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 96
    .local v7, exist:Z
    if-eqz v6, :cond_0

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_0
    const-string v0, "Gallery2/VideoPlayer/BookmarkEnhance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exists("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v7
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 6
    .parameter "title"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "position"

    .prologue
    .line 56
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v2, values:Landroid/content/ContentValues;
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->mContext:Landroid/content/Context;

    const v4, 0x7f0c022a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, mytitle:Ljava/lang/String;
    :goto_0
    const-string v3, "_display_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v3, "_data"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "position"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v3, "mime_type"

    const-string v4, "streaming"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "media_type"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->mCr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->BOOKMARK_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    .local v0, insertUri:Landroid/net/Uri;
    const-string v3, "Gallery2/VideoPlayer/BookmarkEnhance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-object v0

    .end local v0           #insertUri:Landroid/net/Uri;
    .end local v1           #mytitle:Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 57
    goto :goto_0
.end method

.method public query()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->BOOKMARK_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->PROJECTION:[Ljava/lang/String;

    const-string v3, "mime_type=\'streaming\' "

    const/4 v4, 0x0

    const-string v5, "date_added ASC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, cursor:Landroid/database/Cursor;
    const-string v1, "Gallery2/VideoPlayer/BookmarkEnhance"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query() return cursor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v6, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v6

    .line 114
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public update(JLjava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .parameter "id"
    .parameter "title"
    .parameter "uri"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 120
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_display_name"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "_data"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "position"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    sget-object v3, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->BOOKMARK_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 125
    .local v1, updateUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, count:I
    const-string v3, "Gallery2/VideoPlayer/BookmarkEnhance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v0
.end method
