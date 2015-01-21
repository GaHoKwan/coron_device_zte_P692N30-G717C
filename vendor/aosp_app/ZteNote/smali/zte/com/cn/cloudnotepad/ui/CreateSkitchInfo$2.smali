.class Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$2;
.super Ljava/lang/Object;
.source "CreateSkitchInfo.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$2;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickInputTool(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 623
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$2;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    const/4 v1, 0x1

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setViewSelectedStateByType(IZ)V
    invoke-static {v0, p1, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$1(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;IZ)V

    .line 641
    return-void
.end method
