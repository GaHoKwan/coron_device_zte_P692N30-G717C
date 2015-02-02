.class Lcom/dolby/ds1appUI/GraphicEqualizerPainter$2;
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
    .line 985
    iput-object p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$2;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$2;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #calls: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->doRecalcPositions()V
    invoke-static {v0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$200(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)V

    .line 990
    return-void
.end method
