.class public Lawy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private a:Lawx;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lawx;Ljava/lang/String;Layx;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    :try_start_0
    iput-object p1, p0, Lawy;->a:Lawx;

    .line 327
    const-string v0, "H_OFFSET"

    invoke-static {p1}, Lawx;->a(Lawx;)I

    move-result v1

    const/4 v2, -0x1

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawy;->f:I

    .line 328
    const-string v0, "V_OFFSET"

    invoke-static {p1}, Lawx;->b(Lawx;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawy;->e:I

    .line 329
    const-string v0, "W"

    invoke-static {p1}, Lawx;->a(Lawx;)I

    move-result v1

    invoke-static {p1}, Lawx;->c(Lawx;)I

    move-result v2

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawy;->a:I

    .line 330
    const-string v0, "H"

    invoke-static {p1}, Lawx;->b(Lawx;)I

    move-result v1

    invoke-static {p1}, Lawx;->d(Lawx;)I

    move-result v2

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawy;->b:I

    .line 331
    const-string v0, "H_GAP"

    invoke-static {p1}, Lawx;->a(Lawx;)I

    move-result v1

    invoke-static {p1}, Lawx;->e(Lawx;)I

    move-result v2

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawy;->c:I

    .line 332
    const-string v0, "V_GAP"

    invoke-static {p1}, Lawx;->b(Lawx;)I

    move-result v1

    invoke-static {p1}, Lawx;->f(Lawx;)I

    move-result v2

    invoke-static {p3, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawy;->d:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lawx;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lawy;->a:Lawx;

    return-object v0
.end method
