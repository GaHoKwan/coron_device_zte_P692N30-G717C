.class public Lcom/mediatek/engineermode/AutoAnswer;
.super Landroid/app/Activity;
.source "AutoAnswer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BUTTON_FLAG:Ljava/lang/String; = "flag"

.field private static final SHREDPRE_NAME:Ljava/lang/String; = "AutoAnswer"

.field private static final TAG:Ljava/lang/String; = "EM-AutoAnswer"


# instance fields
.field private mSetButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private writeSharedPreferences(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 97
    const-string v2, "AutoAnswer"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, autoAnswerSh:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 100
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "flag"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const v2, 0x7f080284

    .line 78
    iget-object v0, p0, Lcom/mediatek/engineermode/AutoAnswer;->mSetButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 79
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/AutoAnswer;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/AutoAnswer;->mSetButton:Landroid/widget/Button;

    const v1, 0x7f080283

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/AutoAnswer;->writeSharedPreferences(Z)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/AutoAnswer;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/AutoAnswer;->writeSharedPreferences(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 58
    const v2, 0x7f0b0034

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/AutoAnswer;->mSetButton:Landroid/widget/Button;

    .line 60
    iget-object v2, p0, Lcom/mediatek/engineermode/AutoAnswer;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-string v2, "AutoAnswer"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, autoAnswerSh:Landroid/content/SharedPreferences;
    const-string v2, "flag"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    .local v1, buttonFlag:Z
    const-string v2, "EM-AutoAnswer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate flag is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz v1, :cond_0

    .line 68
    iget-object v2, p0, Lcom/mediatek/engineermode/AutoAnswer;->mSetButton:Landroid/widget/Button;

    const v3, 0x7f080283

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/AutoAnswer;->mSetButton:Landroid/widget/Button;

    const v3, 0x7f080284

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
