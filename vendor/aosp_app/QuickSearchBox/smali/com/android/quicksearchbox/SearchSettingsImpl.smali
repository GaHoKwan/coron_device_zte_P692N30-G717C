.class public Lcom/android/quicksearchbox/SearchSettingsImpl;
.super Ljava/lang/Object;
.source "SearchSettingsImpl.java"

# interfaces
.implements Lcom/android/quicksearchbox/SearchSettings;


# static fields
.field private static final ACTION_SEARCHABLE_ITEMS:Ljava/lang/String; = "com.android.quicksearchbox.action.SEARCHABLE_ITEMS"

.field private static final CORPUS_ENABLED_PREF_PREFIX:Ljava/lang/String; = "enable_corpus_"

.field private static final DBG:Z = false

.field private static final FIRST_VOICE_HINT_DISPLAY_TIME:Ljava/lang/String; = "first_voice_search_hint_time"

.field private static final LAST_SEEN_VOICE_SEARCH_VERSION:Ljava/lang/String; = "voice_search_version"

.field private static final NEXT_VOICE_SEARCH_HINT_INDEX_PREF:Ljava/lang/String; = "next_voice_search_hint"

.field public static final PREFERENCES_NAME:Ljava/lang/String; = "SearchSettings"

.field private static final SEARCH_BASE_DOMAIN_APPLY_TIME:Ljava/lang/String; = "search_base_domain_apply_time"

.field public static final SEARCH_BASE_DOMAIN_PREF:Ljava/lang/String; = "search_base_domain"

.field private static final TAG:Ljava/lang/String; = "QSB.SearchSettingsImpl"

.field public static final USE_GOOGLE_COM_PREF:Ljava/lang/String; = "use_google_com"


# instance fields
.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 101
    return-void
.end method

.method private getAndIncrementIntPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 2
    .parameter "prefs"
    .parameter "name"

    .prologue
    .line 276
    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 277
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/quicksearchbox/SearchSettingsImpl;->storeInt(Ljava/lang/String;I)V

    .line 278
    return v0
.end method

.method public static getCorpusEnabledPreference(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;
    .locals 2
    .parameter "corpus"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_corpus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMenuItems(Landroid/view/Menu;Z)V
    .locals 3
    .parameter "menu"
    .parameter "showDisabled"

    .prologue
    .line 255
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f0e0001

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 257
    const v2, 0x7f0f002c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 258
    .local v1, item:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 259
    return-void
.end method

.method public allowWebSearchShortcuts()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public broadcastSettingsChanged()V
    .locals 4

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "QSB.SearchSettingsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method protected getConfig()Lcom/android/quicksearchbox/Config;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultSearchEngineFavicon()Ljava/lang/String;
    .locals 10

    .prologue
    .line 148
    iget-object v7, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    const-string v8, "search_engine"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/search/ISearchEngineManager;

    .line 150
    .local v6, searchEngineManager:Lcom/mediatek/common/search/ISearchEngineManager;
    invoke-interface {v6}, Lcom/mediatek/common/search/ISearchEngineManager;->getDefaultSearchEngine()Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, favicon:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    const-class v8, Lcom/mediatek/qsb/ext/IPreferenceSetting;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/content/pm/Signature;

    invoke-static {v7, v8, v9}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v5

    .line 156
    .local v5, pluginManager:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/qsb/ext/IPreferenceSetting;>;"
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v4

    .line 157
    .local v4, plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/qsb/ext/IPreferenceSetting;>;"
    invoke-virtual {v4}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/qsb/ext/IPreferenceSetting;

    .line 159
    .local v3, handler:Lcom/mediatek/qsb/ext/IPreferenceSetting;
    iget-object v7, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    invoke-interface {v3, v7}, Lcom/mediatek/qsb/ext/IPreferenceSetting;->getDefaultSearchEngine(Landroid/content/Context;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v1

    .line 160
    .local v1, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 171
    .end local v1           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    .end local v3           #handler:Lcom/mediatek/qsb/ext/IPreferenceSetting;
    .end local v4           #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/qsb/ext/IPreferenceSetting;>;"
    .end local v5           #pluginManager:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/qsb/ext/IPreferenceSetting;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v7, "QSB.SearchSettingsImpl"

    const-string v8, "No plugin found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "QSB.SearchSettingsImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v7, "QSB.SearchSettingsImpl"

    const-string v8, "None pointer Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNextVoiceSearchHintIndex(I)I
    .locals 3
    .parameter "size"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "next_voice_search_hint"

    invoke-direct {p0, v1, v2}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getAndIncrementIntPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    .line 271
    .local v0, i:I
    rem-int v1, v0, p1

    return v1
.end method

.method public getSavedSearchEngineFavicon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "search_engine"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, favicon:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getDefaultSearchEngineFavicon()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    return-object v0
.end method

.method public getSearchBaseDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_base_domain"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseDomainApplyTime()J
    .locals 4

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_base_domain_apply_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchEngineFaviconByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    const-string v2, "search_engine"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/ISearchEngineManager;

    .line 183
    .local v0, searchEngineManager:Lcom/mediatek/common/search/ISearchEngineManager;
    invoke-interface {v0, p1}, Lcom/mediatek/common/search/ISearchEngineManager;->getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/mediatek/common/search/ISearchEngineManager;->getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getDefaultSearchEngineFavicon()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSearchEngineNameByFavicon(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "favicon"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    const-string v3, "search_engine"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/search/ISearchEngineManager;

    .line 196
    .local v1, searchEngineManager:Lcom/mediatek/common/search/ISearchEngineManager;
    const-string v2, ""

    invoke-interface {v1, v2, p1}, Lcom/mediatek/common/search/ISearchEngineManager;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-interface {v1, v2, p1}, Lcom/mediatek/common/search/ISearchEngineManager;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    .line 202
    .local v0, searchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 196
    .end local v0           #searchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;
    :cond_0
    const-string v2, ""

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getDefaultSearchEngineFavicon()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mediatek/common/search/ISearchEngineManager;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SearchSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSearchSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, settings:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    return-object v0
.end method

.method public getSearchableItemsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.quicksearchbox.action.SEARCHABLE_ITEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method public haveVoiceSearchHintsExpired(I)Z
    .locals 12
    .parameter "currentVoiceSearchVersion"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 288
    .local v5, prefs:Landroid/content/SharedPreferences;
    if-eqz p1, :cond_2

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 290
    .local v0, currentTime:J
    const-string v8, "voice_search_version"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 291
    .local v4, lastVoiceSearchVersion:I
    const-string v8, "first_voice_search_hint_time"

    invoke-interface {v5, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 292
    .local v2, firstHintTime:J
    cmp-long v8, v2, v9

    if-eqz v8, :cond_0

    if-eq p1, v4, :cond_1

    .line 293
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "voice_search_version"

    invoke-interface {v8, v9, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "first_voice_search_hint_time"

    invoke-interface {v8, v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-static {v8}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 296
    move-wide v2, v0

    .line 298
    :cond_1
    sub-long v8, v0, v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/quicksearchbox/Config;->getVoiceSearchHintActivePeriod()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 306
    .end local v0           #currentTime:J
    .end local v2           #firstHintTime:J
    .end local v4           #lastVoiceSearchVersion:I
    :cond_2
    :goto_0
    return v6

    .restart local v0       #currentTime:J
    .restart local v2       #firstHintTime:J
    .restart local v4       #lastVoiceSearchVersion:I
    :cond_3
    move v6, v7

    .line 302
    goto :goto_0
.end method

.method public isCorpusEnabled(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 3
    .parameter "corpus"

    .prologue
    .line 215
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v0

    .line 216
    .local v0, defaultEnabled:Z
    invoke-static {p1}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getCorpusEnabledPreference(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, sourceEnabledPref:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method protected removePref(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 242
    return-void
.end method

.method public resetVoiceSearchHintFirstSeenTime()V
    .locals 3

    .prologue
    .line 282
    const-string v0, "first_voice_search_hint_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quicksearchbox/SearchSettingsImpl;->storeLong(Ljava/lang/String;J)V

    .line 283
    return-void
.end method

.method public setSearchBaseDomain(Ljava/lang/String;)V
    .locals 4
    .parameter "searchBaseUrl"

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 347
    .local v0, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "search_base_domain"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 348
    const-string v1, "search_base_domain_apply_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 350
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 351
    return-void
.end method

.method public setUseGoogleCom(Z)V
    .locals 1
    .parameter "useGoogleCom"

    .prologue
    .line 327
    const-string v0, "use_google_com"

    invoke-virtual {p0, v0, p1}, Lcom/android/quicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 328
    return-void
.end method

.method public shouldSyncSearchEngineWithBrowser()Z
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "syc_search_engine"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldUseGoogleCom()Z
    .locals 3

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_google_com"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected storeBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 226
    return-void
.end method

.method protected storeInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 230
    return-void
.end method

.method protected storeLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 234
    return-void
.end method

.method protected storeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 238
    return-void
.end method

.method public upgradeSettingsIfNeeded()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
