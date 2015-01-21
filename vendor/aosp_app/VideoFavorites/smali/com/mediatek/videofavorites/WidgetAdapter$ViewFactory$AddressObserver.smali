.class Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$AddressObserver;
.super Landroid/database/ContentObserver;
.source "WidgetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressObserver"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$1:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;


# direct methods
.method public constructor <init>(Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 487
    iput-object p1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$AddressObserver;->this$1:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;

    .line 488
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 489
    iput-object p2, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$AddressObserver;->mHandler:Landroid/os/Handler;

    .line 490
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    .line 494
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$AddressObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$AddressObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 497
    return-void
.end method
