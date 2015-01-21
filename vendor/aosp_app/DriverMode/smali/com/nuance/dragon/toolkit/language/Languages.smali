.class public Lcom/nuance/dragon/toolkit/language/Languages;
.super Lcom/nuance/dragon/toolkit/language/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/language/a;-><init>()V

    return-void
.end method

.method public static lookupFromCloudLanguage(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/language/Language;
    .locals 5

    sget-object v2, Lcom/nuance/dragon/toolkit/language/Languages;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/language/Language;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/language/Language;->getCloudLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static lookupFromElvisLanguage(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;)Lcom/nuance/dragon/toolkit/language/Language;
    .locals 5

    sget-object v2, Lcom/nuance/dragon/toolkit/language/Languages;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/language/Language;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/language/Language;->getElvisLanguage()Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static lookupFromGrammarLanguage(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/language/Language;
    .locals 5

    sget-object v2, Lcom/nuance/dragon/toolkit/language/Languages;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/language/Language;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/language/Language;->getGrammarLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static lookupFromVocalizerLanguage(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)Lcom/nuance/dragon/toolkit/language/Language;
    .locals 5

    sget-object v2, Lcom/nuance/dragon/toolkit/language/Languages;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/language/Language;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/language/Language;->getVocalizerLanguage()Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static lookupFromVoconLanguage(Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;)Lcom/nuance/dragon/toolkit/language/Language;
    .locals 5

    sget-object v2, Lcom/nuance/dragon/toolkit/language/Languages;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/language/Language;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/language/Language;->getVoconLanguage()Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
