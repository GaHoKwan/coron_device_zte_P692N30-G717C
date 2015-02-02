.class Lcom/android/simmelock/ActionList$1;
.super Landroid/os/Handler;
.source "ActionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/simmelock/ActionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/ActionList;


# direct methods
.method constructor <init>(Lcom/android/simmelock/ActionList;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 245
    :sswitch_0
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    #getter for: Lcom/android/simmelock/ActionList;->unlock_enable:Z
    invoke-static {v0}, Lcom/android/simmelock/ActionList;->access$000(Lcom/android/simmelock/ActionList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 249
    .local v9, ar:Landroid/os/AsyncResult;
    const-string v0, "SIMMELOCK"

    const-string v2, "ActionList handler QUERY_ICC_SML_LOCK_STATE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    move-object v8, v0

    check-cast v8, [I

    .line 251
    .local v8, LockState:[I
    if-nez v8, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 253
    :cond_1
    aget v0, v8, v11

    if-ne v0, v11, :cond_0

    .line 254
    const-string v0, "SIMMELOCK"

    const-string v2, "unlock_enable = false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    #setter for: Lcom/android/simmelock/ActionList;->unlock_enable:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/ActionList;->access$002(Lcom/android/simmelock/ActionList;Z)Z

    goto :goto_0

    .line 260
    .end local v8           #LockState:[I
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    const-string v0, "SIMMELOCK"

    const-string v2, "ActionList handler"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 263
    .local v10, ar1:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    move-object v8, v0

    check-cast v8, [I

    .line 264
    .restart local v8       #LockState:[I
    if-nez v8, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    #getter for: Lcom/android/simmelock/ActionList;->unlock_enable:Z
    invoke-static {v0}, Lcom/android/simmelock/ActionList;->access$000(Lcom/android/simmelock/ActionList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 266
    :cond_2
    aget v0, v8, v4

    if-nez v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 268
    :cond_3
    aget v0, v8, v11

    if-ne v0, v3, :cond_4

    .line 269
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    #calls: Lcom/android/simmelock/ActionList;->enablePreference(ZZZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/simmelock/ActionList;->access$100(Lcom/android/simmelock/ActionList;ZZZZZ)V

    goto :goto_1

    .line 270
    :cond_4
    aget v0, v8, v11

    if-ne v0, v4, :cond_7

    .line 271
    aget v0, v8, v3

    if-nez v0, :cond_5

    .line 272
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    move v2, v1

    move v3, v11

    move v4, v1

    move v5, v11

    #calls: Lcom/android/simmelock/ActionList;->enablePreference(ZZZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/simmelock/ActionList;->access$100(Lcom/android/simmelock/ActionList;ZZZZZ)V

    goto :goto_1

    .line 274
    :cond_5
    aget v0, v8, v3

    const/4 v2, 0x5

    aget v2, v8, v2

    if-ge v0, v2, :cond_6

    .line 275
    iget-object v2, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    move v3, v11

    move v4, v1

    move v5, v11

    move v6, v11

    move v7, v11

    #calls: Lcom/android/simmelock/ActionList;->enablePreference(ZZZZZ)V
    invoke-static/range {v2 .. v7}, Lcom/android/simmelock/ActionList;->access$100(Lcom/android/simmelock/ActionList;ZZZZZ)V

    goto :goto_1

    .line 277
    :cond_6
    iget-object v2, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    move v3, v11

    move v4, v1

    move v5, v1

    move v6, v11

    move v7, v11

    #calls: Lcom/android/simmelock/ActionList;->enablePreference(ZZZZZ)V
    invoke-static/range {v2 .. v7}, Lcom/android/simmelock/ActionList;->access$100(Lcom/android/simmelock/ActionList;ZZZZZ)V

    goto :goto_1

    .line 281
    :cond_7
    iget-object v0, p0, Lcom/android/simmelock/ActionList$1;->this$0:Lcom/android/simmelock/ActionList;

    move v2, v11

    move v3, v1

    move v4, v1

    move v5, v1

    #calls: Lcom/android/simmelock/ActionList;->enablePreference(ZZZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/simmelock/ActionList;->access$100(Lcom/android/simmelock/ActionList;ZZZZZ)V

    goto :goto_1

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_1
    .end sparse-switch
.end method
