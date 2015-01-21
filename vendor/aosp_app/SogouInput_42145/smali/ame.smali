.class public Lame;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private final a:I

.field final synthetic a:Lamc;

.field private a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

.field private final a:Ljava/lang/String;

.field private a:Ljava/lang/StringBuilder;

.field private final b:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final j:Ljava/lang/String;

.field private final k:I

.field private final k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(Lamc;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lame;->a:Lamc;

    .line 308
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Lame;->a:I

    .line 280
    const/4 v0, 0x2

    iput v0, p0, Lame;->b:I

    .line 281
    const/4 v0, 0x3

    iput v0, p0, Lame;->c:I

    .line 282
    const/4 v0, 0x4

    iput v0, p0, Lame;->d:I

    .line 283
    const/4 v0, 0x5

    iput v0, p0, Lame;->e:I

    .line 284
    const/4 v0, 0x6

    iput v0, p0, Lame;->f:I

    .line 285
    const/4 v0, 0x7

    iput v0, p0, Lame;->g:I

    .line 286
    const/16 v0, 0x8

    iput v0, p0, Lame;->h:I

    .line 287
    const/16 v0, 0x9

    iput v0, p0, Lame;->i:I

    .line 288
    const/16 v0, 0xa

    iput v0, p0, Lame;->j:I

    .line 289
    const/16 v0, 0xb

    iput v0, p0, Lame;->k:I

    .line 291
    const-string v0, "date"

    iput-object v0, p0, Lame;->a:Ljava/lang/String;

    .line 292
    const-string v0, "size"

    iput-object v0, p0, Lame;->b:Ljava/lang/String;

    .line 293
    const-string v0, "name"

    iput-object v0, p0, Lame;->c:Ljava/lang/String;

    .line 294
    const-string v0, "url"

    iput-object v0, p0, Lame;->d:Ljava/lang/String;

    .line 295
    const-string v0, "mediatype"

    iput-object v0, p0, Lame;->e:Ljava/lang/String;

    .line 296
    const-string v0, "specifictype"

    iput-object v0, p0, Lame;->f:Ljava/lang/String;

    .line 297
    const-string v0, "filename"

    iput-object v0, p0, Lame;->g:Ljava/lang/String;

    .line 298
    const-string v0, "fileid"

    iput-object v0, p0, Lame;->h:Ljava/lang/String;

    .line 299
    const-string v0, "fileover"

    iput-object v0, p0, Lame;->i:Ljava/lang/String;

    .line 300
    const-string v0, "shorturl"

    iput-object v0, p0, Lame;->j:Ljava/lang/String;

    .line 301
    const-string v0, "authcodeinfo"

    iput-object v0, p0, Lame;->k:Ljava/lang/String;

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lame;->l:I

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lame;->a:Ljava/lang/StringBuilder;

    .line 310
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 410
    iput v1, p0, Lame;->l:I

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 412
    iget-object v0, p0, Lame;->a:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lame;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 413
    :cond_0
    return-void
.end method

.method static synthetic a(Lame;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    invoke-direct {p0}, Lame;->a()V

    return-void
.end method


# virtual methods
.method public a()Lcom/sohu/inputmethod/multimedia/SogouMedia;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    return-object v0
.end method

.method public characters([CII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 322
    :goto_0
    if-ge p2, p3, :cond_1

    .line 324
    aget-char v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lame;->a:Ljava/lang/StringBuilder;

    aget-char v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 328
    :cond_1
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 333
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget v0, p0, Lame;->l:I

    packed-switch v0, :pswitch_data_0

    .line 372
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lame;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 373
    iput v4, p0, Lame;->l:I

    .line 374
    return-void

    .line 340
    :pswitch_1
    iget-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, p0, Lame;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_encoded"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    goto :goto_0

    .line 343
    :pswitch_2
    iget-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, p0, Lame;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->d:Ljava/lang/String;

    goto :goto_0

    .line 347
    :pswitch_3
    :try_start_0
    iget-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, p0, Lame;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    iget-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iput v4, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    goto :goto_0

    .line 354
    :pswitch_4
    :try_start_1
    iget-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, p0, Lame;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 355
    :catch_1
    move-exception v0

    .line 356
    iget-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iput v4, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    goto :goto_0

    .line 366
    :pswitch_5
    iget-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, p0, Lame;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    goto :goto_0

    .line 369
    :pswitch_6
    iget-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, p0, Lame;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->g:Ljava/lang/String;

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 315
    new-instance v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    invoke-direct {v0}, Lcom/sohu/inputmethod/multimedia/SogouMedia;-><init>()V

    iput-object v0, p0, Lame;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 316
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 380
    const-string v0, "date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    const/4 v0, 0x1

    iput v0, p0, Lame;->l:I

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x2

    iput v0, p0, Lame;->l:I

    goto :goto_0

    .line 384
    :cond_2
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    const/4 v0, 0x3

    iput v0, p0, Lame;->l:I

    goto :goto_0

    .line 386
    :cond_3
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    const/4 v0, 0x4

    iput v0, p0, Lame;->l:I

    goto :goto_0

    .line 388
    :cond_4
    const-string v0, "mediatype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    const/4 v0, 0x5

    iput v0, p0, Lame;->l:I

    goto :goto_0

    .line 390
    :cond_5
    const-string v0, "specifictype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 391
    const/4 v0, 0x6

    iput v0, p0, Lame;->l:I

    goto :goto_0

    .line 392
    :cond_6
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 393
    const/4 v0, 0x7

    iput v0, p0, Lame;->l:I

    goto :goto_0

    .line 394
    :cond_7
    const-string v0, "fileid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 395
    const/16 v0, 0x8

    iput v0, p0, Lame;->l:I

    goto :goto_0

    .line 396
    :cond_8
    const-string v0, "fileover"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 397
    const/16 v0, 0x9

    iput v0, p0, Lame;->l:I

    goto :goto_0

    .line 398
    :cond_9
    const-string v0, "shorturl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 399
    const/16 v0, 0xa

    iput v0, p0, Lame;->l:I

    goto :goto_0

    .line 400
    :cond_a
    const-string v0, "authcodeinfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/16 v0, 0xb

    iput v0, p0, Lame;->l:I

    goto :goto_0
.end method
