.class Lcom/android/deskclock/AlarmAlertFullScreen$5;
.super Landroid/os/Handler;
.source "AlarmAlertFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$5;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$5;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->handleVoiceCommandNotified(IILandroid/os/Bundle;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$700(Lcom/android/deskclock/AlarmAlertFullScreen;IILandroid/os/Bundle;)V

    .line 300
    return-void
.end method
