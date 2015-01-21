.class Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor$1;
.super Ljava/lang/Object;
.source "EmailAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor$1;->this$0:Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor;

    iput-object p2, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor$1;->this$0:Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor;->scheduleNext()V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor$1;->this$0:Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor;

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask$EmailSerialExecutor;->scheduleNext()V

    throw v0
.end method
