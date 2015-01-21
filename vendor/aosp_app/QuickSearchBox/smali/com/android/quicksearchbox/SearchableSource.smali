.class public Lcom/android/quicksearchbox/SearchableSource;
.super Lcom/android/quicksearchbox/AbstractSource;
.source "SearchableSource.java"


# static fields
.field private static final DBG:Z = false

.field private static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final TAG:Ljava/lang/String; = "QSB.SearchableSource"


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mName:Ljava/lang/String;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mSuggestUriBase:Landroid/net/Uri;

.field private final mVersionCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 5
    .parameter "context"
    .parameter "searchable"
    .parameter "uiThread"
    .parameter "iconLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1, p3, p4}, Lcom/android/quicksearchbox/AbstractSource;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    .line 67
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/quicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 74
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 76
    .local v0, componentName:Landroid/content/ComponentName;
    iput-object p2, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    .line 77
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quicksearchbox/SearchableSource;->mName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 79
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 80
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 81
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/android/quicksearchbox/SearchableSource;->mVersionCode:I

    .line 82
    return-void
.end method

.method private canRead(Landroid/net/Uri;)Z
    .locals 14
    .parameter "uri"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 121
    .local v8, provider:Landroid/content/pm/ProviderInfo;
    if-nez v8, :cond_0

    .line 122
    const-string v11, "QSB.SearchableSource"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableSource;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has bad suggestion authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v11, 0x0

    .line 155
    :goto_0
    return v11

    .line 125
    :cond_0
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 126
    .local v9, readPermission:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 128
    const/4 v11, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 131
    .local v7, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    .line 132
    .local v10, uid:I
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v9, v7, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_2

    .line 135
    const/4 v11, 0x1

    goto :goto_0

    .line 137
    :cond_2
    iget-object v4, v8, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 138
    .local v4, pathPermissions:[Landroid/content/pm/PathPermission;
    if-eqz v4, :cond_3

    array-length v11, v4

    if-nez v11, :cond_4

    .line 141
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 143
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, path:Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Landroid/content/pm/PathPermission;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v6, v0, v1

    .line 145
    .local v6, perm:Landroid/content/pm/PathPermission;
    invoke-virtual {v6}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, pathReadPermission:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v6, v3}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5, v7, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_5

    .line 151
    const/4 v11, 0x1

    goto :goto_0

    .line 144
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    .end local v5           #pathReadPermission:Ljava/lang/String;
    .end local v6           #perm:Landroid/content/pm/PathPermission;
    :cond_6
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private createVoiceAppSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 12
    .parameter "appData"

    .prologue
    .line 255
    iget-object v9, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v7

    .line 260
    .local v7, searchActivity:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEARCH"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v6, queryIntent:Landroid/content/Intent;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x4000

    invoke-static {v9, v10, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 269
    .local v3, pending:Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v5, queryExtras:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 271
    const-string v9, "app_data"

    invoke-virtual {v5, v9, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 277
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v8, voiceIntent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    iget-object v9, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/quicksearchbox/SearchableSource;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, languageModel:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 283
    const-string v1, "free_form"

    .line 285
    :cond_1
    iget-object v9, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/quicksearchbox/SearchableSource;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, prompt:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/quicksearchbox/SearchableSource;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, language:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 288
    .local v2, maxResults:I
    if-gtz v2, :cond_2

    .line 289
    const/4 v2, 0x1

    .line 292
    :cond_2
    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v9, "android.speech.extra.PROMPT"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v9, "android.speech.extra.LANGUAGE"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v9, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const-string v10, "calling_package"

    if-nez v7, :cond_3

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v9, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    const-string v9, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 303
    return-object v8

    .line 296
    :cond_3
    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private getSourceIconResource()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v0

    return v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchableSource;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 464
    .local v0, text:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private declared-synchronized getSuggestUriBase(Landroid/app/SearchableInfo;)Landroid/net/Uri;
    .locals 5
    .parameter "searchable"

    .prologue
    const/4 v3, 0x0

    .line 343
    monitor-enter p0

    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 346
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/quicksearchbox/SearchableSource;->mSuggestUriBase:Landroid/net/Uri;

    if-nez v4, :cond_3

    .line 348
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, authority:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 353
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 358
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, contentPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 360
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 364
    :cond_2
    const-string v3, "search_suggest_query"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 365
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quicksearchbox/SearchableSource;->mSuggestUriBase:Landroid/net/Uri;

    .line 367
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #contentPath:Ljava/lang/String;
    .end local v2           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_3
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchableSource;->mSuggestUriBase:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getSuggestions(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "searchable"
    .parameter "query"
    .parameter "queryLimit"

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-direct {p0, p2}, Lcom/android/quicksearchbox/SearchableSource;->getSuggestUriBase(Landroid/app/SearchableInfo;)Landroid/net/Uri;

    move-result-object v6

    .line 377
    .local v6, base:Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 401
    :goto_0
    return-object v2

    .line 378
    :cond_0
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 381
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 384
    .local v4, selArgs:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 385
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p3, v4, v0

    .line 390
    .restart local v4       #selArgs:[Ljava/lang/String;
    :goto_1
    const-string v0, "limit"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 392
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 399
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, c:Landroid/database/Cursor;
    move-object v2, v7

    .line 401
    goto :goto_0

    .line 387
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v8, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"

    .prologue
    .line 457
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static getValidationCursor(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "searchable"
    .parameter "shortcutId"
    .parameter "extraData"

    .prologue
    const/4 v2, 0x0

    .line 406
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    .line 407
    .local v6, authority:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 431
    :goto_0
    return-object v2

    .line 411
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 416
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, contentPath:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 418
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 422
    :cond_1
    const-string v0, "search_suggest_shortcut"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 423
    invoke-virtual {v8, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 425
    const-string v0, "suggest_intent_extra_data"

    invoke-virtual {v8, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 431
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method private loadSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchableSource;->getSourceIconResource()I

    move-result v0

    .line 214
    .local v0, iconRes:I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 216
    :goto_0
    return-object v2

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 216
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/quicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public canRead()Z
    .locals 6

    .prologue
    .line 92
    iget-object v4, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, authority:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 96
    const/4 v4, 0x1

    .line 110
    :goto_0
    return v4

    .line 99
    :cond_0
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 103
    .local v3, uriBuilder:Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, contentPath:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    :cond_1
    const-string v4, "search_suggest_query"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 109
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 110
    .local v2, uri:Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/quicksearchbox/SearchableSource;->canRead(Landroid/net/Uri;)Z

    move-result v4

    goto :goto_0
.end method

.method public canReceiveVoiceSearchIntent()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 482
    iget-object v4, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v2

    .line 484
    :cond_1
    iget-object v4, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 488
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    move v2, v3

    .line 490
    goto :goto_0
.end method

.method public createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "appData"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/AbstractSource;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchableSource;->createVoiceAppSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultIntentAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 449
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #action:Ljava/lang/String;
    :cond_0
    const-string v0, "android.intent.action.SEARCH"

    goto :goto_0
.end method

.method public getDefaultIntentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/SearchableSource;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getIconPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestPackage()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, iconPackage:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 178
    .end local v0           #iconPackage:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #iconPackage:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMaxShortcuts(Lcom/android/quicksearchbox/Config;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableSource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/Config;->getMaxShortcuts(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v0

    return v0
.end method

.method public getSearchableInfo()Landroid/app/SearchableInfo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSettingsDescriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/SearchableSource;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v2, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchableSource;->loadSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/android/quicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 209
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getSourceIconUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchableSource;->getSourceIconResource()I

    move-result v0

    .line 222
    .local v0, resourceId:I
    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020016

    invoke-static {v1, v2}, Lcom/android/quicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2, v0}, Lcom/android/quicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuggestAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/SearchableSource;->getSuggestUriBase(Landroid/app/SearchableInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 338
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 339
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SourceResult;
    .locals 5
    .parameter "query"
    .parameter "queryLimit"
    .parameter "onlySource"

    .prologue
    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/quicksearchbox/SearchableSource;->getSuggestions(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 310
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v2, Lcom/android/quicksearchbox/CursorBackedSourceResult;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/quicksearchbox/CursorBackedSourceResult;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "QSB.SearchableSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    new-instance v2, Lcom/android/quicksearchbox/CursorBackedSourceResult;

    invoke-direct {v2, p0, p1}, Lcom/android/quicksearchbox/CursorBackedSourceResult;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchableSource;->getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mVersionCode:I

    return v0
.end method

.method public includeInAll()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->queryAfterZeroResults()Z

    move-result v0

    return v0
.end method

.method public refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 6
    .parameter "shortcutId"
    .parameter "extraData"

    .prologue
    const/4 v3, 0x0

    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-static {v2, v4, p1, p2}, Lcom/android/quicksearchbox/SearchableSource;->getValidationCursor(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 323
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 325
    :cond_0
    new-instance v2, Lcom/android/quicksearchbox/CursorBackedSourceResult;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Lcom/android/quicksearchbox/CursorBackedSourceResult;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-object v2

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "QSB.SearchableSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    if-eqz v0, :cond_1

    .line 329
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v2, v3

    .line 332
    goto :goto_0
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    return v0
.end method
