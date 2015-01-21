.class public final Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils;
.super Ljava/lang/Object;
.source "BinaryDictIOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    }
.end annotation


# static fields
.field private static final DBG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static deleteWord(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Ljava/lang/String;)V
    .locals 5
    .parameter "buffer"
    .parameter "word"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 242
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readHeader(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;

    move-result-object v1

    .line 243
    .local v1, header:Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils;->getTerminalPosition(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Ljava/lang/String;)I

    move-result v3

    .line 244
    .local v3, wordPosition:I
    const/16 v4, -0x63

    if-ne v3, v4, :cond_0

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-interface {p0, v3}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 247
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v0

    .line 248
    .local v0, flags:I
    xor-int/lit8 v2, v0, 0x10

    .line 249
    .local v2, newFlags:I
    invoke-interface {p0, v3}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 250
    int-to-byte v4, v2

    invoke-interface {p0, v4}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->put(B)V

    goto :goto_0
.end method

.method public static getTerminalPosition(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Ljava/lang/String;)I
    .locals 19
    .parameter "buffer"
    .parameter "word"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_1

    const/16 v4, -0x63

    .line 228
    :cond_0
    :goto_0
    return v4

    .line 159
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 161
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readHeader(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;

    move-result-object v10

    .line 162
    .local v10, header:Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;
    const/16 v16, 0x0

    .line 163
    .local v16, wordPos:I
    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v15

    .line 164
    .local v15, wordLen:I
    const/4 v6, 0x0

    .local v6, depth:I
    :goto_1
    const/16 v17, 0x30

    move/from16 v0, v17

    if-ge v6, v0, :cond_f

    .line 165
    move/from16 v0, v16

    if-lt v0, v15, :cond_4

    const/16 v4, -0x63

    goto :goto_0

    .line 225
    .local v3, charGroupCount:I
    .local v7, forwardLinkAddress:I
    .local v8, foundNextCharGroup:Z
    .local v9, groupOffset:I
    .local v11, i:I
    :cond_3
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 168
    .end local v3           #charGroupCount:I
    .end local v7           #forwardLinkAddress:I
    .end local v8           #foundNextCharGroup:Z
    .end local v9           #groupOffset:I
    .end local v11           #i:I
    :cond_4
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v17

    iget v0, v10, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mHeaderSize:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 169
    .restart local v9       #groupOffset:I
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readCharGroupCount(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v3

    .line 170
    .restart local v3       #charGroupCount:I
    invoke-static {v3}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCountSize(I)I

    move-result v17

    add-int v9, v9, v17

    .line 172
    const/4 v8, 0x0

    .line 173
    .restart local v8       #foundNextCharGroup:Z
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    if-ge v11, v3, :cond_b

    .line 174
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v4

    .line 175
    .local v4, charGroupPos:I
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v17

    iget-object v0, v10, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mFormatOptions:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readCharGroup(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Lcom/android/inputmethod/latin/makedict/CharGroupInfo;

    move-result-object v5

    .line 177
    .local v5, currentInfo:Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
    iget v0, v5, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFlags:I

    move/from16 v17, v0

    iget-object v0, v10, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mFormatOptions:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->isMovedGroup(ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 173
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 181
    :cond_5
    const/4 v14, 0x1

    .line 182
    .local v14, same:Z
    const/4 v13, 0x0

    .local v13, p:I
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v12

    .line 183
    .local v12, j:I
    :goto_4
    iget-object v0, v5, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mCharacters:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_7

    .line 185
    add-int v17, v16, v13

    move/from16 v0, v17

    if-ge v0, v15, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v17

    iget-object v0, v5, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mCharacters:[I

    move-object/from16 v18, v0

    aget v18, v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 187
    :cond_6
    const/4 v14, 0x0

    .line 192
    :cond_7
    if-eqz v14, :cond_c

    .line 194
    iget-object v0, v5, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mCharacters:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int v17, v17, v16

    move/from16 v0, v17

    if-ne v0, v15, :cond_9

    .line 195
    iget v0, v5, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFrequency:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 196
    const/16 v4, -0x63

    goto/16 :goto_0

    .line 184
    :cond_8
    add-int/lit8 v13, v13, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v12

    goto :goto_4

    .line 201
    :cond_9
    iget-object v0, v5, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mCharacters:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 202
    iget v0, v5, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mChildrenAddress:I

    move/from16 v17, v0

    const/high16 v18, -0x8000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 203
    const/16 v4, -0x63

    goto/16 :goto_0

    .line 205
    :cond_a
    const/4 v8, 0x1

    .line 206
    iget v0, v5, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mChildrenAddress:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 216
    .end local v4           #charGroupPos:I
    .end local v5           #currentInfo:Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
    .end local v12           #j:I
    .end local v13           #p:I
    .end local v14           #same:Z
    :cond_b
    if-eqz v8, :cond_d

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 209
    .restart local v4       #charGroupPos:I
    .restart local v5       #currentInfo:Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
    .restart local v12       #j:I
    .restart local v13       #p:I
    .restart local v14       #same:Z
    :cond_c
    iget v9, v5, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mEndAddress:I

    goto/16 :goto_3

    .line 217
    .end local v4           #charGroupPos:I
    .end local v5           #currentInfo:Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
    .end local v12           #j:I
    .end local v13           #p:I
    .end local v14           #same:Z
    :cond_d
    iget-object v0, v10, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mFormatOptions:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    .line 218
    const/16 v4, -0x63

    goto/16 :goto_0

    .line 221
    :cond_e
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedInt24()I

    move-result v7

    .line 222
    .restart local v7       #forwardLinkAddress:I
    if-nez v7, :cond_3

    .line 223
    const/16 v4, -0x63

    goto/16 :goto_0

    .line 228
    .end local v3           #charGroupCount:I
    .end local v7           #forwardLinkAddress:I
    .end local v8           #foundNextCharGroup:Z
    .end local v9           #groupOffset:I
    .end local v11           #i:I
    :cond_f
    const/16 v4, -0x63

    goto/16 :goto_0
.end method

.method private static putSInt24(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;I)V
    .locals 3
    .parameter "buffer"
    .parameter "value"

    .prologue
    .line 255
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 256
    .local v0, absValue:I
    if-gez p1, :cond_0

    const/16 v1, 0x80

    :goto_0
    shr-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->put(B)V

    .line 257
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->put(B)V

    .line 258
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->put(B)V

    .line 259
    return-void

    .line 256
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readUnigramsAndBigramsBinary(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .parameter "buffer"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/PendingAttribute;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 141
    .local p1, words:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, frequencies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, bigrams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;>;"
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readHeader(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;

    move-result-object v6

    .line 142
    .local v6, header:Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;
    iget v1, v6, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mHeaderSize:I

    iget-object v5, v6, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mFormatOptions:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils;->readUnigramsAndBigramsBinaryInner(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V

    .line 144
    return-void
.end method

.method private static readUnigramsAndBigramsBinaryInner(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V
    .locals 15
    .parameter "buffer"
    .parameter "headerSize"
    .parameter
    .parameter
    .parameter
    .parameter "formatOptions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/PendingAttribute;",
            ">;>;",
            "Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, words:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, frequencies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p4, bigrams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;>;"
    const/16 v12, 0x31

    new-array v10, v12, [I

    .line 58
    .local v10, pushedChars:[I
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 59
    .local v11, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;>;"
    const/4 v4, 0x0

    .line 61
    .local v4, index:I
    new-instance v7, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;

    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-direct {v7, v0, v12}, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;-><init>(II)V

    .line 62
    .local v7, initPos:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    invoke-virtual {v11, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 65
    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;

    .line 72
    .local v9, p:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v12

    iget v13, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    if-eq v12, v13, :cond_1

    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    invoke-interface {p0, v12}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 73
    :cond_1
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mLength:I

    if-eq v4, v12, :cond_2

    iget v4, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mLength:I

    .line 75
    :cond_2
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 76
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readCharGroupCount(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v12

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    .line 77
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    iget v13, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    invoke-static {v13}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCountSize(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    .line 78
    const/4 v12, 0x0

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mPosition:I

    .line 80
    :cond_3
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    if-nez v12, :cond_4

    .line 81
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_4
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    sub-int v12, v12, p1

    move-object/from16 v0, p5

    invoke-static {p0, v12, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readCharGroup(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Lcom/android/inputmethod/latin/makedict/CharGroupInfo;

    move-result-object v6

    .line 86
    .local v6, info:Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mCharacters:[I

    array-length v12, v12

    if-ge v3, v12, :cond_5

    .line 87
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    iget-object v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mCharacters:[I

    aget v12, v12, v3

    aput v12, v10, v4

    .line 86
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_1

    .line 89
    :cond_5
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mPosition:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mPosition:I

    .line 91
    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFlags:I

    move-object/from16 v0, p5

    invoke-static {v12, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->isMovedGroup(ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z

    move-result v8

    .line 93
    .local v8, isMovedGroup:Z
    if-nez v8, :cond_6

    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFrequency:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    .line 95
    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mOriginalAddress:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v10, v14, v4}, Ljava/lang/String;-><init>([III)V

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mOriginalAddress:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFrequency:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mBigrams:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mOriginalAddress:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mBigrams:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_6
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mPosition:I

    iget v13, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    if-ne v12, v13, :cond_9

    .line 101
    move-object/from16 v0, p5

    iget-boolean v12, v0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v12, :cond_8

    .line 102
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedInt24()I

    move-result v2

    .line 103
    .local v2, forwardLinkAddress:I
    if-eqz v2, :cond_7

    .line 105
    const/4 v12, -0x1

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    .line 106
    iput v2, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    .line 118
    .end local v2           #forwardLinkAddress:I
    :goto_2
    if-nez v8, :cond_0

    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mChildrenAddress:I

    invoke-static {v12}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->hasChildrenAddress(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 119
    new-instance v1, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;

    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mChildrenAddress:I

    add-int v12, v12, p1

    invoke-direct {v1, v12, v4}, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;-><init>(II)V

    .line 120
    .local v1, childrenPos:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    invoke-virtual {v11, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 108
    .end local v1           #childrenPos:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    .restart local v2       #forwardLinkAddress:I
    :cond_7
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 111
    .end local v2           #forwardLinkAddress:I
    :cond_8
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 115
    :cond_9
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v12

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    goto :goto_2

    .line 123
    .end local v3           #i:I
    .end local v6           #info:Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
    .end local v8           #isMovedGroup:Z
    .end local v9           #p:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    :cond_a
    return-void
.end method

.method public static updateParentAddress(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;IILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V
    .locals 5
    .parameter "buffer"
    .parameter "groupOriginAddress"
    .parameter "newParentAddress"
    .parameter "formatOptions"

    .prologue
    .line 272
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v1

    .line 273
    .local v1, originalPosition:I
    invoke-interface {p0, p1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 274
    iget-boolean v3, p3, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-nez v3, :cond_0

    .line 275
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "this file format does not support parent addresses"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    :cond_0
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v0

    .line 278
    .local v0, flags:I
    sub-int v2, p2, p1

    .line 279
    .local v2, parentOffset:I
    invoke-static {p0, v2}, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils;->putSInt24(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;I)V

    .line 280
    invoke-interface {p0, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 281
    return-void
.end method
