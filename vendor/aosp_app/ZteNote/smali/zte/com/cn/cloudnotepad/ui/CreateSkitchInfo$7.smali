.class Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$7;
.super Ljava/lang/Object;
.source "CreateSkitchInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initHandWriteViewListener()V
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 437
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    const/4 v1, 0x1

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->showSliderOrColorView(Z)V
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$12(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Z)V

    .line 438
    return-void
.end method
