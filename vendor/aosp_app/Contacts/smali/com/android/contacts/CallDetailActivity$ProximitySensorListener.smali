.class Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field private final mBlankRunnable:Ljava/lang/Runnable;

.field private final mUnblankRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/CallDetailActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$1;-><init>(Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$2;-><init>(Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .parameter "runnable"
    .parameter "delayMillis"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, blankView:Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    .end local v0           #blankView:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearPendingRequests()V
    .locals 3

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, blankView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 223
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 221
    .end local v0           #blankView:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFar()V
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/contacts/CallDetailActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onfar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPlaybackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    invoke-static {v0}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPlaybackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    invoke-static {v0}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->setIsPausedBySensor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_0
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/contacts/CallDetailActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPlaybackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    invoke-static {v0}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPlaybackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    invoke-static {v0}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->setIsPausedBySensor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
