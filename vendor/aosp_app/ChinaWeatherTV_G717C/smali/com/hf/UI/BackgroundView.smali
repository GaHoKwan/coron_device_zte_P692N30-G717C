.class public Lcom/hf/UI/BackgroundView;
.super Landroid/widget/ImageView;
.source "BackgroundView.java"


# instance fields
.field private isAttached:Z

.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hf/UI/BackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hf/UI/BackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/UI/BackgroundView;->isAttached:Z

    .line 31
    iput-object p1, p0, Lcom/hf/UI/BackgroundView;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private registReceiver()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.hf.CHANGE_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/hf/UI/BackgroundView$1;

    invoke-direct {v1, p0}, Lcom/hf/UI/BackgroundView$1;-><init>(Lcom/hf/UI/BackgroundView;)V

    iput-object v1, p0, Lcom/hf/UI/BackgroundView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iget-object v1, p0, Lcom/hf/UI/BackgroundView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hf/UI/BackgroundView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 38
    iget-boolean v0, p0, Lcom/hf/UI/BackgroundView;->isAttached:Z

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/hf/UI/BackgroundView;->registReceiver()V

    .line 41
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 47
    return-void
.end method
