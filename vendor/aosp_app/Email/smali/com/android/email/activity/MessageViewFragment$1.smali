.class final Lcom/android/email/activity/MessageViewFragment$1;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->newInstance(J)Lcom/android/email/activity/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Lcom/android/email/activity/MessageViewFragment;

.field final synthetic val$msgId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$1;->val$instance:Lcom/android/email/activity/MessageViewFragment;

    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragment$1;->val$msgId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$1;->val$instance:Lcom/android/email/activity/MessageViewFragment;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 176
    .local v0, controller:Lcom/android/email/Controller;
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment$1;->val$msgId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->recordMessageIdSync(J)V

    .line 177
    return-void
.end method
