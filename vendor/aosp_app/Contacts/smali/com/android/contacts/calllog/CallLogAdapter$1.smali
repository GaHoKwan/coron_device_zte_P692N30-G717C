.class Lcom/android/contacts/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 239
    const-string v2, "CallLogAdapter"

    const-string v3, "call button onClick +++++++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/calllog/IntentProvider;

    .line 241
    .local v1, intentProvider:Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v1, :cond_1

    .line 243
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    #getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 244
    .local v0, in:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    #getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->access$100(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-lez v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    #getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c02bf

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;I)V

    .line 247
    const-string v2, "CallLogAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    #getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->access$100(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0           #in:Landroid/content/Intent;
    :goto_0
    return-void

    .line 256
    .restart local v0       #in:Landroid/content/Intent;
    :cond_0
    const-string v2, "CallLogAdapter"

    const-string v3, "will startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    #getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    #getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "follow_sim_management"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 259
    const-string v2, "CallLogAdapter"

    const-string v3, "finish startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0           #in:Landroid/content/Intent;
    :cond_1
    const-string v2, "CallLogAdapter"

    const-string v3, "call button onClick --------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
