.class public final Lcom/android/contacts/calllog/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field public static EMPTY:Lcom/android/contacts/calllog/ContactInfo;


# instance fields
.field public contactId:I

.field public contactSimId:I

.field public countryIso:Ljava/lang/String;

.field public date:J

.field public duration:J

.field public formattedNumber:Ljava/lang/String;

.field public geocode:Ljava/lang/String;

.field public ipPrefix:Ljava/lang/String;

.field public isRead:I

.field public isSdnContact:I

.field public label:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public nNumberTypeId:I

.field public name:Ljava/lang/String;

.field public normalizedNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public photoId:J

.field public photoUri:Landroid/net/Uri;

.field public rawContactId:I

.field public simId:I

.field public type:I

.field public vtCall:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    sput-object v0, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 8
    .parameter "c"

    .prologue
    const/4 v5, 0x0

    .line 93
    if-nez p0, :cond_1

    .line 94
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "ContactInfo.fromCursor(c) - c is null"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v5

    .line 138
    :cond_0
    :goto_0
    return-object v3

    .line 97
    :cond_1
    new-instance v3, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v3}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 98
    .local v3, newContactInfo:Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v3, :cond_0

    .line 100
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 101
    const/4 v6, 0x2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/contacts/calllog/ContactInfo;->date:J

    .line 102
    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/contacts/calllog/ContactInfo;->duration:J

    .line 103
    const/4 v6, 0x4

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 104
    const/4 v6, 0x6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/contacts/calllog/ContactInfo;->countryIso:Ljava/lang/String;

    .line 106
    const/16 v6, 0x9

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcom/android/contacts/calllog/ContactInfo;->simId:I

    .line 107
    const/16 v6, 0xa

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcom/android/contacts/calllog/ContactInfo;->vtCall:I

    .line 108
    const/16 v6, 0xd

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 109
    const/16 v6, 0xf

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcom/android/contacts/calllog/ContactInfo;->nNumberTypeId:I

    .line 111
    const/16 v6, 0xe

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 113
    const/16 v6, 0x10

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 114
    const/16 v6, 0x14

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, photo:Ljava/lang/String;
    if-nez v4, :cond_2

    move-object v6, v5

    :goto_1
    iput-object v6, v3, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 118
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v6

    iget-object v7, v3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, fmtNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .end local v1           #fmtNumber:Ljava/lang/String;
    :goto_2
    iput-object v1, v3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 121
    const/4 v6, 0x7

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/contacts/calllog/ContactInfo;->geocode:Ljava/lang/String;

    .line 123
    const/16 v6, 0x11

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcom/android/contacts/calllog/ContactInfo;->contactSimId:I

    .line 125
    const/16 v6, 0x12

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcom/android/contacts/calllog/ContactInfo;->contactId:I

    .line 126
    const/16 v6, 0x13

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, lookUp:Ljava/lang/String;
    iget v6, v3, Lcom/android/contacts/calllog/ContactInfo;->contactId:I

    if-nez v6, :cond_4

    :goto_3
    iput-object v5, v3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 129
    const/16 v5, 0x8

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/android/contacts/calllog/ContactInfo;->isRead:I

    .line 130
    const/16 v5, 0x15

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/calllog/ContactInfo;->ipPrefix:Ljava/lang/String;

    .line 131
    const/16 v5, 0xb

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/android/contacts/calllog/ContactInfo;->rawContactId:I

    .line 132
    const/16 v5, 0x16

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/android/contacts/calllog/ContactInfo;->isSdnContact:I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 133
    .end local v2           #lookUp:Ljava/lang/String;
    .end local v4           #photo:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 115
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v4       #photo:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 119
    .restart local v1       #fmtNumber:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x202d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x202c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 127
    .end local v1           #fmtNumber:Ljava/lang/String;
    .restart local v2       #lookUp:Ljava/lang/String;
    :cond_4
    iget v5, v3, Lcom/android/contacts/calllog/ContactInfo;->contactId:I

    int-to-long v5, v5

    invoke-static {v5, v6, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/android/contacts/calllog/ContactInfo;

    .line 64
    .local v0, other:Lcom/android/contacts/calllog/ContactInfo;
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 65
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 66
    :cond_5
    iget v3, p0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    iget v4, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 67
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 68
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 69
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 70
    :cond_9
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 71
    :cond_a
    iget-wide v3, p0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    iget-wide v5, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 72
    :cond_b
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, prime:I
    const/4 v1, 0x1

    .line 53
    .local v1, result:I
    iget-object v2, p0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 54
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 55
    return v1

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method
