.class public Lcom/android/contacts/format/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/format/FormatUtils$OffsetValues;
    }
.end annotation


# static fields
.field private static final LEFT_TO_RIGHT_EMBEDDING:C = '\u202a'

.field private static final POP_DIRECTIONAL_FORMATTING:C = '\u202c'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    return-void
.end method

.method public static applyStyleToSpan(ILjava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 2
    .parameter "style"
    .parameter "input"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 110
    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 112
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 113
    .local v0, text:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, p0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 114
    return-object v0
.end method

.method public static charArrayBufferToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "buffer"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v2, 0x0

    iget v3, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyToCharArrayBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 4
    .parameter "text"
    .parameter "buffer"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 119
    if-eqz p0, :cond_2

    .line 120
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 121
    .local v0, data:[C
    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 126
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 130
    .end local v0           #data:[C
    :goto_1
    return-void

    .line 124
    .restart local v0       #data:[C
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v3, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 128
    .end local v0           #data:[C
    :cond_2
    iput v3, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1
.end method

.method public static forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v0, sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x202a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 352
    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static indexOfWordForInternationalCall(Ljava/lang/CharSequence;[C)I
    .locals 7
    .parameter "text"
    .parameter "prefix"

    .prologue
    const/4 v4, -0x1

    .line 261
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 298
    :cond_1
    :goto_0
    return v0

    .line 265
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 266
    .local v3, textLength:I
    array-length v2, p1

    .line 268
    .local v2, prefixLength:I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 269
    goto :goto_0

    .line 272
    :cond_4
    const/4 v0, 0x0

    .line 273
    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_9

    .line 276
    :goto_2
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_5

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 280
    :cond_5
    add-int v5, v0, v2

    if-le v5, v3, :cond_6

    move v0, v4

    .line 281
    goto :goto_0

    .line 286
    :cond_6
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 287
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_8

    .line 291
    :cond_7
    if-eq v1, v2, :cond_1

    .line 295
    add-int/lit8 v0, v0, 0x1

    .line 296
    goto :goto_1

    .line 286
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1           #j:I
    :cond_9
    move v0, v4

    .line 298
    goto :goto_0
.end method

.method public static indexOfWordForLetterOrDigit(Ljava/lang/CharSequence;[C)I
    .locals 7
    .parameter "text"
    .parameter "prefix"

    .prologue
    const/4 v4, -0x1

    .line 223
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 257
    :cond_1
    :goto_0
    return v0

    .line 227
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 228
    .local v3, textLength:I
    array-length v2, p1

    .line 230
    .local v2, prefixLength:I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 231
    goto :goto_0

    .line 234
    :cond_4
    const/4 v0, 0x0

    .line 235
    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_9

    .line 236
    :goto_2
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 240
    :cond_5
    add-int v5, v0, v2

    if-le v5, v3, :cond_6

    move v0, v4

    .line 241
    goto :goto_0

    .line 245
    :cond_6
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 246
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_8

    .line 250
    :cond_7
    if-eq v1, v2, :cond_1

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 255
    goto :goto_1

    .line 245
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1           #j:I
    :cond_9
    move v0, v4

    .line 257
    goto :goto_0
.end method

.method public static indexOfWordForLetterOrDigit(Ljava/lang/CharSequence;[CLjava/util/ArrayList;)I
    .locals 7
    .parameter "text"
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[C",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, ignore:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 302
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 344
    :cond_1
    :goto_0
    return v0

    .line 306
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 307
    .local v3, textLength:I
    array-length v2, p1

    .line 309
    .local v2, prefixLength:I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 310
    goto :goto_0

    .line 313
    :cond_4
    const/4 v0, 0x0

    .line 314
    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_b

    .line 315
    :goto_2
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 319
    :cond_5
    add-int v5, v0, v2

    if-le v5, v3, :cond_6

    move v0, v4

    .line 320
    goto :goto_0

    .line 324
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 325
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    if-ge v1, v2, :cond_9

    .line 326
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    if-ge v5, v3, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 328
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 330
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    if-lt v5, v3, :cond_8

    move v0, v4

    .line 331
    goto :goto_0

    .line 333
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_a

    .line 337
    :cond_9
    if-eq v1, v2, :cond_1

    .line 341
    add-int/lit8 v0, v0, 0x1

    .line 342
    goto :goto_1

    .line 325
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1           #j:I
    :cond_b
    move v0, v4

    .line 344
    goto :goto_0
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;[CLcom/android/contacts/format/FormatUtils$OffsetValues;)I
    .locals 11
    .parameter "text"
    .parameter "prefix"
    .parameter "offsetValue"

    .prologue
    const/4 v8, -0x1

    .line 147
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, v8

    .line 219
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 152
    .local v7, textLength:I
    array-length v5, p1

    .line 154
    .local v5, prefixLength:I
    if-eqz v5, :cond_2

    if-ge v7, v5, :cond_3

    :cond_2
    move v0, v8

    .line 155
    goto :goto_0

    .line 158
    :cond_3
    const/4 v0, 0x0

    .line 159
    .local v0, i:I
    const/16 v6, 0x20

    .line 160
    .local v6, textChar:C
    const/16 v3, 0x20

    .line 161
    .local v3, preChar:C
    :cond_4
    :goto_1
    if-ge v0, v7, :cond_f

    .line 162
    const/4 v9, 0x0

    iput v9, p2, Lcom/android/contacts/format/FormatUtils$OffsetValues;->mOffset:I

    .line 163
    const/4 v4, 0x0

    .line 165
    .local v4, preSpace:I
    :goto_2
    if-ge v0, v7, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-nez v9, :cond_5

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_5
    add-int v9, v0, v5

    if-le v9, v7, :cond_6

    move v0, v8

    .line 170
    goto :goto_0

    .line 174
    :cond_6
    move v2, v0

    .line 175
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    if-ge v1, v5, :cond_9

    .line 176
    :goto_4
    if-ge v2, v7, :cond_7

    .line 177
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 178
    add-int/lit8 v2, v2, 0x1

    .line 179
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 185
    :cond_7
    :goto_5
    if-ge v1, v5, :cond_8

    .line 186
    aget-char v9, p1, v1

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 187
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 194
    :cond_8
    if-eq v6, v3, :cond_c

    .line 198
    :cond_9
    if-ne v1, v5, :cond_d

    .line 199
    iget v8, p2, Lcom/android/contacts/format/FormatUtils$OffsetValues;->mOffset:I

    sub-int/2addr v8, v4

    iput v8, p2, Lcom/android/contacts/format/FormatUtils$OffsetValues;->mOffset:I

    goto :goto_0

    .line 182
    :cond_a
    iget v9, p2, Lcom/android/contacts/format/FormatUtils$OffsetValues;->mOffset:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p2, Lcom/android/contacts/format/FormatUtils$OffsetValues;->mOffset:I

    goto :goto_4

    .line 190
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 175
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 207
    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_e
    :goto_6
    if-ge v0, v7, :cond_4

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v1           #j:I
    .end local v2           #n:I
    .end local v4           #preSpace:I
    :cond_f
    move v0, v8

    .line 219
    goto/16 :goto_0
.end method

.method public static overlapPoint(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)I
    .locals 4
    .parameter "buffer1"
    .parameter "buffer2"

    .prologue
    const/4 v3, 0x0

    .line 42
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 43
    :cond_0
    const/4 v0, -0x1

    .line 45
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget v1, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget v2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/format/FormatUtils;->overlapPoint([C[C)I

    move-result v0

    goto :goto_0
.end method

.method public static overlapPoint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "string1"
    .parameter "string2"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 55
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    const/4 v0, -0x1

    .line 58
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/format/FormatUtils;->overlapPoint([C[C)I

    move-result v0

    goto :goto_0
.end method

.method public static overlapPoint([C[C)I
    .locals 8
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v5, -0x1

    .line 66
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v5

    .line 94
    :cond_1
    :goto_0
    return v2

    .line 69
    :cond_2
    array-length v0, p0

    .line 70
    .local v0, count1:I
    array-length v1, p1

    .line 73
    .local v1, count2:I
    :goto_1
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    add-int/lit8 v6, v0, -0x1

    aget-char v6, p0, v6

    add-int/lit8 v7, v1, -0x1

    aget-char v7, p1, v7

    if-ne v6, v7, :cond_3

    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 78
    :cond_3
    move v4, v1

    .line 79
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_7

    .line 80
    add-int v6, v2, v4

    if-le v6, v0, :cond_4

    .line 81
    sub-int v4, v0, v2

    .line 84
    :cond_4
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 85
    add-int v6, v2, v3

    aget-char v6, p0, v6

    aget-char v7, p1, v3

    if-eq v6, v7, :cond_6

    .line 89
    :cond_5
    if-eq v3, v4, :cond_1

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 84
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3           #j:I
    :cond_7
    move v2, v5

    .line 94
    goto :goto_0
.end method
