.class Lcom/dolby/ds1appUI/FragEqualizerPresets$1;
.super Ljava/lang/Object;
.source "FragEqualizerPresets.java"

# interfaces
.implements Lcom/dolby/ds1appUI/EqualizerAdapter$IPresetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/ds1appUI/FragEqualizerPresets;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/FragEqualizerPresets;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/FragEqualizerPresets;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets$1;->this$0:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresetChanged(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets$1;->this$0:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    #calls: Lcom/dolby/ds1appUI/FragEqualizerPresets;->chooseEqualizerSettinginUI(I)V
    invoke-static {v0, p1}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->access$000(Lcom/dolby/ds1appUI/FragEqualizerPresets;I)V

    .line 141
    return-void
.end method
