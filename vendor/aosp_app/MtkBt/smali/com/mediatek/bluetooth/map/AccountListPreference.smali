.class public Lcom/mediatek/bluetooth/map/AccountListPreference;
.super Landroid/preference/ListPreference;
.source "AccountListPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private pendingAccountChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "AccountListPreference"

    sput-object v0, Lcom/mediatek/bluetooth/map/AccountListPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/AccountListPreference;->pendingAccountChanged:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/AccountListPreference;->pendingAccountChanged:Z

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized onAccountChanged()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/AccountListPreference;->pendingAccountChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 60
    .local v0, dialog:Landroid/app/Dialog;
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/map/AccountListPreference;->pendingAccountChanged:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/AccountListPreference;->pendingAccountChanged:Z

    .line 62
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 63
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 65
    :cond_0
    return-void
.end method
