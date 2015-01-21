.class Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$1;
.super Ljava/lang/Object;
.source "CreateSkitchInfo.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;


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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$1;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$1;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->updateUndoRedoViewState()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$0(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    .line 543
    return-void
.end method
