.class Lcom/android/soundrecorder/ErrorHandle;
.super Ljava/lang/Object;
.source "ErrorHandle.java"


# static fields
.field public static final ERROR_ACCESSING_DB_FAILED_WHEN_QUERY:I = 0xd

.field public static final ERROR_CREATE_FILE_FAILED:I = 0xa

.field public static final ERROR_DELETING_FAILED:I = 0xc

.field public static final ERROR_DIALOG_TAG:Ljava/lang/String; = "error_dialog"

.field public static final ERROR_FILE_DELETED_WHEN_PLAY:I = 0x9

.field public static final ERROR_NO_SD:I = 0x4

.field public static final ERROR_PLAYER_OCCUPIED:I = 0x7

.field public static final ERROR_PLAYING_FAILED:I = 0x8

.field public static final ERROR_RECORDER_OCCUPIED:I = 0x5

.field public static final ERROR_RECORDING_FAILED:I = 0x6

.field public static final ERROR_SAVE_FILE_FAILED:I = 0xb

.field public static final ERROR_SD_UNMOUNTED_ON_FILE_LIST:I = 0x0

.field public static final ERROR_SD_UNMOUNTED_ON_RECORD:I = 0x1

.field public static final ERROR_SD_UNMOUNTED_WHEN_IDLE:I = 0xe

.field public static final ERROR_STORAGE_FULL_WHEN_LAUNCH:I = 0x3

.field public static final ERROR_STORAGE_FULL_WHEN_RECORD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SR/ErrorHandle"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static removeOldErrorDialog(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 207
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 211
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "error_dialog"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 213
    .local v1, oldFragment:Landroid/app/DialogFragment;
    const-string v2, "SR/ErrorHandle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<removeOldErrorDialog> oldFragment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 216
    const-string v2, "SR/ErrorHandle"

    const-string v3, "<removeOldErrorDialog> remove oldFragment"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static showDialogFragment(Landroid/app/Activity;II)V
    .locals 3
    .parameter "activity"
    .parameter "titleID"
    .parameter "messageID"

    .prologue
    .line 184
    if-nez p0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {p0}, Lcom/android/soundrecorder/ErrorHandle;->removeOldErrorDialog(Landroid/app/Activity;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 189
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-static {p1, p2}, Lcom/android/soundrecorder/ErrorDialogFragment;->newInstance(II)Lcom/android/soundrecorder/ErrorDialogFragment;

    move-result-object v1

    .line 190
    .local v1, newFragment:Landroid/app/DialogFragment;
    const-string v2, "error_dialog"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method public static showErrorInfo(Landroid/app/Activity;I)V
    .locals 8
    .parameter "activity"
    .parameter "errorCode"

    .prologue
    const v7, 0x7f08001e

    const v6, 0x7f08001c

    const v5, 0x7f080020

    const v4, 0x7f08001a

    const/4 v3, -0x1

    .line 58
    if-nez p0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "SR/ErrorHandle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<showErrorInfo> errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 109
    const-string v0, "SR/ErrorHandle"

    const-string v1, "<showErrorInfo> error code is out of range"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :pswitch_0
    const v0, 0x7f080025

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 67
    :pswitch_1
    const v0, 0x7f080023

    invoke-static {p0, v3, v0}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 70
    :pswitch_2
    const v0, 0x7f080024

    invoke-static {p0, v3, v0}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 73
    :pswitch_3
    const v0, 0x7f080022

    invoke-static {p0, v5, v0}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 76
    :pswitch_4
    const v0, 0x7f08001d

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 79
    :pswitch_5
    const v0, 0x7f080021

    invoke-static {p0, v5, v0}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 82
    :pswitch_6
    invoke-static {p0, v3, v5}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 85
    :pswitch_7
    const v0, 0x7f08001f

    invoke-static {p0, v7, v0}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 88
    :pswitch_8
    invoke-static {p0, v3, v7}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 91
    :pswitch_9
    const v0, 0x7f080023

    invoke-static {p0, v3, v0}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 94
    :pswitch_a
    invoke-static {p0, v4}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 97
    :pswitch_b
    const v0, 0x7f08002d

    invoke-static {p0, v0, v4}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 100
    :pswitch_c
    invoke-static {p0, v6}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 103
    :pswitch_d
    const v0, 0x7f08002d

    invoke-static {p0, v0, v6}, Lcom/android/soundrecorder/ErrorHandle;->showDialogFragment(Landroid/app/Activity;II)V

    goto :goto_0

    .line 106
    :pswitch_e
    invoke-static {p0, v4}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public static showErrorInfoInToast(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "errorCode"

    .prologue
    const v5, 0x7f080023

    const v4, 0x7f08001c

    const v3, 0x7f08001a

    .line 115
    if-nez p0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "SR/ErrorHandle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<showErrorInfoInToast> errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    packed-switch p1, :pswitch_data_0

    .line 166
    const-string v0, "SR/ErrorHandle"

    const-string v1, "<showErrorInfoInToast> error code is out of range"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :pswitch_0
    const v0, 0x7f080025

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-static {p0, v5}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 127
    :pswitch_2
    const v0, 0x7f080024

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 130
    :pswitch_3
    const v0, 0x7f080022

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 133
    :pswitch_4
    const v0, 0x7f08001d

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 136
    :pswitch_5
    const v0, 0x7f080021

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 139
    :pswitch_6
    const v0, 0x7f080020

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 142
    :pswitch_7
    const v0, 0x7f08001f

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 145
    :pswitch_8
    const v0, 0x7f08001e

    invoke-static {p0, v0}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 148
    :pswitch_9
    invoke-static {p0, v5}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 151
    :pswitch_a
    invoke-static {p0, v3}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 154
    :pswitch_b
    invoke-static {p0, v3}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 157
    :pswitch_c
    invoke-static {p0, v4}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 160
    :pswitch_d
    invoke-static {p0, v4}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 163
    :pswitch_e
    invoke-static {p0, v3}, Lcom/android/soundrecorder/ErrorHandle;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method private static showToast(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "errorStringId"

    .prologue
    .line 203
    invoke-static {p0, p1}, Lcom/android/soundrecorder/SoundRecorderUtils;->getToast(Landroid/content/Context;I)V

    .line 204
    return-void
.end method
