.class final Lav;
.super Lal;
.source "SourceFile"


# direct methods
.method public static a(Ln;)Lau;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    const-string v2, "URL:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    invoke-static {v0}, Lav;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 41
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lau;

    invoke-direct {v2, v0, v1}, Lau;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "https://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    .line 88
    :cond_2
    :goto_0
    return v0

    .line 53
    :cond_3
    if-eqz p0, :cond_2

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    .line 58
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_2

    .line 62
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 63
    if-gez v2, :cond_4

    if-ltz v3, :cond_2

    .line 66
    :cond_4
    if-ltz v3, :cond_9

    .line 67
    if-ltz v2, :cond_5

    if-le v2, v3, :cond_8

    :cond_5
    move v2, v0

    .line 69
    :goto_1
    if-ge v2, v3, :cond_9

    .line 70
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 71
    const/16 v5, 0x61

    if-lt v4, v5, :cond_6

    const/16 v5, 0x7a

    if-le v4, v5, :cond_7

    :cond_6
    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    .line 69
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v3, v2, :cond_2

    .line 80
    add-int/lit8 v2, v3, 0x1

    :goto_2
    add-int/lit8 v4, v3, 0x3

    if-ge v2, v4, :cond_9

    .line 81
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 82
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    move v0, v1

    .line 88
    goto :goto_0
.end method
