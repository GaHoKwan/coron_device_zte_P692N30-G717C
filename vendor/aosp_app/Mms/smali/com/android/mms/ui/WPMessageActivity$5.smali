.class Lcom/android/mms/ui/WPMessageActivity$5;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WPMessageActivity;->markAllMessageAsSeen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$5;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$5;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #calls: Lcom/android/mms/ui/WPMessageActivity;->blockingMarkAllWapPushMessagesAsSeen(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageActivity;->access$1400(Landroid/content/Context;)V

    .line 1207
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$5;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    const-wide/16 v1, -0x2

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/WapPushMessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 1209
    return-void
.end method
