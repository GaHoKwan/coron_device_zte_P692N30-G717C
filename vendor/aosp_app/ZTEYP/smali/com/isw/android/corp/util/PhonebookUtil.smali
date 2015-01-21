.class public Lcom/isw/android/corp/util/PhonebookUtil;
.super Ljava/lang/Object;
.source "PhonebookUtil.java"


# static fields
.field public static PB_SELECTION:Ljava/lang/String;

.field static TAG:Ljava/lang/String;

.field public static bLoadPhoneBook:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "PhonebookUtil"

    sput-object v0, Lcom/isw/android/corp/util/PhonebookUtil;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/util/PhonebookUtil;->bLoadPhoneBook:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/isw/android/corp/util/PhonebookUtil;->PB_SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "number"

    .prologue
    .line 43
    const-string v10, ""

    .line 45
    .local v10, name:Ljava/lang/String;
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v11, v10

    .line 83
    .end local v10           #name:Ljava/lang/String;
    .local v11, name:Ljava/lang/String;
    :goto_0
    return-object v11

    .line 49
    .end local v11           #name:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 50
    const-string v1, "data1"

    aput-object v1, v2, v0

    .line 53
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data1 = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 54
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 63
    sget-object v0, Lcom/isw/android/corp/util/PhonebookUtil;->TAG:Ljava/lang/String;

    const-string v1, "getPeople null"

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v10

    .line 64
    .end local v10           #name:Ljava/lang/String;
    .restart local v11       #name:Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v11           #name:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/isw/android/corp/util/PhonebookUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getPeople cursor.getCount() = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v9, v0, :cond_3

    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #i:I
    :goto_2
    move-object v11, v10

    .line 83
    .end local v10           #name:Ljava/lang/String;
    .restart local v11       #name:Ljava/lang/String;
    goto :goto_0

    .line 68
    .end local v11           #name:Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #i:I
    .restart local v10       #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 72
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 73
    .local v12, nameFieldColumnIndex:I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 74
    sget-object v0, Lcom/isw/android/corp/util/PhonebookUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " .... "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 77
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #i:I
    .end local v12           #nameFieldColumnIndex:I
    :catch_0
    move-exception v8

    .line 78
    .local v8, ex:Ljava/lang/Exception;
    sget-object v0, Lcom/isw/android/corp/util/PhonebookUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ex: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 80
    .end local v8           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 81
    .local v7, error:Ljava/lang/Error;
    sget-object v0, Lcom/isw/android/corp/util/PhonebookUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
