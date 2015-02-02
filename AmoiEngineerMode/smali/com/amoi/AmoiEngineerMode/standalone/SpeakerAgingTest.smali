.class public Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;
.super Landroid/app/Activity;
.source "SpeakerAgingTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeakerAgingTest"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amoi/AmoiEngineerMode/base/SpeakerAgingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;->stopService(Landroid/content/Intent;)Z

    .line 41
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;->finish()V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v2, "EngineerMode"

    const-string v3, "SpeakerAgingTest onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;->setContentView(I)V

    .line 28
    const v2, 0x7f070061

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, exitButton:Landroid/widget/Button;
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;

    invoke-direct {v2, p0}, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v2, 0x7f070060

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;->textView:Landroid/widget/TextView;

    .line 31
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;->textView:Landroid/widget/TextView;

    const v3, 0x7f060093

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amoi/AmoiEngineerMode/base/SpeakerAgingService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "music_raw_id"

    const v3, 0x7f040004

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    return-void
.end method
