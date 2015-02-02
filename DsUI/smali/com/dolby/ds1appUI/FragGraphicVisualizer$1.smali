.class Lcom/dolby/ds1appUI/FragGraphicVisualizer$1;
.super Ljava/lang/Object;
.source "FragGraphicVisualizer.java"

# interfaces
.implements Lcom/dolby/ds1appUI/EqualizerAdapter$IPresetListener;


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
    .line 133
    iput-object p1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer$1;->this$0:Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresetChanged(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer$1;->this$0:Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    #calls: Lcom/dolby/ds1appUI/FragGraphicVisualizer;->chooseEqualizerSettinginUI(I)V
    invoke-static {v0, p1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->access$000(Lcom/dolby/ds1appUI/FragGraphicVisualizer;I)V

    .line 138
    return-void
.end method
