.class public Lcom/android/quicksearchbox/ShortcutPromoter;
.super Lcom/android/quicksearchbox/AbstractPromoter;
.source "ShortcutPromoter.java"


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/SuggestionFilter;)V
    .locals 0
    .parameter "config"
    .parameter "next"
    .parameter "filter"

    .prologue
    .line 30
    invoke-direct {p0, p3, p2, p1}, Lcom/android/quicksearchbox/AbstractPromoter;-><init>(Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/Config;)V

    .line 31
    return-void
.end method


# virtual methods
.method public doPickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 1
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"

    .prologue
    .line 37
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplication;->isMixMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getShortcuts()Lcom/android/quicksearchbox/ShortcutCursor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/quicksearchbox/ShortcutPromoter;->promoteShortcuts(Lcom/android/quicksearchbox/SuggestionCursor;ILcom/android/quicksearchbox/ListSuggestionCursor;)V

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getShortcuts()Lcom/android/quicksearchbox/ShortcutCursor;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/quicksearchbox/ShortcutPromoter;->promoteShortcuts(Lcom/android/quicksearchbox/SuggestionCursor;Lcom/android/quicksearchbox/ListSuggestionCursor;)V

    goto :goto_0
.end method

.method promoteShortcuts(Lcom/android/quicksearchbox/SuggestionCursor;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 7
    .parameter "shortcuts"
    .parameter "maxPromoted"
    .parameter "promoted"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 49
    .local v3, shortcutCount:I
    :goto_0
    if-nez v3, :cond_2

    .line 62
    :cond_0
    return-void

    .line 48
    .end local v3           #shortcutCount:I
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v3

    goto :goto_0

    .line 50
    .restart local v3       #shortcutCount:I
    :cond_2
    invoke-static {v3}, Lcom/google/common/collect/HashMultiset;->create(I)Lcom/google/common/collect/HashMultiset;

    move-result-object v5

    .line 51
    .local v5, sourceShortcutCounts:Lcom/google/common/collect/HashMultiset;,"Lcom/google/common/collect/HashMultiset<Lcom/android/quicksearchbox/Source;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    invoke-virtual {p3}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getCount()I

    move-result v6

    if-ge v6, p2, :cond_0

    .line 52
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 53
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v4

    .line 54
    .local v4, source:Lcom/android/quicksearchbox/Source;
    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/AbstractPromoter;->accept(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 55
    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/google/common/collect/HashMultiset;->add(Ljava/lang/Object;I)I

    move-result v2

    .line 56
    .local v2, prevCount:I
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractPromoter;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/quicksearchbox/Source;->getMaxShortcuts(Lcom/android/quicksearchbox/Config;)I

    move-result v1

    .line 57
    .local v1, maxShortcuts:I
    if-ge v2, v1, :cond_3

    .line 58
    new-instance v6, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v6, p1}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p3, v6}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 51
    .end local v1           #maxShortcuts:I
    .end local v2           #prevCount:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method promoteShortcuts(Lcom/android/quicksearchbox/SuggestionCursor;Lcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 5
    .parameter "shortcuts"
    .parameter "promoted"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 71
    .local v2, shortcutCount:I
    :goto_0
    if-nez v2, :cond_2

    .line 81
    :cond_0
    return-void

    .line 70
    .end local v2           #shortcutCount:I
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v2

    goto :goto_0

    .line 73
    .restart local v2       #shortcutCount:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractPromoter;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quicksearchbox/Config;->getShortcutsOnlyLimitedCount()I

    move-result v1

    .line 74
    .local v1, maxCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getCount()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 75
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 76
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v3

    .line 77
    .local v3, source:Lcom/android/quicksearchbox/Source;
    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/AbstractPromoter;->accept(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    new-instance v4, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v4, p1}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p2, v4}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
