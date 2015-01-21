.class public Lcom/android/quicksearchbox/google/GoogleSearch;
.super Landroid/app/Activity;
.source "GoogleSearch.java"


# static fields
.field private static final DBG:Z = false

.field private static final GOOGLE_SEARCH:Ljava/lang/String; = "Google"

.field static final GOOGLE_SEARCH_SOURCE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final INTERNAL_TAG:Ljava/lang/String; = "INTERNAL"

.field private static final TAG:Ljava/lang/String; = "GoogleSearch"


# instance fields
.field private mSearchDomainHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createLaunchUriIntentFromSearchIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 173
    const-string v8, "query"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, query:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 175
    const-string v8, "GoogleSearch"

    const-string v9, "Got search intent with no query."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 205
    :goto_0
    return-object v3

    .line 180
    :cond_0
    const-string v8, "app_data"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 181
    .local v0, appSearchData:Landroid/os/Bundle;
    const-string v6, "unknown"

    .line 182
    .local v6, source:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 183
    const-string v8, "source"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    :cond_1
    const-string v8, "com.android.browser.application_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, applicationId:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 192
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_2
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/quicksearchbox/google/GoogleSearch;->mSearchDomainHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    invoke-virtual {v9}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->getSearchBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&source=android-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v4, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, searchUri:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    .local v3, launchUriIntent:Landroid/content/Intent;
    const-string v8, "com.android.browser.application_id"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v3           #launchUriIntent:Landroid/content/Intent;
    .end local v5           #searchUri:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "GoogleSearch"

    const-string v9, "Error"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v7

    .line 205
    goto :goto_0
.end method

.method public static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "locale"

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, language:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, hl:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v0}, Lcom/android/quicksearchbox/google/GoogleSearch;->useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private handleViewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 118
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 119
    const-string v2, "GoogleSearch"

    const-string v3, "handleViewInent got a intent with null uri"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 123
    .local v1, viewIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleWebSearchExternal(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSearch;->createLaunchUriIntentFromSearchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, launchUriIntent:Landroid/content/Intent;
    const-string v2, "web_search_pendingintent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 140
    .local v1, pending:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/quicksearchbox/google/GoogleSearch;->launchPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/google/GoogleSearch;->launchIntent(Landroid/content/Intent;)V

    .line 143
    :cond_1
    return-void
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 128
    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 129
    .local v0, internalTag:Z
    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSearch;->handleWebSearchInternal(Landroid/content/Intent;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSearch;->handleWebSearchExternal(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleWebSearchInternal(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quicksearchbox/QsbApplication;->getSearchEngineInfo()Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v3

    .line 147
    .local v3, searchEngineInfo:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v3}, Lcom/mediatek/common/search/SearchEngineInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSearch;->handleWebSearchExternal(Landroid/content/Intent;)V

    .line 149
    const/4 v3, 0x0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v6, "query"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, query:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quicksearchbox/QsbApplication;->getSearchEngineInfo()Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mediatek/common/search/SearchEngineInfo;->getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, searchUri:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 156
    const-string v6, "GoogleSearch"

    const-string v7, "Unable to get search URI for "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quicksearchbox/QsbApplication;->getSearchEngineInfo()Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/common/search/SearchEngineInfo;->getKeyWord()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, searchEngineName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, v4, v5}, Lcom/android/quicksearchbox/google/GoogleSearch;->handleWebSearchInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 162
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .local v1, launchUriIntent:Landroid/content/Intent;
    const-string v6, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleWebSearchInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "searchEngineName"
    .parameter "searchUri"

    .prologue
    const/4 v4, 0x0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/mediatek/qsb/ext/IWebSearchHandler;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/content/pm/Signature;

    invoke-static {v5, v6, v7}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v3

    .line 246
    .local v3, pluginManager:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/qsb/ext/IWebSearchHandler;>;"
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v2

    .line 247
    .local v2, plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/qsb/ext/IWebSearchHandler;>;"
    invoke-virtual {v2}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/qsb/ext/IWebSearchHandler;

    .line 249
    .local v1, handler:Lcom/mediatek/qsb/ext/IWebSearchHandler;
    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/qsb/ext/IWebSearchHandler;->handleSearchInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 258
    .end local v1           #handler:Lcom/mediatek/qsb/ext/IWebSearchHandler;
    .end local v2           #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/qsb/ext/IWebSearchHandler;>;"
    .end local v3           #pluginManager:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/qsb/ext/IWebSearchHandler;>;"
    :goto_0
    return v4

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v5, "GoogleSearch"

    const-string v6, "No plugin found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "GoogleSearch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "GoogleSearch"

    const-string v6, "None pointer Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    :try_start_0
    const-string v1, "GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found to handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 4
    .parameter "pending"
    .parameter "fillIn"

    .prologue
    .line 224
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1, p0, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v1, 0x1

    .line 228
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending intent cancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "language"
    .parameter "country"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    const-string v2, "en"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string v0, "GB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    const-string v2, "zh"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    const-string v2, "CN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TW"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 109
    :cond_3
    const-string v2, "pt"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "BR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "PT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/QsbApplication;->getSearchBaseUrlHelper()Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quicksearchbox/google/GoogleSearch;->mSearchDomainHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    .line 75
    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/google/GoogleSearch;->handleWebSearchIntent(Landroid/content/Intent;)V

    .line 82
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 83
    return-void

    .line 69
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/google/GoogleSearch;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 80
    :cond_3
    const-string v2, "GoogleSearch"

    const-string v3, "Unhandled intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
