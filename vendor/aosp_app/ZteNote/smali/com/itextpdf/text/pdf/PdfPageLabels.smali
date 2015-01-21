.class public Lcom/itextpdf/text/pdf/PdfPageLabels;
.super Ljava/lang/Object;
.source "PdfPageLabels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;
    }
.end annotation


# static fields
.field public static final DECIMAL_ARABIC_NUMERALS:I = 0x0

.field public static final EMPTY:I = 0x5

.field public static final LOWERCASE_LETTERS:I = 0x4

.field public static final LOWERCASE_ROMAN_NUMERALS:I = 0x2

.field public static final UPPERCASE_LETTERS:I = 0x3

.field public static final UPPERCASE_ROMAN_NUMERALS:I = 0x1

.field static numberingStyle:[Lcom/itextpdf/text/pdf/PdfName;


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    const/4 v1, 0x0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "r"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "a"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPageLabels;->numberingStyle:[Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPageLabels;->map:Ljava/util/HashMap;

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfPageLabels;->addPageLabel(IILjava/lang/String;I)V

    .line 95
    return-void
.end method

.method public static getPageLabelFormats(Lcom/itextpdf/text/pdf/PdfReader;)[Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;
    .locals 14
    .parameter "reader"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 237
    .local v1, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->PAGELABELS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 238
    .local v5, labels:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v5, :cond_1

    .line 239
    const/4 v2, 0x0

    .line 275
    :cond_0
    return-object v2

    .line 240
    :cond_1
    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfNumberTree;->readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;

    move-result-object v7

    .line 241
    .local v7, numberTree:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/Integer;

    .line 242
    .local v8, numbers:[Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8           #numbers:[Ljava/lang/Integer;
    check-cast v8, [Ljava/lang/Integer;

    .line 243
    .restart local v8       #numbers:[Ljava/lang/Integer;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v2, v12, [Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;

    .line 248
    .local v2, formats:[Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v12, v8

    if-ge v3, v12, :cond_0

    .line 249
    aget-object v4, v8, v3

    .line 250
    .local v4, key:Ljava/lang/Integer;
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 251
    .local v0, d:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 252
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v9

    .line 256
    .local v9, pagecount:I
    :goto_1
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 257
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v10

    .line 261
    .local v10, prefix:Ljava/lang/String;
    :goto_2
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 262
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 263
    .local v11, type:C
    sparse-switch v11, :sswitch_data_0

    .line 268
    const/4 v6, 0x0

    .line 273
    .end local v11           #type:C
    .local v6, numberStyle:I
    :goto_3
    new-instance v12, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-direct {v12, v13, v6, v10, v9}, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;-><init>(IILjava/lang/String;I)V

    aput-object v12, v2, v3

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v6           #numberStyle:I
    .end local v9           #pagecount:I
    .end local v10           #prefix:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    .restart local v9       #pagecount:I
    goto :goto_1

    .line 259
    :cond_3
    const-string v10, ""

    .restart local v10       #prefix:Ljava/lang/String;
    goto :goto_2

    .line 264
    .restart local v11       #type:C
    :sswitch_0
    const/4 v6, 0x1

    .restart local v6       #numberStyle:I
    goto :goto_3

    .line 265
    .end local v6           #numberStyle:I
    :sswitch_1
    const/4 v6, 0x2

    .restart local v6       #numberStyle:I
    goto :goto_3

    .line 266
    .end local v6           #numberStyle:I
    :sswitch_2
    const/4 v6, 0x3

    .restart local v6       #numberStyle:I
    goto :goto_3

    .line 267
    .end local v6           #numberStyle:I
    :sswitch_3
    const/4 v6, 0x4

    .restart local v6       #numberStyle:I
    goto :goto_3

    .line 271
    .end local v6           #numberStyle:I
    .end local v11           #type:C
    :cond_4
    const/4 v6, 0x5

    .restart local v6       #numberStyle:I
    goto :goto_3

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_2
        0x52 -> :sswitch_0
        0x61 -> :sswitch_3
        0x72 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getPageLabels(Lcom/itextpdf/text/pdf/PdfReader;)[Ljava/lang/String;
    .locals 13
    .parameter "reader"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v6

    .line 171
    .local v6, n:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 172
    .local v2, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->PAGELABELS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 173
    .local v4, labels:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v4, :cond_1

    .line 174
    const/4 v5, 0x0

    .line 226
    :cond_0
    return-object v5

    .line 176
    :cond_1
    new-array v5, v6, [Ljava/lang/String;

    .line 178
    .local v5, labelstrings:[Ljava/lang/String;
    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfNumberTree;->readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;

    move-result-object v7

    .line 180
    .local v7, numberTree:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v8, 0x1

    .line 182
    .local v8, pagecount:I
    const-string v9, ""

    .line 183
    .local v9, prefix:Ljava/lang/String;
    const/16 v10, 0x44

    .line 184
    .local v10, type:C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 186
    .local v0, current:Ljava/lang/Integer;
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 187
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 188
    .local v1, d:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->ST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 189
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->ST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 194
    :goto_1
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 195
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v9

    .line 197
    :cond_2
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 198
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 204
    .end local v1           #d:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_3
    :goto_2
    sparse-switch v10, :sswitch_data_0

    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v3

    .line 224
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .restart local v1       #d:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 201
    :cond_5
    const/16 v10, 0x65

    goto :goto_2

    .line 209
    .end local v1           #d:Lcom/itextpdf/text/pdf/PdfDictionary;
    :sswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/itextpdf/text/factories/RomanNumberFactory;->getUpperCaseString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v3

    goto :goto_3

    .line 212
    :sswitch_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/itextpdf/text/factories/RomanNumberFactory;->getLowerCaseString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v3

    goto :goto_3

    .line 215
    :sswitch_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/itextpdf/text/factories/RomanAlphabetFactory;->getUpperCaseString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v3

    goto :goto_3

    .line 218
    :sswitch_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/itextpdf/text/factories/RomanAlphabetFactory;->getLowerCaseString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v3

    goto :goto_3

    .line 221
    :sswitch_4
    aput-object v9, v5, v3

    goto :goto_3

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_2
        0x52 -> :sswitch_0
        0x61 -> :sswitch_3
        0x65 -> :sswitch_4
        0x72 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public addPageLabel(II)V
    .locals 2
    .parameter "page"
    .parameter "numberStyle"

    .prologue
    .line 132
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/pdf/PdfPageLabels;->addPageLabel(IILjava/lang/String;I)V

    .line 133
    return-void
.end method

.method public addPageLabel(IILjava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "numberStyle"
    .parameter "text"

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfPageLabels;->addPageLabel(IILjava/lang/String;I)V

    .line 124
    return-void
.end method

.method public addPageLabel(IILjava/lang/String;I)V
    .locals 5
    .parameter "page"
    .parameter "numberStyle"
    .parameter "text"
    .parameter "firstPage"

    .prologue
    const/4 v4, 0x1

    .line 104
    if-lt p1, v4, :cond_0

    if-ge p4, v4, :cond_1

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "in.a.page.label.the.page.numbers.must.be.greater.or.equal.to.1"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 107
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-ltz p2, :cond_2

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPageLabels;->numberingStyle:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v1, v1

    if-ge p2, v1, :cond_2

    .line 108
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfPageLabels;->numberingStyle:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 109
    :cond_2
    if-eqz p3, :cond_3

    .line 110
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p3, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 111
    :cond_3
    if-eq p4, v4, :cond_4

    .line 112
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ST:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 113
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPageLabels;->map:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public addPageLabel(Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;)V
    .locals 4
    .parameter "format"

    .prologue
    .line 138
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;->physicalPage:I

    iget v1, p1, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;->numberStyle:I

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;->prefix:Ljava/lang/String;

    iget v3, p1, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;->logicalPage:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfPageLabels;->addPageLabel(IILjava/lang/String;I)V

    .line 139
    return-void
.end method

.method getDictionary(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2
    .parameter "writer"

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPageLabels;->map:Ljava/util/HashMap;

    invoke-static {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumberTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public removePageLabel(I)V
    .locals 2
    .parameter "page"

    .prologue
    .line 145
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPageLabels;->map:Ljava/util/HashMap;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
