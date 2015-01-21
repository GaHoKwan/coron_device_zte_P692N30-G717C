.class Lcom/zte/feedback/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/feedback/FeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/FeedbackActivity;

.field final synthetic val$relativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/zte/feedback/FeedbackActivity;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/feedback/FeedbackActivity$2;->this$0:Lcom/zte/feedback/FeedbackActivity;

    iput-object p2, p0, Lcom/zte/feedback/FeedbackActivity$2;->val$relativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 74
    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/zte/feedback/FeedbackActivity$2;->val$relativeLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/zte/feedback/FeedbackActivity$2;->val$relativeLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method
