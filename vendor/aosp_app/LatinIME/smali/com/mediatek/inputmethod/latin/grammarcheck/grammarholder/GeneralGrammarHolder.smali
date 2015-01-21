.class public Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GeneralGrammarHolder;
.super Ljava/lang/Object;
.source "GeneralGrammarHolder.java"

# interfaces
.implements Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GrammarHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConsonant(I)Z
    .locals 1
    .parameter "charCode"

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public isSuperscript(I)Z
    .locals 1
    .parameter "charCode"

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public isValidForString(Ljava/lang/String;CI)Z
    .locals 1
    .parameter "str"
    .parameter "charCode"
    .parameter "position"

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public isVowel(I)Z
    .locals 1
    .parameter "charCode"

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method
