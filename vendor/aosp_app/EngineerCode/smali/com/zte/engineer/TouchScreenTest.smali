.class public Lcom/zte/engineer/TouchScreenTest;
.super Lcom/zte/engineer/ZteActivity;
.source "TouchScreenTest.java"


# static fields
.field public static final PRIVATE_ACTION:Ljava/lang/String; = "aeon.marine.test.action.finish"

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field mCircleView:Landroid/view/View;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mRectangleView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/zte/engineer/TouchScreenTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/TouchScreenTest$1;-><init>(Lcom/zte/engineer/TouchScreenTest;)V

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenTest;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/TouchScreenTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/zte/engineer/TouchScreenTest;->doFinish()V

    return-void
.end method

.method private doFinish()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 75
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 24
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenTest;->mCircleView:Landroid/view/View;

    .line 25
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenTest;->mRectangleView:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenTest;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "aeon.marine.test.action.finish"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    return-void
.end method
