.class Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$2;
.super Ljava/lang/Object;
.source "FeedbackModule.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->show(Lcom/zte/statistics/sdk/FeedbackModule$Trigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

.field private final synthetic val$linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$2;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    iput-object p2, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$2;->val$linearLayout:Landroid/widget/LinearLayout;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 162
    if-eqz p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$2;->val$linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$2;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_box_02_fouced"

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$2;->val$linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$2;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_box_02_normal"

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method
