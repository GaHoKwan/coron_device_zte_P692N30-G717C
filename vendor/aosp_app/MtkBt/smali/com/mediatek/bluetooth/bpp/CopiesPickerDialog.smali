.class public Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;
.super Landroid/app/AlertDialog;
.source "CopiesPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog$OnCopiesSetListener;
    }
.end annotation


# static fields
.field private static final COPIES:Ljava/lang/String; = "copies"

.field private static final TAG:Ljava/lang/String; = "CopiesPickerDialog"


# instance fields
.field private final mCallback:Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog$OnCopiesSetListener;

.field private mCopies:I

.field private final mCopiesPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog$OnCopiesSetListener;I)V
    .locals 6
    .parameter "context"
    .parameter "callBack"
    .parameter "maxCopies"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 78
    const v2, 0x10302f2

    invoke-direct {p0, p1, v2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 80
    iput-object p2, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCallback:Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog$OnCopiesSetListener;

    .line 84
    const v2, 0x7f070049

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 86
    const v2, 0x7f07004a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    const v2, 0x7f07004b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 89
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 90
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 93
    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    .line 94
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    if-nez v2, :cond_0

    .line 95
    const-string v2, "CopiesPickerDialog"

    const-string v3, "mCopiesPicker is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 103
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 104
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 105
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCallback:Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog$OnCopiesSetListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 116
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCallback:Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog$OnCopiesSetListener;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog$OnCopiesSetListener;->onCopiesSet(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 130
    const-string v1, "copies"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, number:I
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 132
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 123
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "copies"

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    return-object v0
.end method

.method public updateCopies(I)V
    .locals 1
    .parameter "copies"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->mCopiesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 111
    return-void
.end method
