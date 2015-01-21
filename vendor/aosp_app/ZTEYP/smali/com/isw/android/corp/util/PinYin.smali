.class public Lcom/isw/android/corp/util/PinYin;
.super Ljava/lang/Object;
.source "PinYin.java"


# static fields
.field public static final BUFFER_SIZE:I = 0xd

.field private static final TAG:Ljava/lang/String; = "PinYin"

.field private static instance:Lcom/isw/android/corp/util/PinYin;


# instance fields
.field private han2pin:Lcom/isw/android/corp/util/HanziToPinyin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/isw/android/corp/util/PinYin;

    invoke-direct {v0}, Lcom/isw/android/corp/util/PinYin;-><init>()V

    sput-object v0, Lcom/isw/android/corp/util/PinYin;->instance:Lcom/isw/android/corp/util/PinYin;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/isw/android/corp/util/HanziToPinyin;->getInstance()Lcom/isw/android/corp/util/HanziToPinyin;

    move-result-object v0

    iput-object v0, p0, Lcom/isw/android/corp/util/PinYin;->han2pin:Lcom/isw/android/corp/util/HanziToPinyin;

    .line 15
    return-void
.end method

.method private appendPinYin(Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .locals 3
    .parameter "sb"
    .parameter "ch"

    .prologue
    .line 83
    invoke-static {p2}, Lcom/isw/android/corp/util/PinYin;->isChinese(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, tmp:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/isw/android/corp/util/PinYin;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #tmp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 90
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private appendPinYinAndShorPinYin(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;C)V
    .locals 4
    .parameter "sbPinYin"
    .parameter "sbShortPinYin"
    .parameter "ch"

    .prologue
    .line 96
    invoke-static {p3}, Lcom/isw/android/corp/util/PinYin;->isChinese(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, tmp:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/isw/android/corp/util/PinYin;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 108
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #tmp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static filterInvalidNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "originalText"

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 210
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 211
    .local v1, c:C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x39

    if-le v1, v3, :cond_2

    :cond_1
    const/16 v3, 0x2c

    if-eq v1, v3, :cond_2

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_2

    const/16 v3, 0x23

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_3

    .line 209
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/isw/android/corp/util/PinYin;
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    const-class v0, Lcom/isw/android/corp/util/PinYin;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/isw/android/corp/util/PinYin;->instance:Lcom/isw/android/corp/util/PinYin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "code"

    .prologue
    .line 34
    iget-object v4, p0, Lcom/isw/android/corp/util/PinYin;->han2pin:Lcom/isw/android/corp/util/HanziToPinyin;

    invoke-virtual {v4, p1}, Lcom/isw/android/corp/util/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 35
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/util/HanziToPinyin$Token;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    .local v1, number_full:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 37
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isw/android/corp/util/HanziToPinyin$Token;

    .line 38
    .local v2, token:Lcom/isw/android/corp/util/HanziToPinyin$Token;
    iget v4, v2, Lcom/isw/android/corp/util/HanziToPinyin$Token;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget v4, v2, Lcom/isw/android/corp/util/HanziToPinyin$Token;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 39
    :cond_1
    iget-object v4, v2, Lcom/isw/android/corp/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_2
    const-string v4, "PinYin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unknow type of character found!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/isw/android/corp/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static hasChinese(Ljava/lang/String;)Z
    .locals 6
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 70
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 74
    .local v1, sChar:[C
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-char v0, v1, v3

    .line 75
    .local v0, c:C
    invoke-static {v0}, Lcom/isw/android/corp/util/PinYin;->isChinese(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    const/4 v2, 0x1

    goto :goto_0

    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isChinese(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 56
    const/16 v0, 0x3007

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_0

    const v0, 0x9fa5

    if-le p0, v0, :cond_1

    .line 57
    :cond_0
    const v0, 0xf900

    if-lt p0, v0, :cond_2

    const v0, 0xfa2d

    if-gt p0, v0, :cond_2

    .line 58
    :cond_1
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 190
    .local v1, sChar:[C
    array-length v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    .line 198
    const/4 v2, 0x1

    :cond_0
    return v2

    .line 190
    :cond_1
    aget-char v0, v1, v3

    .line 191
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-le v0, v5, :cond_3

    :cond_2
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_3

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v0, v5, :cond_3

    const/16 v5, 0x23

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_0

    .line 190
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public free()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public getPinYinStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "nameStr"

    .prologue
    .line 118
    if-nez p1, :cond_1

    .line 119
    const/4 v2, 0x0

    .line 126
    :cond_0
    return-object v2

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 122
    .local v1, nameChar:[C
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 123
    .local v2, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    aget-char v4, v1, v0

    invoke-direct {p0, v3, v4}, Lcom/isw/android/corp/util/PinYin;->appendPinYin(Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPinyinAndShortPinyinString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "nameStr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 153
    const/4 v2, 0x0

    .line 168
    :cond_0
    :goto_0
    return-object v2

    .line 155
    :cond_1
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    .line 156
    .local v2, pinyin:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, sbPinyin:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 158
    .local v4, sbShortPinyin:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 159
    .local v1, nameChar:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v1

    if-lt v0, v5, :cond_2

    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    .line 164
    aget-object v5, v2, v8

    const-string v6, "yinxing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 165
    aget-object v5, v2, v8

    const-string v6, "yinxing"

    const-string v7, "yinhang"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    .line 166
    aget-object v5, v2, v9

    const-string v6, "yx"

    const-string v7, "yh"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    goto :goto_0

    .line 160
    :cond_2
    aget-char v5, v1, v0

    invoke-direct {p0, v3, v4, v5}, Lcom/isw/android/corp/util/PinYin;->appendPinYinAndShorPinYin(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;C)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getPinyinString(C)Ljava/lang/String;
    .locals 2
    .parameter "nameChar"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-direct {p0, v0, p1}, Lcom/isw/android/corp/util/PinYin;->appendPinYin(Ljava/lang/StringBuffer;C)Ljava/lang/String;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPinyinString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "nameStr"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const/4 v3, 0x0

    .line 147
    :goto_0
    return-object v3

    .line 141
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 143
    .local v1, nameChar:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 145
    :cond_1
    aget-char v3, v1, v0

    invoke-direct {p0, v2, v3}, Lcom/isw/android/corp/util/PinYin;->appendPinYin(Ljava/lang/StringBuffer;C)Ljava/lang/String;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
