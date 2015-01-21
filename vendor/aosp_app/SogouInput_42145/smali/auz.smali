.class Lauz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:C

.field public a:I

.field final synthetic a:Laux;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>(Laux;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lauz;->a:Laux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laux;Lauy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lauz;-><init>(Laux;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .parameter

    .prologue
    .line 225
    iget v0, p0, Lauz;->a:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lauz;->d:I

    iget v2, p0, Lauz;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 3
    .parameter

    .prologue
    .line 228
    iget v0, p0, Lauz;->b:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lauz;->e:I

    iget v2, p0, Lauz;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
