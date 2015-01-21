.class Lamk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl;


# instance fields
.field final synthetic a:Lamj;


# direct methods
.method constructor <init>(Lamj;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lamk;->a:Lamj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 225
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0, p1}, Lamj;->a(Lamj;I)I

    .line 226
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1}, Lrl;->a(I)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lamk;->a:Lamj;

    iget-boolean v0, v0, Lamj;->c:Z

    if-ne v0, v6, :cond_0

    .line 231
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)Lanl;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v3, 0x0

    iget-object v2, p0, Lamk;->a:Lamj;

    iget-object v2, v2, Lamj;->a:Landroid/content/Context;

    const v4, 0x7f0b03d4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lamk;->a:Lamj;

    invoke-static {v2}, Lamj;->a(Lamj;)Ljava/lang/String;

    move-result-object v5

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lanl;->a(IIILjava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0, v6}, Lamj;->a(Lamj;Z)Z

    .line 235
    iget-object v0, p0, Lamk;->a:Lamj;

    const-string v1, "[[onStartTransfer]] clear the old notify"

    invoke-static {v0, v1}, Lamj;->b(Lamj;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const-wide v2, 0x3fa999999999999aL

    .line 185
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0, p2}, Lamj;->a(Lamj;I)I

    .line 186
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0, p1}, Lamj;->b(Lamj;I)I

    .line 187
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrl;->a(II)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lamk;->a:Lamj;

    iget-boolean v0, v0, Lamj;->c:Z

    if-ne v0, v6, :cond_0

    .line 191
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lamk;->a:Lamj;

    invoke-static {v1}, Lamj;->b(Lamj;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)I

    move-result v0

    iget-object v1, p0, Lamk;->a:Lamj;

    invoke-static {v1}, Lamj;->c(Lamj;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lamk;->a:Lamj;

    invoke-static {v1}, Lamj;->b(Lamj;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 195
    :cond_2
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)Lanl;

    move-result-object v0

    const/16 v1, 0xa

    iget-object v2, p0, Lamk;->a:Lamj;

    iget-object v2, v2, Lamj;->a:Landroid/content/Context;

    const v3, 0x7f0b03d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lamk;->a:Lamj;

    invoke-static {v2}, Lamj;->a(Lamj;)Ljava/lang/String;

    move-result-object v5

    move v2, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lanl;->a(IIILjava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lamk;->a:Lamj;

    iget-object v1, p0, Lamk;->a:Lamj;

    invoke-static {v1}, Lamj;->a(Lamj;)I

    move-result v1

    invoke-static {v0, v1}, Lamj;->c(Lamj;I)I

    .line 200
    :cond_3
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0, v6}, Lamj;->a(Lamj;Z)Z

    goto :goto_0
.end method

.method public b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 209
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0, p2}, Lamj;->a(Lamj;I)I

    .line 210
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0, p1}, Lamj;->b(Lamj;I)I

    .line 211
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0}, Lamj;->a(Lamj;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrl;->b(II)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lamk;->a:Lamj;

    iget-boolean v0, v0, Lamj;->c:Z

    if-ne v0, v2, :cond_0

    .line 215
    iget-object v0, p0, Lamk;->a:Lamj;

    iget-object v1, p0, Lamk;->a:Lamj;

    invoke-virtual {v1}, Lamj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lamj;->a(Lamj;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lamk;->a:Lamj;

    invoke-static {v0, v2}, Lamj;->a(Lamj;Z)Z

    goto :goto_0
.end method
