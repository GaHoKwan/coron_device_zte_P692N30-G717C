.class public Lcom/android/email/activity/AttachmentInfoDialog;
.super Landroid/app/DialogFragment;
.source "AttachmentInfoDialog.java"


# static fields
.field private static final BUNDLE_DENY_FLAG:Ljava/lang/String; = "denyFlag"


# instance fields
.field private mActionIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/AttachmentInfoDialog;->mActionIntent:Landroid/content/Intent;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/AttachmentInfoDialog;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/email/activity/AttachmentInfoDialog;->mActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;I)Lcom/android/email/activity/AttachmentInfoDialog;
    .locals 3
    .parameter "context"
    .parameter "denyFlags"

    .prologue
    .line 44
    new-instance v1, Lcom/android/email/activity/AttachmentInfoDialog;

    invoke-direct {v1}, Lcom/android/email/activity/AttachmentInfoDialog;-><init>()V

    .line 45
    .local v1, dialog:Lcom/android/email/activity/AttachmentInfoDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "denyFlag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/high16 v12, 0x1000

    const v11, 0x8000

    .line 61
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 62
    .local v1, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 63
    .local v4, context:Landroid/content/Context;
    const-string v9, "denyFlag"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 64
    .local v5, denyFlags:I
    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 65
    .local v7, res:Landroid/content/res/Resources;
    const v9, 0x7f080106

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, title:Ljava/lang/String;
    const v9, 0x7f08010a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, bodyText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 73
    .local v0, actionText:Ljava/lang/String;
    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_2

    .line 74
    const v9, 0x7f08010b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    :cond_0
    :goto_0
    new-instance v6, Lcom/android/email/activity/AttachmentInfoDialog$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/AttachmentInfoDialog$1;-><init>(Lcom/android/email/activity/AttachmentInfoDialog;)V

    .line 112
    .local v6, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    const v9, 0x7f080078

    invoke-virtual {v3, v9, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    if-eqz v0, :cond_1

    iget-object v9, p0, Lcom/android/email/activity/AttachmentInfoDialog;->mActionIntent:Landroid/content/Intent;

    if-eqz v9, :cond_1

    .line 117
    invoke-virtual {v3, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    :cond_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 75
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    .end local v6           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    and-int/lit8 v9, v5, 0x20

    if-eqz v9, :cond_3

    .line 76
    const v9, 0x7f08010c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 77
    :cond_3
    and-int/lit8 v9, v5, 0x40

    if-eqz v9, :cond_4

    .line 78
    const v9, 0x7f080022

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 79
    :cond_4
    and-int/lit8 v9, v5, 0x4

    if-eqz v9, :cond_5

    .line 80
    const v9, 0x7f08010e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 81
    :cond_5
    and-int/lit8 v9, v5, 0x8

    if-eqz v9, :cond_6

    .line 82
    const v9, 0x7f08010f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    const v9, 0x7f080109

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/email/activity/AttachmentInfoDialog;->mActionIntent:Landroid/content/Intent;

    .line 85
    iget-object v9, p0, Lcom/android/email/activity/AttachmentInfoDialog;->mActionIntent:Landroid/content/Intent;

    invoke-virtual {v9, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    iget-object v9, p0, Lcom/android/email/activity/AttachmentInfoDialog;->mActionIntent:Landroid/content/Intent;

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 87
    :cond_6
    and-int/lit8 v9, v5, 0x10

    if-eqz v9, :cond_7

    .line 88
    const v9, 0x7f080110

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 89
    :cond_7
    and-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_0

    .line 90
    const v9, 0x7f080107

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 91
    const v9, 0x7f08010d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    const v9, 0x7f080108

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.settings.WIFI_SETTINGS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/email/activity/AttachmentInfoDialog;->mActionIntent:Landroid/content/Intent;

    .line 94
    iget-object v9, p0, Lcom/android/email/activity/AttachmentInfoDialog;->mActionIntent:Landroid/content/Intent;

    invoke-virtual {v9, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v9, p0, Lcom/android/email/activity/AttachmentInfoDialog;->mActionIntent:Landroid/content/Intent;

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0
.end method
