.class public Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;
.super Landroid/app/Activity;
.source "ReceiverAgingTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiverAgingTest"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amoi/AmoiEngineerMode/base/ReceiverAgingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;->stopService(Landroid/content/Intent;)Z

    .line 39
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;->finish()V

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-string v2, "EngineerMode"

    const-string v3, "ReceiverAgingTest onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;->setContentView(I)V

    .line 27
    const v2, 0x7f070061

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 28
    .local v0, exitButton:Landroid/widget/Button;
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;

    invoke-direct {v2, p0}, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v2, 0x7f070060

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;->textView:Landroid/widget/TextView;

    .line 30
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;->textView:Landroid/widget/TextView;

    const v3, 0x7f06007c

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amoi/AmoiEngineerMode/base/ReceiverAgingService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v1, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    return-void
.end method
