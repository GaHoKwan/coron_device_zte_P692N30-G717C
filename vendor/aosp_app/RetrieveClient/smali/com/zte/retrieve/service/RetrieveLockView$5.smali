.class Lcom/zte/retrieve/service/RetrieveLockView$5;
.super Ljava/lang/Object;
.source "RetrieveLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/RetrieveLockView;-><init>(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionOperator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$5;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$5;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$10(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    .line 166
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setUnlock()Z

    .line 167
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setAnswerStatus(Z)V

    .line 168
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$5;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->setTopActivityChangedListener()V
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$18(Lcom/zte/retrieve/service/RetrieveLockView;)V

    .line 169
    return-void
.end method
