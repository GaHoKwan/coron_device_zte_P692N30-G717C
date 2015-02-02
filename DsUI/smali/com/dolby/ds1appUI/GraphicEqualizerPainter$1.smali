.class Lcom/dolby/ds1appUI/GraphicEqualizerPainter$1;
.super Ljava/lang/Object;
.source "GraphicEqualizerPainter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$1;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$1;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    const/4 v1, 0x0

    #calls: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->animateVisibility(Z)V
    invoke-static {v0, v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$000(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;Z)V

    .line 710
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$1;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;
    invoke-static {v0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$100(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)Lcom/dolby/ds1appUI/GraphicVisualiser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V

    .line 711
    return-void
.end method
