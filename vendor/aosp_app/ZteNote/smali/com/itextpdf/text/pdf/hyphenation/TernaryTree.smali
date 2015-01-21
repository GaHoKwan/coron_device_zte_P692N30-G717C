.class public Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;
.super Ljava/lang/Object;
.source "TernaryTree.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;
    }
.end annotation


# static fields
.field protected static final BLOCK_SIZE:I = 0x800

.field private static final serialVersionUID:J = 0x49bcdeaf673c3056L


# instance fields
.field protected eq:[C

.field protected freenode:C

.field protected hi:[C

.field protected kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

.field protected length:I

.field protected lo:[C

.field protected root:C

.field protected sc:[C


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->init()V

    .line 117
    return-void
.end method

.method private compact(Lcom/itextpdf/text/pdf/hyphenation/CharVector;Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;C)V
    .locals 4
    .parameter "kx"
    .parameter "map"
    .parameter "p"

    .prologue
    .line 436
    if-nez p3, :cond_0

    .line 454
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aget-char v1, v1, p3

    const v2, 0xffff

    if-ne v1, v2, :cond_2

    .line 440
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->getArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v2, v2, p3

    invoke-virtual {p2, v1, v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->find([CI)I

    move-result v0

    .line 441
    .local v0, k:I
    if-gez v0, :cond_1

    .line 442
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->getArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v2, v2, p3

    invoke-static {v1, v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->strlen([CI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->alloc(I)I

    move-result v0

    .line 443
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->getArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->getArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v3, v3, p3

    invoke-static {v1, v0, v2, v3}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->strcpy([CI[CI)V

    .line 444
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->getArray()[C

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {p2, v1, v0, v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insert([CIC)V

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    int-to-char v2, v0

    aput-char v2, v1, p3

    goto :goto_0

    .line 448
    .end local v0           #k:I
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v1, v1, p3

    invoke-direct {p0, p1, p2, v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->compact(Lcom/itextpdf/text/pdf/hyphenation/CharVector;Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;C)V

    .line 449
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aget-char v1, v1, p3

    if-eqz v1, :cond_3

    .line 450
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aget-char v1, v1, p3

    invoke-direct {p0, p1, p2, v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->compact(Lcom/itextpdf/text/pdf/hyphenation/CharVector;Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;C)V

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    aget-char v1, v1, p3

    invoke-direct {p0, p1, p2, v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->compact(Lcom/itextpdf/text/pdf/hyphenation/CharVector;Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;C)V

    goto :goto_0
.end method

.method private insert(C[CIC)C
    .locals 9
    .parameter "p"
    .parameter "key"
    .parameter "start"
    .parameter "val"

    .prologue
    const v8, 0xffff

    const/4 v7, 0x0

    .line 163
    invoke-static {p2, p3}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->strlen([CI)I

    move-result v0

    .line 164
    .local v0, len:I
    if-nez p1, :cond_1

    .line 168
    iget-char p1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    .end local p1
    add-int/lit8 v4, p1, 0x1

    int-to-char v4, v4

    iput-char v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    .line 169
    .restart local p1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aput-char p4, v4, p1

    .line 170
    iget v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    .line 171
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    aput-char v7, v4, p1

    .line 172
    if-lez v0, :cond_0

    .line 173
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aput-char v8, v4, p1

    .line 174
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->alloc(I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, p1

    .line 176
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->getArray()[C

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v5, v5, p1

    invoke-static {v4, v5, p2, p3}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->strcpy([CI[CI)V

    :goto_0
    move v1, p1

    .line 229
    .end local p1
    .local v1, p:C
    :goto_1
    return v1

    .line 178
    .end local v1           #p:C
    .restart local p1
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aput-char v7, v4, p1

    .line 179
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aput-char v7, v4, p1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aget-char v4, v4, p1

    if-ne v4, v8, :cond_2

    .line 188
    iget-char v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    add-int/lit8 v4, v2, 0x1

    int-to-char v4, v4

    iput-char v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    .line 189
    .local v2, pp:C
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v5, v5, p1

    aput-char v5, v4, v2

    .line 190
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aget-char v5, v5, p1

    aput-char v5, v4, v2

    .line 191
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aput-char v7, v4, p1

    .line 192
    if-lez v0, :cond_4

    .line 193
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->get(I)C

    move-result v5

    aput-char v5, v4, p1

    .line 194
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aput-char v2, v4, p1

    .line 195
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v5, v4, v2

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    aput-char v5, v4, v2

    .line 196
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->get(I)C

    move-result v4

    if-nez v4, :cond_3

    .line 198
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aput-char v7, v4, v2

    .line 199
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aput-char v7, v4, v2

    .line 200
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    aput-char v7, v4, v2

    .line 216
    .end local v2           #pp:C
    :cond_2
    :goto_2
    aget-char v3, p2, p3

    .line 217
    .local v3, s:C
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aget-char v4, v4, p1

    if-ge v3, v4, :cond_5

    .line 218
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v5, v5, p1

    invoke-direct {p0, v5, p2, p3, p4}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insert(C[CIC)C

    move-result v5

    aput-char v5, v4, p1

    :goto_3
    move v1, p1

    .line 229
    .end local p1
    .restart local v1       #p:C
    goto :goto_1

    .line 203
    .end local v1           #p:C
    .end local v3           #s:C
    .restart local v2       #pp:C
    .restart local p1
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aput-char v8, v4, v2

    goto :goto_2

    .line 208
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aput-char v8, v4, v2

    .line 209
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    aput-char v2, v4, p1

    .line 210
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aput-char v7, v4, p1

    .line 211
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aput-char p4, v4, p1

    .line 212
    iget v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    move v1, p1

    .line 213
    .end local p1
    .restart local v1       #p:C
    goto/16 :goto_1

    .line 219
    .end local v1           #p:C
    .end local v2           #pp:C
    .restart local v3       #s:C
    .restart local p1
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aget-char v4, v4, p1

    if-ne v3, v4, :cond_7

    .line 220
    if-eqz v3, :cond_6

    .line 221
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aget-char v5, v5, p1

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, p2, v6, p4}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insert(C[CIC)C

    move-result v5

    aput-char v5, v4, p1

    goto :goto_3

    .line 224
    :cond_6
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aput-char p4, v4, p1

    goto :goto_3

    .line 227
    :cond_7
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    aget-char v5, v5, p1

    invoke-direct {p0, v5, p2, p3, p4}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insert(C[CIC)C

    move-result v5

    aput-char v5, v4, p1

    goto :goto_3
.end method

.method private redimNodeArrays(I)V
    .locals 4
    .parameter "newsize"

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    array-length v2, v2

    if-ge p1, v2, :cond_0

    move v0, p1

    .line 331
    .local v0, len:I
    :goto_0
    new-array v1, p1, [C

    .line 332
    .local v1, na:[C
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    .line 334
    new-array v1, p1, [C

    .line 335
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    .line 337
    new-array v1, p1, [C

    .line 338
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    .line 340
    new-array v1, p1, [C

    .line 341
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    .line 343
    return-void

    .line 330
    .end local v0           #len:I
    .end local v1           #na:[C
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    array-length v0, v2

    goto :goto_0
.end method

.method public static strcmp(Ljava/lang/String;[CI)I
    .locals 5
    .parameter "str"
    .parameter "a"
    .parameter "start"

    .prologue
    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 249
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 250
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v1

    aget-char v4, p1, v4

    sub-int v0, v3, v4

    .line 251
    .local v0, d:I
    if-eqz v0, :cond_1

    .line 261
    .end local v0           #d:I
    :cond_0
    :goto_1
    return v0

    .line 254
    .restart local v0       #d:I
    :cond_1
    add-int v3, p2, v1

    aget-char v3, p1, v3

    if-eqz v3, :cond_0

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v0           #d:I
    :cond_2
    add-int v3, p2, v1

    aget-char v3, p1, v3

    if-eqz v3, :cond_3

    .line 259
    add-int v3, p2, v1

    aget-char v3, p1, v3

    neg-int v0, v3

    goto :goto_1

    .line 261
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static strcmp([CI[CI)I
    .locals 2
    .parameter "a"
    .parameter "startA"
    .parameter "b"
    .parameter "startB"

    .prologue
    .line 236
    :goto_0
    aget-char v0, p0, p1

    aget-char v1, p2, p3

    if-ne v0, v1, :cond_1

    .line 237
    aget-char v0, p0, p1

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 241
    :goto_1
    return v0

    .line 236
    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 241
    :cond_1
    aget-char v0, p0, p1

    aget-char v1, p2, p3

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public static strcpy([CI[CI)V
    .locals 3
    .parameter "dst"
    .parameter "di"
    .parameter "src"
    .parameter "si"

    .prologue
    .line 266
    :goto_0
    aget-char v2, p2, p3

    if-eqz v2, :cond_0

    .line 267
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, di:I
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .local v1, si:I
    aget-char v2, p2, p3

    aput-char v2, p0, p1

    move p3, v1

    .end local v1           #si:I
    .restart local p3
    move p1, v0

    .end local v0           #di:I
    .restart local p1
    goto :goto_0

    .line 269
    :cond_0
    const/4 v2, 0x0

    aput-char v2, p0, p1

    .line 270
    return-void
.end method

.method public static strlen([C)I
    .locals 1
    .parameter "a"

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->strlen([CI)I

    move-result v0

    return v0
.end method

.method public static strlen([CI)I
    .locals 3
    .parameter "a"
    .parameter "start"

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, len:I
    move v0, p1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-char v2, p0, v0

    if-eqz v2, :cond_0

    .line 275
    add-int/lit8 v1, v1, 0x1

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    return v1
.end method


# virtual methods
.method public balance()V
    .locals 7

    .prologue
    .line 390
    const/4 v0, 0x0

    .local v0, i:I
    iget v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    .line 391
    .local v4, n:I
    new-array v3, v4, [Ljava/lang/String;

    .line 392
    .local v3, k:[Ljava/lang/String;
    new-array v5, v4, [C

    .line 393
    .local v5, v:[C
    new-instance v2, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;

    invoke-direct {v2, p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;-><init>(Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;)V

    .line 394
    .local v2, iter:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 395
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->getValue()C

    move-result v6

    aput-char v6, v5, v0

    .line 396
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->nextElement()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->init()V

    .line 399
    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6, v4}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insertBalanced([Ljava/lang/String;[CII)V

    .line 403
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;-><init>()V

    .line 352
    .local v0, t:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    .line 353
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    .line 354
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    .line 355
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    .line 356
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    .line 357
    iget-char v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    iput-char v1, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    .line 358
    iget-char v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    iput-char v1, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    .line 359
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    iput v1, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    .line 361
    return-object v0
.end method

.method public find(Ljava/lang/String;)I
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 286
    .local v0, len:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [C

    .line 287
    .local v1, strkey:[C
    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 288
    aput-char v3, v1, v0

    .line 290
    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->find([CI)I

    move-result v2

    return v2
.end method

.method public find([CI)I
    .locals 7
    .parameter "key"
    .parameter "start"

    .prologue
    const/4 v4, -0x1

    .line 295
    iget-char v3, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    .line 296
    .local v3, p:C
    move v2, p2

    .line 299
    .local v2, i:I
    :goto_0
    if-eqz v3, :cond_0

    .line 300
    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aget-char v5, v5, v3

    const v6, 0xffff

    if-ne v5, v6, :cond_1

    .line 301
    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->getArray()[C

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v6, v6, v3

    invoke-static {p1, v2, v5, v6}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->strcmp([CI[CI)I

    move-result v5

    if-nez v5, :cond_0

    .line 302
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aget-char v4, v4, v3

    .line 321
    :cond_0
    :goto_1
    return v4

    .line 307
    :cond_1
    aget-char v0, p1, v2

    .line 308
    .local v0, c:C
    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    aget-char v5, v5, v3

    sub-int v1, v0, v5

    .line 309
    .local v1, d:I
    if-nez v1, :cond_3

    .line 310
    if-nez v0, :cond_2

    .line 311
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aget-char v4, v4, v3

    goto :goto_1

    .line 313
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 314
    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    aget-char v3, v5, v3

    goto :goto_0

    .line 315
    :cond_3
    if-gez v1, :cond_4

    .line 316
    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    aget-char v3, v5, v3

    goto :goto_0

    .line 318
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    aget-char v3, v5, v3

    goto :goto_0
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x800

    .line 120
    iput-char v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    .line 121
    const/4 v0, 0x1

    iput-char v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    .line 122
    iput v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    .line 123
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    .line 124
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    .line 125
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    .line 126
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    .line 127
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    .line 128
    return-void
.end method

.method public insert(Ljava/lang/String;C)V
    .locals 6
    .parameter "key"
    .parameter "val"

    .prologue
    const/4 v5, 0x0

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 142
    .local v0, len:I
    iget-char v3, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 143
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    array-length v3, v3

    add-int/lit16 v3, v3, 0x800

    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->redimNodeArrays(I)V

    .line 145
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .end local v0           #len:I
    .local v1, len:I
    new-array v2, v0, [C

    .line 146
    .local v2, strkey:[C
    invoke-virtual {p1, v5, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 147
    aput-char v5, v2, v1

    .line 148
    iget-char v3, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    invoke-direct {p0, v3, v2, v5, p2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insert(C[CIC)C

    move-result v3

    iput-char v3, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    .line 149
    return-void
.end method

.method public insert([CIC)V
    .locals 3
    .parameter "key"
    .parameter "start"
    .parameter "val"

    .prologue
    .line 152
    invoke-static {p1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->strlen([C)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 153
    .local v0, len:I
    iget-char v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 154
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    array-length v1, v1

    add-int/lit16 v1, v1, 0x800

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->redimNodeArrays(I)V

    .line 156
    :cond_0
    iget-char v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insert(C[CIC)C

    move-result v1

    iput-char v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    .line 157
    return-void
.end method

.method protected insertBalanced([Ljava/lang/String;[CII)V
    .locals 3
    .parameter "k"
    .parameter "v"
    .parameter "offset"
    .parameter "n"

    .prologue
    .line 372
    const/4 v1, 0x1

    if-ge p4, v1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 375
    :cond_0
    shr-int/lit8 v0, p4, 0x1

    .line 377
    .local v0, m:I
    add-int v1, v0, p3

    aget-object v1, p1, v1

    add-int v2, v0, p3

    aget-char v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insert(Ljava/lang/String;C)V

    .line 378
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insertBalanced([Ljava/lang/String;[CII)V

    .line 380
    add-int v1, p3, v0

    add-int/lit8 v1, v1, 0x1

    sub-int v2, p4, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insertBalanced([Ljava/lang/String;[CII)V

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;-><init>(Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;)V

    return-object v0
.end method

.method public knows(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->find(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printStats()V
    .locals 3

    .prologue
    .line 638
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of keys = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 639
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key Array length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->length:I

    return v0
.end method

.method public trimToSize()V
    .locals 3

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->balance()V

    .line 423
    iget-char v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->freenode:C

    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->redimNodeArrays(I)V

    .line 426
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;-><init>()V

    .line 427
    .local v0, kx:Lcom/itextpdf/text/pdf/hyphenation/CharVector;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->alloc(I)I

    .line 428
    new-instance v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;-><init>()V

    .line 429
    .local v1, map:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;
    iget-char v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->compact(Lcom/itextpdf/text/pdf/hyphenation/CharVector;Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;C)V

    .line 430
    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    .line 431
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->trimToSize()V

    .line 432
    return-void
.end method
