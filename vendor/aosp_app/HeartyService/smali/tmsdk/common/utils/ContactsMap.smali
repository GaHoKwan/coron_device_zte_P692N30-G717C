.class public Ltmsdk/common/utils/ContactsMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private DW:Ltmsdk/common/SparseStringArray;

.field private DX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private DY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private DZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ea:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ltmsdk/common/SparseStringArray;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ltmsdk/common/SparseStringArray;-><init>(I)V

    iput-object v0, p0, Ltmsdk/common/utils/ContactsMap;->DW:Ltmsdk/common/SparseStringArray;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ltmsdk/common/utils/ContactsMap;->DX:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ltmsdk/common/utils/ContactsMap;->DY:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ltmsdk/common/utils/ContactsMap;->DZ:Ljava/util/Map;

    .line 29
    return-void
.end method

.method private static cU(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cV(Ljava/lang/String;)Z
    .locals 2
    .parameter "wildcardEx"

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cW(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "wildcardEx"

    .prologue
    .line 202
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "\\."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "\\+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, ".*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "phoneNumber"
    .parameter "name"

    .prologue
    .line 59
    iget-boolean v3, p0, Ltmsdk/common/utils/ContactsMap;->Ea:Z

    if-eqz v3, :cond_1

    invoke-static {p1}, Ltmsdk/common/utils/ContactsMap;->cU(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-virtual {p0, p1, p2}, Ltmsdk/common/utils/ContactsMap;->addWildcardEx(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    if-nez p2, :cond_2

    .line 67
    const-string p2, ""

    .line 69
    :cond_2
    invoke-static {p1}, Ltmsdkobf/lo;->cJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, minMatch:Ljava/lang/String;
    invoke-static {v1}, Ltmsdkobf/lo;->cI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, minMatchInt:I
    iget-object v3, p0, Ltmsdk/common/utils/ContactsMap;->DW:Ltmsdk/common/SparseStringArray;

    invoke-virtual {v3, v2, p2}, Ltmsdk/common/SparseStringArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v2           #minMatchInt:I
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "ContactsMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in parseInt(minMatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v3, p0, Ltmsdk/common/utils/ContactsMap;->DX:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v3, p0, Ltmsdk/common/utils/ContactsMap;->DX:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addWildcardEx(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "wildcardEx"
    .parameter "name"

    .prologue
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 93
    :cond_0
    if-nez p2, :cond_1

    .line 94
    const-string p2, ""

    .line 96
    :cond_1
    invoke-static {p1}, Ltmsdk/common/utils/ContactsMap;->cV(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, prefix:Ljava/lang/String;
    iget-object v2, p0, Ltmsdk/common/utils/ContactsMap;->DY:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    .end local v0           #prefix:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ltmsdk/common/utils/ContactsMap;->cW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, regEx:Ljava/lang/String;
    iget-object v2, p0, Ltmsdk/common/utils/ContactsMap;->DZ:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ltmsdk/common/utils/ContactsMap;->DW:Ltmsdk/common/SparseStringArray;

    invoke-virtual {v0}, Ltmsdk/common/SparseStringArray;->clear()V

    .line 107
    iget-object v0, p0, Ltmsdk/common/utils/ContactsMap;->DX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    iget-object v0, p0, Ltmsdk/common/utils/ContactsMap;->DY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 109
    iget-object v0, p0, Ltmsdk/common/utils/ContactsMap;->DZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    return-void
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "phoneNumber"

    .prologue
    .line 123
    invoke-static {p1}, Ltmsdkobf/lo;->cJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, minMatch:Ljava/lang/String;
    const/4 v5, 0x0

    .line 127
    .local v5, name:Ljava/lang/String;
    invoke-static {v3}, Ltmsdkobf/lo;->cI(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 130
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 131
    .local v4, minMatchInt:I
    iget-object v9, p0, Ltmsdk/common/utils/ContactsMap;->DW:Ltmsdk/common/SparseStringArray;

    invoke-virtual {v9, v4}, Ltmsdk/common/SparseStringArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v4           #minMatchInt:I
    .restart local v5       #name:Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_1

    move-object v9, v5

    .line 176
    :goto_1
    return-object v9

    .line 132
    .end local v5           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v9, "ContactsMap"

    const-string v10, "minMatch to int"

    invoke-static {v9, v10, v0}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 135
    iget-object v9, p0, Ltmsdk/common/utils/ContactsMap;->DX:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 136
    .restart local v5       #name:Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v9, p0, Ltmsdk/common/utils/ContactsMap;->DX:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5       #name:Ljava/lang/String;
    goto :goto_0

    .line 148
    :cond_1
    invoke-static {p1}, Ltmsdkobf/lo;->cH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Ltmsdkobf/lo;->cF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, phoneNumberNoPrefix:Ljava/lang/String;
    iget-object v9, p0, Ltmsdk/common/utils/ContactsMap;->DY:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 154
    .local v8, prefix:Ljava/lang/String;
    invoke-static {v8}, Ltmsdkobf/lo;->cG(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 156
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_1

    .line 168
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #prefix:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Ltmsdk/common/utils/ContactsMap;->DZ:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 169
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 170
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 171
    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_1

    .line 176
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #pattern:Ljava/util/regex/Pattern;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Ltmsdk/common/utils/ContactsMap;->Ea:Z

    return v0
.end method

.method public setStrict(Z)V
    .locals 0
    .parameter "isStrict"

    .prologue
    .line 38
    iput-boolean p1, p0, Ltmsdk/common/utils/ContactsMap;->Ea:Z

    .line 39
    return-void
.end method
