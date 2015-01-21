.class Lzte/android/flashlight/FlashLightActivity$3;
.super Ljava/lang/Object;
.source "FlashLightActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/android/flashlight/FlashLightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/android/flashlight/FlashLightActivity;


# direct methods
.method constructor <init>(Lzte/android/flashlight/FlashLightActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lzte/android/flashlight/FlashLightActivity$3;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 107
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity$3;->this$0:Lzte/android/flashlight/FlashLightActivity;

    check-cast p2, Lzte/android/flashlight/FlashService$FlashBinder;

    .end local p2
    invoke-virtual {p2}, Lzte/android/flashlight/FlashService$FlashBinder;->getService()Lzte/android/flashlight/FlashService;

    move-result-object v1

    #setter for: Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;
    invoke-static {v0, v1}, Lzte/android/flashlight/FlashLightActivity;->access$002(Lzte/android/flashlight/FlashLightActivity;Lzte/android/flashlight/FlashService;)Lzte/android/flashlight/FlashService;

    .line 108
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 112
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity$3;->this$0:Lzte/android/flashlight/FlashLightActivity;

    const/4 v1, 0x0

    #setter for: Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;
    invoke-static {v0, v1}, Lzte/android/flashlight/FlashLightActivity;->access$002(Lzte/android/flashlight/FlashLightActivity;Lzte/android/flashlight/FlashService;)Lzte/android/flashlight/FlashService;

    .line 113
    return-void
.end method
