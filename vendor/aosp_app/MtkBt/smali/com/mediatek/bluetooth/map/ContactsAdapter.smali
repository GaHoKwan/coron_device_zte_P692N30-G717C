.class public Lcom/mediatek/bluetooth/map/ContactsAdapter;
.super Ljava/lang/Object;
.source "ContactsAdapter.java"


# static fields
.field private static final CONTACTS_COLUMN_DISPLAY_NAME:I = 0x1

.field private static final CONTACTS_COLUMN_ID:I = 0x0

.field private static final CONTACTS_SELECTION_BY_CONTACT_ID:Ljava/lang/String; = "_id =?"

.field private static final CONTACTS_SELECTION_BY_NAME:Ljava/lang/String; = "display_name LIKE ?"

.field private static final DATA_COLUMN_NUMBER:I = 0x1

.field private static final DATA_COLUMN_RAW_CONTACT_ID:I = 0x0

.field private static final DATA_SELECTION_BY_CONTACT_ID:Ljava/lang/String; = "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

.field private static final DATA_SELECTION_BY_NUMBER:Ljava/lang/String; = "data1 LIKE ? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

.field private static final DEFAULT_CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field private static final DEFAULT_DATA_PROJECTION:[Ljava/lang/String; = null

.field public static final LINE_NUMBER_SPERATOR:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "ContactsAdapter-MAP"

.field private static mAdapter:Lcom/mediatek/bluetooth/map/ContactsAdapter;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->DEFAULT_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->DEFAULT_DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private doesPhoneNumberMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11
    .parameter "targetArray"
    .parameter "templateArray"

    .prologue
    const/4 v8, 0x0

    .line 143
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v9, p1

    if-eqz v9, :cond_0

    array-length v9, p2

    if-nez v9, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v8

    .line 148
    :cond_1
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 149
    .local v7, template:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v1, v2

    .line 150
    .local v6, target:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 151
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 149
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 148
    .end local v6           #target:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/mediatek/bluetooth/map/ContactsAdapter;
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    const-class v1, Lcom/mediatek/bluetooth/map/ContactsAdapter;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->mAdapter:Lcom/mediatek/bluetooth/map/ContactsAdapter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/mediatek/bluetooth/map/ContactsAdapter;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/map/ContactsAdapter;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->mAdapter:Lcom/mediatek/bluetooth/map/ContactsAdapter;

    .line 56
    :cond_0
    sget-object v0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->mAdapter:Lcom/mediatek/bluetooth/map/ContactsAdapter;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x0

    monitor-exit v1

    .line 59
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->mAdapter:Lcom/mediatek/bluetooth/map/ContactsAdapter;

    monitor-exit v1

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v0, "ContactsAdapter-MAP"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public doesPhoneNumberMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "target"
    .parameter "template1"
    .parameter "template2"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, match:Z
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    move v0, v4

    .line 162
    .local v0, isTemplateEmpty:Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doesPhoneNumberMatch(): target is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", template1 is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", template2 is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->log(Ljava/lang/String;)V

    .line 163
    if-nez p1, :cond_2

    move v4, v5

    .line 180
    :cond_0
    :goto_1
    return v4

    .end local v0           #isTemplateEmpty:Z
    :cond_1
    move v0, v5

    .line 161
    goto :goto_0

    .line 166
    .restart local v0       #isTemplateEmpty:Z
    :cond_2
    if-nez v0, :cond_0

    .line 170
    if-eqz p2, :cond_3

    .line 171
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, targetArray:[Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, templateArray:[Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->doesPhoneNumberMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 177
    .end local v2           #targetArray:[Ljava/lang/String;
    .end local v3           #templateArray:[Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0, p3}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 178
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v5

    .line 180
    goto :goto_1
.end method

.method public isPhoneNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 124
    const/4 v3, 0x0

    .line 125
    .local v3, numDigits:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 126
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/16 v5, 0x2a

    if-eq v0, v5, :cond_0

    const/16 v5, 0x23

    if-eq v0, v5, :cond_0

    const/16 v5, 0x4e

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2e

    if-eq v0, v5, :cond_0

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_0

    const/16 v5, 0x28

    if-eq v0, v5, :cond_0

    const/16 v5, 0x29

    if-eq v0, v5, :cond_0

    const/16 v5, 0x20

    if-eq v0, v5, :cond_0

    .line 133
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    if-eqz v3, :cond_0

    .line 139
    .end local v0           #c:C
    :cond_2
    :goto_1
    return v4

    :cond_3
    if-lez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public queryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "number"

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v5

    .line 100
    :cond_1
    const/4 v10, 0x0

    .line 101
    .local v10, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/bluetooth/map/ContactsAdapter;->DEFAULT_DATA_PROJECTION:[Ljava/lang/String;

    const-string v3, "data1 LIKE ? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 103
    .local v9, dataCs:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 106
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 108
    .local v3, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/bluetooth/map/ContactsAdapter;->DEFAULT_CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 110
    .local v8, contactsCs:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 116
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 118
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #contactsCs:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v10

    .line 119
    goto :goto_0
.end method

.method public queryNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "words"

    .prologue
    .line 72
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 73
    .local v5, arg:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/mediatek/bluetooth/map/ContactsAdapter;->DEFAULT_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "display_name LIKE ?"

    const-string v6, "sort_key"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 74
    .local v12, contactsCursor:Landroid/database/Cursor;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v16, sb:Ljava/lang/StringBuilder;
    if-nez v12, :cond_1

    .line 76
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    .line 88
    .local v13, dataCursor:Landroid/database/Cursor;
    .local v14, id:J
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 78
    .end local v13           #dataCursor:Landroid/database/Cursor;
    .end local v14           #id:J
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 80
    .restart local v14       #id:J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/bluetooth/map/ContactsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/mediatek/bluetooth/map/ContactsAdapter;->DEFAULT_DATA_PROJECTION:[Ljava/lang/String;

    const-string v9, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 82
    .restart local v13       #dataCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 83
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/map/ContactsAdapter;->log(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    .end local v13           #dataCursor:Landroid/database/Cursor;
    .end local v14           #id:J
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 92
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
