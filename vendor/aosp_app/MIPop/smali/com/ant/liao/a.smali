.class public Lcom/ant/liao/a;
.super Ljava/lang/Object;


# static fields
.field public static A:[I

.field public static q:Landroid/graphics/Bitmap;

.field static z:[I


# instance fields
.field B:[B

.field public delay:I

.field public r:Lcom/ant/liao/a;

.field s:I

.field t:I

.field u:I

.field v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x54010

    new-array v0, v0, [I

    sput-object v0, Lcom/ant/liao/a;->z:[I

    return-void
.end method

.method public constructor <init>(IIII[BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/a;->r:Lcom/ant/liao/a;

    iput p1, p0, Lcom/ant/liao/a;->s:I

    iput p2, p0, Lcom/ant/liao/a;->t:I

    iput p3, p0, Lcom/ant/liao/a;->u:I

    iput p4, p0, Lcom/ant/liao/a;->v:I

    const-string v0, "GifView"

    const-string v1, "pix.clone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ant/liao/a;->B:[B

    iput p6, p0, Lcom/ant/liao/a;->delay:I

    return-void
.end method


# virtual methods
.method public l()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v2, 0x0

    const/16 v3, 0x1b8

    const/16 v7, 0x30e

    sget-object v0, Lcom/ant/liao/a;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ant/liao/a;->q:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/ant/liao/a;->z:[I

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/ant/liao/a;->v:I

    if-ge v2, v0, :cond_4

    iget v0, p0, Lcom/ant/liao/a;->t:I

    add-int/2addr v0, v2

    if-ge v0, v7, :cond_3

    mul-int v1, v0, v3

    iget v0, p0, Lcom/ant/liao/a;->s:I

    add-int v4, v1, v0

    iget v0, p0, Lcom/ant/liao/a;->u:I

    add-int/2addr v0, v4

    add-int v5, v1, v3

    if-ge v5, v0, :cond_1

    add-int v0, v1, v3

    :cond_1
    iget v1, p0, Lcom/ant/liao/a;->u:I

    mul-int/2addr v1, v2

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_3

    iget-object v6, p0, Lcom/ant/liao/a;->B:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    sget-object v6, Lcom/ant/liao/a;->A:[I

    aget v1, v6, v1

    if-eqz v1, :cond_2

    sget-object v6, Lcom/ant/liao/a;->z:[I

    aput v1, v6, v5

    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/ant/liao/a;->z:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v7, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ant/liao/a;->q:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/ant/liao/a;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method
