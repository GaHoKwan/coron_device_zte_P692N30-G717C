.class Lcom/android/music/MusicBrowserActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f0c003d

    const v8, 0x7f0c002a

    const v7, 0x7f0c0029

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 517
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    const-string v4, "onoff"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/music/MusicBrowserActivity;->mIsSdcardMounted:Z
    invoke-static {v3, v4}, Lcom/android/music/MusicBrowserActivity;->access$802(Lcom/android/music/MusicBrowserActivity;Z)Z

    .line 520
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mIsSdcardMounted:Z
    invoke-static {v3}, Lcom/android/music/MusicBrowserActivity;->access$800(Lcom/android/music/MusicBrowserActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 521
    const-string v3, "MusicBrowser"

    const-string v4, "Sdcard normal"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 523
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :cond_0
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    const v4, 0x7f0c003e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 527
    if-eqz v2, :cond_1

    .line 528
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 530
    :cond_1
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v3, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 531
    if-eqz v2, :cond_2

    .line 532
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_2
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 535
    if-eqz v2, :cond_3

    .line 536
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :cond_3
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/android/music/MusicBrowserActivity;->access$500(Lcom/android/music/MusicBrowserActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 540
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    iget-object v4, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I
    invoke-static {v4}, Lcom/android/music/MusicBrowserActivity;->access$600(Lcom/android/music/MusicBrowserActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 563
    :cond_4
    :goto_0
    return-void

    .line 543
    .end local v2           #view:Landroid/view/View;
    :cond_5
    const-string v3, "MusicBrowser"

    const-string v4, "Sdcard error"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 545
    .restart local v2       #view:Landroid/view/View;
    if-eqz v2, :cond_6

    .line 546
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 548
    :cond_6
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v3, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 549
    if-eqz v2, :cond_7

    .line 550
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :cond_7
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    const v4, 0x7f0c003e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 553
    .local v1, testview:Landroid/widget/TextView;
    if-eqz v1, :cond_8

    .line 554
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 555
    const-string v3, "message"

    const v4, 0x7f070045

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 556
    .local v0, message:I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 558
    .end local v0           #message:I
    :cond_8
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$4;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 559
    if-eqz v2, :cond_4

    .line 560
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
