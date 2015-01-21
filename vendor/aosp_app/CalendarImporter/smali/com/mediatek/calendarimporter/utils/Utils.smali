.class public final Lcom/mediatek/calendarimporter/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEFAULT_COLOR:I = 0x1060012

.field public static final MAIL_TYPE_EXCHANGE:Ljava/lang/String; = "com.android.exchange"

.field public static final MAIL_TYPE_GOOGLE:Ljava/lang/String; = "com.google"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getThemeMainColor(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "defaultColor"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v0

    .line 100
    .local v0, colorValue:I
    if-eqz v0, :cond_0

    .line 104
    .end local v0           #colorValue:I
    :goto_0
    return v0

    .restart local v0       #colorValue:I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static hasExchangeOrGoogleAccount(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 67
    .local v0, account:[Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 68
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/mediatek/calendarimporter/utils/Utils;->isExchangeOrGoogleAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v2, 0x1

    .line 72
    :goto_1
    return v2

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isExchangeOrGoogleAccount(Landroid/accounts/Account;)Z
    .locals 3
    .parameter "account"

    .prologue
    .line 83
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

    .line 85
    .local v0, b:Z
    :goto_0
    return v0

    .line 83
    .end local v0           #b:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
