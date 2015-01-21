.class Lcom/iflytek/ui/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/ui/c;

.field private b:I

.field private c:F

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/iflytek/ui/c;IFI)V
    .locals 4

    iput-object p1, p0, Lcom/iflytek/ui/c$a;->a:Lcom/iflytek/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/iflytek/ui/c$a;->b:I

    iput p3, p0, Lcom/iflytek/ui/c$a;->c:F

    iput p4, p0, Lcom/iflytek/ui/c$a;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/ui/c$a;->e:I

    const-wide/high16 v0, 0x4042

    iget v2, p0, Lcom/iflytek/ui/c$a;->c:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/iflytek/ui/c$a;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/iflytek/ui/c$a;->e:I

    iget v1, p0, Lcom/iflytek/ui/c$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/ui/c$a;->e:I

    iget v0, p0, Lcom/iflytek/ui/c$a;->e:I

    iget v1, p0, Lcom/iflytek/ui/c$a;->f:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/ui/c$a;->e:I

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/iflytek/ui/c$a;->e:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/iflytek/ui/c$a;->c:F

    iget-object v1, p0, Lcom/iflytek/ui/c$a;->a:Lcom/iflytek/ui/c;

    invoke-static {v1}, Lcom/iflytek/ui/c;->a(Lcom/iflytek/ui/c;)F

    move-result v1

    iget v2, p0, Lcom/iflytek/ui/c$a;->c:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/iflytek/ui/c$a;->a:Lcom/iflytek/ui/c;

    invoke-static {v0}, Lcom/iflytek/ui/c;->b(Lcom/iflytek/ui/c;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/ui/c$a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/iflytek/ui/c;->e()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/c$a;->a:Lcom/iflytek/ui/c;

    invoke-static {v1}, Lcom/iflytek/ui/c;->b(Lcom/iflytek/ui/c;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
