.class public Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;
.super Ljava/lang/Object;
.source "EncapsulatedStatusBarManager.java"


# static fields
.field private static mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 25
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    sput-object v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public hideSIMIndicator(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 43
    sget-object v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p1}, Landroid/app/StatusBarManager;->hideSimIndicator(Landroid/content/ComponentName;)V

    .line 47
    return-void
.end method

.method public showSIMIndicator(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .parameter "componentName"
    .parameter "businessType"

    .prologue
    .line 34
    sget-object v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/StatusBarManager;->showSimIndicator(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 38
    return-void
.end method
