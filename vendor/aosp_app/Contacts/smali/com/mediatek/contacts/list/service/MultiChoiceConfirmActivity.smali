.class public Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;
.super Landroid/app/Activity;
.source "MultiChoiceConfirmActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;,
        Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$RequestCancelListener;
    }
.end annotation


# static fields
.field public static final ACCOUNT_INFO:Ljava/lang/String; = "account_info"

.field public static final JOB_ID:Ljava/lang/String; = "job_id"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final REPORTDIALOG:Ljava/lang/String; = "report_dialog"

.field public static final REPORT_CONTENT:Ljava/lang/String; = "report_content"

.field public static final REPORT_DIALOG_INFO:Ljava/lang/String; = "report_dialog_info"

.field public static final REPORT_TITLE:Ljava/lang/String; = "report_title"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mAccountInfo:Ljava/lang/String;

.field private final mCancelListener:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;

.field private mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mJobId:I

.field private mReportContent:Ljava/lang/String;

.field private mReportDialog:Ljava/lang/Boolean;

.field private mReportTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$1;-><init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;)V

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;-><init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mCancelListener:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportDialog:Ljava/lang/Boolean;

    .line 83
    iput-object v1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******* onCreate savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz p1, :cond_1

    .line 97
    const-string v0, "report_dialog"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportDialog:Ljava/lang/Boolean;

    .line 98
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "report_dialog_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmTitleId()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmTitleId()I

    move-result v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmTotalNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmContentId()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 110
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmContentId()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmSucceededNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmFailedNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    const-string v0, "job_id"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mJobId:I

    .line 117
    const-string v0, "account_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mAccountInfo:Ljava/lang/String;

    .line 118
    const-string v0, "type"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mType:I

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "bundle"

    .prologue
    const v7, 0x104000a

    const/high16 v6, 0x104

    .line 171
    sget-object v3, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*******onCreateDialog id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 196
    sget-object v3, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown dialog id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 177
    :pswitch_0
    iget v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 178
    const v3, 0x7f0c0089

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f0c008a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, message:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$RequestCancelListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$RequestCancelListener;-><init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$1;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mCancelListener:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mCancelListener:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 181
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    const v3, 0x7f0c008b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2       #title:Ljava/lang/String;
    const v3, 0x7f0c008c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 190
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mCancelListener:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mCancelListener:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mCancelListener:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x7f07001c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 225
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 253
    sget-object v1, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialog********** mReportContent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mReportTitle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 256
    const v1, 0x7f07001d

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 257
    check-cast v0, Landroid/app/AlertDialog;

    .line 258
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "report_dialog"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportDialog:Ljava/lang/Boolean;

    .line 134
    sget-object v2, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*******onResume mReportDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportDialog:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportDialog:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    const-string v2, "report_dialog_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    iput-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    .line 140
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    .line 141
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmTitleId()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 144
    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmTitleId()I

    move-result v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v4}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmTotalNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmContentId()I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 147
    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmContentId()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v4}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmSucceededNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {v4}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->getmFailedNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    .line 158
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v1, itFilter:Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.intent.action.contacts.multichoice.process.finish"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    sget-object v2, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReportTitle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | mReportContent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportDialog:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    const v2, 0x7f07001d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 167
    :goto_1
    return-void

    .line 153
    .end local v1           #itFilter:Landroid/content/IntentFilter;
    :cond_2
    const-string v2, "job_id"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mJobId:I

    .line 154
    const-string v2, "account_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mAccountInfo:Ljava/lang/String;

    .line 155
    const-string v2, "type"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mType:I

    goto :goto_0

    .line 165
    .restart local v1       #itFilter:Landroid/content/IntentFilter;
    :cond_3
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 235
    sget-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "*********onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v0, "report_dialog"

    iget-object v1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportDialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v0, "job_id"

    iget v1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mJobId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    const-string v0, "account_info"

    iget-object v1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mAccountInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "type"

    iget v1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mReportDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "report_dialog_info"

    iget-object v1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 247
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 204
    check-cast p2, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;->getService()Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-result-object v1

    .line 207
    .local v1, service:Lcom/mediatek/contacts/list/service/MultiChoiceService;
    :try_start_0
    new-instance v0, Lcom/mediatek/contacts/list/service/MultiChoiceCancelRequest;

    iget v2, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;->mJobId:I

    invoke-direct {v0, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceCancelRequest;-><init>(I)V

    .line 208
    .local v0, request:Lcom/mediatek/contacts/list/service/MultiChoiceCancelRequest;
    invoke-virtual {v1, v0}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleCancelRequest(Lcom/mediatek/contacts/list/service/MultiChoiceCancelRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {p0, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 214
    return-void

    .line 210
    .end local v0           #request:Lcom/mediatek/contacts/list/service/MultiChoiceCancelRequest;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 219
    return-void
.end method
