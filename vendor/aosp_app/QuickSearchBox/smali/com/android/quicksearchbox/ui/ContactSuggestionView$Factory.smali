.class public Lcom/android/quicksearchbox/ui/ContactSuggestionView$Factory;
.super Lcom/android/quicksearchbox/ui/SuggestionViewInflater;
.source "ContactSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/ContactSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    const-string v0, "contact"

    const-class v1, Lcom/android/quicksearchbox/ui/ContactSuggestionView;

    const/high16 v2, 0x7f04

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;-><init>(Ljava/lang/String;Ljava/lang/Class;ILandroid/content/Context;)V

    .line 78
    return-void
.end method


# virtual methods
.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/ContactSuggestionView$Factory;->isSearchableContacts(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    return v0
.end method

.method protected isSearchableContacts(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 7
    .parameter "suggestion"

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v3

    .line 87
    .local v3, source:Lcom/android/quicksearchbox/Source;
    instance-of v5, v3, Lcom/android/quicksearchbox/SearchableSource;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 88
    check-cast v2, Lcom/android/quicksearchbox/SearchableSource;

    .line 89
    .local v2, searchableSource:Lcom/android/quicksearchbox/SearchableSource;
    const-string v5, "com.android.contacts"

    invoke-virtual {v2}, Lcom/android/quicksearchbox/SearchableSource;->getSearchableInfo()Landroid/app/SearchableInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 91
    .local v0, contactsSuggestion:Z
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, intentData:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 96
    .end local v0           #contactsSuggestion:Z
    .end local v1           #intentData:Ljava/lang/String;
    .end local v2           #searchableSource:Lcom/android/quicksearchbox/SearchableSource;
    :cond_0
    return v4
.end method
