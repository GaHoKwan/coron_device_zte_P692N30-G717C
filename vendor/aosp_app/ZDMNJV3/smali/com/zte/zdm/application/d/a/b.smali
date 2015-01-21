.class public Lcom/zte/zdm/application/d/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String; = "dlresume.db"

.field private static final b:I = 0x1

.field private static c:Lcom/zte/zdm/application/d/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/d/a/b;->c:Lcom/zte/zdm/application/d/a/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "dlresume.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object p0, Lcom/zte/zdm/application/d/a/b;->c:Lcom/zte/zdm/application/d/a/b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/zte/zdm/application/d/a/b;
    .locals 2

    const-class v1, Lcom/zte/zdm/application/d/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/zdm/application/d/a/b;->c:Lcom/zte/zdm/application/d/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/d/a/b;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/d/a/b;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/zte/zdm/application/d/a/b;->c:Lcom/zte/zdm/application/d/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS filedownlog (id integer primary key autoincrement, downpath varchar(100), threadid INTEGER, downlength INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS filedownlog"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/d/a/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
