.class public Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;
.super Lcom/amoi/AmoiEngineerMode/base/RecordBase;
.source "RecordTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordTest"


# instance fields
.field protected playRecordButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleNoSDCardExtra()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "RecordTest"

    const-string v1, "handleNoSDCard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->playRecordButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 43
    return-void
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 24
    const-string v1, "RecordTest"

    const-string v2, "initView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->setContentView(I)V

    .line 26
    const v1, 0x7f060029

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->textView:Landroid/widget/TextView;

    .line 28
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->textView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    .local v0, exitButton:Landroid/widget/Button;
    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v1, 0x7f070071

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->playRecordButton:Landroid/widget/Button;

    .line 34
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->playRecordButton:Landroid/widget/Button;

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 35
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->playRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 48
    :pswitch_0
    const-string v0, "RecordTest"

    const-string v1, "....onClick.....bt_playback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->hasSDCard:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->playRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->playback()V

    .line 55
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/RecordTest;->playRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x7f070071
        :pswitch_0
    .end packed-switch
.end method
