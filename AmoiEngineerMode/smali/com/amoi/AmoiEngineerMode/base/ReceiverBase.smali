.class public abstract Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;
.super Landroid/app/Activity;
.source "ReceiverBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiverBase"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 31
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->setContentView(I)V

    .line 32
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->textView:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->textView:Landroid/widget/TextView;

    const v1, 0x7f060050

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method private startMusic()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amoi/AmoiEngineerMode/base/ReceiverMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    return-void
.end method

.method private stopMusic()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amoi/AmoiEngineerMode/base/ReceiverMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->stopService(Landroid/content/Intent;)Z

    .line 54
    return-void
.end method


# virtual methods
.method protected abstract initButton()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const-string v0, "EngineerMode"

    const-string v1, "ReceiverBase......onCreate()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->initView()V

    .line 26
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->initButton()V

    .line 27
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->startMusic()V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 58
    const-string v0, "EngineerMode"

    const-string v1, "ReceiverBase......onDestroy()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;->stopMusic()V

    .line 60
    return-void
.end method
