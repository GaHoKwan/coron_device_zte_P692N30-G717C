.class final Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 450
    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;-><init>(Landroid/os/Parcel;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 454
    new-array v0, p1, [Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState$1;->newArray(I)[Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;

    move-result-object v0

    return-object v0
.end method
