.class public Lcom/android/quicksearchbox/QsbApplication;
.super Ljava/lang/Object;
.source "QsbApplication.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "QsbApplication"

.field private static sCanRemoveShortcut:Z

.field private static sIsDeviceDefault:Z

.field private static sIsMixMode:Z

.field private static sUseSettingFragment:Z


# instance fields
.field private mConfig:Lcom/android/quicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private mCorpora:Lcom/android/quicksearchbox/Corpora;

.field private mCorpusRanker:Lcom/android/quicksearchbox/CorpusRanker;

.field private mGoogleSource:Lcom/android/quicksearchbox/google/GoogleSource;

.field private mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;

.field private mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field private mLogger:Lcom/android/quicksearchbox/Logger;

.field private mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private mSearchBaseUrlHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

.field private mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

.field private mSettings:Lcom/android/quicksearchbox/SearchSettings;

.field private mShortcutRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

.field private mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

.field private mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field private mSources:Lcom/android/quicksearchbox/Sources;

.field private mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

.field private mSuggestionViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

.field private mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

.field private mTextAppearanceFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mVersionCode:I

.field private mVoiceSearch:Lcom/android/quicksearchbox/VoiceSearch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    const-string v0, "default"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sIsDeviceDefault:Z

    .line 90
    sget-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sIsDeviceDefault:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sIsMixMode:Z

    .line 95
    sget-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sIsDeviceDefault:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sCanRemoveShortcut:Z

    .line 97
    sget-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sIsDeviceDefault:Z

    if-nez v0, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/quicksearchbox/QsbApplication;->sUseSettingFragment:Z

    return-void

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    :cond_1
    move v0, v2

    .line 95
    goto :goto_1

    :cond_2
    move v1, v2

    .line 97
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0d000a

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method public static canRemoveShortcut()Z
    .locals 1

    .prologue
    .line 689
    sget-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sCanRemoveShortcut:Z

    return v0
.end method

.method public static get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/QsbApplicationWrapper;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->getApp()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchEngineInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    const-string v1, "search_engine"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/ISearchEngineManager;

    .line 286
    .local v0, searchEngineManager:Lcom/mediatek/common/search/ISearchEngineManager;
    invoke-interface {v0}, Lcom/mediatek/common/search/ISearchEngineManager;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static isFroyoOrLater()Z
    .locals 2

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycombOrLater()Z
    .locals 2

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMixMode()Z
    .locals 1

    .prologue
    .line 681
    sget-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sIsMixMode:Z

    return v0
.end method

.method public static useSettingFragment()Z
    .locals 1

    .prologue
    .line 697
    sget-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sUseSettingFragment:Z

    return v0
.end method


# virtual methods
.method protected checkThread()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessed Application object from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    return-void
.end method

.method protected close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 144
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Config;->close()V

    .line 146
    iput-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRepository;->close()V

    .line 150
    iput-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->close()V

    .line 154
    iput-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionsProvider;->close()V

    .line 158
    iput-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    .line 160
    :cond_3
    return-void
.end method

.method public createBlendingPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 528
    new-instance v0, Lcom/android/quicksearchbox/ShortcutPromoter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    new-instance v2, Lcom/android/quicksearchbox/RankAwarePromoter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/quicksearchbox/RankAwarePromoter;-><init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/android/quicksearchbox/ShortcutPromoter;-><init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/SuggestionFilter;)V

    return-object v0
.end method

.method protected createConfig()Lcom/android/quicksearchbox/Config;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/android/quicksearchbox/Config;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/Config;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createCorpora(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpora;
    .locals 4
    .parameter "sources"

    .prologue
    .line 351
    new-instance v0, Lcom/android/quicksearchbox/SearchableCorpora;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createCorpusFactory()Lcom/android/quicksearchbox/CorpusFactory;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/quicksearchbox/SearchableCorpora;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/Sources;Lcom/android/quicksearchbox/CorpusFactory;)V

    .line 353
    .local v0, corpora:Lcom/android/quicksearchbox/SearchableCorpora;
    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchableCorpora;->update()V

    .line 354
    return-object v0
.end method

.method protected createCorpusFactory()Lcom/android/quicksearchbox/CorpusFactory;
    .locals 6

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/Config;->getNumWebCorpusThreads()I

    move-result v0

    .line 383
    .local v0, numWebCorpusThreads:I
    new-instance v1, Lcom/android/quicksearchbox/SearchableCorpusFactory;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/QsbApplication;->createExecutorFactory(I)Lcom/android/quicksearchbox/util/Factory;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/quicksearchbox/SearchableCorpusFactory;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createCorpusRanker()Lcom/android/quicksearchbox/CorpusRanker;
    .locals 3

    .prologue
    .line 409
    new-instance v0, Lcom/android/quicksearchbox/DefaultCorpusRanker;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/DefaultCorpusRanker;-><init>(Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRepository;)V

    return-object v0
.end method

.method protected createExecutorFactory(I)Lcom/android/quicksearchbox/util/Factory;
    .locals 2
    .parameter "numThreads"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/quicksearchbox/util/Factory",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 389
    .local v0, threadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/android/quicksearchbox/QsbApplication$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/quicksearchbox/QsbApplication$1;-><init>(Lcom/android/quicksearchbox/QsbApplication;ILjava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method protected createGoogleSource()Lcom/android/quicksearchbox/google/GoogleSource;
    .locals 5

    .prologue
    .line 568
    new-instance v0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method protected createHttpHelper()Lcom/android/quicksearchbox/util/HttpHelper;
    .locals 3

    .prologue
    .line 637
    new-instance v0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;

    new-instance v1, Lcom/android/quicksearchbox/util/JavaNetHttpHelper$PassThroughRewriter;

    invoke-direct {v1}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper$PassThroughRewriter;-><init>()V

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/Config;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;-><init>(Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 3

    .prologue
    .line 181
    new-instance v0, Lcom/android/quicksearchbox/util/PriorityThreadFactory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    .line 183
    .local v0, iconThreadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/android/quicksearchbox/util/PerNameExecutor;

    invoke-static {v0}, Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/android/quicksearchbox/util/Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/util/PerNameExecutor;-><init>(Lcom/android/quicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createLogger()Lcom/android/quicksearchbox/Logger;
    .locals 3

    .prologue
    .line 600
    new-instance v0, Lcom/android/quicksearchbox/EventLogLogger;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/EventLogLogger;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method public createPreferenceControllerFactory(Landroid/app/Activity;)Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;
    .locals 2
    .parameter "activity"

    .prologue
    .line 626
    new-instance v0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;-><init>(Lcom/android/quicksearchbox/SearchSettings;Landroid/content/Context;)V

    return-object v0
.end method

.method protected createQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 4

    .prologue
    .line 483
    const-string v0, "QSB #%d"

    .line 484
    .local v0, nameFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/Config;->getQueryThreadPriority()I

    move-result v1

    .line 485
    .local v1, priority:I
    new-instance v2, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v2}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v2

    new-instance v3, Lcom/android/quicksearchbox/util/PriorityThreadFactory;

    invoke-direct {v3, v1}, Lcom/android/quicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    return-object v2
.end method

.method public createResultsPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 4

    .prologue
    .line 551
    new-instance v0, Lcom/android/quicksearchbox/ResultFilter;

    invoke-direct {v0}, Lcom/android/quicksearchbox/ResultFilter;-><init>()V

    .line 552
    .local v0, resultFilter:Lcom/android/quicksearchbox/SuggestionFilter;
    new-instance v1, Lcom/android/quicksearchbox/ShortcutPromoter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/quicksearchbox/ShortcutPromoter;-><init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/SuggestionFilter;)V

    return-object v1
.end method

.method protected createSearchBaseUrlHelper()Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;
    .locals 5

    .prologue
    .line 652
    new-instance v1, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getHttpHelper()Lcom/android/quicksearchbox/util/HttpHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/SearchSettingsImpl;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/util/HttpHelper;Lcom/android/quicksearchbox/SearchSettings;Landroid/content/SharedPreferences;)V

    return-object v1
.end method

.method public createSearchEngineInfo()V
    .locals 4

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mContext:Landroid/content/Context;

    const-string v2, "SearchSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    .local v0, p:Landroid/content/SharedPreferences;
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/QsbApplication;->updateSearchEngine(Landroid/content/SharedPreferences;)V

    .line 276
    return-void
.end method

.method protected createSettings()Lcom/android/quicksearchbox/SearchSettings;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Lcom/android/quicksearchbox/SearchSettingsImpl;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/SearchSettingsImpl;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method protected createShortcutRefresher()Lcom/android/quicksearchbox/ShortcutRefresher;
    .locals 2

    .prologue
    .line 450
    new-instance v0, Lcom/android/quicksearchbox/SourceShortcutRefresher;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/SourceShortcutRefresher;-><init>(Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    return-object v0
.end method

.method protected createShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 7

    .prologue
    .line 425
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v1, "ShortcutRepository #%d"

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/quicksearchbox/util/PriorityThreadFactory;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    .line 431
    .local v6, logThreadFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {v6}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 432
    .local v5, logExecutor:Ljava/util/concurrent/Executor;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getShortcutRefresher()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->create(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;)Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    return-object v0
.end method

.method public createSingleCorpusPromoter(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;
    .locals 2
    .parameter "corpus"

    .prologue
    .line 534
    sget-boolean v0, Lcom/android/quicksearchbox/QsbApplication;->sIsMixMode:Z

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Lcom/android/quicksearchbox/SingleCorpusPromoter;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, v1}, Lcom/android/quicksearchbox/SingleCorpusPromoter;-><init>(Lcom/android/quicksearchbox/Corpus;I)V

    .line 537
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/SingleCorpusPromoter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/Config;->getShortcutsOnlyLimitedCount()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/quicksearchbox/SingleCorpusPromoter;-><init>(Lcom/android/quicksearchbox/Corpus;I)V

    goto :goto_0
.end method

.method public createSingleCorpusResultsPromoter(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;
    .locals 2
    .parameter "corpus"

    .prologue
    .line 543
    new-instance v0, Lcom/android/quicksearchbox/SingleCorpusResultsPromoter;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, v1}, Lcom/android/quicksearchbox/SingleCorpusResultsPromoter;-><init>(Lcom/android/quicksearchbox/Corpus;I)V

    return-object v0
.end method

.method protected createSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 467
    .local v0, queryThreadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/android/quicksearchbox/util/PerNameExecutor;

    invoke-static {v0}, Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/android/quicksearchbox/util/Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/util/PerNameExecutor;-><init>(Lcom/android/quicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createSources()Lcom/android/quicksearchbox/Sources;
    .locals 5

    .prologue
    .line 377
    new-instance v0, Lcom/android/quicksearchbox/SearchableSources;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/quicksearchbox/SearchableSources;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method protected createSuggestionFormatter()Lcom/android/quicksearchbox/SuggestionFormatter;
    .locals 2

    .prologue
    .line 611
    new-instance v0, Lcom/android/quicksearchbox/LevenshteinSuggestionFormatter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getTextAppearanceFactory()Lcom/android/quicksearchbox/TextAppearanceFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/LevenshteinSuggestionFormatter;-><init>(Lcom/android/quicksearchbox/TextAppearanceFactory;)V

    return-object v0
.end method

.method protected createSuggestionViewFactory()Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createSuggestionsProvider()Lcom/android/quicksearchbox/SuggestionsProvider;
    .locals 5

    .prologue
    .line 505
    new-instance v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;-><init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/Logger;)V

    return-object v0
.end method

.method protected createTextAppearanceFactory()Lcom/android/quicksearchbox/TextAppearanceFactory;
    .locals 2

    .prologue
    .line 622
    new-instance v0, Lcom/android/quicksearchbox/TextAppearanceFactory;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/TextAppearanceFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;
    .locals 2

    .prologue
    .line 584
    new-instance v0, Lcom/android/quicksearchbox/VoiceSearch;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/VoiceSearch;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createWebPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 2

    .prologue
    .line 547
    new-instance v0, Lcom/android/quicksearchbox/WebPromoter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/Config;->getMaxShortcutsPerWebSource()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/WebPromoter;-><init>(I)V

    return-object v0
.end method

.method public declared-synchronized getConfig()Lcom/android/quicksearchbox/Config;
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCorpora()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 344
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSources()Lcom/android/quicksearchbox/Sources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/QsbApplication;->createCorpora(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    return-object v0
.end method

.method public getCorpusRanker()Lcom/android/quicksearchbox/CorpusRanker;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 402
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpusRanker:Lcom/android/quicksearchbox/CorpusRanker;

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createCorpusRanker()Lcom/android/quicksearchbox/CorpusRanker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpusRanker:Lcom/android/quicksearchbox/CorpusRanker;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpusRanker:Lcom/android/quicksearchbox/CorpusRanker;

    return-object v0
.end method

.method public getGoogleSource()Lcom/android/quicksearchbox/google/GoogleSource;
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 561
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mGoogleSource:Lcom/android/quicksearchbox/google/GoogleSource;

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createGoogleSource()Lcom/android/quicksearchbox/google/GoogleSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mGoogleSource:Lcom/android/quicksearchbox/google/GoogleSource;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mGoogleSource:Lcom/android/quicksearchbox/google/GoogleSource;

    return-object v0
.end method

.method public getHelp()Lcom/android/quicksearchbox/Help;
    .locals 3

    .prologue
    .line 658
    new-instance v0, Lcom/android/quicksearchbox/Help;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/Help;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method public declared-synchronized getHttpHelper()Lcom/android/quicksearchbox/util/HttpHelper;
    .locals 1

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createHttpHelper()Lcom/android/quicksearchbox/util/HttpHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogger()Lcom/android/quicksearchbox/Logger;
    .locals 1

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 593
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mLogger:Lcom/android/quicksearchbox/Logger;

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mLogger:Lcom/android/quicksearchbox/Logger;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mLogger:Lcom/android/quicksearchbox/Logger;

    return-object v0
.end method

.method public declared-synchronized getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 476
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public declared-synchronized getSearchBaseUrlHelper()Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;
    .locals 1

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchBaseUrlHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSearchBaseUrlHelper()Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchBaseUrlHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchBaseUrlHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchEngineInfo()Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSearchEngineInfo()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    return-object v0
.end method

.method public declared-synchronized getSettings()Lcom/android/quicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 210
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->upgradeSettingsIfNeeded()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSettings:Lcom/android/quicksearchbox/SearchSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShortcutRefresher()Lcom/android/quicksearchbox/ShortcutRefresher;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 442
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createShortcutRefresher()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    return-object v0
.end method

.method public getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 418
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    return-object v0
.end method

.method public getSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 459
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method

.method protected getSources()Lcom/android/quicksearchbox/Sources;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 370
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSources:Lcom/android/quicksearchbox/Sources;

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSources()Lcom/android/quicksearchbox/Sources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSources:Lcom/android/quicksearchbox/Sources;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSources:Lcom/android/quicksearchbox/Sources;

    return-object v0
.end method

.method public getSuggestionFormatter()Lcom/android/quicksearchbox/SuggestionFormatter;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

    if-nez v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSuggestionFormatter()Lcom/android/quicksearchbox/SuggestionFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

    return-object v0
.end method

.method public getSuggestionViewFactory()Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 517
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSuggestionViewFactory()Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    return-object v0
.end method

.method protected getSuggestionsProvider()Lcom/android/quicksearchbox/SuggestionsProvider;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 498
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSuggestionsProvider()Lcom/android/quicksearchbox/SuggestionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    return-object v0
.end method

.method public getTextAppearanceFactory()Lcom/android/quicksearchbox/TextAppearanceFactory;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createTextAppearanceFactory()Lcom/android/quicksearchbox/TextAppearanceFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 5

    .prologue
    .line 121
    iget v3, p0, Lcom/android/quicksearchbox/QsbApplication;->mVersionCode:I

    if-nez v3, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 124
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 125
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/android/quicksearchbox/QsbApplication;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    iget v3, p0, Lcom/android/quicksearchbox/QsbApplication;->mVersionCode:I

    return v3

    .line 126
    :catch_0
    move-exception v0

    .line 129
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 577
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mVoiceSearch:Lcom/android/quicksearchbox/VoiceSearch;

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mVoiceSearch:Lcom/android/quicksearchbox/VoiceSearch;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mVoiceSearch:Lcom/android/quicksearchbox/VoiceSearch;

    return-object v0
.end method

.method public isCorpusEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 667
    iget-object v3, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    invoke-interface {v3}, Lcom/android/quicksearchbox/Corpora;->getEnabledCorpora()Ljava/util/List;

    move-result-object v0

    .line 668
    .local v0, corpora:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 669
    .local v1, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 670
    const/4 v3, 0x1

    .line 673
    .end local v1           #corpus:Lcom/android/quicksearchbox/Corpus;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onStartupComplete()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public setSearchEngineInfo(Ljava/lang/String;)V
    .locals 9
    .parameter "favicon"

    .prologue
    .line 225
    :try_start_0
    const-string v3, ""

    .line 226
    .local v3, oldFavicon:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    if-eqz v6, :cond_0

    .line 227
    iget-object v6, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v6}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v3

    .line 230
    :cond_0
    iget-object v6, p0, Lcom/android/quicksearchbox/QsbApplication;->mContext:Landroid/content/Context;

    const-string v7, "search_engine"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/search/ISearchEngineManager;

    .line 232
    .local v5, searchEngineManager:Lcom/mediatek/common/search/ISearchEngineManager;
    const-string v6, ""

    invoke-interface {v5, v6, p1}, Lcom/mediatek/common/search/ISearchEngineManager;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v6, ""

    invoke-interface {v5, v6, p1}, Lcom/mediatek/common/search/ISearchEngineManager;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 237
    const-string v0, ""

    .line 238
    .local v0, currentfavicon:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    if-eqz v6, :cond_1

    .line 239
    iget-object v6, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v6}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 243
    iget-object v6, p0, Lcom/android/quicksearchbox/QsbApplication;->mContext:Landroid/content/Context;

    const-string v7, "SearchSettings"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 247
    .local v4, p:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 248
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "search_engine"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    .end local v0           #currentfavicon:Ljava/lang/String;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #oldFavicon:Ljava/lang/String;
    .end local v4           #p:Landroid/content/SharedPreferences;
    .end local v5           #searchEngineManager:Lcom/mediatek/common/search/ISearchEngineManager;
    :cond_2
    :goto_1
    return-void

    .line 232
    .restart local v3       #oldFavicon:Ljava/lang/String;
    .restart local v5       #searchEngineManager:Lcom/mediatek/common/search/ISearchEngineManager;
    :cond_3
    invoke-interface {v5}, Lcom/mediatek/common/search/ISearchEngineManager;->getDefaultSearchEngine()Lcom/mediatek/common/search/SearchEngineInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 252
    .end local v3           #oldFavicon:Ljava/lang/String;
    .end local v5           #searchEngineManager:Lcom/mediatek/common/search/ISearchEngineManager;
    :catch_0
    move-exception v2

    .line 253
    .local v2, exception:Ljava/lang/IllegalArgumentException;
    const-string v6, "QsbApplication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot load search engine "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateCorpora()V
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 363
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpora;->update()V

    .line 366
    :cond_0
    return-void
.end method

.method public updateSearchEngine(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 295
    const-string v1, "search_engine"

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/SearchSettings;->getDefaultSearchEngineFavicon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, searchEngineFavicon:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v1}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/QsbApplication;->setSearchEngineInfo(Ljava/lang/String;)V

    .line 304
    :cond_1
    const-string v1, "QsbApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected search engine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v3}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v1, "QsbApplication"

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSearchEngineInfo()Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method public updateSearchEngineExternal(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "p"
    .parameter "newSearchEngine"

    .prologue
    .line 316
    if-nez p2, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/SearchSettings;->getSavedSearchEngineFavicon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/QsbApplication;->setSearchEngineInfo(Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v1}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/quicksearchbox/SearchSettings;->getSearchEngineFaviconByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, newFavicon:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/QsbApplication;->setSearchEngineInfo(Ljava/lang/String;)V

    .line 331
    .end local v0           #newFavicon:Ljava/lang/String;
    :cond_2
    const-string v1, "QsbApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected search engine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v3}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v1, "QsbApplication"

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSearchEngineInfo()Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
