.class Lcom/android/camera/ActivityBase$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    const-string v0, "ActivityBase"

    const-string v1, "mScreenOffReceiver receive"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
