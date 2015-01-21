.class final Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$6;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$6;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->notifyFramesDropped()V

    return-void
.end method
