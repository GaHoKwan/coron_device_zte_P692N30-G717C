.class Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;
.super Landroid/app/AlertDialog;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoloAlertDialog"
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 10199
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10200
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10201
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 10196
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 10240
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10241
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 10243
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 10244
    return-void
.end method

.method public needShow()Z
    .locals 1

    .prologue
    .line 10204
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Z)V
    .locals 5
    .parameter "append"

    .prologue
    .line 10208
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->needShow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10237
    :goto_0
    return-void

    .line 10212
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10213
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f02009d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 10214
    const v2, 0x7f0b025f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10218
    const/4 v1, 0x1

    .line 10219
    .local v1, mode:I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10220
    or-int/lit8 v1, v1, 0x8

    .line 10224
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isVCalendarAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10225
    or-int/lit8 v1, v1, 0x10

    .line 10227
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v3, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    .line 10229
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 10222
    :cond_2
    or-int/lit8 v1, v1, 0x4

    goto :goto_1
.end method
