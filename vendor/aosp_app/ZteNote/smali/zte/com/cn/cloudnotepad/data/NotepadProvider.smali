.class public Lzte/com/cn/cloudnotepad/data/NotepadProvider;
.super Landroid/content/ContentProvider;
.source "NotepadProvider.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/data/DataSchema;


# static fields
.field public static final NOTEBOOK:I = 0x3

.field public static final NOTEBOOK_ID:I = 0x4

.field public static final NOTES:I = 0x1

.field public static final NOTES_ID:I = 0x2

.field public static final RESOURCE:I = 0x7

.field public static final RESOURCE_ID:I = 0x8

.field public static final TAG:I = 0x5

.field public static final TAG_ID:I = 0x6

.field public static mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

.field public static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 34
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.cloudnotepad.data"

    const-string v2, "notes"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.cloudnotepad.data"

    const-string v2, "notes/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.cloudnotepad.data"

    const-string v2, "notebook"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.cloudnotepad.data"

    const-string v2, "notebook/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.cloudnotepad.data"

    const-string v2, "tag"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.cloudnotepad.data"

    const-string v2, "tag/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.cloudnotepad.data"

    const-string v2, "resource"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.cloudnotepad.data"

    const-string v2, "resource/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/16 v9, 0x29

    const/4 v6, 0x1

    .line 47
    sget-object v5, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 49
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 89
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown URI "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    :pswitch_1
    const-string v5, "notes"

    invoke-virtual {v1, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 92
    return v0

    .line 55
    .end local v0           #count:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, notesId:Ljava/lang/String;
    const-string v6, "notes"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " AND ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {v1, v6, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 58
    .restart local v0       #count:I
    goto :goto_0

    .line 57
    .end local v0           #count:I
    :cond_0
    const-string v5, ""

    goto :goto_1

    .line 60
    .end local v3           #notesId:Ljava/lang/String;
    :pswitch_3
    const-string v5, "notebook"

    invoke-virtual {v1, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 61
    .restart local v0       #count:I
    goto :goto_0

    .line 64
    .end local v0           #count:I
    :pswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, notebookId:Ljava/lang/String;
    const-string v6, "notebook"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " AND ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {v1, v6, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 67
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 66
    .end local v0           #count:I
    :cond_1
    const-string v5, ""

    goto :goto_2

    .line 79
    .end local v2           #notebookId:Ljava/lang/String;
    :pswitch_5
    const-string v5, "resource"

    invoke-virtual {v1, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 80
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 83
    .end local v0           #count:I
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    .local v4, resourceId:Ljava/lang/String;
    const-string v6, "resource"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " AND ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v1, v6, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 86
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 85
    .end local v0           #count:I
    :cond_2
    const-string v5, ""

    goto :goto_3

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 98
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/notes"

    .line 114
    :goto_0
    return-object v0

    .line 102
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/notes"

    goto :goto_0

    .line 104
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/notebook"

    goto :goto_0

    .line 106
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/notebook"

    goto :goto_0

    .line 112
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/resource"

    goto :goto_0

    .line 114
    :pswitch_6
    const-string v0, "vnd.android.cursor.item/resource"

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 123
    const-string v9, "wangna"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "uri"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz p2, :cond_0

    .line 126
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 130
    .local v7, values:Landroid/content/ContentValues;
    :goto_0
    sget-object v9, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    invoke-virtual {v9}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 132
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v9, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 133
    const-string v9, "notepad"

    const-string v10, "type"

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 136
    new-instance v3, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9, v0, v7}, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 137
    .local v3, restoreNotePad:Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;
    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->insertNotePad()Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, notepadUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .end local p1
    :goto_1
    move-object v2, p1

    .line 176
    .end local v1           #notepadUri:Landroid/net/Uri;
    .end local v3           #restoreNotePad:Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;
    :goto_2
    return-object v2

    .line 128
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local p1
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .restart local v7       #values:Landroid/content/ContentValues;
    goto :goto_0

    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #notepadUri:Landroid/net/Uri;
    .restart local v3       #restoreNotePad:Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;
    :cond_1
    move-object p1, v1

    .line 138
    goto :goto_1

    .line 139
    .end local v1           #notepadUri:Landroid/net/Uri;
    .end local v3           #restoreNotePad:Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;
    :cond_2
    const-string v9, "ztenote"

    const-string v10, "type"

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 140
    new-instance v4, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9, v0, v7}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 141
    .local v4, restoreZteNote:Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;
    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->insertZteNote()Landroid/net/Uri;

    move-result-object v8

    .line 142
    .local v8, zteNoteUri:Landroid/net/Uri;
    if-nez v8, :cond_3

    .end local p1
    :goto_3
    move-object v2, p1

    goto :goto_2

    .restart local p1
    :cond_3
    move-object p1, v8

    goto :goto_3

    .line 145
    .end local v4           #restoreZteNote:Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;
    .end local v8           #zteNoteUri:Landroid/net/Uri;
    :cond_4
    const-string v9, "notes"

    const-string v10, "title"

    invoke-virtual {v0, v9, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 146
    .local v5, rowId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_8

    .line 147
    sget-object v9, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 148
    .local v2, regulationUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 152
    .end local v2           #regulationUri:Landroid/net/Uri;
    .end local v5           #rowId:J
    :cond_5
    sget-object v9, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    .line 153
    const-string v9, "notebook"

    const-string v10, "title"

    invoke-virtual {v0, v9, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 154
    .restart local v5       #rowId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_8

    .line 155
    sget-object v9, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 156
    .restart local v2       #regulationUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 166
    .end local v2           #regulationUri:Landroid/net/Uri;
    .end local v5           #rowId:J
    :cond_6
    sget-object v9, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_7

    .line 167
    const-string v9, "resource"

    const-string v10, "hash"

    invoke-virtual {v0, v9, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 168
    .restart local v5       #rowId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_8

    .line 169
    sget-object v9, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 170
    .restart local v2       #regulationUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_2

    .line 174
    .end local v2           #regulationUri:Landroid/net/Uri;
    .end local v5           #rowId:J
    :cond_7
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unknown URI "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 176
    .restart local v5       #rowId:J
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    .line 278
    const-string v3, "NoteProvider"

    const-string v4, "in onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->getMaxExistDbVersionCantHandle(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_0

    .line 280
    const/4 v3, 0x0

    .line 287
    :goto_0
    return v3

    .line 283
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 284
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "account_user_id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, accountUid:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "notepad"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, databaseName:Ljava/lang/String;
    new-instance v3, Lzte/com/cn/cloudnotepad/data/NotepadDB;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v3, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    .line 287
    const/4 v3, 0x1

    goto :goto_0

    .line 285
    .end local v1           #databaseName:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 294
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 295
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 329
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :pswitch_1
    const-string v2, "notes"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 331
    :goto_0
    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 332
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 334
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 335
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 337
    :cond_0
    return-object v8

    .line 300
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_2
    const-string v2, "notes"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 301
    const-string v2, "_id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :pswitch_3
    const-string v2, "notebook"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :pswitch_4
    const-string v2, "notebook"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 309
    const-string v2, "_id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 321
    :pswitch_5
    const-string v2, "resource"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :pswitch_6
    const-string v2, "resource"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 325
    const-string v2, "_id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/16 v9, 0x29

    const/4 v6, 0x1

    .line 344
    sget-object v5, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 346
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 384
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown URI "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 348
    :pswitch_1
    const-string v5, "notes"

    invoke-virtual {v1, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 386
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 387
    return v0

    .line 352
    .end local v0           #count:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 353
    .local v3, notesId:Ljava/lang/String;
    const-string v6, "notes"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 354
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " AND ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-virtual {v1, v6, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 355
    .restart local v0       #count:I
    goto :goto_0

    .line 354
    .end local v0           #count:I
    :cond_0
    const-string v5, ""

    goto :goto_1

    .line 357
    .end local v3           #notesId:Ljava/lang/String;
    :pswitch_3
    const-string v5, "notebook"

    invoke-virtual {v1, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 358
    .restart local v0       #count:I
    goto :goto_0

    .line 361
    .end local v0           #count:I
    :pswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    .local v2, notebookId:Ljava/lang/String;
    const-string v6, "notebook"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 363
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " AND ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-virtual {v1, v6, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 364
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 363
    .end local v0           #count:I
    :cond_1
    const-string v5, ""

    goto :goto_2

    .line 375
    .end local v2           #notebookId:Ljava/lang/String;
    :pswitch_5
    const-string v5, "resource"

    invoke-virtual {v1, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 376
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 379
    .end local v0           #count:I
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 380
    .local v4, resourceId:Ljava/lang/String;
    const-string v6, "resource"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 381
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " AND ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-virtual {v1, v6, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 382
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 381
    .end local v0           #count:I
    :cond_2
    const-string v5, ""

    goto :goto_3

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
