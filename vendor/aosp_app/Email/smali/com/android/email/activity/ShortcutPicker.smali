.class public Lcom/android/email/activity/ShortcutPicker;
.super Landroid/app/Activity;
.source "ShortcutPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;


# static fields
.field private static final TEST_CREATE_OLD_STYLE_SHORTCUT:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupShortcut(Lcom/android/emailcommon/provider/Account;JLjava/lang/String;)V
    .locals 11
    .parameter "account"
    .parameter "mailboxId"
    .parameter "shortcutName"

    .prologue
    .line 155
    move-object v0, p0

    .line 163
    .local v0, myActivity:Landroid/app/Activity;
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/high16 v3, 0x1000

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 164
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v5, -0x1

    move-wide v3, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v9

    .line 173
    .local v9, shortcutIntent:Landroid/content/Intent;
    :goto_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v8, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/high16 v1, 0x7f03

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    .line 178
    .local v7, iconResource:Landroid/os/Parcelable;
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 182
    return-void

    .line 167
    .end local v7           #iconResource:Landroid/os/Parcelable;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #shortcutIntent:Landroid/content/Intent;
    :cond_0
    iget-object v10, p1, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 168
    .local v10, uuid:Ljava/lang/String;
    invoke-static {v0, v10, p2, p3}, Lcom/android/email/activity/Welcome;->createAccountShortcutIntent(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    .restart local v9       #shortcutIntent:Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method public buildFilter(Lcom/android/emailcommon/provider/Account;)Ljava/lang/Integer;
    .locals 2
    .parameter "account"

    .prologue
    .line 84
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f0f0001
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const v3, 0x7f0f0055

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const v1, 0x7f040016

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 62
    const v1, 0x7f0f0001

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 67
    new-instance v0, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;

    invoke-direct {v0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;-><init>()V

    .line 68
    .local v0, fragment:Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method public onMissingData(ZZ)V
    .locals 3
    .parameter "missingAccount"
    .parameter "missingMailbox"

    .prologue
    .line 114
    const-string v1, "Email"

    const-string v2, "ShotcutPicker exited abnormally. Probably no accounts."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, -0x1

    .line 116
    .local v0, res:I
    if-eqz p1, :cond_2

    .line 117
    const v0, 0x7f0801fd

    .line 121
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 122
    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 125
    return-void

    .line 118
    :cond_2
    if-eqz p2, :cond_0

    .line 119
    const v0, 0x7f0801fe

    goto :goto_0
.end method

.method public onSelected(Lcom/android/emailcommon/provider/Account;J)V
    .locals 4
    .parameter "account"
    .parameter "mailboxId"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 97
    .local v1, shortcutName:Ljava/lang/String;
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-static {p0, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 100
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/FolderProperties;->getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/email/activity/ShortcutPicker;->setupShortcut(Lcom/android/emailcommon/provider/Account;JLjava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 109
    return-void

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
