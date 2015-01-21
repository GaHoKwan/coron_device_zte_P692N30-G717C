.class public Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientList;
.super Lcom/android/ex/chips/MTKRecipientList;
.source "EncapsulatedMTKRecipientList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientList;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public addRecipient(Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipient;)V
    .locals 0
    .parameter "recipient"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/android/ex/chips/MTKRecipientList;->addRecipient(Lcom/android/ex/chips/MTKRecipient;)V

    .line 18
    return-void
.end method
