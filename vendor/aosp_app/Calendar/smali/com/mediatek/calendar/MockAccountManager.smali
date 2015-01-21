.class public Lcom/mediatek/calendar/MockAccountManager;
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
    iput-object p2, p0, Lcom/mediatek/calendar/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    .line 43
    return-void
.end method


# virtual methods
.method public getAccounts()[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/calendar/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .parameter "type"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/calendar/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method public removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .parameter "account"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/mediatek/calendar/MockAccountManager;->mAccounts:[Landroid/accounts/Account;

    .line 63
    return-object v0
.end method
