.class public Lcom/android/quicksearchbox/VoiceSearch;
.super Ljava/lang/Object;
.source "VoiceSearch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QSB.VoiceSearch"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/quicksearchbox/VoiceSearch;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/quicksearchbox/VoiceSearch;->createVoiceSearchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/quicksearchbox/VoiceSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 75
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    return-object v1
.end method


# virtual methods
.method protected corpusSupportsVoiceSearch(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 2
    .parameter "corpus"

    .prologue
    const/4 v0, 0x1

    .line 58
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->voiceSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->canReceiveVoiceSearchIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createVoiceSearchHelpIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createVoiceSearchIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .parameter "appData"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/quicksearchbox/VoiceSearch;->isVoiceSearchAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/VoiceSearch;->createVoiceSearchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v1, "app_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/quicksearchbox/VoiceSearch;->createVoiceSearchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/VoiceSearch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/quicksearchbox/VoiceSearch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getVersion()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/quicksearchbox/VoiceSearch;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 109
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 115
    :goto_0
    return v3

    .line 110
    :cond_0
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 112
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/VoiceSearch;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_1
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 113
    .restart local v0       #ci:Landroid/content/pm/ComponentInfo;
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "QSB.VoiceSearch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find voice search package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVoiceSearchAvailable()Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/quicksearchbox/VoiceSearch;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowVoiceSearch(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 1
    .parameter "corpus"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/VoiceSearch;->corpusSupportsVoiceSearch(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/VoiceSearch;->isVoiceSearchAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
