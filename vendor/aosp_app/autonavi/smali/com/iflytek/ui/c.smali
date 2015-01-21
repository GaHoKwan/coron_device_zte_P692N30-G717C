.class public Lcom/iflytek/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/ui/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/ui/c$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[F

.field private static d:Landroid/graphics/Path;


# instance fields
.field private c:[I

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:F

.field private h:[Lcom/iflytek/ui/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iflytek/ui/c;->a:[I

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/iflytek/ui/c;->b:[F

    return-void

    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xabt 0xaat 0xaat 0x3et
        0xabt 0xaat 0x2at 0x3ft
        0x0t 0x0t 0x40t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v1, Lcom/iflytek/ui/c;->d:Landroid/graphics/Path;

    sget-object v1, Lcom/iflytek/ui/c;->d:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v0

    :goto_0
    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    iput v8, p0, Lcom/iflytek/ui/c;->f:I

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/iflytek/ui/c;->g:F

    new-array v1, v9, [Lcom/iflytek/ui/c$a;

    iput-object v1, p0, Lcom/iflytek/ui/c;->h:[Lcom/iflytek/ui/c$a;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v2, "recordingdrawercolor"

    invoke-virtual {v1, v2}, Lcom/iflytek/ui/x;->d(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/ui/c;->c:[I

    :goto_1
    if-lt v0, v9, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iflytek/ui/c;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/iflytek/ui/c;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/c;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x4170

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/iflytek/ui/c;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/iflytek/ui/c;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :cond_0
    sget-object v2, Lcom/iflytek/ui/c;->d:Landroid/graphics/Path;

    int-to-double v3, v1

    const-wide/high16 v5, 0x4042

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v3, v3

    int-to-double v4, v1

    const-wide v6, 0x3ff921fb54442d18L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4038

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/iflytek/ui/c$a;

    sget-object v2, Lcom/iflytek/ui/c;->a:[I

    aget v2, v2, v0

    sget-object v3, Lcom/iflytek/ui/c;->b:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/iflytek/ui/c;->c:[I

    aget v4, v4, v0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/iflytek/ui/c$a;-><init>(Lcom/iflytek/ui/c;IFI)V

    iget-object v2, p0, Lcom/iflytek/ui/c;->h:[Lcom/iflytek/ui/c$a;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/iflytek/ui/c;)F
    .locals 1

    iget v0, p0, Lcom/iflytek/ui/c;->g:F

    return v0
.end method

.method static synthetic b(Lcom/iflytek/ui/c;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/c;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic e()Landroid/graphics/Path;
    .locals 1

    sget-object v0, Lcom/iflytek/ui/c;->d:Landroid/graphics/Path;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/iflytek/ui/c;->f:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iflytek/ui/c;->h:[Lcom/iflytek/ui/c$a;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/ui/c$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4040

    iget v1, p0, Lcom/iflytek/ui/c;->g:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/ui/c;->f:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/ui/c;->g:F

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iflytek/ui/c;->h:[Lcom/iflytek/ui/c$a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/iflytek/ui/c$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/c;->e:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/iflytek/ui/c;->h:[Lcom/iflytek/ui/c$a;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
