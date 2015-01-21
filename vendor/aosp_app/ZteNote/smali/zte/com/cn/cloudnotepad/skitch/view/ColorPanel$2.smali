.class Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$2;
.super Ljava/lang/Object;
.source "ColorPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initViewListener()V
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$2;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$2;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    #calls: Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->toggleColorPlate()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->access$9(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V

    .line 76
    return-void
.end method
