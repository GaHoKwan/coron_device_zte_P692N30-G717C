.class Lcom/dolby/ds1appUI/FragGraphicVisualizer$2;
.super Ljava/lang/Object;
.source "FragGraphicVisualizer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/ds1appUI/FragGraphicVisualizer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/FragGraphicVisualizer;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/FragGraphicVisualizer;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer$2;->this$0:Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer$2;->this$0:Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    #getter for: Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->access$100(Lcom/dolby/ds1appUI/FragGraphicVisualizer;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer$2;->this$0:Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    #getter for: Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;
    invoke-static {v0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->access$200(Lcom/dolby/ds1appUI/FragGraphicVisualizer;)Lcom/dolby/ds1appUI/EqualizerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
