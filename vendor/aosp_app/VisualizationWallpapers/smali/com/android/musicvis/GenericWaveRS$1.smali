.class Lcom/android/musicvis/GenericWaveRS$1;
.super Ljava/lang/Object;
.source "GenericWaveRS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicvis/GenericWaveRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicvis/GenericWaveRS;


# direct methods
.method constructor <init>(Lcom/android/musicvis/GenericWaveRS;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/musicvis/GenericWaveRS$1;->this$0:Lcom/android/musicvis/GenericWaveRS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS$1;->this$0:Lcom/android/musicvis/GenericWaveRS;

    invoke-virtual {v0}, Lcom/android/musicvis/GenericWaveRS;->updateWave()V

    .line 39
    return-void
.end method