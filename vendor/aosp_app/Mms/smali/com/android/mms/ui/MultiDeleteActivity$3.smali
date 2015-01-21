.class Lcom/android/mms/ui/MultiDeleteActivity$3;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->updateSendFailedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$3;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$3;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$3;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-wide v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$3;->val$threadId:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotificationForThread(Landroid/content/Context;J)V

    .line 883
    return-void
.end method
