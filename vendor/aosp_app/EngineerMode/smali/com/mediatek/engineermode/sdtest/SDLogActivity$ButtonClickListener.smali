.class Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;
.super Ljava/lang/Object;
.source "SDLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/sdtest/SDLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #setter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mState:Z
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$302(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Z)Z

    .line 265
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->createFileForder()V
    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$400(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    .line 266
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThread:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;
    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$500(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThread:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;
    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$500(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 269
    :cond_0
    const-string v0, "SD Log"

    const-string v1, "mSDLogToggleButton is checked"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 276
    :cond_1
    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #setter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mState:Z
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$302(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Z)Z

    .line 272
    const-string v0, "SD Log"

    const-string v1, "mSDLogToggleButton is unchecked"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
