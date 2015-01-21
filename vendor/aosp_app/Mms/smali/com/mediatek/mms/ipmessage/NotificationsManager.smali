.class public Lcom/mediatek/mms/ipmessage/NotificationsManager;
.super Landroid/content/ContextWrapper;
.source "NotificationsManager.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/NotificationsManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/NotificationsManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public registerNotificationsListener(Lcom/mediatek/mms/ipmessage/INotificationsListener;)V
    .locals 0
    .parameter "notiListener"

    .prologue
    .line 55
    return-void
.end method

.method public unregisterNotificationsListener(Lcom/mediatek/mms/ipmessage/INotificationsListener;)V
    .locals 0
    .parameter "notiListener"

    .prologue
    .line 59
    return-void
.end method
