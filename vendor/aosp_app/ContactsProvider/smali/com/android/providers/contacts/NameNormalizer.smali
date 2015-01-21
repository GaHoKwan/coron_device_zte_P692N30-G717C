.class public Lcom/android/providers/contacts/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NameNormalizer"

.field private static sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

.field private static sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

.field private static sCollatorLocale:Ljava/util/Locale;

.field private static final sCollatorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareComplexity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "name1"
    .parameter "name2"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, clean1:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, clean2:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->getComplexityCollator()Ljava/text/RuleBasedCollator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 94
    .local v2, diff:I
    if-eqz v2, :cond_0

    move v3, v2

    .line 104
    :goto_0
    return v3

    .line 100
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    neg-int v2, v3

    .line 101
    if-eqz v2, :cond_1

    move v3, v2

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0
.end method

.method private static ensureCollators()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 48
    .local v0, locale:Ljava/util/Locale;
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    .line 53
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    check-cast v1, Ljava/text/RuleBasedCollator;

    sput-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    .line 54
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 55
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v1, v3}, Ljava/text/Collator;->setDecomposition(I)V

    .line 57
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    check-cast v1, Ljava/text/RuleBasedCollator;

    sput-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    .line 58
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v1, v3}, Ljava/text/Collator;->setStrength(I)V

    goto :goto_0
.end method

.method static getComplexityCollator()Ljava/text/RuleBasedCollator;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 71
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->ensureCollators()V

    .line 73
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getCompressingCollator()Ljava/text/RuleBasedCollator;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 63
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->ensureCollators()V

    .line 65
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"

    .prologue
    .line 112
    if-nez p0, :cond_1

    .line 113
    const-string v5, "NameNormalizer"

    const-string v6, "[lettersAndDigitsOnly] name is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string p0, ""

    .line 130
    .end local p0
    .local v1, i:I
    .local v2, length:I
    .local v4, letters:[C
    :cond_0
    :goto_0
    return-object p0

    .line 117
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #letters:[C
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 118
    .restart local v4       #letters:[C
    const/4 v2, 0x0

    .line 119
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 120
    aget-char v0, v4, v1

    .line 121
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    add-int/lit8 v3, v2, 0x1

    .end local v2           #length:I
    .local v3, length:I
    aput-char v0, v4, v2

    move v2, v3

    .line 119
    .end local v3           #length:I
    .restart local v2       #length:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    .end local v0           #c:C
    :cond_3
    array-length v5, v4

    if-eq v2, v5, :cond_0

    .line 127
    new-instance p0, Ljava/lang/String;

    .end local p0
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 82
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->getCompressingCollator()Ljava/text/RuleBasedCollator;

    move-result-object v1

    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 83
    .local v0, key:Ljava/text/CollationKey;
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/providers/contacts/util/Hex;->encodeHex([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
