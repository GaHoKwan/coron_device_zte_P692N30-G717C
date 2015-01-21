.class public Lcom/mediatek/videoplayer/BootActivity;
.super Landroid/app/Activity;
.source "BootActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private enterVideoPlayer()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    invoke-static {}, Lcom/mediatek/videoplayer/streaming/StreamingUtils;->isStreamingVideoSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void

    .line 62
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "BootActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/mediatek/videoplayer/BootActivity;->enterVideoPlayer()V

    .line 54
    return-void
.end method
