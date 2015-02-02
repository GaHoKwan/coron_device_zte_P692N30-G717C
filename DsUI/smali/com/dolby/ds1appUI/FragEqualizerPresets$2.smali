.class Lcom/dolby/ds1appUI/FragEqualizerPresets$2;
.super Ljava/lang/Object;
.source "FragEqualizerPresets.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 146
    iput-object p1, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets$2;->this$0:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets$2;->this$0:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    #getter for: Lcom/dolby/ds1appUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->access$100(Lcom/dolby/ds1appUI/FragEqualizerPresets;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets$2;->this$0:Lcom/dolby/ds1appUI/FragEqualizerPresets;

    #getter for: Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;
    invoke-static {v0}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->access$200(Lcom/dolby/ds1appUI/FragEqualizerPresets;)Lcom/dolby/ds1appUI/EqualizerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
