.class Lcom/zte/engineer/BLightRinger$2;
.super Ljava/lang/Object;
.source "BLightRinger.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/BLightRinger;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/BLightRinger;


# direct methods
.method constructor <init>(Lcom/zte/engineer/BLightRinger;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/zte/engineer/BLightRinger$2;->this$0:Lcom/zte/engineer/BLightRinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 116
    const-string v0, "BLightTest"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 118
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 119
    const/4 v0, 0x1

    return v0
.end method
