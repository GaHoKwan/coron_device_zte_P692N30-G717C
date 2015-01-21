.class Lcom/android/musicfx/ActivityMusic$9;
.super Ljava/lang/Object;
.source "ActivityMusic.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/musicfx/ActivityMusic;->equalizerSpinnerInit(Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/ActivityMusic;


# direct methods
.method constructor <init>(Lcom/android/musicfx/ActivityMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/musicfx/ActivityMusic$9;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$9;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mEQPresetPrevious:I
    invoke-static {v0}, Lcom/android/musicfx/ActivityMusic;->access$1000(Lcom/android/musicfx/ActivityMusic;)I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$9;->this$0:Lcom/android/musicfx/ActivityMusic;

    #calls: Lcom/android/musicfx/ActivityMusic;->equalizerSetPreset(I)V
    invoke-static {v0, p3}, Lcom/android/musicfx/ActivityMusic;->access$1100(Lcom/android/musicfx/ActivityMusic;I)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$9;->this$0:Lcom/android/musicfx/ActivityMusic;

    #setter for: Lcom/android/musicfx/ActivityMusic;->mEQPresetPrevious:I
    invoke-static {v0, p3}, Lcom/android/musicfx/ActivityMusic;->access$1002(Lcom/android/musicfx/ActivityMusic;I)I

    .line 592
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
