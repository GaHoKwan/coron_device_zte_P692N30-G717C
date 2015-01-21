.class public Lcom/mediatek/calendarimporter/utils/MockAccountManager;
.super Landroid/accounts/AccountManager;
.source "MockAccountManager.java"


# instance fields
.field public mAccounts:[Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 1
    .parameter "context"
    .parameter "accounts"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/accounts/AccountManager;-><init>(Landroid/content/Context;Landroid/accounts/IAccountManager;)V

    .line 42
    iput-object p2, p0, Lcom/mediatek/calendarimporter/utils/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    .line 43
    return-void
.end method


# virtual methods
.method public getAccounts()[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/calendarimporter/utils/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    iput-object v0, p0, Lcom/mediatek/calendarimporter/utils/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calendarimporter/utils/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .parameter "type"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/calendarimporter/utils/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    iput-object v0, p0, Lcom/mediatek/calendarimporter/utils/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calendarimporter/utils/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method public removeAccount()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/utils/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    .line 67
    return-void
.end method
