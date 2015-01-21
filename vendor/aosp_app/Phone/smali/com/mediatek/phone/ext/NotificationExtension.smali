.class public Lcom/mediatek/phone/ext/NotificationExtension;
.super Landroid/content/ContextWrapper;
.source "NotificationExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getInCallResId(Lcom/android/internal/telephony/CallManager;ZI[[I)I
    .locals 0
    .parameter "cm"
    .parameter "voicePrivacy"
    .parameter "defResId"
    .parameter "pluginResIds"

    .prologue
    .line 38
    return p3
.end method

.method public shouldSuppressNotification(Z)Z
    .locals 0
    .parameter "defValue"

    .prologue
    .line 27
    return p1
.end method
