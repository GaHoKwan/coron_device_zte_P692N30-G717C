.class public Lcom/android/quicksearchbox/QsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QsbReceiver.java"


# static fields
.field public static final ACTION_SEARCH_ENGINE_CHANGED:Ljava/lang/String; = "com.android.quicksearchbox.SEARCH_ENGINE_CHANGED"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "QSB.QsbReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, action:Ljava/lang/String;
    const-string v4, "SearchSettings"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 38
    .local v3, p:Landroid/content/SharedPreferences;
    const-string v4, "com.android.quicksearchbox.SEARCH_ENGINE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 41
    .local v2, extra:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 43
    .local v1, engineName:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 45
    const-string v4, "search_engine"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {p1}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/android/quicksearchbox/QsbApplication;->updateSearchEngineExternal(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 55
    .end local v1           #engineName:Ljava/lang/String;
    .end local v2           #extra:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v1       #engineName:Ljava/lang/String;
    .restart local v2       #extra:Landroid/os/Bundle;
    :cond_1
    invoke-static {p1}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/quicksearchbox/QsbApplication;->updateSearchEngine(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 51
    .end local v1           #engineName:Ljava/lang/String;
    .end local v2           #extra:Landroid/os/Bundle;
    :cond_2
    const-string v4, "com.mediatek.search.SEARCH_ENGINE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-static {p1}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/quicksearchbox/QsbApplication;->updateSearchEngineExternal(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method
