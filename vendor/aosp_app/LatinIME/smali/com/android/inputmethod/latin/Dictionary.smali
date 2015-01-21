.class public abstract Lcom/android/inputmethod/latin/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# static fields
.field protected static final FULL_WORD_SCORE_MULTIPLIER:I = 0x2

.field public static final NOT_A_PROBABILITY:I = -0x1

.field public static final TYPE_APPLICATION_DEFINED:Ljava/lang/String; = "application_defined"

.field public static final TYPE_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final TYPE_HARDCODED:Ljava/lang/String; = "hardcoded"

.field public static final TYPE_MAIN:Ljava/lang/String; = "main"

.field public static final TYPE_USER:Ljava/lang/String; = "user"

.field public static final TYPE_USER_HISTORY:Ljava/lang/String; = "history"

.field public static final TYPE_USER_TYPED:Ljava/lang/String; = "user_typed"


# instance fields
.field protected final mDictType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "dictType"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/inputmethod/latin/Dictionary;->mDictType:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public getFrequency(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "word"

    .prologue
    .line 79
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/keyboard/ProximityInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getSuggestionsWithSessionId(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "composer"
    .parameter "prevWord"
    .parameter "proximityInfo"
    .parameter "sessionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/keyboard/ProximityInfo;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Dictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isValidWord(Ljava/lang/CharSequence;)Z
.end method

.method protected same([CILjava/lang/CharSequence;)Z
    .locals 4
    .parameter "word"
    .parameter "length"
    .parameter "typedWord"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 95
    aget-char v2, p1, v0

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
