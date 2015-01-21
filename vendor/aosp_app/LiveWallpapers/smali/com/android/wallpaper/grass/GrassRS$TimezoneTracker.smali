.class Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;
.super Landroid/content/BroadcastReceiver;
.source "GrassRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/grass/GrassRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimezoneTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wallpaper/grass/GrassRS;


# direct methods
.method private constructor <init>(Lcom/android/wallpaper/grass/GrassRS;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;->this$0:Lcom/android/wallpaper/grass/GrassRS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wallpaper/grass/GrassRS;Lcom/android/wallpaper/grass/GrassRS$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;-><init>(Lcom/android/wallpaper/grass/GrassRS;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;->this$0:Lcom/android/wallpaper/grass/GrassRS;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->getScript()Landroid/renderscript/ScriptC;

    move-result-object v0

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Script;->setTimeZone(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS$TimezoneTracker;->this$0:Lcom/android/wallpaper/grass/GrassRS;

    #calls: Lcom/android/wallpaper/grass/GrassRS;->updateLocation()V
    invoke-static {v0}, Lcom/android/wallpaper/grass/GrassRS;->access$300(Lcom/android/wallpaper/grass/GrassRS;)V

    .line 376
    return-void
.end method
