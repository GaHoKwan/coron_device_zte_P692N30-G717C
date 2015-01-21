.class public final Lcom/mediatek/vcalendar/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final MAIL_TYPE_EXCHANGE:Ljava/lang/String; = "com.android.exchange"

.field public static final MAIL_TYPE_GOOGLE:Ljava/lang/String; = "com.google"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static hasExchangeOrGoogleAccount(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 59
    .local v0, account:[Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 60
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/mediatek/vcalendar/Util;->isExchangeOrGoogleAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const/4 v2, 0x1

    .line 64
    :goto_1
    return v2

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isExchangeOrGoogleAccount(Landroid/accounts/Account;)Z
    .locals 3
    .parameter "account"

    .prologue
    .line 73
    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 75
    .local v0, b:Z
    :goto_0
    return v0

    .line 73
    .end local v0           #b:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVersionIcsOrLower()Z
    .locals 3

    .prologue
    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 84
    .local v0, b:Z
    :goto_0
    return v0

    .line 83
    .end local v0           #b:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
