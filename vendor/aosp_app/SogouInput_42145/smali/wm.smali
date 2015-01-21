.class Lwm;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lwl;


# direct methods
.method public constructor <init>(Lwl;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lwm;->a:Lwl;

    .line 437
    const-string v0, "platform_app_download.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 439
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 444
    const-string v0, "create table platform_download_info(_id integer PRIMARY KEY AUTOINCREMENT, package_name char, version_code integer, download_url char, local_path char, status integer, total_bytes integer, current_bytes integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    const-string v0, "DROP TABLE IF EXISTS platform_download_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0, p1}, Lwm;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 452
    return-void
.end method
