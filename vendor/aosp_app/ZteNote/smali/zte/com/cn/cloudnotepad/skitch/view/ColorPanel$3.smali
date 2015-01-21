.class Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$3;
.super Ljava/lang/Object;
.source "ColorPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColorPlateView()V
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$3;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 245
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$3;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$3;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$3(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)I

    move-result v1

    #calls: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->setColor(I)V
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$5(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;I)V

    .line 246
    return-void
.end method
