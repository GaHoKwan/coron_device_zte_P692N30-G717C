.class public Laur;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/ArrayList;

.field private static a:Z


# instance fields
.field private a:I

.field private a:Ljava/util/HashMap;

.field private b:Ljava/util/ArrayList;

.field private b:Ljava/util/HashMap;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laur;->a:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Laur;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v1, p0, Laur;->b:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Laur;->c:Z

    .line 151
    iput v1, p0, Laur;->a:I

    .line 152
    sget-object v0, Laur;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laur;->a:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laur;->b:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laur;->b:Ljava/util/HashMap;

    .line 156
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    sput-boolean v0, Laur;->a:Z

    .line 476
    return-void
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 247
    if-gez p1, :cond_0

    iget v0, p0, Laur;->a:I

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :cond_0
    return p1
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 227
    if-ltz p1, :cond_0

    .line 243
    :goto_0
    return p1

    .line 228
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 243
    :pswitch_0
    rsub-int/lit8 p1, p1, -0x1

    goto :goto_0

    :pswitch_1
    move p1, v0

    .line 233
    goto :goto_0

    .line 235
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_3
    move p1, v0

    .line 240
    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(I)Laus;
    .locals 3
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Laur;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Laur;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1}, Laur;->b(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laus;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Laut;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Laur;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laut;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Laur;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 2
    .parameter

    .prologue
    .line 195
    invoke-virtual {p0}, Laur;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Laur;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Laur;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Laur;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laus;

    .line 199
    if-eqz v0, :cond_0

    iget-object v0, v0, Laus;->b:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Laur;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Laur;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Laur;->a(I)Laus;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0, p2}, Laur;->a(Laus;Z)V

    .line 179
    return-void
.end method

.method public a(Laus;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 191
    :goto_0
    :pswitch_0
    return-void

    .line 183
    :cond_0
    iget v0, p1, Laus;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 407
    .line 412
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 413
    :try_start_1
    new-instance v6, Layv;

    invoke-direct {v6}, Layv;-><init>()V

    .line 415
    const-string v0, "utf-8"

    invoke-interface {v6, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 418
    const/4 v0, 0x0

    const-string v1, "Symbols"

    invoke-interface {v6, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    .line 421
    :goto_0
    if-ge v5, v7, :cond_3

    .line 422
    const/4 v0, 0x0

    const-string v1, "Category"

    invoke-interface {v6, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laus;

    .line 425
    iget-boolean v1, v0, Laus;->b:Z

    if-nez v1, :cond_0

    .line 421
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 431
    :cond_0
    const/4 v3, 0x0

    const-string v8, "name"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v3, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const/4 v1, 0x0

    const-string v3, "column"

    iget v8, v0, Laus;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v1, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const/4 v1, 0x0

    const-string v3, "comment"

    iget-object v8, v0, Laus;->a:Ljava/lang/String;

    invoke-interface {v6, v1, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const/4 v1, 0x0

    const-string v3, "user"

    const-string v8, "true"

    invoke-interface {v6, v1, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    iget-object v1, v0, Laus;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    move v3, v4

    .line 437
    :goto_2
    if-ge v3, v8, :cond_2

    .line 438
    const/4 v1, 0x0

    const-string v9, "Symbol"

    invoke-interface {v6, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const/4 v9, 0x0

    const-string v10, "text"

    iget-object v1, v0, Laus;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v9, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    iget-boolean v1, v0, Laus;->a:Z

    if-nez v1, :cond_1

    .line 441
    const/4 v9, 0x0

    const-string v10, "name"

    iget-object v1, v0, Laus;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v9, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    :cond_1
    const/4 v1, 0x0

    const-string v9, "Symbol"

    invoke-interface {v6, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 445
    :cond_2
    const/4 v0, 0x0

    const-string v1, "Category"

    invoke-interface {v6, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 452
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 455
    :goto_3
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 457
    :goto_4
    sput-boolean v4, Laur;->a:Z

    .line 458
    return-void

    .line 448
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "Symbols"

    invoke-interface {v6, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 455
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 452
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Laur;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Laur;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 256
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    if-eqz p3, :cond_1

    sget-boolean v0, Laur;->a:Z

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0, p1}, Laur;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Laur;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x4

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 294
    if-nez p1, :cond_0

    .line 398
    :goto_0
    return-void

    :cond_0
    move v0, v7

    move v2, v7

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 309
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v1, :cond_f

    .line 310
    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 311
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 312
    const-string v9, "Category"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 314
    const/4 v0, 0x0

    const-string v3, "name"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    new-instance v3, Laus;

    invoke-direct {v3}, Laus;-><init>()V

    .line 316
    iget-object v6, v3, Laus;->a:Ljava/util/List;

    .line 317
    iget-object v5, v3, Laus;->b:Ljava/util/List;

    move v8, v7

    .line 318
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 319
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v13, :cond_2

    .line 320
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-interface {v0, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v5, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 323
    :cond_3
    const/4 v0, 0x0

    const-string v8, "hidden"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v3, Laus;->d:Z

    .line 324
    const/4 v0, 0x0

    const-string v8, "column"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Laus;->a:I

    .line 325
    const/4 v0, 0x0

    const-string v8, "lock"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v3, Laus;->c:Z

    .line 326
    const/4 v0, 0x0

    const-string v8, "user"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v3, Laus;->b:Z

    .line 327
    const/4 v0, 0x0

    const-string v8, "class"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v0, v7

    :goto_3
    iput v0, v3, Laus;->b:I

    move v0, v1

    .line 336
    goto/16 :goto_1

    .line 328
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 336
    :cond_5
    const-string v9, "Symbol"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 338
    const/4 v2, 0x0

    const-string v8, "text"

    invoke-interface {p1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 339
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-boolean v2, v3, Laus;->b:Z

    if-eqz v2, :cond_8

    .line 343
    const/4 v2, 0x0

    const-string v9, "name"

    invoke-interface {p1, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    .line 346
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v13, :cond_12

    const/4 v2, 0x0

    const/4 v9, 0x4

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 348
    :cond_7
    :goto_4
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_8
    const/4 v2, 0x0

    const-string v9, "left"

    invoke-interface {p1, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    const/4 v9, 0x0

    const-string v10, "right"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 353
    const/4 v10, 0x0

    const-string v11, "comment"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 354
    if-nez v2, :cond_9

    if-nez v9, :cond_9

    if-eqz v10, :cond_a

    .line 355
    :cond_9
    iget-object v11, p0, Laur;->b:Ljava/util/HashMap;

    new-instance v12, Laut;

    invoke-direct {v12, v2, v9, v10}, Laut;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move v2, v1

    goto/16 :goto_1

    .line 359
    :cond_b
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 360
    if-eqz v2, :cond_c

    move v2, v7

    .line 361
    goto/16 :goto_1

    .line 362
    :cond_c
    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Laur;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 374
    iget-boolean v0, v3, Laus;->b:Z

    if-eqz v0, :cond_e

    .line 375
    iget-object v0, p0, Laur;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_d
    :goto_5
    iget-object v0, p0, Laur;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-boolean v0, v3, Laus;->b:Z

    if-nez v0, :cond_11

    iget v0, p0, Laur;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laur;->a:I

    move v0, v7

    goto/16 :goto_1

    .line 377
    :cond_e
    iget-object v0, p0, Laur;->b:Ljava/util/ArrayList;

    iget v8, p0, Laur;->a:I

    invoke-virtual {v0, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 392
    :catch_0
    move-exception v0

    .line 393
    const-string v2, "SogouSymbols"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    :cond_f
    iget v0, p0, Laur;->a:I

    iget-object v2, p0, Laur;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    :goto_6
    sput-boolean v1, Laur;->a:Z

    goto/16 :goto_0

    :cond_10
    move v1, v7

    goto :goto_6

    :cond_11
    move v0, v7

    goto/16 :goto_1

    :cond_12
    move-object v2, v8

    goto/16 :goto_4
.end method

.method public a(Laus;)Z
    .locals 1
    .parameter

    .prologue
    .line 164
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 165
    :cond_0
    iget v0, p1, Laus;->b:I

    packed-switch v0, :pswitch_data_0

    .line 173
    iget-boolean v0, p1, Laus;->c:Z

    goto :goto_0

    .line 167
    :pswitch_0
    iget-boolean v0, p1, Laus;->c:Z

    goto :goto_0

    .line 169
    :pswitch_1
    iget-boolean v0, p0, Laur;->b:Z

    goto :goto_0

    .line 171
    :pswitch_2
    iget-boolean v0, p0, Laur;->c:Z

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 266
    .line 270
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    const/4 v0, 0x0

    .line 287
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 289
    :goto_0
    return v0

    .line 276
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 278
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 279
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 280
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, v2}, Laur;->a(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 287
    :goto_1
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    .line 287
    :goto_2
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 285
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 282
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public b(I)Ljava/util/List;
    .locals 2
    .parameter

    .prologue
    .line 202
    invoke-virtual {p0}, Laur;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Laur;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Laur;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Laur;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laus;

    .line 206
    if-eqz v0, :cond_0

    iget-object v0, v0, Laus;->a:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Laur;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method
