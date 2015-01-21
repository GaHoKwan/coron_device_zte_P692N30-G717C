.class public Lace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:Ljava/lang/String;

.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/lang/String;

.field private static I:Ljava/lang/String;

.field private static J:Ljava/lang/String;

.field private static K:Ljava/lang/String;

.field private static L:Ljava/lang/String;

.field private static M:Ljava/lang/String;

.field private static N:Ljava/lang/String;

.field private static O:Ljava/lang/String;

.field private static P:Ljava/lang/String;

.field private static Q:Ljava/lang/String;

.field private static R:Ljava/lang/String;

.field private static S:Ljava/lang/String;

.field private static T:Ljava/lang/String;

.field private static a:I

.field private static a:Lace;

.field private static a:Lacj;

.field private static a:Landroid/net/Uri;

.field private static a:Ljava/lang/Class;

.field public static a:Ljava/lang/StringBuilder;

.field private static a:Ljava/lang/reflect/Method;

.field public static a:Z

.field private static b:I

.field private static b:Landroid/net/Uri;

.field private static b:Ljava/lang/Class;

.field private static b:Ljava/lang/reflect/Method;

.field private static b:[Ljava/lang/String;

.field private static c:I

.field private static c:Landroid/net/Uri;

.field private static c:Ljava/lang/Class;

.field private static c:Ljava/lang/String;

.field private static c:Ljava/lang/reflect/Method;

.field private static c:Z

.field private static c:[Ljava/lang/String;

.field private static d:I

.field private static d:Landroid/net/Uri;

.field private static d:Ljava/lang/Class;

.field private static d:Ljava/lang/String;

.field private static d:Ljava/lang/reflect/Method;

.field private static d:Z

.field private static d:[Ljava/lang/String;

.field private static e:Landroid/net/Uri;

.field private static e:Ljava/lang/Class;

.field private static e:Ljava/lang/String;

.field private static e:Ljava/lang/reflect/Method;

.field private static e:Z

.field private static e:[Ljava/lang/String;

.field private static f:Landroid/net/Uri;

.field private static f:Ljava/lang/Class;

.field private static f:Ljava/lang/String;

.field private static f:Ljava/lang/reflect/Method;

.field private static f:[Ljava/lang/String;

.field private static g:Landroid/net/Uri;

.field private static g:Ljava/lang/Class;

.field private static g:Ljava/lang/String;

.field private static g:Ljava/lang/reflect/Method;

.field private static g:[Ljava/lang/String;

.field private static h:Landroid/net/Uri;

.field private static h:Ljava/lang/Class;

.field private static h:Ljava/lang/String;

.field private static h:Ljava/lang/reflect/Method;

.field private static h:[Ljava/lang/String;

.field private static i:Ljava/lang/Class;

.field private static i:Ljava/lang/String;

.field private static i:Ljava/lang/reflect/Method;

.field private static i:[Ljava/lang/String;

.field private static j:Ljava/lang/Class;

.field private static j:Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static k:Ljava/lang/Class;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private a:J

.field private a:Lack;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/database/ContentObserver;

.field private a:Landroid/os/Handler;

.field private a:Lcom/sohu/inputmethod/engine/IMEInterface;

.field private a:Ljava/lang/String;

.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private b:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lace;->a:Lace;

    .line 151
    sput-boolean v3, Lace;->c:Z

    .line 152
    sput-boolean v3, Lace;->d:Z

    .line 155
    sput-boolean v2, Lace;->a:Z

    .line 157
    sput-boolean v2, Lace;->e:Z

    .line 304
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lace;->j:[Ljava/lang/String;

    .line 307
    invoke-static {}, Lace;->i()V

    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object v0, p0, Lace;->a:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lace;->b:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lace;->a:[Ljava/lang/String;

    .line 302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lace;->a:J

    .line 310
    new-instance v0, Lacf;

    invoke-direct {v0, p0}, Lacf;-><init>(Lace;)V

    iput-object v0, p0, Lace;->a:Landroid/os/Handler;

    .line 338
    iput-object p1, p0, Lace;->a:Landroid/content/Context;

    .line 339
    new-instance v0, Lack;

    invoke-direct {v0, p0, p1}, Lack;-><init>(Lace;Landroid/content/Context;)V

    iput-object v0, p0, Lace;->a:Lack;

    .line 340
    invoke-static {p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iput-object v0, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    .line 341
    sget-object v0, Lace;->a:Lacj;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lacj;

    invoke-direct {v0}, Lacj;-><init>()V

    sput-object v0, Lace;->a:Lacj;

    .line 345
    :cond_0
    return-void
.end method

.method private a()I
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1333
    const-string v0, "===========getPhoneContacts============"

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)V

    .line 1337
    :try_start_0
    iget-object v0, p0, Lace;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1339
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lace;->j:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1340
    if-nez v2, :cond_0

    move v0, v6

    .line 1440
    :goto_0
    return v0

    .line 1341
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query Result: Count = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", ColCount = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lace;->b(Ljava/lang/String;)V

    .line 1344
    sget-object v1, Lace;->a:Lacj;

    invoke-virtual {v1}, Lacj;->a()V

    .line 1347
    if-eqz v0, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1350
    const-string v0, ""

    .line 1354
    iget-object v0, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    const/16 v1, 0x15

    const/4 v9, 0x1

    invoke-virtual {v0, v1, v9}, Lcom/sohu/inputmethod/engine/IMEInterface;->setParameter(II)I

    move-result v0

    if-ne v0, v8, :cond_7

    move v1, v8

    .line 1355
    :goto_1
    iget-object v0, p0, Lace;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->K()Z

    move-result v8

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===============isOpenContactIndetify="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lace;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->v()Z

    move-result v0

    sput-boolean v0, Lace;->d:Z

    .line 1358
    sget-boolean v0, Lace;->d:Z

    if-nez v0, :cond_1

    .line 1359
    sget-object v0, Lace;->a:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lace;->a:Ljava/lang/StringBuilder;

    .line 1373
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lace;->a:Z

    move v0, v7

    .line 1375
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1376
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1377
    invoke-static {v7}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1378
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query Name["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lace;->b(Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0, v5}, Lace;->a(Ljava/lang/StringBuilder;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1381
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Formated Name["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lace;->b(Ljava/lang/String;)V

    .line 1382
    iget-object v10, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x2ff

    invoke-virtual {v10, v11, v12, v13}, Lcom/sohu/inputmethod/engine/IMEInterface;->learnWord(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1383
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1384
    sget-object v10, Lace;->a:Lacj;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lacj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1394
    :cond_4
    sget-boolean v9, Lace;->d:Z

    if-nez v9, :cond_5

    if-nez v8, :cond_5

    if-eqz v1, :cond_5

    .line 1395
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 1396
    iget-object v9, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v9, v7}, Lcom/sohu/inputmethod/engine/IMEInterface;->decideAddressType(Ljava/lang/String;)I

    move-result v9

    .line 1397
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "======================type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lace;->b(Ljava/lang/String;)V

    .line 1398
    if-ne v9, v14, :cond_5

    .line 1399
    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1400
    sget-object v10, Lace;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    sget-object v7, Lace;->a:Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    sget-object v7, Lace;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    sget-object v7, Lace;->a:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1409
    const/4 v1, 0x0

    sput-boolean v1, Lace;->a:Z

    .line 1412
    sget-object v1, Lace;->a:Lacj;

    invoke-static {v1}, Lace;->b(Lacj;)V

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save the Results.total="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",  haoshi="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v3, v7, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lace;->b(Ljava/lang/String;)V

    .line 1415
    iget-object v1, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->saveUserDict()V

    .line 1416
    iget-object v1, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->setParameter(II)I

    .line 1417
    const/4 v1, 0x0

    iput-boolean v1, p0, Lace;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1424
    :goto_2
    if-eqz v2, :cond_6

    .line 1425
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1432
    :cond_6
    :goto_3
    :try_start_2
    iget-object v1, p0, Lace;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->g(I)V

    .line 1433
    iget-object v1, p0, Lace;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->h()V

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====end time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lace;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1436
    :catch_0
    move-exception v0

    .line 1438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    .line 1440
    goto/16 :goto_0

    :cond_7
    move v1, v7

    .line 1354
    goto/16 :goto_1

    .line 1420
    :cond_8
    :try_start_3
    const-string v0, "Query Result is Null."

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v7

    goto :goto_2

    .line 1426
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method static synthetic a(Lace;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lace;->a()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lace;
    .locals 1
    .parameter

    .prologue
    .line 327
    sget-object v0, Lace;->a:Lace;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lace;

    invoke-direct {v0, p0}, Lace;-><init>(Landroid/content/Context;)V

    sput-object v0, Lace;->a:Lace;

    .line 330
    :cond_0
    sget-object v0, Lace;->a:Lace;

    return-object v0
.end method

.method static synthetic a()Lacj;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lace;->a:Lacj;

    return-object v0
.end method

.method static synthetic a(Lace;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lace;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 790
    sget v0, Lace;->a:I

    if-ne v0, v6, :cond_0

    .line 791
    sget-object v1, Lace;->a:Ljava/lang/reflect/Method;

    .line 792
    sget-object v0, Lace;->a:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 797
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    .line 800
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    if-eqz v0, :cond_1

    .line 802
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 809
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 811
    :goto_1
    return-object v0

    .line 794
    :cond_0
    sget-object v1, Lace;->f:Ljava/lang/reflect/Method;

    .line 795
    sget-object v0, Lace;->e:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 807
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 809
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    :goto_3
    move-object v0, v2

    .line 811
    goto :goto_1

    .line 809
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 805
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method static synthetic a(Lace;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lace;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lace;)Lcom/sohu/inputmethod/engine/IMEInterface;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-static {p0}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lace;Landroid/content/Context;I)Ljava/lang/StringBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lace;->a(Landroid/content/Context;I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/StringBuilder;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 850
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lace;->b:Landroid/net/Uri;

    sget-object v2, Lace;->c:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lace;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 852
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 856
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 862
    :cond_0
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 864
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 865
    return-object v3

    .line 855
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lace;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lace;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lace;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lace;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lacj;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-static {p0}, Lace;->b(Lacj;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 1459
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0167

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0240

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02ab

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1465
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    .line 1466
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1467
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1469
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1492
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1493
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0167

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0242

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0243

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02ab

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1501
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    .line 1502
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1503
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1511
    return-void
.end method

.method public static a(Landroid/content/Context;ILabu;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 703
    invoke-virtual {p2, p1}, Labu;->a(I)V

    .line 704
    sget v0, Lace;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 705
    invoke-static {p0, p1, p2}, Lace;->b(Landroid/content/Context;ILabu;)V

    .line 709
    :goto_0
    invoke-static {p0, p1}, Lace;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 710
    if-nez v0, :cond_0

    .line 711
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 713
    :cond_0
    invoke-virtual {p2, v0}, Labu;->a(Landroid/graphics/drawable/Drawable;)V

    .line 714
    return-void

    .line 707
    :cond_1
    invoke-static {p0, p1, p2}, Lace;->f(Landroid/content/Context;ILabu;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ILabu;I)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 991
    .line 994
    packed-switch p3, :pswitch_data_0

    .line 1069
    :goto_0
    return-void

    .line 996
    :pswitch_0
    sget-object v1, Lace;->g:Landroid/net/Uri;

    .line 997
    sget-object v2, Lace;->g:[Ljava/lang/String;

    .line 998
    sget-object v0, Lace;->g:Ljava/lang/reflect/Method;

    move-object v6, v0

    .line 1013
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lace;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1014
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lace;->A:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lace;->J:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1017
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1018
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1019
    if-lez v7, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1020
    const/4 v0, 0x0

    move v4, v0

    :goto_2
    if-ge v4, v7, :cond_3

    .line 1021
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1022
    const/4 v0, 0x2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1023
    const/4 v0, 0x3

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    const/4 v0, 0x0

    .line 1025
    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    .line 1026
    const/4 v0, 0x4

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1027
    const/4 v1, 0x5

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "label ======== "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)V

    :cond_1
    move v2, v0

    move-object v0, v1

    .line 1030
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1031
    const/4 v1, 0x3

    new-array v9, v1, [Ljava/lang/Object;

    .line 1032
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    aput-object v10, v9, v1

    .line 1033
    const/4 v10, 0x1

    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v10

    .line 1034
    const/4 v1, 0x2

    aput-object v0, v9, v1

    .line 1036
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v6, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1042
    :cond_2
    :goto_4
    const/4 v1, 0x0

    .line 1043
    packed-switch p3, :pswitch_data_1

    .line 1062
    :goto_5
    invoke-virtual {p2, v1}, Labu;->a(Labw;)V

    .line 1063
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1068
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1001
    :pswitch_1
    sget-object v1, Lace;->f:Landroid/net/Uri;

    .line 1002
    sget-object v2, Lace;->h:[Ljava/lang/String;

    .line 1003
    sget-object v0, Lace;->h:Ljava/lang/reflect/Method;

    move-object v6, v0

    .line 1004
    goto/16 :goto_1

    .line 1006
    :pswitch_2
    sget-object v1, Lace;->h:Landroid/net/Uri;

    .line 1007
    sget-object v2, Lace;->i:[Ljava/lang/String;

    .line 1008
    sget-object v0, Lace;->i:Ljava/lang/reflect/Method;

    move-object v6, v0

    .line 1009
    goto/16 :goto_1

    :cond_4
    move v1, v3

    .line 1033
    goto :goto_3

    .line 1037
    :catch_0
    move-exception v1

    .line 1039
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1045
    :pswitch_3
    new-instance v1, Labw;

    invoke-direct {v1, p3, v3, v0, v8}, Labw;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1048
    :pswitch_4
    new-instance v1, Labv;

    invoke-direct {v1, p3, v3, v0, v8}, Labv;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1049
    check-cast v0, Labv;

    iput v2, v0, Labv;->a:I

    goto :goto_5

    .line 1052
    :pswitch_5
    new-instance v1, Laby;

    invoke-direct {v1, p3, v3, v0, v8}, Laby;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1053
    check-cast v0, Laby;

    const/4 v2, 0x4

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Laby;->c:Ljava/lang/String;

    move-object v0, v1

    .line 1054
    check-cast v0, Laby;

    const/4 v2, 0x5

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Laby;->d:Ljava/lang/String;

    move-object v0, v1

    .line 1055
    check-cast v0, Laby;

    const/4 v2, 0x7

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Laby;->f:Ljava/lang/String;

    move-object v0, v1

    .line 1056
    check-cast v0, Laby;

    const/16 v2, 0xa

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Laby;->i:Ljava/lang/String;

    move-object v0, v1

    .line 1057
    check-cast v0, Laby;

    const/4 v2, 0x6

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Laby;->e:Ljava/lang/String;

    move-object v0, v1

    .line 1058
    check-cast v0, Laby;

    const/16 v2, 0x9

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Laby;->h:Ljava/lang/String;

    move-object v0, v1

    .line 1059
    check-cast v0, Laby;

    const/16 v2, 0x8

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Laby;->g:Ljava/lang/String;

    goto/16 :goto_5

    .line 1020
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    .line 994
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1043
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Labu;Ljava/util/Vector;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 718
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lace;->a(Landroid/content/ContentResolver;Ljava/lang/String;)[I

    move-result-object v3

    .line 720
    if-eqz v3, :cond_5

    array-length v0, v3

    if-lez v0, :cond_5

    .line 721
    invoke-virtual {p2, p1}, Labu;->a(Ljava/lang/String;)V

    .line 722
    aget v0, v3, v2

    invoke-static {p0, v0, p2}, Lace;->a(Landroid/content/Context;ILabu;)V

    move v0, v1

    .line 724
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 725
    new-instance v4, Labu;

    invoke-direct {v4}, Labu;-><init>()V

    .line 726
    invoke-virtual {v4, p1}, Labu;->a(Ljava/lang/String;)V

    .line 727
    aget v5, v3, v0

    invoke-static {p0, v5, v4}, Lace;->a(Landroid/content/Context;ILabu;)V

    .line 728
    invoke-virtual {p3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 731
    :goto_1
    sget-object v3, Lace;->a:Lacj;

    if-eqz v3, :cond_2

    sget-object v3, Lace;->a:Lacj;

    invoke-virtual {v3, p1}, Lacj;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 732
    sget-object v3, Lace;->a:Lacj;

    invoke-virtual {v3, p1}, Lacj;->a(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    .line 733
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 735
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "originalName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lace;->b(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Lace;->a(Landroid/content/ContentResolver;Ljava/lang/String;)[I

    move-result-object v6

    .line 737
    if-eqz v6, :cond_4

    array-length v4, v6

    if-lez v4, :cond_4

    .line 739
    if-nez v3, :cond_3

    .line 740
    invoke-virtual {p2, v0}, Labu;->a(Ljava/lang/String;)V

    .line 741
    aget v3, v6, v2

    invoke-static {p0, v3, p2}, Lace;->a(Landroid/content/Context;ILabu;)V

    move v3, v1

    move v4, v1

    .line 745
    :goto_3
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 746
    new-instance v7, Labu;

    invoke-direct {v7}, Labu;-><init>()V

    .line 747
    invoke-virtual {v7, v0}, Labu;->a(Ljava/lang/String;)V

    .line 748
    aget v8, v6, v3

    invoke-static {p0, v8, v7}, Lace;->a(Landroid/content/Context;ILabu;)V

    .line 749
    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 745
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    move v0, v4

    :goto_4
    move v3, v0

    .line 752
    goto :goto_2

    .line 754
    :cond_2
    return-void

    :cond_3
    move v4, v3

    move v3, v2

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/database/Cursor;)V
    .locals 3
    .parameter

    .prologue
    .line 1534
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1535
    if-lez v0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1537
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lace;->b(Ljava/lang/String;)V

    .line 1537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1540
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-static {p0}, Lace;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lace;->d:Z

    return v0
.end method

.method static synthetic a(Lace;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lace;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lace;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lace;->f:Z

    return p1
.end method

.method private a(Ljava/lang/StringBuilder;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1446
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1447
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 1448
    const/16 v4, 0x4e00

    if-lt v3, v4, :cond_0

    const v4, 0x9fbb

    if-le v3, v4, :cond_1

    .line 1449
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1451
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 49
    sput-boolean p0, Lace;->d:Z

    return p0
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;)[I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 763
    sget v0, Lace;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 764
    invoke-static {p0, p1}, Lace;->b(Landroid/content/ContentResolver;Ljava/lang/String;)[I

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lace;->c(Landroid/content/ContentResolver;Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static b()Lacj;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 470
    new-instance v0, Ljava/io/File;

    sget-object v2, Laox;->u:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    new-instance v0, Lacj;

    invoke-direct {v0}, Lacj;-><init>()V

    .line 491
    :goto_0
    return-object v0

    .line 478
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 480
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 487
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 488
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 487
    :goto_1
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 488
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 489
    goto :goto_0

    .line 483
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 485
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 487
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 488
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 489
    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 488
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 487
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 483
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 481
    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 1625
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static b(Lacj;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 495
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 508
    :try_start_2
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 509
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 514
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 515
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 517
    :goto_1
    return-void

    .line 499
    :catch_0
    move-exception v1

    .line 501
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 510
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 512
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 514
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 515
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 514
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_3
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 515
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 514
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_3

    .line 510
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1472
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0167

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0241

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    .line 1484
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1485
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1486
    return-void
.end method

.method private static b(Landroid/content/Context;ILabu;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 757
    invoke-static {p0, p1, p2}, Lace;->c(Landroid/content/Context;ILabu;)V

    .line 758
    invoke-static {p0, p1, p2}, Lace;->d(Landroid/content/Context;ILabu;)V

    .line 759
    invoke-static {p0, p1, p2}, Lace;->e(Landroid/content/Context;ILabu;)V

    .line 760
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1632
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lace;->a:Lack;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lack;->removeMessages(I)V

    .line 455
    const/4 v0, 0x0

    .line 459
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Laci;

    invoke-direct {v2, p0}, Laci;-><init>(Lace;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lace;->a:J

    .line 466
    return v0
.end method

.method static synthetic b(Lace;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lace;->b:Z

    return v0
.end method

.method private static b(Landroid/content/ContentResolver;Ljava/lang/String;)[I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 771
    invoke-static {}, Lace;->i()V

    .line 773
    sget-object v1, Lace;->a:Landroid/net/Uri;

    sget-object v2, Lace;->b:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lace;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 774
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 775
    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    new-array v4, v2, [I

    move v0, v6

    .line 777
    :goto_0
    if-ge v0, v2, :cond_0

    .line 778
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v4, v0

    .line 779
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_0
    invoke-static {v1}, Lace;->a(Landroid/database/Cursor;)V

    .line 783
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 784
    return-object v4
.end method

.method private c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1514
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1515
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0167

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0245

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02ab

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    .line 1522
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1523
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1531
    return-void
.end method

.method private static c(Landroid/content/Context;ILabu;)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 816
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lace;->b:Landroid/net/Uri;

    sget-object v2, Lace;->c:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lace;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 818
    invoke-static {v3}, Lace;->a(Landroid/database/Cursor;)V

    .line 819
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 820
    if-lez v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v6

    .line 821
    :goto_0
    if-ge v2, v4, :cond_1

    .line 822
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 823
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 824
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    sget v1, Lace;->a:I

    if-ne v1, v10, :cond_2

    .line 828
    new-array v1, v12, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v10

    aput-object v0, v1, v11

    .line 833
    :goto_1
    :try_start_0
    sget-object v8, Lace;->b:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "label== "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lace;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :cond_0
    :goto_2
    new-instance v1, Labw;

    invoke-direct {v1, v10, v7, v0, v5}, Labw;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Labu;->b(Labw;)V

    .line 841
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 846
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 847
    return-void

    .line 830
    :cond_2
    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    aput-object v8, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v10

    aput-object v0, v1, v11

    goto :goto_1

    .line 835
    :catch_0
    move-exception v1

    .line 837
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 821
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private static c(Landroid/content/ContentResolver;Ljava/lang/String;)[I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContactID2, name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)V

    .line 973
    invoke-static {}, Lace;->i()V

    .line 975
    sget-object v1, Lace;->e:Landroid/net/Uri;

    sget-object v2, Lace;->f:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lace;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 976
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 977
    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    new-array v4, v2, [I

    move v0, v6

    .line 979
    :goto_0
    if-ge v0, v2, :cond_0

    .line 980
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v4, v0

    .line 981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id======== "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lace;->b(Ljava/lang/String;)V

    .line 982
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 986
    return-object v4
.end method

.method private static d(Landroid/content/Context;ILabu;)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 871
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lace;->c:Landroid/net/Uri;

    sget-object v2, Lace;->d:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lace;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 873
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 874
    if-lez v5, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_1

    .line 876
    const/4 v0, 0x4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 877
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 878
    const/4 v0, 0x3

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 879
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 880
    const/4 v1, 0x0

    .line 881
    sget v0, Lace;->c:I

    if-ne v6, v0, :cond_2

    .line 882
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x1070001

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 884
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 887
    :try_start_0
    sget-object v10, Lace;->d:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 888
    instance-of v10, v0, Ljava/lang/Number;

    if-eqz v10, :cond_7

    .line 889
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 890
    :try_start_1
    aget-object v1, v9, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    move v2, v0

    move-object v0, v1

    .line 908
    :goto_2
    const/4 v1, 0x0

    .line 909
    sget v9, Lace;->b:I

    if-ne v6, v9, :cond_4

    .line 910
    new-instance v1, Labw;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v7, v0, v8}, Labw;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_0
    :goto_3
    invoke-virtual {p2, v1}, Labu;->a(Labw;)V

    .line 918
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 923
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 924
    return-void

    .line 892
    :catch_0
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    .line 894
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    .line 898
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v0, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x3

    aput-object v2, v0, v9

    .line 901
    :try_start_2
    sget-object v9, Lace;->c:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    move-object v0, v2

    move v2, v1

    .line 905
    goto :goto_2

    .line 902
    :catch_1
    move-exception v0

    .line 904
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v0, v2

    move v2, v1

    goto :goto_2

    .line 911
    :cond_4
    sget v9, Lace;->c:I

    if-ne v6, v9, :cond_5

    .line 912
    new-instance v1, Labv;

    const/4 v6, 0x3

    invoke-direct {v1, v6, v7, v0, v8}, Labv;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 913
    check-cast v0, Labv;

    iput v2, v0, Labv;->a:I

    goto :goto_3

    .line 914
    :cond_5
    sget v2, Lace;->d:I

    if-ne v6, v2, :cond_0

    .line 915
    new-instance v1, Laby;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v7, v0, v8}, Laby;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 875
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 892
    :catch_2
    move-exception v1

    goto :goto_4

    :cond_7
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private static e(Landroid/content/Context;ILabu;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    sget v0, Lace;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 929
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lace;->d:Landroid/net/Uri;

    sget-object v2, Lace;->e:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lace;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 936
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 937
    if-lez v4, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_1

    .line 939
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 940
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 941
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 942
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 943
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    sget v2, Lace;->a:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 946
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v2, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    aput-object v1, v2, v8

    .line 951
    :goto_2
    :try_start_0
    sget-object v8, Lace;->e:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 957
    :cond_0
    :goto_3
    new-instance v2, Labx;

    const/4 v8, 0x5

    invoke-direct {v2, v8, v5, v1, v6}, Labx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 958
    iput-object v6, v2, Labx;->c:Ljava/lang/String;

    .line 959
    iput-object v7, v2, Labx;->d:Ljava/lang/String;

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Labx;->b:Ljava/lang/String;

    .line 961
    invoke-virtual {p2, v2}, Labu;->f(Labw;)V

    .line 962
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 967
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 968
    return-void

    .line 932
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lace;->f:Landroid/net/Uri;

    sget-object v2, Lace;->e:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lace;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lace;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lace;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 948
    :cond_3
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    aput-object v1, v2, v8

    goto/16 :goto_2

    .line 952
    :catch_0
    move-exception v2

    .line 954
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 938
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1
.end method

.method private static f(Landroid/content/Context;ILabu;)V
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1073
    invoke-static/range {p0 .. p2}, Lace;->c(Landroid/content/Context;ILabu;)V

    .line 1074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1075
    const/4 v7, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v7}, Lace;->a(Landroid/content/Context;ILabu;I)V

    .line 1076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1077
    const/4 v9, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v9}, Lace;->a(Landroid/content/Context;ILabu;I)V

    .line 1078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1079
    const/4 v11, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v11}, Lace;->a(Landroid/content/Context;ILabu;I)V

    .line 1080
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1081
    invoke-static/range {p0 .. p2}, Lace;->e(Landroid/content/Context;ILabu;)V

    .line 1082
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1083
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "phone time:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v3, v5, v3

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lace;->b(Ljava/lang/String;)V

    .line 1084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "email time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v7, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lace;->b(Ljava/lang/String;)V

    .line 1085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "im time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v9, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lace;->b(Ljava/lang/String;)V

    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postal time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v11, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lace;->b(Ljava/lang/String;)V

    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "org time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v13, v11

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lace;->b(Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->saveUserDict()V

    .line 446
    iget-object v0, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->release(Z)V

    .line 448
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/dict/sgim_cm.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 450
    :cond_0
    iget-object v0, p0, Lace;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->init()V

    .line 451
    return-void
.end method

.method private static i()V
    .locals 1

    .prologue
    .line 520
    sget-boolean v0, Lace;->e:Z

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 524
    :cond_0
    :try_start_0
    sget-object v0, Lace;->a:Lacj;

    if-nez v0, :cond_1

    .line 525
    invoke-static {}, Lace;->b()Lacj;

    move-result-object v0

    sput-object v0, Lace;->a:Lacj;

    .line 527
    :cond_1
    const/4 v0, 0x2

    sput v0, Lace;->a:I

    .line 528
    const-string v0, "android.provider.ContactsContract$RawContactsColumns"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 529
    invoke-static {}, Lace;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    const/4 v0, 0x1

    sput v0, Lace;->a:I

    .line 532
    invoke-static {}, Lace;->j()V

    goto :goto_0
.end method

.method private static j()V
    .locals 4

    .prologue
    .line 539
    :try_start_0
    const-string v0, "android.provider.Contacts$People"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->e:Ljava/lang/Class;

    .line 540
    sget-object v0, Lace;->e:Ljava/lang/Class;

    const-string v1, "_ID"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->c:Ljava/lang/String;

    .line 541
    sget-object v0, Lace;->e:Ljava/lang/Class;

    const-string v1, "DISPLAY_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->d:Ljava/lang/String;

    .line 542
    sget-object v0, Lace;->e:Ljava/lang/Class;

    const-string v1, "CONTENT_URI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lace;->a:Landroid/net/Uri;

    .line 543
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lace;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lace;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lace;->b:[Ljava/lang/String;

    .line 544
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 545
    const/4 v1, 0x0

    const-class v2, Landroid/content/ContentResolver;

    aput-object v2, v0, v1

    .line 546
    const/4 v1, 0x1

    const-class v2, Landroid/net/Uri;

    aput-object v2, v0, v1

    .line 547
    sget-object v1, Lace;->e:Ljava/lang/Class;

    const-string v2, "openContactPhotoInputStream"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->a:Ljava/lang/reflect/Method;

    .line 549
    const-string v0, "android.provider.Contacts$Phones"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->b:Ljava/lang/Class;

    .line 550
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v1, "PERSON_ID"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->e:Ljava/lang/String;

    .line 551
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v1, "DISPLAY_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->f:Ljava/lang/String;

    .line 552
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v1, "NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->g:Ljava/lang/String;

    .line 553
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->h:Ljava/lang/String;

    .line 554
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v1, "LABEL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->i:Ljava/lang/String;

    .line 555
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    .line 556
    const/4 v0, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v0

    .line 557
    const/4 v0, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    .line 558
    const/4 v0, 0x2

    const-class v2, Ljava/lang/CharSequence;

    aput-object v2, v1, v0

    .line 559
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v2, "getDisplayLabel"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->b:Ljava/lang/reflect/Method;

    .line 560
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v2, "CONTENT_URI"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lace;->b:Landroid/net/Uri;

    .line 561
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lace;->e:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lace;->g:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lace;->h:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lace;->i:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Lace;->f:Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lace;->c:[Ljava/lang/String;

    .line 564
    const-string v0, "android.provider.Contacts$ContactMethods"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->d:Ljava/lang/Class;

    .line 565
    sget-object v0, Lace;->d:Ljava/lang/Class;

    const-string v2, "PERSON_ID"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->j:Ljava/lang/String;

    .line 566
    sget-object v0, Lace;->d:Ljava/lang/Class;

    const-string v2, "KIND"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->k:Ljava/lang/String;

    .line 567
    sget-object v0, Lace;->d:Ljava/lang/Class;

    const-string v2, "TYPE"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->l:Ljava/lang/String;

    .line 568
    sget-object v0, Lace;->d:Ljava/lang/Class;

    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->m:Ljava/lang/String;

    .line 569
    sget-object v0, Lace;->d:Ljava/lang/Class;

    const-string v2, "LABEL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->n:Ljava/lang/String;

    .line 570
    sget-object v0, Lace;->d:Ljava/lang/Class;

    const-string v2, "AUX_DATA"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->o:Ljava/lang/String;

    .line 571
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lace;->j:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lace;->m:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lace;->l:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lace;->n:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Lace;->k:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lace;->o:Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lace;->d:[Ljava/lang/String;

    .line 573
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    .line 574
    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    .line 575
    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    .line 576
    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    .line 577
    const/4 v2, 0x3

    const-class v3, Ljava/lang/CharSequence;

    aput-object v3, v0, v2

    .line 578
    sget-object v2, Lace;->d:Ljava/lang/Class;

    const-string v3, "getDisplayLabel"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->c:Ljava/lang/reflect/Method;

    .line 579
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 580
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 581
    sget-object v2, Lace;->d:Ljava/lang/Class;

    const-string v3, "decodeImProtocol"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->d:Ljava/lang/reflect/Method;

    .line 582
    sget-object v0, Lace;->d:Ljava/lang/Class;

    const-string v2, "CONTENT_URI"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lace;->c:Landroid/net/Uri;

    .line 584
    const-string v0, "android.provider.Contacts$Organizations"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->c:Ljava/lang/Class;

    .line 585
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v2, "PERSON_ID"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->p:Ljava/lang/String;

    .line 586
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v2, "COMPANY"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->q:Ljava/lang/String;

    .line 587
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v2, "TITLE"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->r:Ljava/lang/String;

    .line 588
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v2, "TYPE"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->s:Ljava/lang/String;

    .line 589
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v2, "LABEL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->t:Ljava/lang/String;

    .line 590
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v2, "getDisplayLabel"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->e:Ljava/lang/reflect/Method;

    .line 591
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lace;->p:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lace;->q:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lace;->s:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lace;->t:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lace;->r:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lace;->e:[Ljava/lang/String;

    .line 592
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v1, "CONTENT_URI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lace;->d:Landroid/net/Uri;

    .line 594
    const-string v0, "android.provider.Contacts"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->a:Ljava/lang/Class;

    .line 596
    sget-object v0, Lace;->a:Ljava/lang/Class;

    const-string v1, "KIND_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lace;->b:I

    .line 597
    sget-object v0, Lace;->a:Ljava/lang/Class;

    const-string v1, "KIND_IM"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lace;->c:I

    .line 598
    sget-object v0, Lace;->a:Ljava/lang/Class;

    const-string v1, "KIND_POSTAL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lace;->d:I

    .line 600
    const/4 v0, 0x1

    sput-boolean v0, Lace;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 604
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static k()V
    .locals 6

    .prologue
    .line 611
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 612
    const-string v0, "android.provider.ContactsContract$RawContactsColumns"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->j:Ljava/lang/Class;

    .line 613
    const-string v0, "android.provider.ContactsContract$CommonDataKinds$CommonColumns"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->k:Ljava/lang/Class;

    .line 614
    sget-object v0, Lace;->j:Ljava/lang/Class;

    const-string v3, "CONTACT_ID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->v:Ljava/lang/String;

    .line 616
    sget-object v0, Lace;->k:Ljava/lang/Class;

    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->w:Ljava/lang/String;

    .line 617
    sget-object v0, Lace;->k:Ljava/lang/Class;

    const-string v3, "LABEL"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->x:Ljava/lang/String;

    .line 619
    const-string v0, "android.provider.ContactsContract$Contacts"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->a:Ljava/lang/Class;

    .line 620
    sget-object v0, Lace;->a:Ljava/lang/Class;

    const-string v3, "_ID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->y:Ljava/lang/String;

    .line 621
    sget-object v0, Lace;->a:Ljava/lang/Class;

    const-string v3, "DISPLAY_NAME"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->z:Ljava/lang/String;

    .line 622
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lace;->y:Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    sget-object v4, Lace;->z:Ljava/lang/String;

    aput-object v4, v0, v3

    sput-object v0, Lace;->f:[Ljava/lang/String;

    .line 623
    sget-object v0, Lace;->a:Ljava/lang/Class;

    const-string v3, "CONTENT_URI"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lace;->e:Landroid/net/Uri;

    .line 624
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 625
    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v0, v3

    .line 626
    const/4 v3, 0x1

    const-class v4, Landroid/net/Uri;

    aput-object v4, v0, v3

    .line 627
    sget-object v3, Lace;->a:Ljava/lang/Class;

    const-string v4, "openContactPhotoInputStream"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->f:Ljava/lang/reflect/Method;

    .line 629
    const-string v0, "android.provider.ContactsContract$Data"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->f:Ljava/lang/Class;

    .line 630
    sget-object v0, Lace;->f:Ljava/lang/Class;

    const-string v3, "MIMETYPE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->A:Ljava/lang/String;

    .line 631
    sget-object v0, Lace;->f:Ljava/lang/Class;

    const-string v3, "CONTENT_URI"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lace;->f:Landroid/net/Uri;

    .line 633
    const-string v0, "android.provider.ContactsContract$CommonDataKinds$Phone"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->b:Ljava/lang/Class;

    .line 634
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v3, "CONTACT_ID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->e:Ljava/lang/String;

    .line 635
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v3, "NUMBER"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->g:Ljava/lang/String;

    .line 636
    sget-object v0, Lace;->w:Ljava/lang/String;

    sput-object v0, Lace;->h:Ljava/lang/String;

    .line 637
    sget-object v0, Lace;->x:Ljava/lang/String;

    sput-object v0, Lace;->i:Ljava/lang/String;

    .line 638
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lace;->v:Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    sget-object v4, Lace;->g:Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    sget-object v4, Lace;->h:Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    sget-object v4, Lace;->i:Ljava/lang/String;

    aput-object v4, v0, v3

    sput-object v0, Lace;->c:[Ljava/lang/String;

    .line 639
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v3, "CONTENT_URI"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lace;->b:Landroid/net/Uri;

    .line 640
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Class;

    .line 641
    const/4 v0, 0x0

    const-class v4, Landroid/content/res/Resources;

    aput-object v4, v3, v0

    .line 642
    const/4 v0, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    .line 643
    const/4 v0, 0x2

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v3, v0

    .line 644
    sget-object v0, Lace;->b:Ljava/lang/Class;

    const-string v4, "getTypeLabel"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->b:Ljava/lang/reflect/Method;

    .line 646
    const-string v0, "android.provider.ContactsContract$CommonDataKinds$Email"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->g:Ljava/lang/Class;

    .line 648
    sget-object v0, Lace;->g:Ljava/lang/Class;

    const-string v4, "DATA"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->D:Ljava/lang/String;

    .line 649
    sget-object v0, Lace;->w:Ljava/lang/String;

    sput-object v0, Lace;->B:Ljava/lang/String;

    .line 650
    sget-object v0, Lace;->x:Ljava/lang/String;

    sput-object v0, Lace;->C:Ljava/lang/String;

    .line 651
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lace;->v:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    sget-object v5, Lace;->D:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x2

    sget-object v5, Lace;->B:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x3

    sget-object v5, Lace;->C:Ljava/lang/String;

    aput-object v5, v0, v4

    sput-object v0, Lace;->g:[Ljava/lang/String;

    .line 652
    sget-object v0, Lace;->g:Ljava/lang/Class;

    const-string v4, "CONTENT_URI"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lace;->g:Landroid/net/Uri;

    .line 653
    sget-object v0, Lace;->g:Ljava/lang/Class;

    const-string v4, "getTypeLabel"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->g:Ljava/lang/reflect/Method;

    .line 655
    const-string v0, "android.provider.ContactsContract$CommonDataKinds$Im"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->h:Ljava/lang/Class;

    .line 657
    sget-object v0, Lace;->h:Ljava/lang/Class;

    const-string v4, "DATA"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->E:Ljava/lang/String;

    .line 658
    sget-object v0, Lace;->w:Ljava/lang/String;

    sput-object v0, Lace;->F:Ljava/lang/String;

    .line 659
    sget-object v0, Lace;->x:Ljava/lang/String;

    sput-object v0, Lace;->G:Ljava/lang/String;

    .line 660
    sget-object v0, Lace;->h:Ljava/lang/Class;

    const-string v4, "PROTOCOL"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->H:Ljava/lang/String;

    .line 661
    sget-object v0, Lace;->h:Ljava/lang/Class;

    const-string v4, "CUSTOM_PROTOCOL"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->I:Ljava/lang/String;

    .line 662
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lace;->v:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    sget-object v5, Lace;->E:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x2

    sget-object v5, Lace;->F:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x3

    sget-object v5, Lace;->G:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x4

    sget-object v5, Lace;->H:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x5

    sget-object v5, Lace;->I:Ljava/lang/String;

    aput-object v5, v0, v4

    sput-object v0, Lace;->h:[Ljava/lang/String;

    .line 663
    sget-object v0, Lace;->h:Ljava/lang/Class;

    const-string v4, "CONTENT_ITEM_TYPE"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->J:Ljava/lang/String;

    .line 664
    sget-object v0, Lace;->h:Ljava/lang/Class;

    const-string v4, "getProtocolLabel"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->h:Ljava/lang/reflect/Method;

    .line 666
    const-string v0, "android.provider.ContactsContract$CommonDataKinds$StructuredPostal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->i:Ljava/lang/Class;

    .line 668
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "DATA"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->K:Ljava/lang/String;

    .line 669
    sget-object v0, Lace;->w:Ljava/lang/String;

    sput-object v0, Lace;->L:Ljava/lang/String;

    .line 670
    sget-object v0, Lace;->x:Ljava/lang/String;

    sput-object v0, Lace;->M:Ljava/lang/String;

    .line 671
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "STREET"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->N:Ljava/lang/String;

    .line 672
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "POBOX"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->O:Ljava/lang/String;

    .line 673
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "NEIGHBORHOOD"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->P:Ljava/lang/String;

    .line 674
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "CITY"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->Q:Ljava/lang/String;

    .line 675
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "REGION"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->R:Ljava/lang/String;

    .line 676
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "POSTCODE"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->S:Ljava/lang/String;

    .line 677
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "COUNTRY"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->T:Ljava/lang/String;

    .line 678
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lace;->v:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    sget-object v5, Lace;->K:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x2

    sget-object v5, Lace;->L:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x3

    sget-object v5, Lace;->M:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x4

    sget-object v5, Lace;->N:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x5

    sget-object v5, Lace;->O:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x6

    sget-object v5, Lace;->P:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x7

    sget-object v5, Lace;->Q:Ljava/lang/String;

    aput-object v5, v0, v4

    const/16 v4, 0x8

    sget-object v5, Lace;->R:Ljava/lang/String;

    aput-object v5, v0, v4

    const/16 v4, 0x9

    sget-object v5, Lace;->S:Ljava/lang/String;

    aput-object v5, v0, v4

    const/16 v4, 0xa

    sget-object v5, Lace;->T:Ljava/lang/String;

    aput-object v5, v0, v4

    sput-object v0, Lace;->i:[Ljava/lang/String;

    .line 681
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "CONTENT_URI"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lace;->h:Landroid/net/Uri;

    .line 682
    sget-object v0, Lace;->i:Ljava/lang/Class;

    const-string v4, "getTypeLabel"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->i:Ljava/lang/reflect/Method;

    .line 684
    const-string v0, "android.provider.ContactsContract$CommonDataKinds$Organization"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lace;->c:Ljava/lang/Class;

    .line 685
    sget-object v0, Lace;->v:Ljava/lang/String;

    sput-object v0, Lace;->p:Ljava/lang/String;

    .line 686
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v4, "COMPANY"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->q:Ljava/lang/String;

    .line 687
    sget-object v0, Lace;->w:Ljava/lang/String;

    sput-object v0, Lace;->s:Ljava/lang/String;

    .line 688
    sget-object v0, Lace;->x:Ljava/lang/String;

    sput-object v0, Lace;->t:Ljava/lang/String;

    .line 689
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v4, "TITLE"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->r:Ljava/lang/String;

    .line 690
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lace;->p:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    sget-object v5, Lace;->q:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x2

    sget-object v5, Lace;->s:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x3

    sget-object v5, Lace;->t:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x4

    sget-object v5, Lace;->r:Ljava/lang/String;

    aput-object v5, v0, v4

    sput-object v0, Lace;->e:[Ljava/lang/String;

    .line 691
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v4, "CONTENT_ITEM_TYPE"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lace;->u:Ljava/lang/String;

    .line 692
    sget-object v0, Lace;->c:Ljava/lang/Class;

    const-string v4, "getTypeLabel"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lace;->e:Ljava/lang/reflect/Method;

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init cost:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 700
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 696
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 697
    :catch_1
    move-exception v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lace;->a:Landroid/database/ContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_1
    :try_start_1
    iget-object v0, p0, Lace;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 351
    sget-object v0, Lace;->e:Landroid/net/Uri;

    if-eqz v0, :cond_2

    sget-object v0, Lace;->e:Landroid/net/Uri;

    .line 352
    :goto_1
    if-eqz v0, :cond_0

    .line 353
    const/4 v2, 0x1

    new-instance v3, Lacg;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lacg;-><init>(Lace;Landroid/os/Handler;)V

    iput-object v3, p0, Lace;->a:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 351
    :cond_2
    :try_start_2
    sget-object v0, Lace;->a:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    const-string v0, "closeObserver"

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lace;->a:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "unregisterobserver"

    invoke-static {v0}, Lace;->b(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lace;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lace;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lace;->a:Landroid/database/ContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :cond_0
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 373
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lace;->a:Landroid/app/AlertDialog;

    .line 374
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Lace;->h()V

    .line 378
    invoke-virtual {p0}, Lace;->f()V

    .line 379
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lace;->a:Lack;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lack;->cancelOperation(I)V

    .line 383
    invoke-direct {p0}, Lace;->h()V

    .line 384
    iget-object v0, p0, Lace;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lace;->a(Landroid/content/Context;)V

    .line 385
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lace;->b:Z

    .line 400
    iget-object v0, p0, Lace;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lace;->b(Landroid/content/Context;)V

    .line 403
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lach;

    invoke-direct {v1, p0}, Lach;-><init>(Lace;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 414
    return-void
.end method

.method public g()V
    .locals 9

    .prologue
    const-wide/32 v7, 0x493e0

    const/16 v6, 0x64

    const/4 v2, 0x2

    .line 418
    iget-object v0, p0, Lace;->a:Lack;

    invoke-virtual {v0, v2}, Lack;->removeMessages(I)V

    .line 419
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lace;->a:Lack;

    iget-object v1, p0, Lace;->a:Lack;

    invoke-virtual {v1, v2}, Lack;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Lack;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lace;->b:Z

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 431
    iget-wide v2, p0, Lace;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lace;->a:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v7

    if-lez v0, :cond_3

    .line 433
    :cond_2
    iget-boolean v0, p0, Lace;->f:Z

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lace;->f:Z

    .line 435
    invoke-direct {p0}, Lace;->b()Z

    goto :goto_0

    .line 438
    :cond_3
    iget-object v0, p0, Lace;->a:Lack;

    invoke-virtual {v0, v6}, Lack;->removeMessages(I)V

    .line 439
    iget-object v0, p0, Lace;->a:Lack;

    iget-object v1, p0, Lace;->a:Lack;

    invoke-virtual {v1, v6}, Lack;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Lack;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
