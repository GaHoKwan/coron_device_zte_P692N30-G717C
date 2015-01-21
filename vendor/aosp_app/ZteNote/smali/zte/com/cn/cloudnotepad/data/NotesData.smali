.class public Lzte/com/cn/cloudnotepad/data/NotesData;
.super Ljava/lang/Object;
.source "NotesData.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/data/DataSchema;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;,
        Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    }
.end annotation


# static fields
.field private static PROJECTION_NOTE:[Ljava/lang/String; = null

.field private static PROJECTION_NO_UUID:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "NotesData"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mNoteDateGroupListTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNoteDateGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;>;"
        }
    .end annotation
.end field

.field public mNoteDateGroupNumberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x0

    .line 35
    new-array v0, v4, [Ljava/lang/String;

    .line 36
    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 37
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 38
    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 40
    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 41
    const-string v2, "updated"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 42
    const-string v2, "notebook"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 43
    const-string v2, "drawable_src"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 44
    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 45
    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 46
    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 47
    const-string v2, "map"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 48
    const-string v2, "wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 51
    const-string v2, "size"

    aput-object v2, v0, v1

    .line 35
    sput-object v0, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NO_UUID:[Ljava/lang/String;

    .line 57
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    .line 58
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NO_UUID:[Ljava/lang/String;

    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NO_UUID:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    const-string v1, "content_hash"

    aput-object v1, v0, v4

    .line 60
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "uuid"

    aput-object v2, v0, v1

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupNumberMap:Ljava/util/HashMap;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    .line 67
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/data/NotesData;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAddressKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "address"

    .prologue
    const v6, 0x7f090035

    .line 141
    if-nez p1, :cond_0

    .line 142
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    :goto_0
    return-object v4

    .line 144
    :cond_0
    const/4 v2, 0x0

    .line 147
    .local v2, root:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v2           #root:Lorg/json/JSONObject;
    .local v3, root:Lorg/json/JSONObject;
    :try_start_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    const v5, 0x7f090035

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    const-string v4, "Route"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    const v5, 0x7f090036

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_1
    move-object v4, p1

    .line 174
    goto :goto_0

    .line 151
    :cond_2
    const-string v4, "Marker"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    const-string v4, "Marker"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 153
    .local v1, jsonMarker:Lorg/json/JSONObject;
    const-string v4, "city"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    const-string v4, "city"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_1

    .line 157
    .end local v1           #jsonMarker:Lorg/json/JSONObject;
    .end local v3           #root:Lorg/json/JSONObject;
    .restart local v2       #root:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Lorg/json/JSONException;
    :goto_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 157
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #root:Lorg/json/JSONObject;
    .restart local v3       #root:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #root:Lorg/json/JSONObject;
    .restart local v2       #root:Lorg/json/JSONObject;
    goto :goto_2
.end method

.method private getNotesData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 301
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;-><init>()V

    .line 302
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    .line 303
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 304
    const-string v1, "content"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    .line 306
    const-string v1, "created"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    .line 307
    const-string v1, "updated"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    .line 308
    const-string v1, "notebook"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    .line 309
    const-string v1, "drawable_src"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    .line 310
    const-string v1, "longitude"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->longitude:I

    .line 311
    const-string v1, "latitude"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->latitude:I

    .line 312
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    .line 313
    const-string v1, "map"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    .line 314
    const-string v1, "wallpaper"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    .line 317
    const-string v1, "size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    .line 319
    const-string v1, "content_hash"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 320
    const-string v1, "uuid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 322
    return-object v0
.end method

.method private getSortOrder(I)Ljava/lang/String;
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 278
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotesData;->SortOrder:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private initNoteGroup(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .parameter "notebook"
    .parameter "sortOrder"
    .parameter "searchString"

    .prologue
    .line 212
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotesData;->resetNotesData()V

    .line 213
    const/4 v6, 0x0

    .line 215
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lzte/com/cn/cloudnotepad/data/NotesData;->getSortOrder(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 232
    if-eqz v6, :cond_1

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_1
    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    .line 237
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotesData;->sortGroupTitleList()V

    .line 239
    :cond_2
    :goto_1
    return-void

    .line 217
    :cond_3
    :try_start_1
    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v7

    .line 218
    .local v7, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const/4 v9, 0x1

    .line 219
    .local v9, shouldAdd:Z
    if-eqz p3, :cond_4

    .line 220
    invoke-direct {p0, v7, p3}, Lzte/com/cn/cloudnotepad/data/NotesData;->isSearchResult(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z

    move-result v9

    .line 223
    :cond_4
    if-eqz v9, :cond_0

    .line 224
    invoke-virtual {p0, p1, v7, p2}, Lzte/com/cn/cloudnotepad/data/NotesData;->addNoteData2Group(Ljava/lang/String;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 228
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .end local v9           #shouldAdd:Z
    :catch_0
    move-exception v8

    .line 232
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 231
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 232
    if-eqz v6, :cond_5

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_5
    throw v0
.end method

.method private isSearchResult(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z
    .locals 5
    .parameter "data"
    .parameter "searchString"

    .prologue
    .line 247
    iget-object v3, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    const/4 v2, 0x1

    .line 260
    :goto_0
    return v2

    .line 250
    :cond_0
    new-instance v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 251
    .local v0, controls:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    iget-object v3, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 252
    const/4 v2, 0x0

    .line 253
    .local v2, result:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 259
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->resetControls()V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    const/4 v2, 0x1

    .line 253
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setNoteDateGroupList(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V
    .locals 4
    .parameter "data"
    .parameter "groupKey"

    .prologue
    .line 179
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupNumberMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 182
    .local v1, number:I
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupNumberMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v1           #number:I
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupNumberMap:Ljava/util/HashMap;

    const-string v3, "1"

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addNoteData2Group(Ljava/lang/String;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;I)V
    .locals 2
    .parameter "notebook"
    .parameter "data"
    .parameter "sortOrder"

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    invoke-virtual {p0, p2, p3}, Lzte/com/cn/cloudnotepad/data/NotesData;->getGroupKey(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, groupKey:Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lzte/com/cn/cloudnotepad/data/NotesData;->setNoteDateGroupList(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V

    .line 198
    iget v1, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    .line 200
    .end local v0           #groupKey:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public deleteNoteData(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 347
    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 349
    .local v0, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getByNoteBookName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "notebook"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 357
    const/4 v6, 0x0

    .line 358
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 360
    .local v9, notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    const-string v3, "notebook= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 361
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    .end local v9           #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    .local v10, notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 371
    if-eqz v6, :cond_0

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v9, v10

    .line 369
    .end local v10           #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    .restart local v9       #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    :goto_1
    return-object v10

    .line 363
    .end local v9           #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    .restart local v10       #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v7

    .line 364
    .local v7, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 367
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    :catch_0
    move-exception v8

    move-object v9, v10

    .line 371
    .end local v10           #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    .local v8, e:Ljava/lang/Exception;
    .restart local v9       #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    :goto_2
    if-eqz v6, :cond_2

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v10, v11

    .line 369
    goto :goto_1

    .line 370
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 371
    :goto_3
    if-eqz v6, :cond_3

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_3
    throw v0

    .line 370
    .end local v9           #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    .restart local v10       #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    .restart local v9       #notesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    goto :goto_3

    .line 367
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public getGroupKey(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;I)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "sortOrder"

    .prologue
    .line 130
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 132
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 133
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/StringUtils;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 135
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/data/NotesData;->getAddressKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 436
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v9, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 439
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 440
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 450
    if-eqz v6, :cond_0

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 448
    .end local v9           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object v9

    .line 441
    .restart local v9       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v7

    .line 442
    .local v7, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 446
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    :catch_0
    move-exception v8

    .line 450
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v10

    .line 448
    goto :goto_1

    .line 449
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 450
    if-eqz v6, :cond_3

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_3
    throw v0
.end method

.method public getMapList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 415
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v9, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 418
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 419
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 429
    if-eqz v6, :cond_0

    .line 430
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 427
    .end local v9           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object v9

    .line 420
    .restart local v9       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v7

    .line 421
    .local v7, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    iget-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 425
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    :catch_0
    move-exception v8

    .line 429
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 430
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v10

    .line 427
    goto :goto_1

    .line 428
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 429
    if-eqz v6, :cond_3

    .line 430
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_3
    throw v0
.end method

.method public getNotebookDataGroupList(Ljava/lang/String;I)V
    .locals 1
    .parameter "notebook"
    .parameter "sortOrder"

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/data/NotesData;->initNoteGroup(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    return-void
.end method

.method public getNotebookGroupList(Ljava/lang/String;I)V
    .locals 0
    .parameter "notebook"
    .parameter "sortOrder"

    .prologue
    .line 268
    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookDataGroupList(Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method public getNotesData(I)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 282
    sget-object v0, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 283
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 285
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 286
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 292
    if-eqz v6, :cond_0

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v0

    .line 292
    if-eqz v6, :cond_1

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move-object v0, v7

    .line 296
    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    .line 292
    if-eqz v6, :cond_2

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_2
    throw v0

    .line 292
    :cond_3
    if-eqz v6, :cond_1

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public getSearchNoteDateGroupList(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "notebook"
    .parameter "sortOrder"
    .parameter "searchString"

    .prologue
    .line 243
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/data/NotesData;->initNoteGroup(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    return-void
.end method

.method public getWallPaperList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 394
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v9, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 397
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotesData;->PROJECTION_NOTE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 398
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 408
    if-eqz v6, :cond_0

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 406
    .end local v9           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object v9

    .line 399
    .restart local v9       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotesData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v7

    .line 400
    .local v7, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    iget-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 404
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    :catch_0
    move-exception v8

    .line 408
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v10

    .line 406
    goto :goto_1

    .line 407
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 408
    if-eqz v6, :cond_3

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_3
    throw v0
.end method

.method public resetNotesData()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 205
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupNumberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    .line 208
    return-void
.end method

.method public saveNoteData(Landroid/content/ContentValues;)I
    .locals 5
    .parameter "values"

    .prologue
    .line 327
    :try_start_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 328
    .local v2, note:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-int v1, v3

    .line 332
    .end local v2           #note:Landroid/net/Uri;
    :goto_0
    return v1

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sortGroupTitleList()V
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;-><init>(Lzte/com/cn/cloudnotepad/data/NotesData;Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;)V

    .line 273
    .local v0, alphaComparator:Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    return-void
.end method

.method public updateNoteData(ILandroid/content/ContentValues;)V
    .locals 4
    .parameter "id"
    .parameter "values"

    .prologue
    .line 338
    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 340
    .local v0, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v1

    goto :goto_0
.end method
