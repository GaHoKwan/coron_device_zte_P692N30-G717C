.class Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$13;
.super Ljava/lang/Object;
.source "CreateSkitchInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initDoodleViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$13;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 602
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$13;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->SliderView:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->showPaintToolView(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$5(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V

    .line 603
    return-void
.end method
