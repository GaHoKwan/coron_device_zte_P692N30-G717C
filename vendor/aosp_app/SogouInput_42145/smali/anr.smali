.class public Lanr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Lazr;
    .locals 11
    .parameter

    .prologue
    const/16 v4, 0x140

    const/4 v2, 0x0

    .line 119
    new-instance v8, Lsy;

    invoke-direct {v8}, Lsy;-><init>()V

    .line 122
    const-string v0, "smil"

    invoke-interface {v8, v0}, Lazr;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lazs;

    .line 123
    invoke-interface {v8, v6}, Lazr;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 126
    const-string v0, "head"

    invoke-interface {v8, v0}, Lazr;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lazs;

    .line 127
    invoke-interface {v6, v0}, Lazs;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 130
    const-string v1, "layout"

    invoke-interface {v8, v1}, Lazr;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lazt;

    .line 132
    invoke-interface {v0, v7}, Lazs;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 135
    const-string v0, "root-layout"

    invoke-interface {v8, v0}, Lazr;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lbaa;

    .line 137
    invoke-interface {v0, v4}, Lbaa;->d(I)V

    .line 138
    const/16 v1, 0x1e0

    invoke-interface {v0, v1}, Lbaa;->c(I)V

    .line 139
    invoke-interface {v7, v0}, Lazt;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 142
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v0, Ltl;

    const-string v1, "Image"

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Ltl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Ltl;

    const-string v1, "Text"

    const/16 v5, 0xa0

    move v3, v4

    invoke-direct/range {v0 .. v5}, Ltl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltl;

    .line 147
    const-string v1, "region"

    invoke-interface {v8, v1}, Lazr;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lazx;

    .line 148
    invoke-virtual {v0}, Ltl;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lazx;->a(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ltl;->a()I

    move-result v5

    invoke-interface {v1, v5}, Lazx;->a(I)V

    .line 150
    invoke-virtual {v0}, Ltl;->b()I

    move-result v5

    invoke-interface {v1, v5}, Lazx;->b(I)V

    .line 151
    invoke-virtual {v0}, Ltl;->c()I

    move-result v5

    invoke-interface {v1, v5}, Lazx;->d(I)V

    .line 152
    invoke-virtual {v0}, Ltl;->d()I

    move-result v5

    invoke-interface {v1, v5}, Lazx;->c(I)V

    .line 153
    invoke-virtual {v0}, Ltl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lazx;->b(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_0
    const-string v0, "body"

    invoke-interface {v8, v0}, Lazr;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lazs;

    .line 159
    invoke-interface {v6, v0}, Lazs;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 164
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 166
    invoke-static {v8}, Lanr;->a(Lazr;)Lazv;

    move-result-object v6

    .line 167
    const/high16 v1, 0x40a0

    invoke-interface {v6, v1}, Lazv;->a(F)V

    .line 171
    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a()Ljava/lang/String;

    move-result-object v1

    .line 172
    iget v9, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    if-nez v9, :cond_2

    .line 174
    const-string v0, "text"

    invoke-static {v0, v8, v1}, Lanr;->a(Ljava/lang/String;Lazr;Ljava/lang/String;)Lazu;

    move-result-object v1

    move-object v0, v1

    .line 176
    check-cast v0, Lazz;

    const-string v9, "Text"

    invoke-static {v0, v4, v7, v9, v3}, Lanr;->a(Lazz;Ljava/util/ArrayList;Lazt;Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    .line 198
    :goto_2
    invoke-interface {v6, v1}, Lazv;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v3, v0

    .line 199
    goto :goto_1

    .line 180
    :cond_2
    iget v9, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 181
    const-string v0, "img"

    invoke-static {v0, v8, v1}, Lanr;->a(Ljava/lang/String;Lazr;Ljava/lang/String;)Lazu;

    move-result-object v1

    move-object v0, v1

    .line 183
    check-cast v0, Lazz;

    const-string v9, "Image"

    invoke-static {v0, v4, v7, v9, v2}, Lanr;->a(Lazz;Ljava/util/ArrayList;Lazt;Ljava/lang/String;Z)Z

    move-result v2

    move v0, v3

    goto :goto_2

    .line 187
    :cond_3
    iget v9, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 188
    const-string v0, "video"

    invoke-static {v0, v8, v1}, Lanr;->a(Ljava/lang/String;Lazr;Ljava/lang/String;)Lazu;

    move-result-object v1

    move v0, v3

    goto :goto_2

    .line 190
    :cond_4
    iget v9, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 191
    iget-wide v9, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:D

    double-to-float v9, v9

    invoke-interface {v6, v9}, Lazv;->a(F)V

    .line 192
    const-string v9, "audio"

    invoke-static {v9, v8, v1}, Lanr;->a(Ljava/lang/String;Lazr;Ljava/lang/String;)Lazu;

    move-result-object v1

    .line 194
    iget-wide v9, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:D

    double-to-float v0, v9

    invoke-interface {v1, v0}, Lazu;->a(F)V

    move v0, v3

    goto :goto_2

    .line 201
    :cond_5
    return-object v8
.end method

.method public static a(Ljava/lang/String;Lazr;Ljava/lang/String;)Lazu;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-interface {p1, p0}, Lazr;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lazu;

    .line 37
    invoke-static {p2}, Lanr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lazu;->b(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public static a(Lazr;)Lazv;
    .locals 2
    .parameter

    .prologue
    .line 229
    const-string v0, "par"

    invoke-interface {p0, v0}, Lazr;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lazv;

    .line 231
    const/high16 v1, 0x4100

    invoke-interface {v0, v1}, Lazv;->a(F)V

    .line 232
    invoke-interface {p0}, Lazr;->c()Lazs;

    move-result-object v1

    invoke-interface {v1, v0}, Lazs;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 233
    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)Lazx;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazx;

    .line 221
    invoke-interface {v0}, Lazx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 42
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lazz;Ljava/util/ArrayList;Lazt;Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-static {p1, p3}, Lanr;->a(Ljava/util/ArrayList;Ljava/lang/String;)Lazx;

    move-result-object v0

    .line 210
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {p0, v0}, Lazz;->a(Lazx;)V

    .line 212
    invoke-interface {p2, v0}, Lazt;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
