.class Lcom/mediatek/vlw/VideoChooser$2;
.super Ljava/lang/Object;
.source "VideoChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoChooser;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mediatek/vlw/VideoChooser$2;->this$0:Lcom/mediatek/vlw/VideoChooser;

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
    .line 159
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/vlw/VideoChooser$2;->this$0:Lcom/mediatek/vlw/VideoChooser;

    #setter for: Lcom/mediatek/vlw/VideoChooser;->mSelectedPos:I
    invoke-static {v0, p3}, Lcom/mediatek/vlw/VideoChooser;->access$702(Lcom/mediatek/vlw/VideoChooser;I)I

    .line 160
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/vlw/VideoChooser$2;->this$0:Lcom/mediatek/vlw/VideoChooser;

    const/4 v1, -0x1

    #setter for: Lcom/mediatek/vlw/VideoChooser;->mSelectedPos:I
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VideoChooser;->access$702(Lcom/mediatek/vlw/VideoChooser;I)I

    .line 167
    return-void
.end method
