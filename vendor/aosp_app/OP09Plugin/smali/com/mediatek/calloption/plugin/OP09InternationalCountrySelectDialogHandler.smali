.class public Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;
.super Ljava/lang/Object;
.source "OP09InternationalCountrySelectDialogHandler.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler$OnCountrySelectListener;
    }
.end annotation


# static fields
.field private static final CONTINENT_CODE_ASIA:Ljava/lang/String; = "142"

.field private static final CONTINENT_CODE_WORLD:Ljava/lang/String; = "001"

.field private static final MAP_KEY_NAME_CONTINENT_CODE:Ljava/lang/String; = "ContinentCode"

.field private static final MAP_KEY_NAME_CONTINENT_EXPAND:Ljava/lang/String; = "Expand"

.field private static final MAP_KEY_NAME_CONTINENT_NAME:Ljava/lang/String; = "ContinentName"

.field private static final MAP_KEY_NAME_COUNTRY_CODE:Ljava/lang/String; = "CountryCode"

.field private static final MAP_KEY_NAME_COUNTRY_ISO:Ljava/lang/String; = "CountryISO"

.field private static final MAP_KEY_NAME_COUNTRY_NAME:Ljava/lang/String; = "CountryName"

.field private static final TAG:Ljava/lang/String; = "OP09InternationalCountrySelectDialogHandler"


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mContinentInfoMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCountryInfoMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCountryListView:Landroid/widget/ExpandableListView;

.field private mCountrySelectListener:Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler$OnCountrySelectListener;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogView:Landroid/view/View;

.field private mIsInflated:Z

.field private mListAdapter:Landroid/widget/SimpleExpandableListAdapter;

.field private mNoSearchResult:Landroid/widget/TextView;

.field private mPluginContext:Landroid/content/Context;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler$OnCountrySelectListener;)V
    .locals 1
    .parameter "activityContext"
    .parameter "pluginContext"
    .parameter "countrySelectListener"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mActivityContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mPluginContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountrySelectListener:Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler$OnCountrySelectListener;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mContinentInfoMapList:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    .line 80
    return-void
.end method

.method private addSupportedCountryInfoToMapList(Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, continentInfoMapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, countryInfoMapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v14

    .line 242
    .local v14, regionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 244
    .local v4, countryCodeKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, iterator:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 245
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 246
    .local v3, countryCode:Ljava/lang/Integer;
    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 247
    .local v13, regionCodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, iterator2:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 248
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 249
    .local v5, countryISO:Ljava/lang/String;
    new-instance v12, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v12, localeCountry:Ljava/util/Locale;
    const-string v15, "001"

    const-string v16, "localeCountry.getContinent()"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 253
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v7, itemCountry:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "CountryISO"

    invoke-interface {v7, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v15, "CountryCode"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v15, "CountryName"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v15, "localeCountry.getContinent()"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->findSameContinentCountryListItem(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 260
    .local v8, itemCountryInfoMapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v8, :cond_2

    .line 262
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v6, itemContinent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v16, "localeCountry.getContinent()"

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v11, localeContinent:Ljava/util/Locale;
    const-string v15, "ContinentName"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v15, "ContinentCode"

    const-string v16, "localeCountry.getContinent()"

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #itemCountryInfoMapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .restart local v8       #itemCountryInfoMapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v6           #itemContinent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #localeContinent:Ljava/util/Locale;
    :cond_2
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 274
    .end local v3           #countryCode:Ljava/lang/Integer;
    .end local v5           #countryISO:Ljava/lang/String;
    .end local v7           #itemCountry:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #itemCountryInfoMapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10           #iterator2:Ljava/util/Iterator;
    .end local v12           #localeCountry:Ljava/util/Locale;
    .end local v13           #regionCodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method private expandAllContinentsOfCountrySelectList()V
    .locals 3

    .prologue
    .line 219
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleExpandableListAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 220
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 221
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method private expandSpecifiedContinentOfCountrySelectList(Ljava/lang/String;)V
    .locals 4
    .parameter "continentCodeToExpand"

    .prologue
    .line 226
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleExpandableListAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 227
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 228
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleExpandableListAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/SimpleExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 229
    .local v0, continentItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 230
    const-string v3, "ContinentCode"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 227
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    .line 237
    .end local v0           #continentItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private findSameContinentCountryListItem(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter "continentCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, continentInfoMapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, countryInfoMapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 291
    .local v2, iteratorContinentMap:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 292
    .local v3, iteratorCountryInfoMap:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 294
    .local v0, itemContinentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 295
    .local v1, itemCountryInfoMap:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v4, "ContinentCode"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    .end local v0           #itemContinentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #itemCountryInfoMap:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initDialogView()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 103
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mPluginContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    const v1, 0x7f0b0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ExpandableListView;

    .line 107
    new-instance v0, Landroid/widget/SimpleExpandableListAdapter;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mPluginContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mContinentInfoMapList:Ljava/util/List;

    const v3, 0x7f030021

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "ContinentName"

    aput-object v5, v4, v10

    new-array v5, v11, [I

    const v6, 0x7f0b0091

    aput v6, v5, v10

    iget-object v6, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    const v7, 0x7f030022

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "CountryName"

    aput-object v9, v8, v10

    const-string v9, "CountryCode"

    aput-object v9, v8, v11

    new-array v9, v12, [I

    fill-array-data v9, :array_0

    invoke-direct/range {v0 .. v9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleExpandableListAdapter;

    .line 117
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    .line 121
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v11}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 123
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mPluginContext:Landroid/content/Context;

    const v2, 0x104000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v10}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    const v1, 0x7f0b0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mNoSearchResult:Landroid/widget/TextView;

    .line 128
    return-void

    .line 107
    nop

    :array_0
    .array-data 0x4
        0x93t 0x0t 0xbt 0x7ft
        0x92t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private isSameMapItemExits(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "itemKey"
    .parameter "itemValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, countryInfoMapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 278
    .local v1, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 280
    .local v0, itemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    const/4 v2, 0x1

    .line 284
    .end local v0           #itemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 303
    const-string v0, "OP09InternationalCountrySelectDialogHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method private searchCountryInfoFromMap(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .parameter "searchText"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, continentInfoMapListForSearch:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, countryInfoMapListForSearch:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .local p4, continentInfoMapListResult:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p5, countryInfoMapListResult:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 185
    .local v8, iteratorCountryInfoList:Ljava/util/Iterator;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 186
    .local v6, iteratorContinentInfo:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 187
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 189
    .local v10, subCountryInfoMapListForSearch:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 190
    .local v2, continentInfoMapItemForSearch:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v11, subCountryInfoMapListResult:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 192
    .local v9, iteratorCountryInfoSubList:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 193
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 194
    .local v7, iteratorCountryInfoItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "CountryName"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    .local v5, countryName:Ljava/lang/String;
    const-string v12, "CountryCode"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    .local v3, countryCode:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 197
    :cond_2
    const-string v13, "ContinentName"

    const-string v12, "ContinentName"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v13, v12}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->isSameMapItemExits(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v1, continentInfoItemResult:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "ContinentName"

    const-string v13, "ContinentName"

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v1           #continentInfoItemResult:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v4, countryInfoMapItemResult:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "CountryISO"

    const-string v13, "CountryISO"

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v12, "CountryCode"

    invoke-interface {v4, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v12, "CountryName"

    invoke-interface {v4, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    .end local v3           #countryCode:Ljava/lang/String;
    .end local v4           #countryInfoMapItemResult:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #countryName:Ljava/lang/String;
    .end local v7           #iteratorCountryInfoItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 213
    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 216
    .end local v2           #continentInfoMapItemForSearch:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #iteratorCountryInfoSubList:Ljava/util/Iterator;
    .end local v10           #subCountryInfoMapListForSearch:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11           #subCountryInfoMapListResult:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_5
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 164
    .local v0, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountrySelectListener:Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler$OnCountrySelectListener;

    const-string v1, "CountryISO"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "CountryCode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "CountryName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v1, v4, v2}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler$OnCountrySelectListener;->onCountrySelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 171
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onHandledDialogDismiss()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 178
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 8
    .parameter "inputText"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 137
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mContinentInfoMapList:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mContinentInfoMapList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, continentInfoMapListForSearch:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, countryInfoMapListForSearch:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-direct {p0, v2, v3}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->addSupportedCountryInfoToMapList(Ljava/util/List;Ljava/util/List;)V

    .line 143
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mContinentInfoMapList:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->searchCountryInfoFromMap(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 145
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->expandAllContinentsOfCountrySelectList()V

    .line 150
    .end local v2           #continentInfoMapListForSearch:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #countryInfoMapListForSearch:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :goto_0
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mNoSearchResult:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 158
    return v6

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mContinentInfoMapList:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->addSupportedCountryInfoToMapList(Ljava/util/List;Ljava/util/List;)V

    .line 148
    const-string v0, "142"

    invoke-direct {p0, v0}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->expandSpecifiedContinentOfCountrySelectList(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mNoSearchResult:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public showCountrySelectDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mContinentInfoMapList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mContinentInfoMapList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 85
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mContinentInfoMapList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->addSupportedCountryInfoToMapList(Ljava/util/List;Ljava/util/List;)V

    .line 86
    iget-boolean v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mIsInflated:Z

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    const-string v2, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 96
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mNoSearchResult:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const-string v1, "142"

    invoke-direct {p0, v1}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->expandSpecifiedContinentOfCountrySelectList(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 100
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->initDialogView()V

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mIsInflated:Z

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mActivityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method
