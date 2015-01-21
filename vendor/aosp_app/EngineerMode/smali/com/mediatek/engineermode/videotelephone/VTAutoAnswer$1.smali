.class Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;
.super Ljava/lang/Object;
.source "VTAutoAnswer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 72
    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    const-string v7, "engineermode_vt_preferences"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 76
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    #getter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mHasAutoAnswer:Z
    invoke-static {v6}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$000(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    #getter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mButEableAutoAnswer:Landroid/widget/Button;
    invoke-static {v6}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$200(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    #getter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mRes:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$100(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08031d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    #getter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mVtAutoAnswerTime:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$300(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    const-string v3, "1000"

    .line 84
    .local v3, time:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    #getter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mVtAutoAnswerTime:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$300(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, inputTime:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 87
    move-object v3, v1

    .line 90
    :cond_0
    const-string v6, "auto_answer"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v6, "auto_answer_time"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    .end local v1           #inputTime:Ljava/lang/String;
    .end local v3           #time:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    iget-object v7, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    #getter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mHasAutoAnswer:Z
    invoke-static {v7}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$000(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    #setter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mHasAutoAnswer:Z
    invoke-static {v6, v4}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$002(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;Z)Z

    .line 101
    return-void

    .line 94
    :cond_1
    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    #getter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mButEableAutoAnswer:Landroid/widget/Button;
    invoke-static {v6}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$200(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    #getter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mRes:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$100(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08031c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;->this$0:Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    #getter for: Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mVtAutoAnswerTime:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->access$300(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    const-string v6, "auto_answer"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    move v4, v5

    .line 100
    goto :goto_1
.end method
