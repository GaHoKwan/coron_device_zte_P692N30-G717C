.class public abstract Lcom/android/quicksearchbox/google/AbstractGoogleSource;
.super Lcom/android/quicksearchbox/AbstractInternalSource;
.source "AbstractGoogleSource.java"

# interfaces
.implements Lcom/android/quicksearchbox/google/GoogleSource;


# static fields
.field private static final GOOGLE_SOURCE_NAME:Ljava/lang/String; = "com.android.quicksearchbox/.google.GoogleSearch"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 0
    .parameter "context"
    .parameter "uiThread"
    .parameter "iconLoader"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/AbstractInternalSource;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    .line 47
    return-void
.end method

.method private emptyIfNull(Lcom/android/quicksearchbox/SourceResult;Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 0
    .parameter "result"
    .parameter "query"

    .prologue
    .line 101
    if-nez p1, :cond_0

    new-instance p1, Lcom/android/quicksearchbox/CursorBackedSourceResult;

    .end local p1
    invoke-direct {p1, p0, p2}, Lcom/android/quicksearchbox/CursorBackedSourceResult;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .parameter "query"
    .parameter "appData"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/AbstractGoogleSource;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/quicksearchbox/google/AbstractGoogleSource;->createSourceSearchIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "INTERNAL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    return-object v0
.end method

.method public createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "appData"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/AbstractSource;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "android.intent.action.WEB_SEARCH"

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIntentComponent()Landroid/content/ComponentName;
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxShortcuts(Lcom/android/quicksearchbox/Config;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Config;->getMaxShortcutsPerWebSource()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "com.android.quicksearchbox/.google.GoogleSearch"

    return-object v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSourceIconResource()I
    .locals 1

    .prologue
    .line 89
    const/high16 v0, 0x7f03

    return v0
.end method

.method public getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SourceResult;
    .locals 1
    .parameter "query"
    .parameter "queryLimit"
    .parameter "onlySource"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/google/AbstractGoogleSource;->queryInternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/quicksearchbox/google/AbstractGoogleSource;->emptyIfNull(Lcom/android/quicksearchbox/SourceResult;Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/google/AbstractGoogleSource;->getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionsExternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 1
    .parameter "query"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/google/AbstractGoogleSource;->queryExternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/quicksearchbox/google/AbstractGoogleSource;->emptyIfNull(Lcom/android/quicksearchbox/SourceResult;Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method public includeInAll()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public abstract queryExternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
.end method

.method public abstract queryInternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
.end method

.method public abstract refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
