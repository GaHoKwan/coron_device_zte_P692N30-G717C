.class public Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientEditTextView;
.super Lcom/android/ex/chips/MTKRecipientEditTextView;
.source "EncapsulatedMTKRecipientEditTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public appendList(Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientList;)V
    .locals 0
    .parameter "recipientList"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->appendList(Lcom/android/ex/chips/MTKRecipientList;)V

    .line 21
    return-void
.end method
