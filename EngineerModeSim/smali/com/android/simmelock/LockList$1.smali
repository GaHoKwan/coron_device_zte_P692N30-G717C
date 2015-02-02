.class Lcom/android/simmelock/LockList$1;
.super Landroid/os/Handler;
.source "LockList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/simmelock/LockList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/LockList;


# direct methods
.method constructor <init>(Lcom/android/simmelock/LockList;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/simmelock/LockList$1;->this$0:Lcom/android/simmelock/LockList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 192
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 193
    .local v1, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 195
    :pswitch_0
    const-string v3, "SIMMELOCK"

    const-string v4, "QUERY_ICC_SML_COMPLETE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 197
    .local v2, ar1:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 198
    .local v0, LockState:[I
    if-nez v0, :cond_1

    .line 199
    iget-object v3, p0, Lcom/android/simmelock/LockList$1;->this$0:Lcom/android/simmelock/LockList;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    .line 200
    :cond_1
    aget v3, v0, v7

    if-nez v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/android/simmelock/LockList$1;->this$0:Lcom/android/simmelock/LockList;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 202
    iget-object v3, p0, Lcom/android/simmelock/LockList$1;->this$0:Lcom/android/simmelock/LockList;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 203
    iget-object v3, p0, Lcom/android/simmelock/LockList$1;->this$0:Lcom/android/simmelock/LockList;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    iget-object v3, p0, Lcom/android/simmelock/LockList$1;->this$0:Lcom/android/simmelock/LockList;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 205
    iget-object v3, p0, Lcom/android/simmelock/LockList$1;->this$0:Lcom/android/simmelock/LockList;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 206
    :cond_2
    aget v3, v0, v6

    if-ne v3, v8, :cond_0

    .line 208
    iget-object v3, p0, Lcom/android/simmelock/LockList$1;->this$0:Lcom/android/simmelock/LockList;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
