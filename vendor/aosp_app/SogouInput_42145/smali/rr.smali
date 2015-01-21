.class public Lrr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Z


# instance fields
.field protected a:I

.field private a:Landroid/content/Context;

.field protected a:Ljava/lang/String;

.field private a:Ljava/util/ArrayList;

.field protected a:Ljava/util/HashMap;

.field private a:Ljava/util/Set;

.field protected a:Ljavax/xml/parsers/SAXParser;

.field private a:Lku;

.field protected a:Lri;

.field private a:Lru;

.field private a:Lrw;

.field private a:Lrz;

.field protected a:Z

.field private b:I

.field private b:Ljava/util/HashMap;

.field private c:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lrr;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lrr;->a:Landroid/content/Context;

    .line 177
    new-instance v0, Lri;

    iget-object v1, p0, Lrr;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lrr;->a:Lri;

    .line 178
    new-instance v0, Lrz;

    iget v1, p0, Lrr;->a:I

    invoke-direct {v0, p0, v1}, Lrz;-><init>(Lrr;I)V

    iput-object v0, p0, Lrr;->a:Lrz;

    .line 179
    iput-object p2, p0, Lrr;->a:Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lrr;->a:Ljava/util/Set;

    .line 181
    iget-object v0, p0, Lrr;->a:Lri;

    new-instance v1, Lrs;

    invoke-direct {v1, p0}, Lrs;-><init>(Lrr;)V

    invoke-virtual {v0, v1}, Lri;->a(Lrn;)V

    .line 193
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lrr;->a:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;II)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrr;->a:Z

    .line 614
    iget-object v0, p0, Lrr;->a:Lri;

    iget-object v1, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lsa;->a(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lri;->c(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, v2}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    .line 616
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 617
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    .line 618
    iput-boolean v2, p0, Lrr;->a:Z

    .line 619
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    .line 621
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrr;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Z)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrr;->a:Z

    .line 626
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;->a(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lri;->c(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, v3}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    .line 632
    if-eqz p3, :cond_0

    .line 633
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrr;->a(I)I

    move-result v0

    .line 637
    :goto_0
    return v0

    .line 635
    :cond_0
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    .line 636
    iput-boolean v3, p0, Lrr;->a:Z

    .line 637
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lrq;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrr;->a:Z

    .line 561
    const/4 v0, 0x0

    .line 562
    if-eqz p1, :cond_0

    .line 563
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    const/16 v0, 0x22

    .line 570
    :goto_0
    return v0

    .line 568
    :cond_0
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, p2}, Lri;->c(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, v0, p3}, Lri;->a(Ljava/io/File;Lrq;)Lorg/apache/http/HttpResponse;

    .line 570
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrr;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrr;->a:Z

    .line 588
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->c(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p2}, Lri;->a(Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    .line 590
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrr;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lrr;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lrr;->b:I

    return v0
.end method

.method static synthetic a(Lrr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lrr;->b:I

    return p1
.end method

.method static synthetic a(Lrr;)Lku;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lrr;->a:Lku;

    return-object v0
.end method

.method static synthetic a(Lrr;Lku;)Lku;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lrr;->a:Lku;

    return-object p1
.end method

.method static synthetic a(Lrr;)Lru;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lrr;->a:Lru;

    return-object v0
.end method

.method static synthetic a(Lrr;Lru;)Lru;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lrr;->a:Lru;

    return-object p1
.end method

.method static synthetic a(Lrr;)Lrw;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lrr;->a:Lrw;

    return-object v0
.end method

.method static synthetic a(Lrr;Lrw;)Lrw;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lrr;->a:Lrw;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lrr;->a:Ljava/util/Set;

    monitor-enter v1

    .line 280
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lrr;->a:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 281
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    .line 285
    invoke-interface {v0}, Lrx;->a()V

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 287
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1439
    return-void
.end method

.method static synthetic a(Lrr;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lrr;->a()V

    return-void
.end method

.method static synthetic a(Lrr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lrr;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lrr;Lrt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lrr;->a(Lrt;)V

    return-void
.end method

.method static synthetic a(Lrr;Lry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lrr;->a(Lry;)V

    return-void
.end method

.method private a(Lrt;)V
    .locals 3
    .parameter

    .prologue
    .line 254
    iget-object v1, p0, Lrr;->a:Ljava/util/Set;

    monitor-enter v1

    .line 255
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lrr;->a:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    .line 260
    invoke-interface {v0, p1}, Lrx;->a(Lrt;)V

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 262
    :cond_0
    return-void
.end method

.method private a(Lry;)V
    .locals 3
    .parameter

    .prologue
    .line 266
    iget-object v1, p0, Lrr;->a:Ljava/util/Set;

    monitor-enter v1

    .line 267
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lrr;->a:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 268
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    .line 272
    invoke-interface {v0, p1}, Lrx;->a(Lry;)V

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 274
    :cond_0
    return-void
.end method

.method private b(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrr;->a:Z

    .line 602
    iget-object v0, p0, Lrr;->a:Lri;

    iget-object v1, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lri;->c(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, v2}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    .line 604
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 605
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    .line 606
    iput-boolean v2, p0, Lrr;->a:Z

    .line 607
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    .line 609
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrr;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lrr;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lrr;->e()V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrr;->a:Z

    .line 532
    const/4 v0, 0x0

    .line 533
    if-eqz p1, :cond_0

    .line 534
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    const/16 v0, 0x14

    .line 541
    :goto_0
    return v0

    .line 539
    :cond_0
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, p2}, Lri;->c(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lrr;->a:Lri;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lri;->a(Ljava/io/File;Z)Lorg/apache/http/HttpResponse;

    .line 541
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrr;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 545
    iput-boolean v2, p0, Lrr;->a:Z

    .line 546
    const/4 v0, 0x0

    .line 547
    if-eqz p1, :cond_0

    .line 548
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    const/16 v0, 0x2d

    .line 556
    :goto_0
    return v0

    .line 553
    :cond_0
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, p2}, Lri;->c(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, v0, v2}, Lri;->a(Ljava/io/File;Z)Lorg/apache/http/HttpResponse;

    .line 556
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrr;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 292
    iget-object v1, p0, Lrr;->a:Ljava/util/Set;

    monitor-enter v1

    .line 293
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lrr;->a:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 294
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    .line 298
    invoke-interface {v0}, Lrx;->b()V

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 300
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrr;->a:Z

    .line 595
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->c(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p2}, Lri;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    .line 597
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrr;->a(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 6

    .prologue
    .line 374
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->U:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "improve.gz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x2800

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 377
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->m()V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->U:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "improve.gz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v2}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lrr;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 380
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 382
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:J

    .line 393
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected a(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    const/16 v1, 0x25

    .line 656
    iget-boolean v2, p0, Lrr;->a:Z

    if-nez v2, :cond_0

    .line 657
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    .line 658
    const/16 p1, 0x12

    .line 731
    :goto_0
    return p1

    .line 660
    :cond_0
    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    .line 661
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    goto :goto_0

    .line 664
    :cond_1
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2}, Lri;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 665
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    move p1, v0

    .line 666
    goto :goto_0

    .line 668
    :cond_2
    iget-object v2, p0, Lrr;->a:Lri;

    iget-object v3, p0, Lrr;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lri;->a(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 669
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    move p1, v0

    .line 670
    goto :goto_0

    .line 673
    :cond_3
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    .line 675
    :try_start_0
    iget-object v0, p0, Lrr;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lrr;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lrr;->a:Lrz;

    invoke-virtual {v0, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 676
    iget-object v0, p0, Lrr;->a:Lrz;

    invoke-virtual {v0}, Lrz;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lrr;->a:Ljava/util/HashMap;

    .line 677
    iget-object v0, p0, Lrr;->a:Lrz;

    invoke-virtual {v0}, Lrz;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lrr;->b:Ljava/util/HashMap;

    .line 678
    iget-object v0, p0, Lrr;->a:Lrz;

    invoke-virtual {v0}, Lrz;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lrr;->a:Ljava/util/ArrayList;

    .line 694
    iget-object v0, p0, Lrr;->a:Lrz;

    invoke-virtual {v0}, Lrz;->a()Lrw;

    move-result-object v0

    iput-object v0, p0, Lrr;->a:Lrw;

    .line 695
    iget-object v0, p0, Lrr;->a:Lrz;

    invoke-virtual {v0}, Lrz;->a()Lku;

    move-result-object v0

    iput-object v0, p0, Lrr;->a:Lku;

    .line 696
    iget-object v0, p0, Lrr;->a:Lrz;

    invoke-virtual {v0}, Lrz;->a()Lru;

    move-result-object v0

    iput-object v0, p0, Lrr;->a:Lru;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrr;->a:Z

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 718
    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    move p1, v1

    .line 719
    goto :goto_0

    .line 720
    :catch_1
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->printStackTrace()V

    move p1, v1

    .line 722
    goto :goto_0

    .line 724
    :catch_2
    move-exception v0

    .line 725
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lrr;->a(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v1

    .line 727
    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lrr;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    const/16 v0, 0x21

    invoke-direct {p0, v0, p1, p2, p3}, Lrr;->a(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Lrr;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========> downloadFile from server, url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  to local path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",,, authcode === "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;->a(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1, p3}, Lri;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-boolean v0, p0, Lrr;->c:Z

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, v1}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 817
    :goto_0
    iget-object v2, p0, Lrr;->a:Lri;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lri;->a(Ljava/lang/String;)V

    .line 819
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2}, Lri;->a()I

    move-result v2

    .line 820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrurn status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lrr;->a(Ljava/lang/String;)V

    .line 821
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 825
    :goto_1
    return v0

    .line 815
    :cond_0
    iget-object v0, p0, Lrr;->a:Lri;

    iget v2, p0, Lrr;->c:I

    invoke-virtual {v0, v2}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 822
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[downloadFile]] download file from local now, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lrr;->a(Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lrr;->a:Lri;

    iget-boolean v2, p0, Lrr;->c:Z

    invoke-virtual {v1, v0, p2, v2}, Lri;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;Z)I

    move-result v0

    .line 824
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    .line 825
    if-nez v0, :cond_2

    const/16 v0, 0x18

    goto :goto_1

    :cond_2
    const/16 v0, 0x19

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lsg;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========> downloadFile2 from server, url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  to local path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lrr;->a(Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, p1}, Lri;->c(Ljava/lang/String;)V

    .line 852
    iget-boolean v1, p0, Lrr;->c:Z

    if-nez v1, :cond_0

    .line 853
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, v0}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 857
    :goto_0
    iget-object v2, p0, Lrr;->a:Lri;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lri;->a(Ljava/lang/String;)V

    .line 859
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2}, Lri;->a()I

    move-result v2

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrurn status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lrr;->a(Ljava/lang/String;)V

    .line 861
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    const/16 v3, 0xce

    if-eq v2, v3, :cond_1

    .line 875
    :goto_1
    return v0

    .line 855
    :cond_0
    iget-object v1, p0, Lrr;->a:Lri;

    iget v2, p0, Lrr;->c:I

    invoke-virtual {v1, v2}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_0

    .line 862
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[downloadFile]] download file from local now, path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;->a(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lrr;->a:Lri;

    iget-boolean v3, p0, Lrr;->c:Z

    iget v5, p0, Lrr;->c:I

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lri;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;ZLsg;I)I

    move-result v0

    .line 864
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    .line 865
    if-nez v0, :cond_2

    .line 866
    const/16 v0, 0x18

    goto :goto_1

    .line 867
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 868
    const/16 v0, 0x3e

    goto :goto_1

    .line 870
    :cond_3
    iget v0, p3, Lsg;->a:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_4

    .line 871
    const/16 v0, 0x3f

    goto :goto_1

    .line 873
    :cond_4
    const/16 v0, 0x19

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lrq;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lrr;->a(Ljava/lang/String;Ljava/lang/String;Lrq;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;[B[B)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x24

    .line 965
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 986
    :cond_0
    :goto_0
    return v0

    .line 969
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lamo;->a:J

    .line 970
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, p1}, Lri;->c(Ljava/lang/String;)V

    .line 972
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, p2}, Lri;->a([B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 973
    iget-object v2, p0, Lrr;->a:Lri;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lri;->a(Ljava/lang/String;)V

    .line 974
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2}, Lri;->a()I

    move-result v2

    .line 977
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    .line 978
    const/4 v0, 0x0

    goto :goto_0

    .line 981
    :cond_2
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2, v1, p3}, Lri;->a(Lorg/apache/http/HttpResponse;[B)I

    move-result v1

    .line 983
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2}, Lri;->a()V

    .line 984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lamo;->b:J

    .line 986
    if-nez v1, :cond_0

    const/16 v0, 0x23

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)I
    .locals 2
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lrr;->a(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public a([B[B)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 947
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lrr;->a(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 780
    .line 781
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 782
    iget-object v6, p0, Lrr;->a:Lri;

    invoke-virtual {v6, v0, p2}, Lri;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lrr;->a:Lri;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 785
    iget-object v6, p0, Lrr;->a:Lri;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lri;->a(Ljava/lang/String;)V

    .line 786
    iget-object v6, p0, Lrr;->a:Lri;

    invoke-virtual {v6}, Lri;->a()I

    move-result v6

    .line 787
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_1

    .line 793
    :cond_0
    :goto_1
    return-wide v3

    .line 788
    :cond_1
    iget-object v6, p0, Lrr;->a:Lri;

    invoke-virtual {v6, v0}, Lri;->a(Lorg/apache/http/HttpResponse;)J

    move-result-wide v6

    .line 789
    cmp-long v0, v6, v3

    if-eqz v0, :cond_0

    .line 790
    add-long v0, v1, v6

    move-wide v1, v0

    .line 791
    goto :goto_0

    .line 792
    :cond_2
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    move-wide v3, v1

    .line 793
    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 797
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->b(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lrr;->a:Lri;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 800
    iget-object v1, p0, Lrr;->a:Lri;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lri;->a(Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()I

    move-result v1

    .line 802
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    const-string v0, "0"

    .line 805
    :goto_0
    return-object v0

    .line 803
    :cond_0
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, v0}, Lri;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 804
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 901
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-object v0

    .line 904
    :cond_1
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, p1}, Lri;->c(Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1, p2}, Lri;->b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 907
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2, v0}, Lri;->a(Ljava/lang/String;)V

    .line 908
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2}, Lri;->a()I

    move-result v2

    .line 909
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    .line 910
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    goto :goto_0

    .line 914
    :cond_2
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2, v1}, Lri;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 917
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 918
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 919
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    move-exception v1

    .line 933
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    goto :goto_0

    .line 922
    :cond_3
    :try_start_1
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 923
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2}, Lri;->a()V

    move-object v0, v1

    .line 924
    goto :goto_0

    .line 926
    :cond_4
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lrr;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public a()Lku;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1052
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lrr;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    :goto_0
    return-object v0

    .line 1053
    :cond_0
    iget-object v1, p0, Lrr;->a:Lrz;

    invoke-virtual {v1}, Lrz;->a()V

    .line 1054
    iget-object v1, p0, Lrr;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lrr;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lrr;->a:Lrz;

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 1055
    iget-object v1, p0, Lrr;->a:Lrz;

    invoke-virtual {v1}, Lrz;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lrr;->a:Ljava/util/HashMap;

    .line 1056
    iget-object v1, p0, Lrr;->a:Lrz;

    invoke-virtual {v1}, Lrz;->a()Lku;

    move-result-object v1

    iput-object v1, p0, Lrr;->a:Lku;

    .line 1057
    iget-object v0, p0, Lrr;->a:Lku;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v1

    .line 1061
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 1062
    :catch_1
    move-exception v1

    .line 1064
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Lru;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1072
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lrr;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1086
    :goto_0
    return-object v0

    .line 1073
    :cond_0
    iget-object v1, p0, Lrr;->a:Lrz;

    invoke-virtual {v1}, Lrz;->a()V

    .line 1074
    iget-object v1, p0, Lrr;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lrr;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lrr;->a:Lrz;

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 1075
    iget-object v1, p0, Lrr;->a:Lrz;

    invoke-virtual {v1}, Lrz;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lrr;->a:Ljava/util/HashMap;

    .line 1076
    iget-object v1, p0, Lrr;->a:Lrz;

    invoke-virtual {v1}, Lrz;->a()Lru;

    move-result-object v1

    iput-object v1, p0, Lrr;->a:Lru;

    .line 1077
    iget-object v0, p0, Lrr;->a:Lru;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v1

    .line 1081
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 1082
    :catch_1
    move-exception v1

    .line 1084
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Lrw;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1032
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lrr;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1046
    :goto_0
    return-object v0

    .line 1033
    :cond_0
    iget-object v1, p0, Lrr;->a:Lrz;

    invoke-virtual {v1}, Lrz;->a()V

    .line 1034
    iget-object v1, p0, Lrr;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lrr;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lrr;->a:Lrz;

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 1035
    iget-object v1, p0, Lrr;->a:Lrz;

    invoke-virtual {v1}, Lrz;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lrr;->a:Ljava/util/HashMap;

    .line 1036
    iget-object v1, p0, Lrr;->a:Lrz;

    invoke-virtual {v1}, Lrz;->a()Lrw;

    move-result-object v1

    iput-object v1, p0, Lrr;->a:Lrw;

    .line 1037
    iget-object v0, p0, Lrr;->a:Lrw;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1039
    :catch_0
    move-exception v1

    .line 1041
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 1042
    :catch_1
    move-exception v1

    .line 1044
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput p1, p0, Lrr;->c:I

    .line 220
    return-void
.end method

.method public a(Lrj;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->a(Lrj;)V

    .line 250
    return-void
.end method

.method public a(Lrl;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->a(Lrl;)V

    .line 246
    return-void
.end method

.method public a(Lro;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->a(Lro;)V

    .line 238
    return-void
.end method

.method public a(Lrp;)V
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->a(Lrp;)V

    .line 234
    return-void
.end method

.method public a(Lrq;)V
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->a(Lrq;)V

    .line 242
    return-void
.end method

.method public a(Lrx;)V
    .locals 2
    .parameter

    .prologue
    .line 227
    iget-object v1, p0, Lrr;->a:Ljava/util/Set;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lrr;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    monitor-exit v1

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-boolean p1, p0, Lrr;->c:Z

    .line 216
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 397
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lrr;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    const/16 v0, 0x22

    invoke-direct {p0, v0, p1, p2, p3}, Lrr;->a(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=========> prepare downloadFile from server, url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  to local path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;->a(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->c(Ljava/lang/String;)V

    .line 769
    iget-boolean v0, p0, Lrr;->c:Z

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lrr;->a:Lri;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    .line 776
    :goto_0
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    return v0

    .line 772
    :cond_0
    iget-object v0, p0, Lrr;->a:Lri;

    iget v1, p0, Lrr;->c:I

    invoke-virtual {v0, v1}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    goto :goto_0
.end method

.method public b(Ljava/util/Map;)I
    .locals 2
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lrr;->a(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lrr;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->e()V

    .line 993
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 401
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lrr;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========> downloadFile from server, url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  to local path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;->a(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, p1}, Lri;->c(Ljava/lang/String;)V

    .line 832
    iget-boolean v0, p0, Lrr;->c:Z

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0, v1}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 837
    :goto_0
    iget-object v2, p0, Lrr;->a:Lri;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lri;->a(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Lrr;->a:Lri;

    invoke-virtual {v2}, Lri;->a()I

    move-result v2

    .line 840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrurn status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lrr;->a(Ljava/lang/String;)V

    .line 841
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 845
    :goto_1
    return v0

    .line 835
    :cond_0
    iget-object v0, p0, Lrr;->a:Lri;

    iget v2, p0, Lrr;->c:I

    invoke-virtual {v0, v2}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 842
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[downloadFile]] download file from local now, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lrr;->a(Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lrr;->a:Lri;

    iget-boolean v2, p0, Lrr;->c:Z

    invoke-virtual {v1, v0, p2, v2}, Lri;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;Z)I

    move-result v0

    .line 844
    iget-object v1, p0, Lrr;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    .line 845
    if-nez v0, :cond_2

    const/16 v0, 0x18

    goto :goto_1

    :cond_2
    const/16 v0, 0x19

    goto :goto_1
.end method

.method public c(Ljava/util/Map;)I
    .locals 2
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lrr;->a(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 995
    const-string v0, "cancelDownload"

    invoke-direct {p0, v0}, Lrr;->a(Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->d()V

    .line 997
    invoke-virtual {p0}, Lrr;->d()V

    .line 998
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 405
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lrr;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1001
    const-string v0, "disconnect"

    invoke-direct {p0, v0}, Lrr;->a(Ljava/lang/String;)V

    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrr;->a:Z

    .line 1003
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    .line 1004
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 413
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lrr;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 435
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 431
    const/16 v0, 0x24

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lrr;->a(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 439
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lrr;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lrr;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 447
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lrr;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 451
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrr;->a:Z

    .line 579
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lrr;->a:Lri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lrr;->a:Landroid/content/Context;

    invoke-static {v3}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lri;->c(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lrr;->a:Lri;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    .line 583
    iget-object v0, p0, Lrr;->a:Lri;

    invoke-virtual {v0}, Lri;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lrr;->a(I)I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 466
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 470
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 482
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 486
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 490
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 523
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 527
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lrr;->b(I)I

    move-result v0

    return v0
.end method
