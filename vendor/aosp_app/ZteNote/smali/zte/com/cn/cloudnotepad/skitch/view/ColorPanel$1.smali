.class Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;
.super Ljava/lang/Object;
.source "ColorPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    .local v0, color:I
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mIsColorPlateVisible:Ljava/lang/Boolean;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #calls: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColor(I)V
    invoke-static {v1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$1(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;I)V

    .line 141
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mBaruView:Landroid/widget/ImageView;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$2(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$3(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 142
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColorPlateLayout()V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #setter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I
    invoke-static {v1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$4(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;I)V

    .line 145
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #calls: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->setColor(I)V
    invoke-static {v1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$5(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;I)V

    goto :goto_0
.end method
