.class Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$5;
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
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$5;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 213
    invoke-static {}, Lcom/zte/statistics/sdk/AboutModule;->getInstance()Lcom/zte/statistics/sdk/AboutModule;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$5;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/statistics/sdk/AboutModule;->show(Landroid/content/Context;)V

    .line 214
    return-void
.end method
