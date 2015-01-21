.class public Lcom/itextpdf/text/pdf/SequenceList;
.super Ljava/lang/Object;
.source "SequenceList.java"


# static fields
.field protected static final COMMA:I = 0x1

.field private static final DIGIT:I = 0x1

.field private static final DIGIT2:I = 0x3

.field protected static final END:I = 0x6

.field protected static final EOT:C = '\uffff'

.field private static final FIRST:I = 0x0

.field protected static final MINUS:I = 0x2

.field protected static final NOT:I = 0x3

.field private static final NOT_OTHER:Ljava/lang/String; = "-,!0123456789"

.field protected static final NUMBER:I = 0x5

.field private static final OTHER:I = 0x2

.field protected static final TEXT:I = 0x4


# instance fields
.field protected even:Z

.field protected high:I

.field protected inverse:Z

.field protected low:I

.field protected number:I

.field protected odd:Z

.field protected other:Ljava/lang/String;

.field protected ptr:I

.field protected text:[C


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "range"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->ptr:I

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->text:[C

    .line 90
    return-void
.end method

.method public static expand(Ljava/lang/String;I)Ljava/util/List;
    .locals 13
    .parameter "ranges"
    .parameter "maxNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, -0x1

    const/4 v10, 0x1

    .line 250
    new-instance v5, Lcom/itextpdf/text/pdf/SequenceList;

    invoke-direct {v5, p0}, Lcom/itextpdf/text/pdf/SequenceList;-><init>(Ljava/lang/String;)V

    .line 251
    .local v5, parse:Lcom/itextpdf/text/pdf/SequenceList;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 252
    .local v3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 253
    .local v6, sair:Z
    :cond_0
    if-nez v6, :cond_14

    .line 254
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/SequenceList;->getAttributes()Z

    move-result v6

    .line 255
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    if-ne v8, v12, :cond_1

    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    if-ne v8, v12, :cond_1

    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->even:Z

    if-nez v8, :cond_1

    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->odd:Z

    if-eqz v8, :cond_0

    .line 257
    :cond_1
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    if-ge v8, v10, :cond_2

    .line 258
    iput v10, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .line 259
    :cond_2
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    if-lt v8, v10, :cond_3

    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    if-le v8, p1, :cond_4

    .line 260
    :cond_3
    iput p1, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    .line 261
    :cond_4
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    if-le v8, p1, :cond_5

    .line 262
    iput p1, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .line 265
    :cond_5
    const/4 v0, 0x1

    .line 266
    .local v0, inc:I
    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->inverse:Z

    if-eqz v8, :cond_a

    .line 267
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    iget v11, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    if-le v8, v11, :cond_6

    .line 268
    iget v7, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .line 269
    .local v7, t:I
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    iput v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .line 270
    iput v7, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    .line 272
    .end local v7           #t:I
    :cond_6
    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Integer;>;"
    :cond_7
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 273
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 274
    .local v4, n:I
    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->even:Z

    if-eqz v8, :cond_8

    and-int/lit8 v8, v4, 0x1

    if-eq v8, v10, :cond_7

    .line 276
    :cond_8
    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->odd:Z

    if-eqz v8, :cond_9

    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_7

    .line 278
    :cond_9
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    if-lt v4, v8, :cond_7

    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    if-gt v4, v8, :cond_7

    .line 279
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 283
    .end local v1           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Integer;>;"
    .end local v4           #n:I
    :cond_a
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    iget v11, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    if-le v8, v11, :cond_f

    .line 284
    const/4 v0, -0x1

    .line 285
    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->odd:Z

    if-nez v8, :cond_b

    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->even:Z

    if-eqz v8, :cond_c

    .line 286
    :cond_b
    add-int/lit8 v0, v0, -0x1

    .line 287
    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->even:Z

    if-eqz v8, :cond_d

    .line 288
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .line 292
    :cond_c
    :goto_1
    iget v2, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .local v2, k:I
    :goto_2
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    if-lt v2, v8, :cond_0

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/2addr v2, v0

    goto :goto_2

    .line 290
    .end local v2           #k:I
    :cond_d
    iget v11, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    and-int/lit8 v8, v8, 0x1

    if-ne v8, v10, :cond_e

    move v8, v9

    :goto_3
    sub-int v8, v11, v8

    iput v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    goto :goto_1

    :cond_e
    move v8, v10

    goto :goto_3

    .line 296
    :cond_f
    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->odd:Z

    if-nez v8, :cond_10

    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->even:Z

    if-eqz v8, :cond_11

    .line 297
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 298
    iget-boolean v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->odd:Z

    if-eqz v8, :cond_12

    .line 299
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .line 303
    :cond_11
    :goto_4
    iget v2, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .restart local v2       #k:I
    :goto_5
    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    if-gt v2, v8, :cond_0

    .line 304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/2addr v2, v0

    goto :goto_5

    .line 301
    .end local v2           #k:I
    :cond_12
    iget v11, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    iget v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    and-int/lit8 v8, v8, 0x1

    if-ne v8, v10, :cond_13

    move v8, v10

    :goto_6
    add-int/2addr v8, v11

    iput v8, v5, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    goto :goto_4

    :cond_13
    move v8, v9

    goto :goto_6

    .line 312
    .end local v0           #inc:I
    :cond_14
    return-object v3
.end method

.method private otherProc()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->other:Ljava/lang/String;

    const-string v1, "odd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->other:Ljava/lang/String;

    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    :cond_0
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/SequenceList;->odd:Z

    .line 165
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/SequenceList;->even:Z

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->other:Ljava/lang/String;

    const-string v1, "even"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->other:Ljava/lang/String;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_3
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/SequenceList;->odd:Z

    .line 169
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/SequenceList;->even:Z

    goto :goto_0
.end method


# virtual methods
.method protected getAttributes()Z
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 174
    iput v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .line 175
    iput v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    .line 176
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/SequenceList;->inverse:Z

    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/SequenceList;->even:Z

    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/SequenceList;->odd:Z

    .line 177
    const/4 v0, 0x2

    .line 179
    .local v0, state:I
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/SequenceList;->getType()I

    move-result v1

    .line 180
    .local v1, type:I
    if-eq v1, v5, :cond_0

    if-ne v1, v2, :cond_3

    .line 181
    :cond_0
    if-ne v0, v2, :cond_1

    .line 182
    iget v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    iput v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    .line 183
    :cond_1
    if-ne v1, v5, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    .line 185
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_1
    packed-switch v1, :pswitch_data_1

    .line 215
    iget v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    iput v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    .line 216
    const/4 v0, 0x2

    .line 217
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/SequenceList;->otherProc()V

    goto :goto_0

    .line 187
    :pswitch_2
    packed-switch v1, :pswitch_data_2

    .line 195
    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 196
    iget v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->number:I

    iput v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :pswitch_3
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/SequenceList;->inverse:Z

    goto :goto_0

    .line 192
    :pswitch_4
    const/4 v0, 0x3

    .line 193
    goto :goto_0

    .line 200
    :cond_4
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/SequenceList;->otherProc()V

    goto :goto_0

    .line 207
    :pswitch_5
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/SequenceList;->inverse:Z

    .line 208
    const/4 v0, 0x2

    .line 209
    iget v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->low:I

    iput v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    goto :goto_0

    .line 212
    :pswitch_6
    const/4 v0, 0x3

    .line 213
    goto :goto_0

    .line 222
    :pswitch_7
    packed-switch v1, :pswitch_data_3

    .line 234
    :pswitch_8
    const/4 v0, 0x2

    .line 235
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/SequenceList;->otherProc()V

    goto :goto_0

    .line 224
    :pswitch_9
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/SequenceList;->inverse:Z

    .line 225
    const/4 v0, 0x2

    .line 226
    goto :goto_0

    .line 230
    :pswitch_a
    iget v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->number:I

    iput v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->high:I

    .line 231
    const/4 v0, 0x2

    .line 232
    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 205
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 187
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 222
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method protected getType()I
    .locals 9

    .prologue
    const/16 v8, 0x30

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 112
    .local v2, state:I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/SequenceList;->nextChar()C

    move-result v1

    .line 113
    .local v1, c:C
    const v7, 0xffff

    if-ne v1, v7, :cond_2

    .line 114
    if-ne v2, v6, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->other:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->number:I

    .line 155
    :goto_1
    return v3

    .line 118
    :cond_0
    if-ne v2, v5, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/SequenceList;->other:Ljava/lang/String;

    move v3, v4

    .line 120
    goto :goto_1

    .line 122
    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    .line 124
    :cond_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    sparse-switch v1, :sswitch_data_0

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    if-lt v1, v8, :cond_3

    const/16 v7, 0x39

    if-gt v1, v7, :cond_3

    .line 136
    const/4 v2, 0x1

    goto :goto_0

    .line 128
    :sswitch_0
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    move v3, v5

    .line 130
    goto :goto_1

    :sswitch_2
    move v3, v6

    .line 132
    goto :goto_1

    .line 138
    :cond_3
    const/4 v2, 0x2

    .line 139
    goto :goto_0

    .line 141
    :pswitch_1
    if-lt v1, v8, :cond_4

    const/16 v7, 0x39

    if-gt v1, v7, :cond_4

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/SequenceList;->putBack()V

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->other:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/pdf/SequenceList;->number:I

    goto :goto_1

    .line 150
    :pswitch_2
    const-string v7, "-,!0123456789"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_5

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 153
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/SequenceList;->putBack()V

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/SequenceList;->other:Ljava/lang/String;

    move v3, v4

    .line 155
    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2c -> :sswitch_2
        0x2d -> :sswitch_1
    .end sparse-switch
.end method

.method protected nextChar()C
    .locals 4

    .prologue
    .line 94
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/SequenceList;->ptr:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/SequenceList;->text:[C

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 95
    const v0, 0xffff

    .line 98
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/SequenceList;->text:[C

    iget v2, p0, Lcom/itextpdf/text/pdf/SequenceList;->ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/SequenceList;->ptr:I

    aget-char v0, v1, v2

    .line 97
    .local v0, c:C
    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    goto :goto_0
.end method

.method protected putBack()V
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->ptr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->ptr:I

    .line 104
    iget v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->ptr:I

    if-gez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/SequenceList;->ptr:I

    .line 106
    :cond_0
    return-void
.end method
