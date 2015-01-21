.class public Lcom/autonavi/a/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/autonavi/a/a/h;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/a/a/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/autonavi/a/a/h;->a:I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/a/a/h;->c:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/autonavi/a/a/h;->a:I

    return v0
.end method

.method public b(I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/a/a/h;->a:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    iput p1, p0, Lcom/autonavi/a/a/h;->b:I

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/autonavi/a/a/h;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/a/a/h;->d:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/autonavi/a/a/h;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/a/a/h;->e:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/autonavi/a/a/h;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/a/a/h;->f:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/autonavi/a/a/h;->f:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/a/a/h;->g:I

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/autonavi/a/a/h;->g:I

    return v0
.end method
