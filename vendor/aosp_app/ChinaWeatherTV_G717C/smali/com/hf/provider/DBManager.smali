.class public Lcom/hf/provider/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field static final DB_NAME:Ljava/lang/String; = "city.db"

.field private static final DB_PATH:Ljava/lang/String; = null

.field private static final VERSION_CODE_KEY:Ljava/lang/String; = "version_code_key"

.field private static final VERSION_PREFERENCE_FILE:Ljava/lang/String; = "version"


# instance fields
.field private final BUFFER_SIZE:I

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/data/%s/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hf/provider/DBManager;->DB_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const v0, 0x61a80

    iput v0, p0, Lcom/hf/provider/DBManager;->BUFFER_SIZE:I

    .line 29
    iput-object p1, p0, Lcom/hf/provider/DBManager;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private copyDBFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .parameter "file"
    .parameter "filePath"

    .prologue
    const/4 v5, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 91
    iget-object v6, p0, Lcom/hf/provider/DBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f06

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 93
    .local v4, is:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, fos:Ljava/io/FileOutputStream;
    const v6, 0x61a80

    new-array v0, v6, [B

    .line 95
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 96
    .local v1, count:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_0

    .line 101
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 102
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 103
    const/4 v5, 0x1

    .line 111
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    :goto_1
    return v5

    .line 97
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 98
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 104
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 106
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v6, "excepiton"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 107
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 109
    .local v2, e:Ljava/io/IOException;
    const-string v6, "excepiton"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 10
    .parameter "dbfile"

    .prologue
    const/4 v9, 0x0

    .line 43
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 48
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "city.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, filePath:Ljava/lang/String;
    const-string v7, "openDatabase"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 52
    invoke-direct {p0, v3, v4}, Lcom/hf/provider/DBManager;->copyDBFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    iget-object v7, p0, Lcom/hf/provider/DBManager;->mContext:Landroid/content/Context;

    const-string v8, "version"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 54
    .local v6, preference:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 55
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "version_code_key"

    iget-object v8, p0, Lcom/hf/provider/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/hf/utils/Util;->getPackageVersionCode(Landroid/content/Context;)I

    move-result v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #preference:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 79
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_1
    return-object v1

    .line 60
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    iget-object v7, p0, Lcom/hf/provider/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/hf/utils/Util;->getPackageVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 61
    .local v0, code:I
    iget-object v7, p0, Lcom/hf/provider/DBManager;->mContext:Landroid/content/Context;

    const-string v8, "version"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 62
    .restart local v6       #preference:Landroid/content/SharedPreferences;
    const-string v7, "version_code_key"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 63
    .local v5, oldCode:I
    sget-boolean v7, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v7, :cond_3

    .line 64
    const-string v7, "DBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "; code = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; oldCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_3
    if-gt v0, v5, :cond_4

    if-nez v5, :cond_1

    .line 67
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 68
    invoke-direct {p0, v3, v4}, Lcom/hf/provider/DBManager;->copyDBFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 70
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "version_code_key"

    invoke-interface {v2, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 80
    .end local v0           #code:I
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #oldCode:I
    .end local v6           #preference:Landroid/content/SharedPreferences;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public closeDatabase()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/hf/provider/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 117
    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hf/provider/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/hf/provider/DBManager;->openDatabase()V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/hf/provider/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public openDatabase()V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Lcom/hf/provider/DBManager;->DB_PATH:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hf/provider/DBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hf/provider/DBManager;->openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/provider/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    return-void
.end method
