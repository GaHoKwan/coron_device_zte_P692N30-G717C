.class Lcom/android/music/DeleteItems$4;
.super Landroid/content/BroadcastReceiver;
.source "DeleteItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/DeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/DeleteItems;


# direct methods
.method constructor <init>(Lcom/android/music/DeleteItems;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/music/DeleteItems$4;->this$0:Lcom/android/music/DeleteItems;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/music/DeleteItems$4;->this$0:Lcom/android/music/DeleteItems;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 264
    const-string v0, "DeleteItems"

    const-string v1, "SD card is ejected, finish delete activity!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method
