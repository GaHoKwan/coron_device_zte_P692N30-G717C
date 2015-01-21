.class Lamt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl;


# instance fields
.field final synthetic a:Lamr;


# direct methods
.method constructor <init>(Lamr;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lamt;->a:Lamr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 332
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1}, Lrl;->a(I)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lamt;->a:Lamr;

    iget-boolean v0, v0, Lamr;->c:Z

    if-ne v0, v2, :cond_0

    .line 336
    iget-object v0, p0, Lamt;->a:Lamr;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lamr;->a(Lamr;II)V

    .line 337
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0, v2}, Lamr;->a(Lamr;Z)Z

    .line 338
    iget-object v0, p0, Lamt;->a:Lamr;

    const-string v1, "[[onStartTransfer]] clear the old notify"

    invoke-static {v0, v1}, Lamr;->a(Lamr;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const-wide v2, 0x3fa999999999999aL

    .line 293
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0, p2}, Lamr;->a(Lamr;I)I

    .line 294
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0, p1}, Lamr;->b(Lamr;I)I

    .line 295
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrl;->a(II)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lamt;->a:Lamr;

    iget-boolean v0, v0, Lamr;->c:Z

    if-ne v0, v4, :cond_0

    .line 299
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lamt;->a:Lamr;

    invoke-static {v1}, Lamr;->b(Lamr;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)I

    move-result v0

    iget-object v1, p0, Lamt;->a:Lamr;

    invoke-static {v1}, Lamr;->c(Lamr;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lamt;->a:Lamr;

    invoke-static {v1}, Lamr;->b(Lamr;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 302
    :cond_2
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0, p2, p1}, Lamr;->a(Lamr;II)V

    .line 304
    iget-object v0, p0, Lamt;->a:Lamr;

    iget-object v1, p0, Lamt;->a:Lamr;

    invoke-static {v1}, Lamr;->a(Lamr;)I

    move-result v1

    invoke-static {v0, v1}, Lamr;->c(Lamr;I)I

    .line 306
    :cond_3
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0, v4}, Lamr;->a(Lamr;Z)Z

    goto :goto_0
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 315
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0, p2}, Lamr;->a(Lamr;I)I

    .line 316
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0, p1}, Lamr;->b(Lamr;I)I

    .line 317
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrl;->b(II)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lamt;->a:Lamr;

    iget-boolean v0, v0, Lamr;->c:Z

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0, p2, p1}, Lamr;->a(Lamr;II)V

    .line 323
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)V

    .line 324
    iget-object v0, p0, Lamt;->a:Lamr;

    invoke-static {v0, v1}, Lamr;->a(Lamr;Z)Z

    goto :goto_0
.end method
