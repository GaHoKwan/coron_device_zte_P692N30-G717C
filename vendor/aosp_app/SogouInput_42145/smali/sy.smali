.class public Lsy;
.super Lso;
.source "SourceFile"

# interfaces
.implements Lazr;


# instance fields
.field a:Lazo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lso;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public a()Lazs;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lsy;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    instance-of v1, v0, Lazs;

    if-nez v1, :cond_1

    .line 187
    :cond_0
    const-string v0, "smil"

    invoke-virtual {p0, v0}, Lsy;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lsy;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 191
    :cond_1
    check-cast v0, Lazs;

    return-object v0
.end method

.method public a()Lazt;
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lsy;->b()Lazs;

    move-result-object v1

    .line 268
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 269
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lazt;

    if-nez v2, :cond_0

    .line 270
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_0
    if-nez v0, :cond_1

    .line 275
    new-instance v0, Ltb;

    const-string v2, "layout"

    invoke-direct {v0, p0, v2}, Ltb;-><init>(Lsy;Ljava/lang/String;)V

    .line 276
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 278
    :cond_1
    check-cast v0, Lazt;

    return-object v0
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lsy;->a:Lazo;

    invoke-interface {v0, p1}, Lazo;->a(F)V

    .line 125
    return-void
.end method

.method public b()Lazs;
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lsy;->a()Lazs;

    move-result-object v1

    .line 200
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    instance-of v2, v0, Lazs;

    if-nez v2, :cond_1

    .line 203
    :cond_0
    const-string v0, "head"

    invoke-virtual {p0, v0}, Lsy;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 204
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 207
    :cond_1
    check-cast v0, Lazs;

    return-object v0
.end method

.method public c()Lazs;
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lsy;->a()Lazs;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lsy;->b()Lazs;

    move-result-object v1

    .line 213
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    instance-of v2, v1, Lazs;

    if-nez v2, :cond_1

    .line 216
    :cond_0
    const-string v1, "body"

    invoke-virtual {p0, v1}, Lsy;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 217
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 221
    :cond_1
    new-instance v2, Lsz;

    move-object v0, v1

    check-cast v0, Lazs;

    invoke-direct {v2, p0, v0}, Lsz;-><init>(Lsy;Lazs;)V

    iput-object v2, p0, Lsy;->a:Lazo;

    .line 260
    check-cast v1, Lazs;

    return-object v1
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .parameter

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v0, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "img"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Lti;

    invoke-direct {v0, p0, v1}, Lti;-><init>(Lsy;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-object v0

    .line 163
    :cond_1
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Ltc;

    invoke-direct {v0, p0, v1}, Ltc;-><init>(Lsy;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    const-string v0, "layout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    new-instance v0, Ltb;

    invoke-direct {v0, p0, v1}, Ltb;-><init>(Lsy;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_3
    const-string v0, "root-layout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    new-instance v0, Ltj;

    invoke-direct {v0, p0, v1}, Ltj;-><init>(Lsy;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_4
    const-string v0, "region"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    new-instance v0, Lth;

    invoke-direct {v0, p0, v1}, Lth;-><init>(Lsy;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_5
    const-string v0, "ref"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    new-instance v0, Ltg;

    invoke-direct {v0, p0, v1}, Ltg;-><init>(Lsy;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_6
    const-string v0, "par"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    new-instance v0, Lte;

    invoke-direct {v0, p0, v1}, Lte;-><init>(Lsy;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_7
    new-instance v0, Lta;

    invoke-direct {v0, p0, v1}, Lta;-><init>(Lsy;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lsy;->a()Lazs;

    move-result-object v0

    return-object v0
.end method
