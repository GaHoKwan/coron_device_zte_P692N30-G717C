.class public Lcom/mediatek/bluetooth/map/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/mediatek/bluetooth/map/Address; = null

.field private static final LIST_DELIMITER_EMAIL:C = '\u0001'

.field private static final LIST_DELIMITER_PERSONAL:C = '\u0002'

.field private static final REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

.field private static final UNQUOTE:Ljava/util/regex/Pattern;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mPersonal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/map/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "^\"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/map/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    .line 66
    const-string v0, "\\\\([\\\\\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/map/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    .line 68
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mediatek/bluetooth/map/Address;

    sput-object v0, Lcom/mediatek/bluetooth/map/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/mediatek/bluetooth/map/Address;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/map/Address;->setAddress(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "address"
    .parameter "personal"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/map/Address;->setAddress(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/map/Address;->setPersonal(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static getFormatAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Address;>;"
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 94
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 95
    aget-object v3, v4, v1

    .line 96
    .local v3, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, subaddress:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    new-instance v5, Lcom/mediatek/bluetooth/map/Address;

    invoke-direct {v5, v2}, Lcom/mediatek/bluetooth/map/Address;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v2           #subaddress:Ljava/lang/String;
    .end local v3           #token:Landroid/text/util/Rfc822Token;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/mediatek/bluetooth/map/Address;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/mediatek/bluetooth/map/Address;

    invoke-static {v5}, Lcom/mediatek/bluetooth/map/Address;->toString([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static isValidAddress(Ljava/lang/String;)Z
    .locals 7
    .parameter "address"

    .prologue
    const/16 v5, 0x40

    const/16 v6, 0x2e

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 106
    .local v4, len:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 107
    .local v0, firstAt:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 108
    .local v2, lastAt:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 109
    .local v1, firstDot:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 110
    .local v3, lastDot:I
    if-lez v0, :cond_0

    if-ne v0, v2, :cond_0

    if-gt v1, v3, :cond_0

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static pack([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;
    .locals 8
    .parameter "addresses"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 250
    if-nez p0, :cond_0

    .line 251
    const/4 v5, 0x0

    .line 276
    :goto_0
    return-object v5

    .line 253
    :cond_0
    array-length v3, p0

    .line 254
    .local v3, nAddr:I
    if-nez v3, :cond_1

    .line 255
    const-string v5, ""

    goto :goto_0

    .line 259
    :cond_1
    if-ne v3, v7, :cond_2

    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/map/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 260
    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/map/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 263
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 265
    if-eqz v2, :cond_3

    .line 266
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    :cond_3
    aget-object v0, p0, v2

    .line 269
    .local v0, address:Lcom/mediatek/bluetooth/map/Address;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 272
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    .end local v0           #address:Lcom/mediatek/bluetooth/map/Address;
    .end local v1           #displayName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static packedToHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packedList"

    .prologue
    .line 306
    invoke-static {p0}, Lcom/mediatek/bluetooth/map/Address;->unpack(Ljava/lang/String;)[Lcom/mediatek/bluetooth/map/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/map/Address;->toHeader([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHeader([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 310
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 311
    :cond_0
    const/4 v2, 0x0

    .line 322
    :goto_0
    return-object v2

    .line 313
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 314
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 316
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 319
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 147
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 148
    :cond_0
    const/4 v2, 0x0

    .line 158
    :goto_0
    return-object v2

    .line 150
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 151
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Address;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 153
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 155
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/mediatek/bluetooth/map/Address;
    .locals 10
    .parameter "addressList"

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 200
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 201
    :cond_0
    sget-object v6, Lcom/mediatek/bluetooth/map/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/mediatek/bluetooth/map/Address;

    .line 234
    :goto_0
    return-object v6

    .line 203
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v2, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 205
    .local v3, length:I
    const/4 v5, 0x0

    .line 206
    .local v5, pairStartIndex:I
    const/4 v4, 0x0

    .line 213
    .local v4, pairEndIndex:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 215
    .local v1, addressEndIndex:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 216
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 217
    if-ne v4, v8, :cond_2

    .line 218
    move v4, v3

    .line 221
    :cond_2
    if-eq v1, v8, :cond_3

    if-gt v4, v1, :cond_4

    .line 224
    :cond_3
    new-instance v0, Lcom/mediatek/bluetooth/map/Address;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/mediatek/bluetooth/map/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v0, address:Lcom/mediatek/bluetooth/map/Address;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v5, v4, 0x1

    .line 233
    goto :goto_1

    .line 226
    .end local v0           #address:Lcom/mediatek/bluetooth/map/Address;
    :cond_4
    new-instance v0, Lcom/mediatek/bluetooth/map/Address;

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/mediatek/bluetooth/map/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .restart local v0       #address:Lcom/mediatek/bluetooth/map/Address;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_2

    .line 234
    .end local v0           #address:Lcom/mediatek/bluetooth/map/Address;
    :cond_5
    sget-object v6, Lcom/mediatek/bluetooth/map/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/mediatek/bluetooth/map/Address;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/mediatek/bluetooth/map/Address;

    goto :goto_0
.end method

.method public static unpackFirst(Ljava/lang/String;)Lcom/mediatek/bluetooth/map/Address;
    .locals 2
    .parameter "packedList"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/mediatek/bluetooth/map/Address;->unpack(Ljava/lang/String;)[Lcom/mediatek/bluetooth/map/Address;

    move-result-object v0

    .line 184
    .local v0, array:[Lcom/mediatek/bluetooth/map/Address;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static unpackToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packedList"

    .prologue
    .line 173
    invoke-static {p0}, Lcom/mediatek/bluetooth/map/Address;->unpack(Ljava/lang/String;)[Lcom/mediatek/bluetooth/map/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/map/Address;->toString([Lcom/mediatek/bluetooth/map/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 119
    instance-of v0, p1, Lcom/mediatek/bluetooth/map/Address;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/mediatek/bluetooth/map/Address;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public pack()Ljava/lang/String;
    .locals 4

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, personal:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 288
    .end local v0           #address:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #address:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 88
    sget-object v0, Lcom/mediatek/bluetooth/map/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Address;->mAddress:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 2
    .parameter "personal"

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 296
    sget-object v0, Lcom/mediatek/bluetooth/map/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 297
    sget-object v0, Lcom/mediatek/bluetooth/map/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const/4 p1, 0x0

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Address;->mPersonal:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public toHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method
