.class public Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;
.super Ljava/lang/Object;
.source "SearchEngineItemsController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/quicksearchbox/preferences/PreferenceController;


# static fields
.field private static final ACTION_BROWSER_SEARCH_ENGINE_CHANGED:Ljava/lang/String; = "com.android.browser.SEARCH_ENGINE_CHANGED"

.field private static final DBG:Z = true

.field public static final PREF_SYNC_SEARCH_ENGINE:Ljava/lang/String; = "syc_search_engine"

.field public static final SEARCH_ENGINE_PREF:Ljava/lang/String; = "search_engine"

.field private static final TAG:Ljava/lang/String; = "QSB.SearchEngineItemsController"


# instance fields
.field private mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

.field private final mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/String;

.field private mEntryValues:[Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRadioPrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchEnginePreferences:Landroid/preference/PreferenceGroup;

.field private final mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchSettings;Landroid/content/Context;)V
    .locals 2
    .parameter "searchSettings"
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 69
    iput-object p2, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "SearchSettings"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mPrefs:Landroid/content/SharedPreferences;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mRadioPrefs:Ljava/util/List;

    .line 73
    return-void
.end method

.method private broadcastSearchEngineChangedExternal(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.SEARCH_ENGINE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v1, "search_engine"

    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/quicksearchbox/SearchSettings;->getSavedSearchEngineFavicon()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SearchSettings;->getSearchEngineNameByFavicon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "QSB.SearchEngineItemsController"

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

    .line 270
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method private broadcastSearchEngineChangedInternal(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.quicksearchbox.SEARCH_ENGINE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "QSB.SearchEngineItemsController"

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

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method private createSearchEnginePreference(Ljava/lang/String;)Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;
    .locals 2
    .parameter "entry"

    .prologue
    .line 185
    new-instance v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;

    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, sourcePref:Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mRadioPrefs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method private createUnifySearchEnginePreference()Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, sourcePref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static getSearchEngineInfos(Landroid/content/Context;)Ljava/util/List;
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
    .line 105
    const-string v1, "search_engine"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/ISearchEngineManager;

    .line 107
    .local v0, searchEngineManager:Lcom/mediatek/common/search/ISearchEngineManager;
    invoke-interface {v0}, Lcom/mediatek/common/search/ISearchEngineManager;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getSettings()Lcom/android/quicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    return-object v0
.end method

.method private populateSourcePreference()V
    .locals 19

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getSearchEngineInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 116
    .local v13, searchEngines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    .line 117
    .local v9, len:I
    if-gtz v9, :cond_0

    .line 118
    const-string v17, "QSB.SearchEngineItemsController"

    const-string v18, "SearchEngineManager.getAvailableSearchEngines return 0 search engine"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-void

    .line 121
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntryValues:[Ljava/lang/String;

    .line 122
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntries:[Ljava/lang/String;

    .line 123
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntryValues:[Ljava/lang/String;

    .line 124
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntries:[Ljava/lang/String;

    .line 125
    const/4 v15, -0x1

    .line 126
    .local v15, selectedItem:I
    const/4 v4, -0x1

    .line 128
    .local v4, defaultEngineIndex:I
    invoke-direct/range {p0 .. p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/quicksearchbox/SearchSettings;->getSavedSearchEngineFavicon()Ljava/lang/String;

    move-result-object v12

    .line 129
    .local v12, savedFavicon:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/quicksearchbox/SearchSettings;->getDefaultSearchEngineFavicon()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, defaultFavicon:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v9, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntryValues:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v18, v7

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntries:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/common/search/SearchEngineInfo;->getLabel()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v18, v7

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntryValues:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 136
    move v15, v7

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntryValues:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 140
    move v4, v7

    .line 131
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 144
    :cond_3
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-direct/range {p0 .. p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 145
    .local v3, consistencyPref:Landroid/preference/PreferenceCategory;
    const v17, 0x7f090007

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mSearchEnginePreferences:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->createUnifySearchEnginePreference()Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    move-object/from16 v17, v0

    const-string v18, "toggle_consistency"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    move-object/from16 v17, v0

    const v18, 0x7f09000a

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090009

    invoke-virtual/range {v17 .. v18}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090009

    invoke-virtual/range {v17 .. v18}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/quicksearchbox/SearchSettings;->shouldSyncSearchEngineWithBrowser()Z

    move-result v16

    .line 155
    .local v16, syncSearchEngine:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 157
    new-instance v14, Landroid/preference/PreferenceCategory;

    invoke-direct/range {p0 .. p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 158
    .local v14, searchEnginesPref:Landroid/preference/PreferenceCategory;
    const v17, 0x7f090008

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mSearchEnginePreferences:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntries:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v10, :cond_4

    aget-object v6, v2, v8

    .line 161
    .local v6, entry:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->createSearchEnginePreference(Ljava/lang/String;)Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;

    move-result-object v11

    .line 162
    .local v11, pref:Landroid/preference/Preference;
    invoke-virtual {v14, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 160
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 165
    .end local v6           #entry:Ljava/lang/String;
    .end local v11           #pref:Landroid/preference/Preference;
    :cond_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 166
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    const/4 v15, 0x0

    .line 169
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mRadioPrefs:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/quicksearchbox/preferences/RadioPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    move v15, v4

    .line 166
    goto :goto_3
.end method


# virtual methods
.method public getCorporaPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "search_engine"

    return-object v0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 0
    .parameter "searchEnginePreferences"

    .prologue
    .line 80
    check-cast p1, Landroid/preference/PreferenceGroup;

    .end local p1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mSearchEnginePreferences:Landroid/preference/PreferenceGroup;

    .line 81
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->populateSourcePreference()V

    .line 82
    return-void
.end method

.method public onCreateComplete()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 199
    iget-object v3, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mRadioPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;

    .line 200
    .local v2, radioPref:Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;
    invoke-virtual {v2, v5}, Lcom/android/quicksearchbox/preferences/RadioPreference;->setChecked(Z)V

    goto :goto_0

    .end local v2           #radioPref:Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;
    :cond_0
    move-object v3, p1

    .line 202
    check-cast v3, Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;

    invoke-virtual {v3, v4}, Lcom/android/quicksearchbox/preferences/RadioPreference;->setChecked(Z)V

    .line 203
    iget-object v3, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "search_engine"

    iget-object v6, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mEntryValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 207
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplication;->isMixMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 212
    :goto_1
    return v3

    .line 210
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    iget-object v3, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quicksearchbox/QsbApplication;->createSearchEngineInfo()V

    move v3, v5

    .line 212
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "syc_search_engine"

    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->broadcastSearchEngineChangedInternal(Landroid/content/Context;)V

    .line 231
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mCheckBoxPref:Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/preferences/SearchEngineItemsController;->broadcastSearchEngineChangedExternal(Landroid/content/Context;)V

    .line 234
    :cond_0
    return-void
.end method
