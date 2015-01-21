.class public Lcom/android/email/activity/MessageFileViewFragment$MessageFileViewCallback;
.super Ljava/lang/Object;
.source "MessageFileViewFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageFileViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageFileViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageFileViewFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageFileViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment$MessageFileViewCallback;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment$MessageFileViewCallback;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    #getter for: Lcom/android/email/activity/MessageFileViewFragment;->mHandler:Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageFileViewFragment;->access$200(Lcom/android/email/activity/MessageFileViewFragment;)Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment$MessageFileViewCallback;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    #getter for: Lcom/android/email/activity/MessageFileViewFragment;->mIsLoadingFinished:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageFileViewFragment;->access$100(Lcom/android/email/activity/MessageFileViewFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment$MessageFileViewCallback;->this$0:Lcom/android/email/activity/MessageFileViewFragment;

    #getter for: Lcom/android/email/activity/MessageFileViewFragment;->mHandler:Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageFileViewFragment;->access$200(Lcom/android/email/activity/MessageFileViewFragment;)Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;->updateProgress(I)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    const-string v0, "MessageFileViewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler is null ,can not updateProgress type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
