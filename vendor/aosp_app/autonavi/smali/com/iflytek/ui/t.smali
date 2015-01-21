.class public Lcom/iflytek/ui/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/ui/a;


# instance fields
.field private a:[Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/Rect;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/iflytek/ui/t;->d:I

    iput v1, p0, Lcom/iflytek/ui/t;->e:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/iflytek/ui/t;->a:[Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/iflytek/ui/t;->e:I

    iget-object v0, p0, Lcom/iflytek/ui/t;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    iput v1, p0, Lcom/iflytek/ui/t;->d:I

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/iflytek/ui/t;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/iflytek/ui/t;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/iflytek/ui/t;->e:I

    return v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/iflytek/ui/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/iflytek/ui/t;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/iflytek/ui/t;->a:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/ui/t;->d:I

    iget-object v0, p0, Lcom/iflytek/ui/t;->a:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/iflytek/ui/t;->d:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/iflytek/ui/t;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/iflytek/ui/t;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/iflytek/ui/t;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/ui/t;->d:I

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

    iput-object v0, p0, Lcom/iflytek/ui/t;->a:[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/t;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/t;->c:Landroid/graphics/Rect;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
