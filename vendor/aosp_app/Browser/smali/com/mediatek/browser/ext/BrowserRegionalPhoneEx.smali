.class public Lcom/mediatek/browser/ext/BrowserRegionalPhoneEx;
.super Ljava/lang/Object;
.source "BrowserRegionalPhoneEx.java"

# interfaces
.implements Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserRegionalPhoneEx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSearchEngine(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "mPrefs"
    .parameter "context"

    .prologue
    .line 18
    const-string v0, "BrowserRegionalPhoneEx"

    const-string v1, "Enter: updateSearchEngine --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateBookmarks(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 13
    const-string v0, "BrowserRegionalPhoneEx"

    const-string v1, "Enter: updateBookmarks --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 v0, 0x0

    return v0
.end method
