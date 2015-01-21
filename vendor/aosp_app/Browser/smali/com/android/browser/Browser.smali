.class public Lcom/android/browser/Browser;
.super Landroid/app/Application;
.source "Browser.java"


# static fields
.field static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field static final LOGV_ENABLED:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 46
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 47
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->initialize(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/Preloader;->initialize(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/browser/ext/Extensions;->getRegionalPhonePlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;

    move-result-object v0

    .line 52
    .local v0, browserRegionalPhone:Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;->updateBookmarks(Landroid/content/Context;)Z

    .line 53
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->updateSearchEngineSetting()V

    .line 55
    return-void
.end method
