.class public Lanb;
.super Lalg;
.source "SourceFile"

# interfaces
.implements Lsb;


# instance fields
.field private a:Lang;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v3, p0, Lanb;->d:Z

    .line 57
    iput-boolean v3, p0, Lanb;->e:Z

    .line 61
    iput v3, p0, Lanb;->b:I

    .line 83
    new-instance v0, Lrr;

    iget-object v1, p0, Lanb;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lanb;->a:Lrr;

    .line 84
    iput-boolean v3, p0, Lanb;->a:Z

    .line 86
    invoke-static {p1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsa;->a(Lsb;)V

    .line 87
    iget-object v0, p0, Lanb;->a:Lrr;

    new-instance v1, Lanc;

    invoke-direct {v1, p0}, Lanc;-><init>(Lanb;)V

    invoke-virtual {v0, v1}, Lrr;->a(Lrx;)V

    .line 113
    iget-object v0, p0, Lanb;->a:Lrr;

    new-instance v1, Land;

    invoke-direct {v1, p0}, Land;-><init>(Lanb;)V

    invoke-virtual {v0, v1}, Lrr;->a(Lro;)V

    .line 118
    return-void
.end method

.method private a()I
    .locals 7

    .prologue
    const/16 v4, 0x25

    const/16 v3, 0x21

    const/16 v0, 0x20

    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 213
    iget-object v5, p0, Lanb;->a:Lrr;

    iget-object v6, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v6}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v6

    invoke-virtual {v6}, Lamo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrr;->a(Ljava/lang/String;)I

    move-result v5

    .line 215
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_a

    .line 216
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lafp;->e(J)V

    .line 217
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    invoke-virtual {v0}, Lamo;->b()V

    .line 218
    iget-object v0, p0, Lanb;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v3

    .line 219
    if-eqz v3, :cond_1

    const-string v0, "updateurl"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    const-string v0, "date"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 224
    const-string v0, "html"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v4

    const-string v0, "html"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lafp;->b(Ljava/lang/String;)V

    .line 227
    :cond_2
    const-string v0, "open"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->f(Z)V

    .line 230
    :cond_3
    const-string v0, "ping_for_test_mobile_net"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    const-string v0, "on"

    const-string v4, "ping_for_test_mobile_net"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->E(Z)V

    .line 235
    :cond_4
    const-string v0, "date"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    iget-object v4, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v4}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v4

    invoke-virtual {v4}, Lafp;->n()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-direct {p0, v3}, Lanb;->a(Ljava/util/HashMap;)V

    .line 241
    if-eqz v4, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    const-string v0, "celldictURL"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "celldictmd5"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "celldicttype"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    const-string v0, "celldictURL"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "celldictmd5"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "celldictname"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "celldicttype"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lanb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_5
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 260
    :cond_6
    new-instance v0, Ljava/io/File;

    sget-object v4, Laox;->Z:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Layw;->a(Ljava/io/File;)Z

    .line 263
    sget-object v0, Laox;->k:Ljava/lang/String;

    sget-object v4, Laox;->Z:Ljava/lang/String;

    sget-object v5, Laox;->aa:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Layw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 264
    if-nez v0, :cond_7

    move v0, v2

    .line 265
    goto/16 :goto_0

    .line 269
    :cond_7
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    const-string v0, "date"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lafp;->f(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    const-string v0, "date"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lamo;->l:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->j(Z)V

    .line 274
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafp;->h(Ljava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lanb;->c:Z

    if-ne v0, v1, :cond_8

    .line 279
    new-instance v0, Lanf;

    invoke-direct {v0, p0}, Lanf;-><init>(Lanb;)V

    .line 281
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 282
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->Z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->aa:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_1
    invoke-virtual {v0}, Lanf;->a()Ljava/util/Set;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    new-instance v2, Lane;

    invoke-direct {v2, p0, v0}, Lane;-><init>(Lanb;Ljava/lang/String;)V

    invoke-virtual {v2}, Lane;->start()V

    goto :goto_2

    .line 296
    :cond_8
    const-string v0, "celldictURL"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "celldictmd5"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "celldicttype"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 299
    const-string v0, "celldictURL"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "celldictmd5"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "celldictname"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "celldicttype"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lanb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_9
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 307
    :cond_a
    if-eq v5, v0, :cond_0

    .line 309
    if-ne v5, v3, :cond_b

    move v0, v3

    .line 310
    goto/16 :goto_0

    .line 311
    :cond_b
    if-ne v5, v4, :cond_c

    move v0, v4

    .line 312
    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 314
    goto/16 :goto_0

    .line 283
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lanb;)Lang;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lanb;->a:Lang;

    return-object v0
.end method

.method static synthetic a(Lanb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lanb;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lanb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lanb;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x1b

    const/4 v8, 0x0

    .line 354
    new-instance v0, Laln;

    iget-object v1, p0, Lanb;->a:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Laln;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v6}, Lqy;->b(I)I

    .line 356
    const/4 v7, 0x0

    move v1, v6

    move-object v2, v8

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v8

    invoke-static/range {v1 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lanb;->a:Lsg;

    .line 357
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lanb;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    .line 358
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 8
    .parameter

    .prologue
    const-wide/32 v6, 0xa4cb80

    .line 186
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 188
    const-string v0, "nexttime_wifi"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    const-string v0, "nexttime_wifi"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Layu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_2

    .line 193
    iget-object v3, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v3}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lafp;->j(J)V

    .line 199
    :cond_0
    :goto_0
    const-string v0, "nexttime_mobile"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    const-string v0, "nexttime_mobile"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Layu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_3

    .line 203
    iget-object v1, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lafp;->k(J)V

    .line 210
    :cond_1
    :goto_1
    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    add-long v3, v1, v6

    invoke-virtual {v0, v3, v4}, Lafp;->j(J)V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    add-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Lafp;->k(J)V

    goto :goto_1
.end method

.method static synthetic a(Lanb;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lanb;->a:Z

    return v0
.end method

.method static synthetic a(Lanb;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lanb;->e:Z

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->n()Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lanb;->a:Lrr;

    invoke-virtual {v0}, Lrr;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lanb;->a:Lrr;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lanb;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 71
    :cond_0
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0}, Lsa;->a()Lsb;

    move-result-object v0

    instance-of v0, v0, Lanb;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsa;->a(Lsb;)V

    .line 74
    :cond_1
    iput-object v1, p0, Lanb;->a:Lrr;

    .line 75
    iput-object v1, p0, Lanb;->a:Landroid/content/Context;

    .line 76
    iput-object v1, p0, Lanb;->a:Lsg;

    .line 77
    iput-object v1, p0, Lanb;->a:Lalv;

    .line 78
    iput-object v1, p0, Lanb;->a:Lang;

    .line 79
    return-void
.end method

.method public a(Lang;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lanb;->a:Lang;

    .line 65
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-boolean v1, p0, Lanb;->d:Z

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lanb;->e:Z

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lanb;->a:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lanb;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, ""

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanb;->d:Z

    .line 320
    iput-boolean v1, p0, Lanb;->a:Z

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lanb;->a:Lalv;

    .line 322
    iget-object v0, p0, Lanb;->a:Lsg;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lanb;->a:Lsg;

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 325
    :cond_0
    iget-object v0, p0, Lanb;->a:Lrr;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lanb;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 327
    :cond_1
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lanb;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lanb;->c:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lanb;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 125
    :cond_0
    invoke-direct {p0}, Lanb;->a()I

    move-result v0

    iput v0, p0, Lanb;->b:I

    .line 126
    iget-object v0, p0, Lanb;->a:Lrr;

    if-nez v0, :cond_2

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lanb;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_3

    const-string v0, "date"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lanb;->a:Z

    if-nez v0, :cond_3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastUpgradeTime,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "date"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lanb;->a(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    const-string v0, "date"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lafp;->f(Ljava/lang/String;)V

    .line 132
    :cond_3
    iget-object v0, p0, Lanb;->a:Lang;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lanb;->a:Z

    if-nez v0, :cond_4

    .line 133
    iget-object v0, p0, Lanb;->a:Lang;

    iget v1, p0, Lanb;->b:I

    invoke-interface {v0, v1}, Lang;->a(I)V

    .line 135
    :cond_4
    iget-object v0, p0, Lanb;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lanb;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lanb;->a:Z

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lanb;->a:Lalv;

    iget v1, p0, Lanb;->b:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    const-string v0, ""

    return-object v0
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lanb;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lanb;->c:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lanb;->a:Lalv;

    invoke-interface {v0}, Lalv;->h()V

    .line 144
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanb;->d:Z

    .line 146
    iget v0, p0, Lanb;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanb;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const-string v1, "sogou.action.upload.testmobilenet"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "DOWN_VELOCITY"

    iget-object v2, p0, Lanb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lanb;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    :cond_1
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const-string v0, ""

    return-object v0
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lanb;->a:Lrr;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lanb;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanb;->d:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanb;->a:Z

    .line 159
    iget-object v0, p0, Lanb;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lanb;->c:Z

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lanb;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lanb;->a:Lalv;

    .line 163
    :cond_1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, ""

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const-string v0, ""

    return-object v0
.end method
