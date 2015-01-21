.class Lkt;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lks;


# direct methods
.method public constructor <init>(Lks;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lkt;->a:Lks;

    .line 185
    const-string v0, "qr_apk_download.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 187
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    const-string v0, "create table qr_apk_download_info(_id integer PRIMARY KEY AUTOINCREMENT, package_name char, version_code integer, download_url char, local_path char, status integer, total_bytes integer, current_bytes integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    const-string v0, "DROP TABLE IF EXISTS qr_apk_download.db"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p1}, Lkt;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    return-void
.end method
