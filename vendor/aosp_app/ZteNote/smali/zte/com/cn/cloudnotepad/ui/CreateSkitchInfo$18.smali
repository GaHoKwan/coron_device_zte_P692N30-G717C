.class Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$18;
.super Ljava/lang/Object;
.source "CreateSkitchInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->showBackDialog()V
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$18;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1236
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$18;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->giveupDoodleOrHandwrite()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$13(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    .line 1238
    return-void
.end method
