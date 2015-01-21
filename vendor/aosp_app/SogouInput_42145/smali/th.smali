.class public Lth;
.super Lta;
.source "SourceFile"

# interfaces
.implements Lazx;


# direct methods
.method constructor <init>(Lsy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lta;-><init>(Lsy;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 255
    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 267
    :goto_0
    return v0

    .line 258
    :cond_0
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    const-wide v0, 0x3f847ae147ae147bL

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v2, v2

    mul-double v1, v0, v2

    .line 260
    if-eqz p2, :cond_1

    .line 261
    invoke-virtual {p0}, Lth;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lazr;

    invoke-interface {v0}, Lazr;->a()Lazt;

    move-result-object v0

    invoke-interface {v0}, Lazt;->a()Lbaa;

    move-result-object v0

    invoke-interface {v0}, Lbaa;->d()I

    move-result v0

    int-to-double v3, v0

    mul-double v0, v1, v3

    .line 265
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lth;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lazr;

    invoke-interface {v0}, Lazr;->a()Lazt;

    move-result-object v0

    invoke-interface {v0}, Lazt;->a()Lbaa;

    move-result-object v0

    invoke-interface {v0}, Lbaa;->c()I

    move-result v0

    int-to-double v3, v0

    mul-double v0, v1, v3

    goto :goto_1

    .line 267
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 79
    :try_start_0
    const-string v0, "left"

    invoke-virtual {p0, v0}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lth;->a(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 86
    :try_start_1
    invoke-virtual {p0}, Lth;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lazr;

    invoke-interface {v0}, Lazr;->a()Lazt;

    move-result-object v0

    invoke-interface {v0}, Lazt;->a()Lbaa;

    move-result-object v0

    invoke-interface {v0}, Lbaa;->d()I

    move-result v0

    .line 87
    const-string v1, "right"

    invoke-virtual {p0, v1}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lth;->a(Ljava/lang/String;Z)I

    move-result v1

    .line 88
    const-string v2, "width"

    invoke-virtual {p0, v2}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lth;->a(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 89
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 139
    const-string v0, "left"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lth;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lth;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    :try_start_0
    const-string v0, "top"

    invoke-virtual {p0, v0}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lth;->a(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lth;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lazr;

    invoke-interface {v0}, Lazr;->a()Lazt;

    move-result-object v0

    invoke-interface {v0}, Lazt;->a()Lbaa;

    move-result-object v0

    invoke-interface {v0}, Lbaa;->c()I

    move-result v0

    .line 108
    const-string v2, "bottom"

    invoke-virtual {p0, v2}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lth;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 109
    const-string v3, "height"

    invoke-virtual {p0, v3}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lth;->a(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 110
    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    move v0, v1

    .line 116
    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 143
    const-string v0, "top"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lth;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "scroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    const-string v0, "fit"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lth;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "fit"

    const-string v1, "hidden"

    invoke-virtual {p0, v0, v1}, Lth;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()I
    .locals 3

    .prologue
    .line 160
    :try_start_0
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lth;->a(Ljava/lang/String;Z)I

    move-result v0

    .line 161
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lth;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lazr;

    invoke-interface {v0}, Lazr;->a()Lazt;

    move-result-object v0

    invoke-interface {v0}, Lazt;->a()Lbaa;

    move-result-object v0

    invoke-interface {v0}, Lbaa;->c()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {p0}, Lth;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lazr;

    invoke-interface {v0}, Lazr;->a()Lazt;

    move-result-object v0

    invoke-interface {v0}, Lazt;->a()Lbaa;

    move-result-object v0

    invoke-interface {v0}, Lbaa;->c()I

    move-result v0

    .line 171
    :try_start_1
    const-string v1, "top"

    invoke-virtual {p0, v1}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lth;->a(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    sub-int/2addr v0, v1

    .line 178
    :goto_1
    :try_start_2
    const-string v1, "bottom"

    invoke-virtual {p0, v1}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lth;->a(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v1

    goto :goto_0

    .line 172
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public c(I)V
    .locals 3
    .parameter

    .prologue
    .line 225
    const-string v0, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lth;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public d()I
    .locals 3

    .prologue
    .line 193
    :try_start_0
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lth;->a(Ljava/lang/String;Z)I

    move-result v0

    .line 194
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lth;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lazr;

    invoke-interface {v0}, Lazr;->a()Lazt;

    move-result-object v0

    invoke-interface {v0}, Lazt;->a()Lbaa;

    move-result-object v0

    invoke-interface {v0}, Lbaa;->d()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 197
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {p0}, Lth;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lazr;

    invoke-interface {v0}, Lazr;->a()Lazt;

    move-result-object v0

    invoke-interface {v0}, Lazt;->a()Lbaa;

    move-result-object v0

    invoke-interface {v0}, Lbaa;->d()I

    move-result v0

    .line 204
    :try_start_1
    const-string v1, "left"

    invoke-virtual {p0, v1}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lth;->a(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    sub-int/2addr v0, v1

    .line 211
    :goto_1
    :try_start_2
    const-string v1, "right"

    invoke-virtual {p0, v1}, Lth;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lth;->a(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 212
    :catch_1
    move-exception v1

    goto :goto_0

    .line 205
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public d(I)V
    .locals 3
    .parameter

    .prologue
    .line 233
    const-string v0, "width"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lth;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lth;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lth;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lth;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lth;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lth;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
