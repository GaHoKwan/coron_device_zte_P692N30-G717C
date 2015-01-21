.class public Lcom/android/quicksearchbox/SuggestionNonFormatter;
.super Lcom/android/quicksearchbox/SuggestionFormatter;
.source "SuggestionNonFormatter.java"


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/TextAppearanceFactory;)V
    .locals 0
    .parameter "spanFactory"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SuggestionFormatter;-><init>(Lcom/android/quicksearchbox/TextAppearanceFactory;)V

    .line 27
    return-void
.end method


# virtual methods
.method public formatSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "query"
    .parameter "suggestion"

    .prologue
    .line 31
    return-object p2
.end method
