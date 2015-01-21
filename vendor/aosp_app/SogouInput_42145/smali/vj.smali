.class public Lvj;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lsk;


# instance fields
.field private a:I

.field private a:J

.field private a:Landroid/content/ContentResolver;

.field private a:Landroid/content/Context;

.field public a:Landroid/os/Handler;

.field private a:Landroid/os/Looper;

.field private a:Landroid/telephony/TelephonyManager;

.field private a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

.field public a:Ljava/lang/String;

.field private a:Ljava/util/ArrayList;

.field private a:Ljava/util/List;

.field public a:Z

.field private b:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/util/List;JLandroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    iput-boolean v2, p0, Lvj;->a:Z

    .line 64
    iput v2, p0, Lvj;->a:I

    .line 82
    iput-wide p6, p0, Lvj;->a:J

    .line 83
    iput-object p1, p0, Lvj;->a:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lvj;->a:Landroid/content/ContentResolver;

    .line 85
    iput-object p2, p0, Lvj;->a:Landroid/telephony/TelephonyManager;

    .line 86
    iput-object p3, p0, Lvj;->a:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lvj;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    .line 88
    iput-object p5, p0, Lvj;->b:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lvj;->a:Landroid/content/Context;

    iget-object v1, p0, Lvj;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvj;->b:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvj;->c:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvj;->a:Ljava/util/ArrayList;

    .line 92
    iput-boolean v2, p0, Lvj;->a:Z

    .line 93
    iput-object p8, p0, Lvj;->b:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic a(Lvj;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lvj;->a:I

    return v0
.end method

.method static synthetic a(Lvj;)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lvj;->a:J

    return-wide v0
.end method

.method static synthetic a(Lvj;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->a:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic a(Lvj;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x81

    .line 302
    const/16 v1, 0x84

    .line 303
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 305
    :try_start_0
    const-string v0, "sub"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lvj;->a:Landroid/content/Context;

    const v4, 0x7f0b036d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "iso-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    const-string v0, "sub_cs"

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v0, "m_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v0, "ct_t"

    const-string v1, "application/vnd.wap.multipart.related"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    const-string v0, "m_cls"

    const-string v1, "personal"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "pri"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v0, "tr_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lanu;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "thread_id"

    invoke-virtual {p1}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v0, "d_rpt"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    iget-object v0, p0, Lvj;->a:Landroid/content/ContentResolver;

    sget-object v1, Lanx;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 320
    return-object v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lvj;Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lvj;->a(Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lvj;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lvj;)Landroid/os/Looper;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->a:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    return-object v0
.end method

.method static synthetic a(Lvj;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lvj;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lvj;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/sohu/inputmethod/multimedia/SogouMedia;Landroid/os/Message;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 399
    new-instance v4, Lama;

    iget-object v0, p0, Lvj;->a:Landroid/content/Context;

    iget-object v2, p0, Lvj;->b:Landroid/os/Handler;

    invoke-direct {v4, v0, p1, p2, v2}, Lama;-><init>(Landroid/content/Context;Lcom/sohu/inputmethod/multimedia/SogouMedia;Landroid/os/Message;Landroid/os/Handler;)V

    .line 400
    const/16 v0, 0xb0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lvj;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1}, Lqy;->b()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 402
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 403
    iget-object v1, p0, Lvj;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(Lsg;)I

    .line 406
    :cond_0
    return-void
.end method

.method private a(Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x6a

    .line 330
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 331
    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 332
    sget-object v1, Lanw;->a:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/addr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 333
    const-string v1, "charset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v1, "type"

    const/16 v2, 0x89

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v1, "address"

    invoke-virtual {p1}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lvj;->a:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 337
    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 338
    const-string v1, "charset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v1, "type"

    const/16 v2, 0x97

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string v1, "address"

    iget-object v2, p0, Lvj;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lvj;->a:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 342
    return-void
.end method

.method private a(Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/net/Uri;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 353
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    .line 354
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 355
    sget-object v1, Lanw;->a:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/part"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 357
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 358
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    .line 359
    const-string v3, "ct"

    iget-object v4, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v3, "seq"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string v3, "cid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v3, "cl"

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v3, "name"

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget v3, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    if-nez v3, :cond_1

    .line 366
    const-string v3, "text"

    iget-object v4, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->f:Ljava/lang/String;

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v3, "chset"

    const/16 v4, 0x6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    :cond_1
    iget-object v3, p0, Lvj;->a:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 371
    iget v4, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    if-eqz v4, :cond_0

    .line 372
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    .line 374
    const-string v4, "_data"

    iget-object v5, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:Ljava/lang/String;

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v4, "ct"

    iget-object v5, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v4, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v4, "cl"

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v4, "name"

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lvj;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, v3, p4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 383
    :cond_2
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    .line 384
    const-string v0, "ct"

    const-string v2, "application/smil"

    invoke-virtual {p4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "seq"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    invoke-static {p3}, Lanr;->a(Ljava/util/List;)Lazr;

    move-result-object v0

    .line 387
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 388
    invoke-static {v0, v2}, Ltk;->a(Lazr;Ljava/io/OutputStream;)V

    .line 389
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string v2, "name"

    const-string v3, "smil.xml"

    invoke-virtual {p4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v2, "cl"

    const-string v3, "smil.xml"

    invoke-virtual {p4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v2, "cid"

    const-string v3, "<smil>"

    invoke-virtual {p4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v2, "text"

    invoke-virtual {p4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lvj;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 396
    return-void
.end method

.method static synthetic a(Lvj;Lcom/sohu/inputmethod/multimedia/SogouMedia;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lvj;->a(Lcom/sohu/inputmethod/multimedia/SogouMedia;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lvj;Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lvj;->a(Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic a(Lvj;Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/net/Uri;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lvj;->a(Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/net/Uri;Ljava/util/List;Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic b(Lvj;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lvj;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lvj;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 99
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lvj;->a:Landroid/os/Looper;

    .line 101
    iget-object v0, p0, Lvj;->a:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Lvk;

    invoke-direct {v0, p0}, Lvk;-><init>(Lvj;)V

    iput-object v0, p0, Lvj;->a:Landroid/os/Handler;

    .line 265
    iget-object v0, p0, Lvj;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvj;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvj;->a:Ljava/util/List;

    .line 267
    iget-object v0, p0, Lvj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 268
    iget v2, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    if-nez v2, :cond_1

    .line 269
    iget-object v2, p0, Lvj;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    :cond_1
    iget v2, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    packed-switch v2, :pswitch_data_0

    .line 285
    :goto_2
    iget-object v2, p0, Lvj;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :pswitch_1
    iget v2, p0, Lvj;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lvj;->a:I

    goto :goto_2

    .line 279
    :pswitch_2
    iget v2, p0, Lvj;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lvj;->a:I

    goto :goto_2

    .line 282
    :pswitch_3
    iget v2, p0, Lvj;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lvj;->a:I

    goto :goto_2

    .line 287
    :cond_2
    iget-object v0, p0, Lvj;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    iget-object v0, p0, Lvj;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bp:I

    .line 292
    :goto_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    .line 290
    :cond_3
    iget-object v0, p0, Lvj;->a:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_3

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
