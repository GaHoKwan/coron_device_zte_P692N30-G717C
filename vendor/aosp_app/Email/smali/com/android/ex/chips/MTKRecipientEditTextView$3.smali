.class Lcom/android/ex/chips/MTKRecipientEditTextView$3;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$3;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$3;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->shrink()V
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$200(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 282
    return-void
.end method
