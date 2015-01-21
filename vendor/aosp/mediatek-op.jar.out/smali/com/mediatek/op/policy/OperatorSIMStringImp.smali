.class public Lcom/mediatek/op/policy/OperatorSIMStringImp;
.super Lcom/mediatek/op/policy/DefaultOperatorSIMString;
.source "OperatorSIMStringImp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OperatorSIMStringImp"

.field private static final sSIM:Ljava/lang/String; = "SIM"

.field private static final sUIM:Ljava/lang/String; = "UIM"

.field private static final sUIMSIM:Ljava/lang/String; = "UIM/SIM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mediatek/op/policy/DefaultOperatorSIMString;-><init>()V

    return-void
.end method

.method private delSim(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "sourceStr"

    .prologue
    .line 97
    move-object v2, p1

    .line 98
    .local v2, retStr:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 99
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, countryStr:Ljava/lang/String;
    const-string v3, "OperatorSIMStringImp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " delSimFromStr, County = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, v0}, Lcom/mediatek/op/policy/OperatorSIMStringImp;->isReplacedWithSpace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    const-string v3, " *SIM *"

    const-string v4, " "

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-direct {p0, v2}, Lcom/mediatek/op/policy/OperatorSIMStringImp;->toUppercaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 108
    return-object v2

    .line 104
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/op/policy/OperatorSIMStringImp;->isReplaceToEmpyt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const-string v3, " *SIM *"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isNeedProcessByLanguage()Z
    .locals 5

    .prologue
    .line 157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 158
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, countryStr:Ljava/lang/String;
    const-string v2, "OperatorSIMStringImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isNeedProcessByLanguage, County = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    const/4 v2, 0x1

    .line 163
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOP09Card(ILandroid/content/Context;)Z
    .locals 1
    .parameter "slotId"
    .parameter "context"

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReplaceToEmpyt(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryStr"

    .prologue
    .line 130
    const-string v0, "CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReplacedWithSpace(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryStr"

    .prologue
    .line 117
    const-string v0, "US"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toUppercaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sourceStr"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, retStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 147
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "sourceStr"
    .parameter "slotId"
    .parameter "simChangedTag"
    .parameter "context"

    .prologue
    .line 32
    move-object v0, p1

    .line 33
    .local v0, retStr:Ljava/lang/String;
    const-string v1, "OperatorSIMStringImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorSIMString, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simChangedTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sourceStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/mediatek/op/policy/OperatorSIMStringImp;->isNeedProcessByLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->SIMTOUIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    if-ne p3, v1, :cond_1

    invoke-direct {p0, p2, p4}, Lcom/mediatek/op/policy/OperatorSIMStringImp;->isOP09Card(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const-string v1, "SIM"

    const-string v2, "UIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    const-string v1, "OperatorSIMStringImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorSIMString, processed string retStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-object v0

    .line 38
    :cond_1
    sget-object v1, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->UIMSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    if-ne p3, v1, :cond_2

    .line 39
    const-string v1, "SIM"

    const-string v2, "UIM/SIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    sget-object v1, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    if-ne p3, v1, :cond_0

    .line 41
    invoke-direct {p0, v0}, Lcom/mediatek/op/policy/OperatorSIMStringImp;->delSim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOperatorSIMStringForSIMDetection(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "sourceStr"
    .parameter "newSimSlot"
    .parameter "newSimNumber"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 50
    move-object v1, p1

    .line 51
    .local v1, retStr:Ljava/lang/String;
    const-string v3, "OperatorSIMStringImp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorSIMStringForSIMDetection, newSimSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sourceStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/mediatek/op/policy/OperatorSIMStringImp;->isNeedProcessByLanguage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, hasUIM:Z
    const/4 v2, 0x0

    .line 56
    .local v2, slotId:I
    :goto_0
    if-eqz p2, :cond_1

    .line 57
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_0

    invoke-direct {p0, v2, p4}, Lcom/mediatek/op/policy/OperatorSIMStringImp;->isOP09Card(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 61
    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    if-eqz v0, :cond_2

    .line 64
    if-ne p3, v6, :cond_3

    .line 65
    const-string v3, "SIM"

    const-string v4, "UIM"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .end local v0           #hasUIM:Z
    .end local v2           #slotId:I
    :cond_2
    :goto_1
    const-string v3, "OperatorSIMStringImp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorSIMStringForSIMDetection, processed string retStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v1

    .line 66
    .restart local v0       #hasUIM:Z
    .restart local v2       #slotId:I
    :cond_3
    if-le p3, v6, :cond_2

    .line 67
    const-string v3, "SIM"

    const-string v4, "UIM/SIM"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
