.class Lamm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl;


# instance fields
.field final synthetic a:Laml;


# direct methods
.method constructor <init>(Laml;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lamm;->a:Laml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0, p1}, Laml;->a(Laml;I)I

    .line 172
    iget-object v0, p0, Lamm;->a:Laml;

    iget-boolean v0, v0, Laml;->c:Z

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0, v1}, Laml;->a(Laml;Z)Z

    .line 175
    iget-object v0, p0, Lamm;->a:Laml;

    const-string v1, "[[onStartTransfer]] clear the old notify"

    invoke-static {v0, v1}, Laml;->a(Laml;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const-wide v2, 0x3fa999999999999aL

    .line 141
    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0, p2}, Laml;->a(Laml;I)I

    .line 142
    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0, p1}, Laml;->b(Laml;I)I

    .line 143
    iget-object v0, p0, Lamm;->a:Laml;

    iget-boolean v0, v0, Laml;->c:Z

    if-ne v0, v4, :cond_2

    .line 144
    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0}, Laml;->a(Laml;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lamm;->a:Laml;

    invoke-static {v1}, Laml;->b(Laml;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0}, Laml;->a(Laml;)I

    move-result v0

    iget-object v1, p0, Lamm;->a:Laml;

    invoke-static {v1}, Laml;->c(Laml;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lamm;->a:Laml;

    invoke-static {v1}, Laml;->b(Laml;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lamm;->a:Laml;

    iget-object v1, p0, Lamm;->a:Laml;

    invoke-static {v1}, Laml;->a(Laml;)I

    move-result v1

    invoke-static {v0, v1}, Laml;->c(Laml;I)I

    .line 151
    :cond_1
    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0, v4}, Laml;->a(Laml;Z)Z

    .line 156
    :cond_2
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0, p2}, Laml;->a(Laml;I)I

    .line 160
    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0, p1}, Laml;->b(Laml;I)I

    .line 161
    iget-object v0, p0, Lamm;->a:Laml;

    iget-boolean v0, v0, Laml;->c:Z

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lamm;->a:Laml;

    invoke-static {v0, v1}, Laml;->a(Laml;Z)Z

    .line 168
    :cond_0
    return-void
.end method
