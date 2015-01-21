.class final Lcom/android/mms/ui/MessageUtils$12;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->updateNotification(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 2314
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$12;->val$context:Landroid/content/Context;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2317
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$12;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 2318
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$12;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 2319
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$12;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/CBMessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 2320
    return-void
.end method
