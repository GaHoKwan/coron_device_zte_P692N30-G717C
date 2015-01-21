.class Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$3;
.super Ljava/lang/Object;
.source "FeedbackModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$3;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$3;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->dismiss()V

    .line 191
    return-void
.end method
