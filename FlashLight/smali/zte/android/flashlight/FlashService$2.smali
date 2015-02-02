.class Lzte/android/flashlight/FlashService$2;
.super Landroid/os/Handler;
.source "FlashService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/android/flashlight/FlashService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/android/flashlight/FlashService;


# direct methods
.method constructor <init>(Lzte/android/flashlight/FlashService;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lzte/android/flashlight/FlashService$2;->this$0:Lzte/android/flashlight/FlashService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lzte/android/flashlight/FlashService$2;->this$0:Lzte/android/flashlight/FlashService;

    invoke-virtual {v0}, Lzte/android/flashlight/FlashService;->stopSelf()V

    .line 107
    :cond_0
    return-void
.end method
