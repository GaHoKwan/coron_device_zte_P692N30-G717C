.class public Lcom/mediatek/omacp/provider/OmacpDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OmacpDatabaseHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "omacp.db"

.field static final OMACP_TABLE:Ljava/lang/String; = "omacp"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 54
    const-string v0, "omacp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    iput-object p1, p0, Lcom/mediatek/omacp/provider/OmacpDatabaseHelper;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 62
    iput-object p1, p0, Lcom/mediatek/omacp/provider/OmacpDatabaseHelper;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 78
    const-string v0, "CREATE TABLE omacp(_id INTEGER PRIMARY KEY,sim_id INTEGER,sender TEXT,service_center TEXT,seen BOOLEAN,read BOOLEAN,date INTEGER,installed BOOLEAN,pin_unlock BOOLEAN,sec INTEGER,mac TEXT,title TEXT,summary TEXT,body TEXT,context TEXT,mime_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/provider/OmacpDatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 75
    return-void
.end method
