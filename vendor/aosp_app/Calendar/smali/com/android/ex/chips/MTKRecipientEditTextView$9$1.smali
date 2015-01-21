.class Lcom/android/ex/chips/MTKRecipientEditTextView$9$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$9;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$9;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$9;)V
    .locals 0
    .parameter

    .prologue
    .line 4189
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4192
    const-string v0, "RecipientEditTextView"

    const-string v1, "[onGlobalLayout][run]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$9;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v1, 0x0

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2200(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V

    .line 4194
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$9;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$9;

    iget-object v1, v1, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->bringPointIntoView(I)Z

    .line 4195
    return-void
.end method
