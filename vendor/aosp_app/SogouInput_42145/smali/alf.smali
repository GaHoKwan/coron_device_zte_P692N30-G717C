.class Lalf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl;


# instance fields
.field final synthetic a:Lale;


# direct methods
.method constructor <init>(Lale;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lalf;->a:Lale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0, p1}, Lale;->a(Lale;I)I

    .line 176
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0}, Lale;->a(Lale;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0}, Lale;->a(Lale;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1}, Lrl;->a(I)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lalf;->a:Lale;

    iget-boolean v0, v0, Lale;->c:Z

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0}, Lale;->b(Lale;)V

    .line 182
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0, v1}, Lale;->a(Lale;Z)Z

    .line 183
    iget-object v0, p0, Lalf;->a:Lale;

    const-string v1, "[[onStartTransfer]] ..."

    invoke-static {v0, v1}, Lale;->a(Lale;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 137
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0, p2}, Lale;->a(Lale;I)I

    .line 138
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0, p1}, Lale;->b(Lale;I)I

    .line 139
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0}, Lale;->a(Lale;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0}, Lale;->a(Lale;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrl;->a(II)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lalf;->a:Lale;

    iget-boolean v0, v0, Lale;->c:Z

    if-ne v0, v4, :cond_0

    .line 143
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0}, Lale;->a(Lale;)I

    move-result v0

    iget-object v1, p0, Lalf;->a:Lale;

    invoke-static {v1}, Lale;->b(Lale;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lalf;->a:Lale;

    invoke-static {v1}, Lale;->c(Lale;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0, p2, p1}, Lale;->a(Lale;II)V

    .line 147
    iget-object v0, p0, Lalf;->a:Lale;

    iget-object v1, p0, Lalf;->a:Lale;

    invoke-static {v1}, Lale;->a(Lale;)I

    move-result v1

    invoke-static {v0, v1}, Lale;->c(Lale;I)I

    .line 148
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0, v4}, Lale;->a(Lale;Z)Z

    goto :goto_0
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0, p2}, Lale;->a(Lale;I)I

    .line 160
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0, p1}, Lale;->b(Lale;I)I

    .line 161
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0}, Lale;->a(Lale;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0}, Lale;->a(Lale;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrl;->b(II)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lalf;->a:Lale;

    iget-boolean v0, v0, Lale;->c:Z

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0}, Lale;->a(Lale;)V

    .line 166
    iget-object v0, p0, Lalf;->a:Lale;

    invoke-static {v0, v1}, Lale;->a(Lale;Z)Z

    goto :goto_0
.end method
