.class public Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
.super Lcom/mediatek/filemanager/AlertDialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditTextDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_SELCTION:Ljava/lang/String; = "defaultSelection"

.field public static final DEFAULT_STRING:Ljava/lang/String; = "defaultString"

.field public static final TAG:Ljava/lang/String; = "EditTextDialogFragment"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mEditTextDoneListener:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/mediatek/filemanager/AlertDialogFragment;-><init>()V

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private setEditTextFilter(Landroid/widget/EditText;I)V
    .locals 3
    .parameter "edit"
    .parameter "maxLength"

    .prologue
    .line 398
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;-><init>(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;II)V

    .line 454
    .local v0, filter:Landroid/text/InputFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 455
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditTextDoneListener:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditTextDoneListener:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;

    invoke-virtual {p0}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;->onClick(Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 351
    invoke-virtual {p0, p0}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/AlertDialogFragment;->createAlertDialogBuilder(Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 353
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x0

    .line 354
    .local v0, args:Landroid/os/Bundle;
    if-nez p1, :cond_1

    .line 355
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 359
    :goto_0
    if-eqz v0, :cond_0

    .line 360
    const-string v5, "defaultString"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, defaultString:Ljava/lang/String;
    const-string v5, "defaultSelection"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 362
    .local v3, selction:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 364
    .local v4, view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 365
    const v5, 0x7f0c000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 366
    iget-object v5, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 367
    iget-object v5, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v5, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 371
    .end local v2           #defaultString:Ljava/lang/String;
    .end local v3           #selction:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 357
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 377
    iget-object v1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 380
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 384
    .end local v0           #button:Landroid/widget/Button;
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 386
    iget-object v2, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->setTextChangedCallback(Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 387
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "defaultString"

    iget-object v2, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "defaultSelection"

    iget-object v2, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    invoke-super {p0, p1}, Lcom/mediatek/filemanager/AlertDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 347
    return-void
.end method

.method public setOnEditTextDoneListener(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditTextDoneListener:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;

    .line 523
    return-void
.end method

.method protected setTextChangedCallback(Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 1
    .parameter "editText"
    .parameter "dialog"

    .prologue
    .line 466
    const/16 v0, 0xff

    invoke-direct {p0, p1, v0}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->setEditTextFilter(Landroid/widget/EditText;I)V

    .line 467
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$2;-><init>(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 502
    return-void
.end method
