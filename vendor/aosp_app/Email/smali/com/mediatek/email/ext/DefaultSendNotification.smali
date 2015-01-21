.class public Lcom/mediatek/email/ext/DefaultSendNotification;
.super Ljava/lang/Object;
.source "DefaultSendNotification.java"

# interfaces
.implements Lcom/mediatek/email/ext/ISendNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelSendingNotification()V
    .locals 0

    .prologue
    .line 22
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized showSendingNotification(Landroid/content/Context;JII)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "eventType"
    .parameter "messageCount"

    .prologue
    .line 14
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public suspendSendFailedNotification(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 18
    return-void
.end method
