.class Lcom/dolby/ds1appUI/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/ds1appUI/MainActivity;->displaySplashScreen()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/MainActivity;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/MainActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/dolby/ds1appUI/MainActivity$3;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity$3;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    const/4 v1, 0x1

    #setter for: Lcom/dolby/ds1appUI/MainActivity;->mSplashTimerElapsed:Z
    invoke-static {v0, v1}, Lcom/dolby/ds1appUI/MainActivity;->access$302(Lcom/dolby/ds1appUI/MainActivity;Z)Z

    .line 213
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity$3;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    #calls: Lcom/dolby/ds1appUI/MainActivity;->hideSplashScreen()V
    invoke-static {v0}, Lcom/dolby/ds1appUI/MainActivity;->access$400(Lcom/dolby/ds1appUI/MainActivity;)V

    .line 215
    return-void
.end method
