.class Lcom/android/mms/ui/HeightChangedLinearLayout$1;
.super Ljava/lang/Object;
.source "HeightChangedLinearLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/HeightChangedLinearLayout;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/HeightChangedLinearLayout;

.field final synthetic val$fh:I

.field final synthetic val$foldh:I

.field final synthetic val$foldw:I

.field final synthetic val$fw:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/HeightChangedLinearLayout;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->this$0:Lcom/android/mms/ui/HeightChangedLinearLayout;

    iput p2, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->val$fw:I

    iput p3, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->val$fh:I

    iput p4, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->val$foldw:I

    iput p5, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->val$foldh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->this$0:Lcom/android/mms/ui/HeightChangedLinearLayout;

    #getter for: Lcom/android/mms/ui/HeightChangedLinearLayout;->mLayoutSizeChangedListener:Lcom/android/mms/ui/HeightChangedLinearLayout$LayoutSizeChangedListener;
    invoke-static {v0}, Lcom/android/mms/ui/HeightChangedLinearLayout;->access$000(Lcom/android/mms/ui/HeightChangedLinearLayout;)Lcom/android/mms/ui/HeightChangedLinearLayout$LayoutSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->this$0:Lcom/android/mms/ui/HeightChangedLinearLayout;

    #getter for: Lcom/android/mms/ui/HeightChangedLinearLayout;->mLayoutSizeChangedListener:Lcom/android/mms/ui/HeightChangedLinearLayout$LayoutSizeChangedListener;
    invoke-static {v0}, Lcom/android/mms/ui/HeightChangedLinearLayout;->access$000(Lcom/android/mms/ui/HeightChangedLinearLayout;)Lcom/android/mms/ui/HeightChangedLinearLayout$LayoutSizeChangedListener;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->val$fw:I

    iget v2, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->val$fh:I

    iget v3, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->val$foldw:I

    iget v4, p0, Lcom/android/mms/ui/HeightChangedLinearLayout$1;->val$foldh:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/HeightChangedLinearLayout$LayoutSizeChangedListener;->onLayoutSizeChanged(IIII)V

    .line 105
    :cond_0
    return-void
.end method
