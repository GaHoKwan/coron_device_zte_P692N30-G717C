.class public Laxb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private a:Lawx;

.field private a:Ljava/util/List;

.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lawx;Ljava/lang/String;Layx;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-boolean v0, p0, Laxb;->a:Z

    .line 377
    :try_start_0
    iput-object p1, p0, Laxb;->a:Lawx;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxb;->a:Ljava/util/List;

    .line 379
    const-string v0, "H_OFFSET"

    invoke-static {p1}, Lawx;->a(Lawx;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Laxb;->h:I

    .line 381
    const-string v0, "V_OFFSET"

    invoke-static {p1}, Lawx;->b(Lawx;)I

    move-result v1

    const/4 v2, -0x1

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Laxb;->i:I

    .line 382
    const-string v0, "W"

    invoke-static {p1}, Lawx;->a(Lawx;)I

    move-result v1

    invoke-static {p1}, Lawx;->c(Lawx;)I

    move-result v2

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Laxb;->a:I

    .line 383
    const-string v0, "H"

    invoke-static {p1}, Lawx;->b(Lawx;)I

    move-result v1

    invoke-static {p1}, Lawx;->d(Lawx;)I

    move-result v2

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Laxb;->b:I

    .line 384
    const-string v0, "H_GAP_QWERTY"

    invoke-static {p1}, Lawx;->a(Lawx;)I

    move-result v1

    invoke-static {p1}, Lawx;->g(Lawx;)I

    move-result v2

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Laxb;->f:I

    .line 385
    const-string v0, "H_GAP"

    invoke-static {p1}, Lawx;->a(Lawx;)I

    move-result v1

    invoke-static {p1}, Lawx;->e(Lawx;)I

    move-result v2

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Laxb;->e:I

    .line 386
    const-string v0, "V_GAP"

    invoke-static {p1}, Lawx;->b(Lawx;)I

    move-result v1

    invoke-static {p1}, Lawx;->f(Lawx;)I

    move-result v2

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Laxb;->g:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lawx;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Laxb;->a:Lawx;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Laxb;->a:Ljava/util/List;

    return-object v0
.end method
