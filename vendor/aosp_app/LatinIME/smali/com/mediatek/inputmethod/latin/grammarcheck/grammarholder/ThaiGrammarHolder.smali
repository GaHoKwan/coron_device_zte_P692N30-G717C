.class public Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;
.super Ljava/lang/Object;
.source "ThaiGrammarHolder.java"

# interfaces
.implements Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GrammarHolder;


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ThaiGrammarHolder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isStandaloneVowel(I)Z
    .locals 3
    .parameter "charCode"

    .prologue
    .line 92
    const/16 v0, 0xe40

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe46

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0xe24

    if-lt p1, v0, :cond_1

    const/16 v0, 0xe26

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xe30

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe32

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe56

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe3f

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe2f

    if-ne p1, v0, :cond_4

    .line 100
    :cond_2
    sget-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ThaiGrammarHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Char : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is standalone vowel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_3
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubScript(I)Z
    .locals 3
    .parameter "charCode"

    .prologue
    .line 71
    const/16 v0, 0xe38

    if-lt p1, v0, :cond_1

    const/16 v0, 0xe3a

    if-gt p1, v0, :cond_1

    .line 72
    sget-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "ThaiGrammarHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Char : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is subscript"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThaiSymbol(I)Z
    .locals 3
    .parameter "charCode"

    .prologue
    .line 61
    const/16 v0, 0xe01

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe3a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xe3f

    if-lt p1, v0, :cond_3

    const/16 v0, 0xe4d

    if-gt p1, v0, :cond_3

    .line 64
    :cond_1
    sget-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ThaiGrammarHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Char : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is valid Thai symbol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTone(I)Z
    .locals 3
    .parameter "charCode"

    .prologue
    .line 81
    const/16 v0, 0xe31

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe33

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe37

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xe47

    if-lt p1, v0, :cond_3

    const/16 v0, 0xe4d

    if-gt p1, v0, :cond_3

    .line 85
    :cond_1
    sget-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ThaiGrammarHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Char : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Tone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSubAndTonePair(II)Z
    .locals 3
    .parameter "code1"
    .parameter "code2"

    .prologue
    const/16 v2, 0xe48

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, ret:Z
    invoke-virtual {p0, p1}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isVowel(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isVowel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    .line 157
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 159
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 161
    :cond_3
    packed-switch p1, :pswitch_data_0

    :cond_4
    :goto_1
    move v1, v0

    .line 174
    goto :goto_0

    .line 163
    :pswitch_0
    if-gt v2, p2, :cond_4

    const/16 v1, 0xe4b

    if-lt v1, p2, :cond_4

    .line 164
    const/4 v0, 0x1

    goto :goto_1

    .line 167
    :pswitch_1
    if-gt v2, p2, :cond_4

    const/16 v1, 0xe4d

    if-lt v1, p2, :cond_4

    .line 168
    const/4 v0, 0x1

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0xe38
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isValidTonePair(II)Z
    .locals 4
    .parameter "tone1"
    .parameter "tone2"

    .prologue
    const/16 v3, 0xe4b

    const/16 v2, 0xe48

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    const/4 v1, 0x1

    .line 147
    :goto_0
    return v1

    .line 113
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isSubScript(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isValidSubAndTonePair(II)Z

    move-result v1

    goto :goto_0

    .line 116
    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_1
    move v1, v0

    .line 147
    goto :goto_0

    .line 119
    :sswitch_0
    if-gt v2, p2, :cond_3

    if-lt v3, p2, :cond_3

    .line 120
    const/4 v0, 0x1

    goto :goto_1

    .line 126
    :sswitch_1
    if-gt v2, p2, :cond_3

    const/16 v1, 0xe4c

    if-lt v1, p2, :cond_3

    .line 127
    const/4 v0, 0x1

    goto :goto_1

    .line 131
    :sswitch_2
    const/16 v1, 0xe47

    if-gt v1, p2, :cond_3

    if-lt v3, p2, :cond_3

    .line 132
    const/4 v0, 0x1

    goto :goto_1

    .line 140
    :sswitch_3
    const/16 v1, 0xe33

    if-ne v1, p2, :cond_3

    .line 141
    const/4 v0, 0x1

    goto :goto_1

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0xe31 -> :sswitch_0
        0xe34 -> :sswitch_1
        0xe35 -> :sswitch_2
        0xe36 -> :sswitch_0
        0xe37 -> :sswitch_2
        0xe48 -> :sswitch_3
        0xe49 -> :sswitch_3
        0xe4a -> :sswitch_3
        0xe4b -> :sswitch_3
        0xe4d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public isConsonant(I)Z
    .locals 1
    .parameter "charCode"

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public isSuperscript(I)Z
    .locals 1
    .parameter "charCode"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v0

    return v0
.end method

.method public isValidForString(Ljava/lang/String;CI)Z
    .locals 5
    .parameter "str"
    .parameter "charCode"
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    const-string v2, "ThaiGrammarHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidForString : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-ltz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le p3, v2, :cond_2

    .line 204
    :cond_0
    const-string v0, "ThaiGrammarHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad parameter for position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 289
    :cond_1
    :goto_0
    return v0

    .line 209
    :cond_2
    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isThaiSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isVowel(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isStandaloneVowel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    :cond_3
    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isThaiSymbol(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p3, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 218
    goto :goto_0

    .line 225
    :cond_4
    if-nez p3, :cond_7

    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isSubScript(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 227
    :cond_5
    sget-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 228
    const-string v0, "ThaiGrammarHolder"

    const-string v2, "The first char can not be tone mark"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v1

    .line 229
    goto :goto_0

    .line 230
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 232
    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isStandaloneVowel(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p3, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 235
    goto :goto_0

    .line 237
    :cond_8
    invoke-direct {p0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isSubScript(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 241
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isStandaloneVowel(I)Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isThaiSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isValidSubAndTonePair(II)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p3, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isValidSubAndTonePair(II)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_9
    move v0, v1

    .line 247
    goto/16 :goto_0

    .line 252
    :cond_a
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isStandaloneVowel(I)Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isThaiSymbol(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 255
    :cond_b
    sget-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 256
    const-string v0, "ThaiGrammarHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is standalone vowel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move v0, v1

    .line 257
    goto/16 :goto_0

    .line 260
    :cond_d
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isSubScript(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 261
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isValidSubAndTonePair(II)Z

    move-result v0

    goto/16 :goto_0

    .line 264
    :cond_e
    const/4 v2, 0x2

    if-lt p3, v2, :cond_1

    .line 266
    add-int/lit8 v2, p3, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p3, :cond_12

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isTone(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 269
    :cond_10
    sget-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 270
    const-string v0, "ThaiGrammarHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not be added after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v0, v1

    .line 273
    goto/16 :goto_0

    .line 277
    :cond_12
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isValidTonePair(II)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p3, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->isValidTonePair(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    :cond_13
    sget-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    if-eqz v0, :cond_14

    .line 281
    const-string v0, "ThaiGrammarHolder"

    const-string v2, "Invalid input for invalid tone pairs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move v0, v1

    .line 283
    goto/16 :goto_0
.end method

.method public isVowel(I)Z
    .locals 3
    .parameter "charCode"

    .prologue
    .line 182
    const/16 v0, 0xe01

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe30

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xe32

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe3f

    if-lt p1, v0, :cond_3

    const/16 v0, 0xe46

    if-gt p1, v0, :cond_3

    .line 186
    :cond_1
    sget-boolean v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 187
    const-string v0, "ThaiGrammarHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Char : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is vowel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
