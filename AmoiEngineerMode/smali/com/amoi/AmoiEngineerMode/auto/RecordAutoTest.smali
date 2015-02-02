.class public Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/RecordBase;
.source "RecordAutoTest.java"

# interfaces
.implements Lcom/amoi/AmoiEngineerMode/base/Retestable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest$RecordAutoTestHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordAutoTest"


# instance fields
.field private autoButtonsVisible:Z

.field private retestButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->seconds:I

    return v0
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->playback()V

    return-void
.end method

.method static synthetic access$300(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->retestButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected handleNoSDCardExtra()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "RecordAutoTest"

    const-string v1, "handleNoSDCard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->showAutoButtons(Landroid/app/Activity;)V

    .line 57
    return-void
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest$RecordAutoTestHandler;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest$RecordAutoTestHandler;-><init>(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->handler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "RecordAutoTest"

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->setContentView(I)V

    .line 33
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->textView:Landroid/widget/TextView;

    .line 37
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAndHideAutoButtons(Landroid/app/Activity;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->autoButtonsVisible:Z

    .line 39
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->retestButton:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->retestButton:Landroid/widget/Button;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/RetestButtonListener;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/RetestButtonListener;-><init>(Lcom/amoi/AmoiEngineerMode/base/Retestable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 71
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 77
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->autoButtonsVisible:Z

    if-nez v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->showAutoButtons(Landroid/app/Activity;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->autoButtonsVisible:Z

    .line 81
    :cond_0
    return-void
.end method

.method public retest()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->retestButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->stopPlay()V

    .line 65
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->stopRecord()V

    .line 66
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->startRecord()V

    .line 67
    return-void
.end method
