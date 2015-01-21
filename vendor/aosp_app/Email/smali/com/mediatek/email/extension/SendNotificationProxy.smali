.class public Lcom/mediatek/email/extension/SendNotificationProxy;
.super Ljava/lang/Object;
.source "SendNotificationProxy.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static final sSendNotificationProxy:Lcom/mediatek/email/extension/SendNotificationProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/mediatek/email/extension/SendNotificationProxy;

    invoke-direct {v0}, Lcom/mediatek/email/extension/SendNotificationProxy;-><init>()V

    sput-object v0, Lcom/mediatek/email/extension/SendNotificationProxy;->sSendNotificationProxy:Lcom/mediatek/email/extension/SendNotificationProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    sput-object p0, Lcom/mediatek/email/extension/SendNotificationProxy;->sContext:Landroid/content/Context;

    .line 16
    sget-object v0, Lcom/mediatek/email/extension/SendNotificationProxy;->sSendNotificationProxy:Lcom/mediatek/email/extension/SendNotificationProxy;

    return-object v0
.end method


# virtual methods
.method public cancelSendingNotification()V
    .locals 2

    .prologue
    .line 35
    sget-object v1, Lcom/mediatek/email/extension/SendNotificationProxy;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/email/extension/OPExtensionFactory;->getSendingNotifyExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/ISendNotification;

    move-result-object v0

    .line 36
    .local v0, sendNotifer:Lcom/mediatek/email/ext/ISendNotification;
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/mediatek/email/ext/ISendNotification;->cancelSendingNotification()V

    .line 39
    :cond_0
    return-void
.end method

.method public showSendingNotification(JII)V
    .locals 6
    .parameter "accountId"
    .parameter "eventType"
    .parameter "messageCount"

    .prologue
    .line 21
    sget-object v1, Lcom/mediatek/email/extension/SendNotificationProxy;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/email/extension/OPExtensionFactory;->getSendingNotifyExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/ISendNotification;

    move-result-object v0

    .line 22
    .local v0, sendNotifer:Lcom/mediatek/email/ext/ISendNotification;
    if-eqz v0, :cond_0

    .line 23
    sget-object v1, Lcom/mediatek/email/extension/SendNotificationProxy;->sContext:Landroid/content/Context;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/email/ext/ISendNotification;->showSendingNotification(Landroid/content/Context;JII)V

    .line 25
    :cond_0
    return-void
.end method

.method public suspendSendFailedNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 28
    sget-object v1, Lcom/mediatek/email/extension/SendNotificationProxy;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/email/extension/OPExtensionFactory;->getSendingNotifyExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/ISendNotification;

    move-result-object v0

    .line 29
    .local v0, sendNotifer:Lcom/mediatek/email/ext/ISendNotification;
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1, p2}, Lcom/mediatek/email/ext/ISendNotification;->suspendSendFailedNotification(J)V

    .line 32
    :cond_0
    return-void
.end method
