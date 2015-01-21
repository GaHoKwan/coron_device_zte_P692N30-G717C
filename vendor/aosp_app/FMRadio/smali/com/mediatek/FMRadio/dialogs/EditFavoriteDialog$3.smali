.class Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog$3;
.super Ljava/lang/Object;
.source "EditFavoriteDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog$3;->this$0:Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 225
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 218
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 190
    iget-object v6, p0, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog$3;->this$0:Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;

    invoke-virtual {v6}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    if-nez v6, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v6, p0, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog$3;->this$0:Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;

    #getter for: Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;->mEditTextFrequency:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;->access$100(Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 194
    .local v1, cs:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 196
    .local v3, frequency:F
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 200
    :goto_1
    const/16 v0, 0xa

    .line 201
    .local v0, convertData:I
    const/high16 v6, 0x4120

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 202
    .local v5, station:I
    iget-object v6, p0, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog$3;->this$0:Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;

    invoke-virtual {v6}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    check-cast v6, Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 205
    .local v4, positiveButton:Landroid/widget/Button;
    if-eqz v4, :cond_0

    .line 206
    iget-object v6, p0, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog$3;->this$0:Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExistInChList(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    const v6, 0x7f04002e

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 197
    .end local v0           #convertData:I
    .end local v4           #positiveButton:Landroid/widget/Button;
    .end local v5           #station:I
    :catch_0
    move-exception v2

    .line 198
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 209
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #convertData:I
    .restart local v4       #positiveButton:Landroid/widget/Button;
    .restart local v5       #station:I
    :cond_2
    const v6, 0x7f04000e

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
