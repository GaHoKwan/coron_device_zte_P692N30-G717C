.class public Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;
.super Ljava/lang/Object;
.source "MediaTekGrammarChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaTekGrammarChecker"


# instance fields
.field mGrammarHolderInstance:Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GrammarHolder;

.field thai:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .parameter "curLocale"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Locale;

    const-string v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->thai:Ljava/util/Locale;

    .line 23
    iget-object v0, p0, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->thai:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;

    invoke-direct {v0}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/ThaiGrammarHolder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->mGrammarHolderInstance:Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GrammarHolder;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GeneralGrammarHolder;

    invoke-direct {v0}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GeneralGrammarHolder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->mGrammarHolderInstance:Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GrammarHolder;

    goto :goto_0
.end method


# virtual methods
.method public isValidInput(Ljava/lang/String;CI)Z
    .locals 2
    .parameter "str"
    .parameter "ch"
    .parameter "position"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->mGrammarHolderInstance:Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GrammarHolder;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->mGrammarHolderInstance:Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GrammarHolder;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/inputmethod/latin/grammarcheck/grammarholder/GrammarHolder;->isValidForString(Ljava/lang/String;CI)Z

    move-result v0

    .line 35
    :goto_0
    return v0

    .line 34
    :cond_0
    const-string v0, "MediaTekGrammarChecker"

    const-string v1, "GrammarHolderInstance is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x1

    goto :goto_0
.end method
