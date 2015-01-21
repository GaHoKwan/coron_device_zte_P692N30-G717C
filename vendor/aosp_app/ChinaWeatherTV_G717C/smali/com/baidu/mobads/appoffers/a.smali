.class final Lcom/baidu/mobads/appoffers/a;
.super Lcom/baidu/mobads/appoffers/p;


# static fields
.field public static a:Lcom/baidu/mobads/appoffers/a;

.field public static b:Lcom/baidu/mobads/appoffers/a;


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mobads/appoffers/a;->a:Lcom/baidu/mobads/appoffers/a;

    sput-object v0, Lcom/baidu/mobads/appoffers/a;->b:Lcom/baidu/mobads/appoffers/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/baidu/mobads/appoffers/p;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/a;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/a;
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/baidu/mobads/appoffers/a;->a:Lcom/baidu/mobads/appoffers/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobads/appoffers/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mobads/appoffers/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DF323B150B65FC85264CECF4D28DE44"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/mobads/appoffers/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/baidu/mobads/appoffers/a;->a:Lcom/baidu/mobads/appoffers/a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DataBase"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "table path:"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mobads/appoffers/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DF323B150B65FC85264CECF4D28DE44"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    sget-object v0, Lcom/baidu/mobads/appoffers/a;->a:Lcom/baidu/mobads/appoffers/a;

    invoke-direct {v0}, Lcom/baidu/mobads/appoffers/a;->b()V

    :cond_0
    sget-object v0, Lcom/baidu/mobads/appoffers/a;->a:Lcom/baidu/mobads/appoffers/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/r;->a([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    :try_start_1
    invoke-static {v12}, Lcom/baidu/mobads/appoffers/a;->b(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "D710305596C38C0E"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "M427BD520F212C1B1"

    aput-object v4, v2, v3

    const-string v3, "M427BD520F212C1B1 = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DataBase"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "findInApp=true"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v9

    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move v10, v1

    :goto_1
    if-nez v10, :cond_3

    :try_start_3
    invoke-static {v12}, Lcom/baidu/mobads/appoffers/a;->a(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "D710305596C38C0E"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "M427BD520F212C1B1"

    aput-object v4, v2, v3

    const-string v3, "M427BD520F212C1B1 = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DataBase"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "findInSD=true"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v0, v9

    :goto_2
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    if-nez v10, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v8, v9

    :cond_1
    return v8

    :catch_0
    move-exception v0

    move v1, v8

    :goto_4
    :try_start_5
    const-string v2, "DataBase"

    invoke-static {v2, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move v10, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v8

    move v2, v8

    :goto_5
    const-string v3, "DataBase"

    invoke-static {v3, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    move v10, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move v2, v1

    move v1, v8

    goto :goto_5

    :catch_3
    move-exception v0

    move v1, v8

    move v2, v10

    goto :goto_5

    :catch_4
    move-exception v1

    move v2, v10

    move v13, v0

    move-object v0, v1

    move v1, v13

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_2
    move v0, v8

    goto :goto_2

    :cond_3
    move v0, v8

    goto :goto_3

    :cond_4
    move v1, v8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JI)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/baidu/mobads/appoffers/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DataBase"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "point has added before"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/r;->a([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into D710305596C38C0E(M427BD520F212C1B1,M4242A94C9FF83503,DCB3BB1FAC7C159E) values(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\',"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ");"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v6, "DataBase"

    aput-object v6, v0, v3

    const/4 v3, 0x1

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v5}, Lcom/baidu/mobads/appoffers/a;->b(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v1

    :goto_1
    :try_start_2
    invoke-static {v5}, Lcom/baidu/mobads/appoffers/a;->a(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    :goto_2
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "DataBase"

    invoke-static {v3, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v3, v2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v4, "DataBase"

    invoke-static {v4, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move v3, v2

    :goto_4
    const-string v4, "DataBase"

    invoke-static {v4, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method private static b(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/a;
    .locals 5

    const/4 v4, 0x2

    sget-object v0, Lcom/baidu/mobads/appoffers/a;->b:Lcom/baidu/mobads/appoffers/a;

    if-nez v0, :cond_0

    const-string v0, "DF323B150B65FC85264CECF4D28DE44"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DataBase"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "table path:"

    aput-object v3, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v1, Lcom/baidu/mobads/appoffers/a;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, v4}, Lcom/baidu/mobads/appoffers/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lcom/baidu/mobads/appoffers/a;->b:Lcom/baidu/mobads/appoffers/a;

    sget-object v0, Lcom/baidu/mobads/appoffers/a;->b:Lcom/baidu/mobads/appoffers/a;

    invoke-direct {v0}, Lcom/baidu/mobads/appoffers/a;->b()V

    :cond_0
    sget-object v0, Lcom/baidu/mobads/appoffers/a;->b:Lcom/baidu/mobads/appoffers/a;

    return-object v0
.end method

.method private b()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v3, -0x5a

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from D710305596C38C0E where M4242A94C9FF83503<\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DataBase"

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DataBase"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Table Created"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "D710305596C38C0E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(_id INTEGER PRIMARY KEY , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M427BD520F212C1B1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VARCHAR,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M4242A94C9FF83503"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TIMESTAMP,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DCB3BB1FAC7C159E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
