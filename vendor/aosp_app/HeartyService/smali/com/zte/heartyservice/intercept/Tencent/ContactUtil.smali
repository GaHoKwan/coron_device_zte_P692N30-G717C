.class public abstract Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# static fields
.field public static final CALL_LOG_URI:Landroid/net/Uri; = null

.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name asc"

.field public static final SIM_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->CALL_LOG_URI:Landroid/net/Uri;

    .line 21
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->SIM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateContentValues(ILjava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 5
    .parameter "type"
    .parameter "num"
    .parameter "name"
    .parameter "rule"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v4, "ringStatus"

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v1, "SMStatus"

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    return-object v0

    :cond_0
    move v1, v3

    .line 108
    goto :goto_0

    :cond_1
    move v2, v3

    .line 109
    goto :goto_1
.end method

.method public static generateContentValues(Lcom/zte/heartyservice/intercept/Tencent/Contact;)Landroid/content/ContentValues;
    .locals 5
    .parameter "contact"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "name"

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "number"

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "type"

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v4, "ringStatus"

    iget-boolean v1, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "SMStatus"

    iget-boolean v4, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    return-object v0

    :cond_0
    move v1, v3

    .line 98
    goto :goto_0

    :cond_1
    move v2, v3

    .line 99
    goto :goto_1
.end method

.method public static getContactFromCursor(Landroid/database/Cursor;)Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 69
    const-string v7, "id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, idIndex:I
    const-string v7, "name"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 71
    .local v2, nameIndex:I
    const-string v7, "number"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 72
    .local v3, numberIndex:I
    const-string v7, "type"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 73
    .local v6, typeIndex:I
    const-string v7, "ringStatus"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 74
    .local v4, ringStatusIndex:I
    const-string v7, "SMStatus"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 76
    .local v5, smsStatusIndex:I
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .end local v0           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 77
    .restart local v0       #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->id:I

    .line 78
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 79
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 80
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 81
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 82
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    iput-boolean v8, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 84
    .end local v1           #idIndex:I
    .end local v2           #nameIndex:I
    .end local v3           #numberIndex:I
    .end local v4           #ringStatusIndex:I
    .end local v5           #smsStatusIndex:I
    .end local v6           #typeIndex:I
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 85
    return-object v0

    .restart local v1       #idIndex:I
    .restart local v2       #nameIndex:I
    .restart local v3       #numberIndex:I
    .restart local v4       #ringStatusIndex:I
    .restart local v5       #smsStatusIndex:I
    .restart local v6       #typeIndex:I
    :cond_1
    move v7, v9

    .line 81
    goto :goto_0

    :cond_2
    move v8, v9

    .line 82
    goto :goto_1
.end method

.method public static getContactsFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 37
    const-string v8, "id"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 38
    .local v2, idIndex:I
    const-string v8, "name"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 39
    .local v3, nameIndex:I
    const-string v8, "number"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 40
    .local v4, numberIndex:I
    const-string v8, "type"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 41
    .local v7, typeIndex:I
    const-string v8, "ringStatus"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 42
    .local v5, ringStatusIndex:I
    const-string v8, "SMStatus"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 44
    .local v6, smsStatusIndex:I
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    .line 45
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 46
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->id:I

    .line 47
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 48
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 49
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 51
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_0

    move v8, v9

    :goto_1
    iput-boolean v8, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 52
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    :goto_2
    iput-boolean v8, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    move v8, v10

    .line 51
    goto :goto_1

    :cond_1
    move v8, v10

    .line 52
    goto :goto_2

    .line 57
    .end local v0           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .end local v2           #idIndex:I
    .end local v3           #nameIndex:I
    .end local v4           #numberIndex:I
    .end local v5           #ringStatusIndex:I
    .end local v6           #smsStatusIndex:I
    .end local v7           #typeIndex:I
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 58
    return-object v1
.end method
