.class public Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
.super Ljava/lang/Object;
.source "ContactMap.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private numberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regexNumberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "ContactMap"

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->numberMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    .line 34
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->numberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 29
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    const/16 v10, 0x2a

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    .line 38
    :cond_0
    const/4 v6, 0x0

    .line 77
    :cond_1
    :goto_0
    return-object v6

    .line 41
    :cond_2
    const/4 v6, 0x0

    .line 43
    .local v6, value:Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_3

    .line 44
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->numberMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #value:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 47
    .restart local v6       #value:Ljava/lang/String;
    :cond_3
    if-nez v6, :cond_1

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_1

    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 49
    :try_start_0
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->startWithPrex(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 50
    move-object v7, p1

    .line 51
    .local v7, with_prex_number:Ljava/lang/String;
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, un_prex_number:Ljava/lang/String;
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 55
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 56
    :cond_5
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #value:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 57
    .restart local v6       #value:Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #pattern:Ljava/util/regex/Pattern;
    .end local v5           #un_prex_number:Ljava/lang/String;
    .end local v7           #with_prex_number:Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .restart local v2       #key:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 63
    .restart local v4       #pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 64
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 65
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #value:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .restart local v6       #value:Ljava/lang/String;
    goto/16 :goto_0

    .line 70
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #pattern:Ljava/util/regex/Pattern;
    .end local v6           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    const/4 v6, 0x0

    .restart local v6       #value:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->numberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "number"
    .parameter "name"

    .prologue
    .line 81
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    .line 86
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, key_number:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->numberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->numberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    .end local v0           #key_number:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->startWithPrex(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 92
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->equalsPrex(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    const-string v5, ".*"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, rex_number:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v1           #rex_number:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    const-string v5, ".*"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, unprex_rex_number:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    .end local v2           #unprex_rex_number:Ljava/lang/String;
    :cond_4
    const-string v3, "*"

    const-string v4, ".*"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1       #rex_number:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->regexNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
