.class public Lcom/zte/heartyservice/common/utils/AntivirusSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AntivirusSQLiteOpenHelper.java"


# static fields
.field public static final TB_VIRUS:Ljava/lang/String; = "virustable"


# instance fields
.field private final VIRUS_TABLE_CREATE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    const-string v0, "CREATE TABLE IF NOT EXISTS virustable (pkgName TEXT,resultCode INTEGER,introduction TEXT,apkType INTEGER,path TEXT,softName TEXT,PRIMARY KEY (pkgName,path))"

    iput-object v0, p0, Lcom/zte/heartyservice/common/utils/AntivirusSQLiteOpenHelper;->VIRUS_TABLE_CREATE:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS virustable (pkgName TEXT,resultCode INTEGER,introduction TEXT,apkType INTEGER,path TEXT,softName TEXT,PRIMARY KEY (pkgName,path))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 36
    const-string v0, "drop table if exists virustable"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/utils/AntivirusSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    return-void
.end method
