.class Lcom/android/musicfx/ControlPanelReceiver$1;
.super Ljava/lang/Object;
.source "ControlPanelReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/musicfx/ControlPanelReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/ControlPanelReceiver;


# direct methods
.method constructor <init>(Lcom/android/musicfx/ControlPanelReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/musicfx/ControlPanelReceiver$1;->this$0:Lcom/android/musicfx/ControlPanelReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    const-string v0, "MusicFXControlPanelReceiver"

    const-string v1, "closeSession in a thead."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/musicfx/ControlPanelReceiver$1;->this$0:Lcom/android/musicfx/ControlPanelReceiver;

    #getter for: Lcom/android/musicfx/ControlPanelReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/musicfx/ControlPanelReceiver;->access$000(Lcom/android/musicfx/ControlPanelReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/musicfx/ControlPanelReceiver$1;->this$0:Lcom/android/musicfx/ControlPanelReceiver;

    #getter for: Lcom/android/musicfx/ControlPanelReceiver;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/musicfx/ControlPanelReceiver;->access$100(Lcom/android/musicfx/ControlPanelReceiver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/musicfx/ControlPanelReceiver$1;->this$0:Lcom/android/musicfx/ControlPanelReceiver;

    #getter for: Lcom/android/musicfx/ControlPanelReceiver;->mAudioSession:I
    invoke-static {v2}, Lcom/android/musicfx/ControlPanelReceiver;->access$200(Lcom/android/musicfx/ControlPanelReceiver;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect;->closeSession(Landroid/content/Context;Ljava/lang/String;I)V

    .line 110
    return-void
.end method
