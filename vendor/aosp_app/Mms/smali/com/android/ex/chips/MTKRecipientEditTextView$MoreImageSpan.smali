.class Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
.super Landroid/text/style/ImageSpan;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreImageSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "b"

    .prologue
    .line 3593
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    .line 3594
    invoke-direct {p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 3595
    return-void
.end method
