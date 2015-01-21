.class public Lzte/android/flashlight/FlashService$FlashBinder;
.super Landroid/os/Binder;
.source "FlashService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/android/flashlight/FlashService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlashBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/android/flashlight/FlashService;


# direct methods
.method public constructor <init>(Lzte/android/flashlight/FlashService;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lzte/android/flashlight/FlashService$FlashBinder;->this$0:Lzte/android/flashlight/FlashService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lzte/android/flashlight/FlashService;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lzte/android/flashlight/FlashService$FlashBinder;->this$0:Lzte/android/flashlight/FlashService;

    return-object v0
.end method
