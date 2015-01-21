.class public Lark;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lasf;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 2157
    iput-object p1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2223
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2226
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->h(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2227
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v1

    invoke-virtual {v1}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2228
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2229
    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2230
    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2231
    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2233
    :cond_0
    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2238
    :cond_1
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->a:I

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isQwertyKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2239
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2240
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    .line 2241
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2253
    :cond_2
    :goto_0
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    if-ne v0, v3, :cond_5

    .line 2254
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    .line 2255
    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 2260
    :goto_1
    return-void

    .line 2243
    :cond_3
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 2246
    :cond_4
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2247
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2248
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2257
    :cond_5
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iput-boolean v3, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2258
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasf;

    move-result-object v0

    invoke-interface {v0}, Lasf;->a()V

    goto :goto_1
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 2263
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2264
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2265
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;I)V

    .line 2266
    return-void
.end method

.method public a(I[III)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2159
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v2, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v2

    iget-object v2, v2, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v2, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2160
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iput-boolean v3, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2162
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;I)I

    .line 2165
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->h(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2167
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v2, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v2

    invoke-virtual {v2}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2168
    iget-object v2, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x27

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2172
    :cond_0
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->a:I

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isQwertyKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2173
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2174
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2175
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    :cond_1
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)[Lary;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2180
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)[Lary;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v6, :cond_e

    aget-object v7, v5, v2

    .line 2181
    add-int/lit8 v0, v0, 0x1

    .line 2182
    iget v7, v7, Lary;->a:I

    if-ne v7, p1, :cond_6

    move v2, v3

    .line 2187
    :goto_1
    iget-object v5, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_7

    if-le v0, v4, :cond_2

    move v0, v4

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    :cond_3
    :goto_3
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2201
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    invoke-static {v0}, Lasd;->a(Lasd;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    move v0, v3

    .line 2203
    :goto_4
    if-eqz v0, :cond_5

    .line 2204
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 2207
    :cond_5
    iget-object v2, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->j(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2208
    if-eqz v0, :cond_b

    .line 2209
    :goto_5
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    move-result v0

    if-eqz v0, :cond_c

    .line 2211
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2218
    :goto_6
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2219
    int-to-char v0, p1

    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;I)Z

    move-result v1

    invoke-static {v0, v1}, Lauu;->a(CZ)V

    .line 2220
    return-void

    .line 2180
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2187
    :cond_7
    const-string v0, "0"

    goto :goto_2

    .line 2191
    :cond_8
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 2192
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2193
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2201
    :cond_9
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_a
    move v0, v1

    goto :goto_4

    :cond_b
    move v3, v1

    .line 2208
    goto :goto_5

    .line 2212
    :cond_c
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_6

    .line 2214
    :cond_d
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->sendKeyChar(C)V

    .line 2215
    iget-object v0, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Lark;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_6

    :cond_e
    move v2, v1

    goto/16 :goto_1

    :cond_f
    move v0, v1

    move v2, v1

    goto/16 :goto_1
.end method
