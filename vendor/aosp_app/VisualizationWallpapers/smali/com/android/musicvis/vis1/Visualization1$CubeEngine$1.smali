.class Lcom/android/musicvis/vis1/Visualization1$CubeEngine$1;
.super Ljava/lang/Object;
.source "Visualization1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicvis/vis1/Visualization1$CubeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/musicvis/vis1/Visualization1$CubeEngine;


# direct methods
.method constructor <init>(Lcom/android/musicvis/vis1/Visualization1$CubeEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine$1;->this$1:Lcom/android/musicvis/vis1/Visualization1$CubeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine$1;->this$1:Lcom/android/musicvis/vis1/Visualization1$CubeEngine;

    invoke-virtual {v0}, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->drawFrame()V

    .line 69
    return-void
.end method
